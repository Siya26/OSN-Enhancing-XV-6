#include "types.h"
#include "param.h"
#include "memlayout.h"
#include "riscv.h"
#include "spinlock.h"
#include "proc.h"
#include "defs.h"

#define N1 624
#define N2 397
#define TEMPERING_SHIFT_U(y) (y >> 11)
#define TEMPERING_SHIFT_S(y) (y << 7)
#define TEMPERING_SHIFT_T(y) (y << 15)
#define TEMPERING_SHIFT_L(y) (y >> 18)
#define VEC_A 0x9908b0df
#define M_SIG 0x80000000
#define L_SIG 0x7fffffff
#define TEMPERING_MASK_B 0x9d2c5680
#define TEMPERING_MASK_C 0xefc60000
#define RAND_MAX 0x7fffffff

static int mti = N1 + 1;
static unsigned long mt[N1];

void sgenrand(unsigned long seed)
{
  mti = 1;
  mt[0] = seed & 0xffffffff;
  while (mti < N1)
  {
    unsigned long temp = 69069 * mt[mti - 1];
    mt[mti] = temp & 0xffffffff;
    mti++;
  }
}

long genrand()
{
  unsigned long y;
  static unsigned long mag01[2] = {0x0, VEC_A};

  if (mti >= N1)
  {
    if (mti == N1 + 1)
      sgenrand(4357);
    int temp = 0;
    while (temp < N1 - N2)
    {
      unsigned long temp1 = mt[temp] & M_SIG;
      unsigned long temp2 = mt[temp + 1] & L_SIG;
      y = temp1 | temp2;
      unsigned long x = y >> 1;
      unsigned long z = mag01[y & 0x1];
      mt[temp] = mt[temp + N2] ^ x ^ z;
      temp++;
    }
    while (temp < N1 - 1)
    {
      unsigned long temp1 = mt[temp] & M_SIG;
      unsigned long temp2 = mt[temp + 1] & L_SIG;
      y = temp1 | temp2;
      unsigned long x = y >> 1;
      unsigned long z = mag01[y & 0x1];
      mt[temp] = mt[temp + (N2 - N1)] ^ x ^ z;
      temp++;
    }
    y = (mt[N1 - 1] & M_SIG) | (mt[0] & L_SIG);
    mt[N1 - 1] = mt[N2 - 1] ^ (y >> 1) ^ mag01[y & 0x1];

    mti = 0;
  }

  y = mt[mti++];
  y = y ^ TEMPERING_SHIFT_U(y);
  y = y ^ (TEMPERING_SHIFT_S(y) & TEMPERING_MASK_B);
  y = y ^ (TEMPERING_SHIFT_T(y) & TEMPERING_MASK_C);
  y = y ^ TEMPERING_SHIFT_L(y);

  unsigned long ret = y & RAND_MAX;
  return ret;
}

long random_at_most(long max)
{
  unsigned long num_bins = (unsigned long)max + 1, num_rand = (unsigned long)RAND_MAX + 1, bin_size = num_rand / num_bins, defect = num_rand % num_bins;
  long value;
  do
    value = genrand();
  while (num_rand - defect <= (unsigned long)value);

  long ret = value / bin_size;

  return ret;
}

struct cpu cpus[NCPU];

struct proc proc[NPROC];

int totaltickets = 0;

#ifdef MLFQ
struct Queue mlfq[NMLFQ];
#endif

struct proc *initproc;

int nextpid = 1;
struct spinlock pid_lock;

extern void forkret(void);
static void freeproc(struct proc *p);

extern char trampoline[]; // trampoline.S

// helps ensure that wakeups of wait()ing
// parents are not lost. helps obey the
// memory model when using p->parent.
// must be acquired before any p->lock.
struct spinlock wait_lock;

// Allocate a page for each process's kernel stack.
// Map it high in memory, followed by an invalid
// guard page.
void proc_mapstacks(pagetable_t kpgtbl)
{
  struct proc *p;

  for (p = proc; p < &proc[NPROC]; p++)
  {
    char *pa = kalloc();
    if (pa == 0)
      panic("kalloc");
    uint64 va = KSTACK((int)(p - proc));
    kvmmap(kpgtbl, va, (uint64)pa, PGSIZE, PTE_R | PTE_W);
  }
}

// initialize the proc table.
void procinit(void)
{
  struct proc *p;

  initlock(&pid_lock, "nextpid");
  initlock(&wait_lock, "wait_lock");
  for (p = proc; p < &proc[NPROC]; p++)
  {
    initlock(&p->lock, "proc");
    // p->state = UNUSED;
    p->kstack = KSTACK((int)(p - proc));
  }
  #ifdef MLFQ
  int i = 0;
  while (i < NMLFQ)
  {
    mlfq[i].head = 0;
    mlfq[i].size = 0;
    mlfq[i].tail = 0;
    i = i + 1;
  }
#endif
}

// Must be called with interrupts disabled,
// to prevent race with process being moved
// to a different CPU.
int cpuid()
{
  int id = r_tp();
  return id;
}

// Return this CPU's cpu struct.
// Interrupts must be disabled.
struct cpu *
mycpu(void)
{
  int id = cpuid();
  struct cpu *c = &cpus[id];
  return c;
}

// Return the current struct proc *, or zero if none.
struct proc *
myproc(void)
{
  push_off();
  struct cpu *c = mycpu();
  struct proc *p = c->proc;
  pop_off();
  return p;
}

int allocpid()
{
  int pid;

  acquire(&pid_lock);
  pid = nextpid;
  nextpid = nextpid + 1;
  release(&pid_lock);

  return pid;
}

// Look in the process table for an UNUSED proc.
// If found, initialize state required to run in the kernel,
// and return with p->lock held.
// If there are no free procs, or a memory allocation fails, return 0.
static struct proc *
allocproc(void)
{
  struct proc *p;

  for (p = proc; p < &proc[NPROC]; p++)
  {
    acquire(&p->lock);
    if (p->state == UNUSED)
    {
      goto found;
    }
    else
    {
      release(&p->lock);
    }
  }
  return 0;

found:
  p->pid = allocpid();
  p->state = USED;

  // Allocate a trapframe page.
  if ((p->trapframe = (struct trapframe *)kalloc()) == 0)
  {
    freeproc(p);
    release(&p->lock);
    return 0;
  }

  // An empty user page table.
  p->pagetable = proc_pagetable(p);
  if (p->pagetable == 0)
  {
    freeproc(p);
    release(&p->lock);
    return 0;
  }
  p->createdtime = ticks;
  p->no_of_times_scheduled = 0;
  p->runtime = 0;
  p->endtime = 0;
  p->staticpriority = 60;
  p->total_run_time = 0;
  p->sleeptime = 0;
  p->cur_ticks=0;
  p->tickets = 1;
  p->schedt = 0;
  // Set up new context to start executing at forkret,
  // which returns to user space.
  memset(&p->context, 0, sizeof(p->context));
  p->context.ra = (uint64)forkret;
  p->context.sp = p->kstack + PGSIZE;
  #ifdef MLFQ
  p->priority1 = 0;
  p->in_queue = 0;
  p->quanta = 1;
  p->nrun = 0;
  p->qitime = ticks;
  int i = 0;
  while (i < NMLFQ)
  {
    p->qrtime[i] = 0;
    i++;
  }
#endif
  return p;
}

// free a proc structure and the data hanging from it,
// including user pages.
// p->lock must be held.
static void
freeproc(struct proc *p)
{
  if (p->trapframe)
    kfree((void *)p->trapframe);
  p->trapframe = 0;
  if (p->pagetable)
    proc_freepagetable(p->pagetable, p->sz);
  p->pagetable = 0;
  p->sz = 0;
  p->pid = 0;
  p->parent = 0;
  p->name[0] = 0;
  p->chan = 0;
  p->killed = 0;
  p->xstate = 0;
  p->state = UNUSED;
  p->tickets = 0;
}

// Create a user page table for a given process, with no user memory,
// but with trampoline and trapframe pages.
pagetable_t
proc_pagetable(struct proc *p)
{
  pagetable_t pagetable;

  // An empty page table.
  pagetable = uvmcreate();
  if (pagetable == 0)
    return 0;

  // map the trampoline code (for system call return)
  // at the highest user virtual address.
  // only the supervisor uses it, on the way
  // to/from user space, so not PTE_U.
  if (mappages(pagetable, TRAMPOLINE, PGSIZE,
               (uint64)trampoline, PTE_R | PTE_X) < 0)
  {
    uvmfree(pagetable, 0);
    return 0;
  }

  // map the trapframe page just below the trampoline page, for
  // trampoline.S.
  if (mappages(pagetable, TRAPFRAME, PGSIZE,
               (uint64)(p->trapframe), PTE_R | PTE_W) < 0)
  {
    uvmunmap(pagetable, TRAMPOLINE, 1, 0);
    uvmfree(pagetable, 0);
    return 0;
  }

  return pagetable;
}

// Free a process's page table, and free the
// physical memory it refers to.
void proc_freepagetable(pagetable_t pagetable, uint64 sz)
{
  uvmunmap(pagetable, TRAMPOLINE, 1, 0);
  uvmunmap(pagetable, TRAPFRAME, 1, 0);
  uvmfree(pagetable, sz);
}

// a user program that calls exec("/init")
// assembled from ../user/initcode.S
// od -t xC ../user/initcode
uchar initcode[] = {
    0x17, 0x05, 0x00, 0x00, 0x13, 0x05, 0x45, 0x02,
    0x97, 0x05, 0x00, 0x00, 0x93, 0x85, 0x35, 0x02,
    0x93, 0x08, 0x70, 0x00, 0x73, 0x00, 0x00, 0x00,
    0x93, 0x08, 0x20, 0x00, 0x73, 0x00, 0x00, 0x00,
    0xef, 0xf0, 0x9f, 0xff, 0x2f, 0x69, 0x6e, 0x69,
    0x74, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00};

// Set up first user process.
void userinit(void)
{
  struct proc *p;

  p = allocproc();
  initproc = p;

  // allocate one user page and copy initcode's instructions
  // and data into it.
  uvmfirst(p->pagetable, initcode, sizeof(initcode));
  p->sz = PGSIZE;

  // prepare for the very first "return" from kernel to user.
  p->trapframe->epc = 0;     // user program counter
  p->trapframe->sp = PGSIZE; // user stack pointer

  safestrcpy(p->name, "initcode", sizeof(p->name));
  p->cwd = namei("/");

  p->state = RUNNABLE;

  release(&p->lock);
}

// Grow or shrink user memory by n bytes.
// Return 0 on success, -1 on failure.
int growproc(int n)
{
  uint64 sz;
  struct proc *p = myproc();

  sz = p->sz;
  if (n > 0)
  {
    if ((sz = uvmalloc(p->pagetable, sz, sz + n, PTE_W)) == 0)
    {
      return -1;
    }
  }
  else if (n < 0)
  {
    sz = uvmdealloc(p->pagetable, sz, sz + n);
  }
  p->sz = sz;
  return 0;
}

// Create a new process, copying the parent.
// Sets up child kernel stack to return as if from fork() system call.
int fork(void)
{
  int i, pid;
  struct proc *np;
  struct proc *p = myproc();

  // Allocate process.
  if ((np = allocproc()) == 0)
  {
    return -1;
  }
  np->mask = p->mask;

  // Copy user memory from parent to child.
  if (uvmcopy(p->pagetable, np->pagetable, p->sz) < 0)
  {
    freeproc(np);
    release(&np->lock);
    return -1;
  }
  np->sz = p->sz;

  // copy saved user registers.
  *(np->trapframe) = *(p->trapframe);

  // Cause fork to return 0 in the child.
  np->trapframe->a0 = 0;

  // increment reference counts on open file descriptors.
  for (i = 0; i < NOFILE; i++)
    if (p->ofile[i])
      np->ofile[i] = filedup(p->ofile[i]);
  np->cwd = idup(p->cwd);

  safestrcpy(np->name, p->name, sizeof(p->name));

  pid = np->pid;

  release(&np->lock);

  acquire(&wait_lock);
  np->parent = p;
  np->schedt = p->schedt;
  totaltickets += np->tickets;
  release(&wait_lock);

  acquire(&np->lock);
  np->state = RUNNABLE;
  release(&np->lock);

  return pid;
}

// Pass p's abandoned children to init.
// Caller must hold wait_lock.
void reparent(struct proc *p)
{
  struct proc *pp;

  for (pp = proc; pp < &proc[NPROC]; pp++)
  {
    if (pp->parent == p)
    {
      pp->parent = initproc;
      wakeup(initproc);
    }
  }
}

// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait().
void exit(int status)
{
  struct proc *p = myproc();

  if (p == initproc)
    panic("init exiting");

  // Close all open files.
  for (int fd = 0; fd < NOFILE; fd++)
  {
    if (p->ofile[fd])
    {
      struct file *f = p->ofile[fd];
      fileclose(f);
      p->ofile[fd] = 0;
    }
  }

  begin_op();
  iput(p->cwd);
  end_op();
  p->cwd = 0;

  acquire(&wait_lock);

  // Give any children to init.
  reparent(p);

  // Parent might be sleeping in wait().
  wakeup(p->parent);

  acquire(&p->lock);
  totaltickets-=p->tickets;
  p->tickets=0;

  p->xstate = status;
  p->state = ZOMBIE;
  p->endtime = ticks;

  release(&wait_lock);

  // Jump into the scheduler, never to return.
  sched();
  panic("zombie exit");
}

void set_proc_tckts(int n)
{
  int t;
  acquire(&proc->lock);
  t = totaltickets - proc->tickets;
  totaltickets = t;
  proc->tickets = n;
  t = totaltickets + proc->tickets;
  totaltickets = t;
  release(&proc->lock);
}

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int wait(uint64 addr)
{
  struct proc *pp;
  int havekids, pid;
  struct proc *p = myproc();

  acquire(&wait_lock);

  for (;;)
  {
    // Scan through table looking for exited children.
    havekids = 0;
    for (pp = proc; pp < &proc[NPROC]; pp++)
    {
      if (pp->parent == p)
      {
        // make sure the child isn't still in exit() or swtch().
        acquire(&pp->lock);

        havekids = 1;
        if (pp->state == ZOMBIE)
        {
          // Found one.
          pid = pp->pid;
          if (addr != 0 && copyout(p->pagetable, addr, (char *)&pp->xstate,
                                   sizeof(pp->xstate)) < 0)
          {
            release(&pp->lock);
            release(&wait_lock);
            return -1;
          }
          freeproc(pp);
          release(&pp->lock);
          release(&wait_lock);
          return pid;
        }
        release(&pp->lock);
      }
    }

    // No point waiting if we don't have any children.
    if (!havekids || killed(p))
    {
      release(&wait_lock);
      return -1;
    }

    // Wait for a child to exit.
    sleep(p, &wait_lock); // DOC: wait-sleep
  }
}

// Per-CPU process scheduler.
// Each CPU calls scheduler() after setting itself up.
// Scheduler never returns.  It loops, doing:
//  - choose a process to run.
//  - swtch to start running that process.
//  - eventually that process transfers control
//    via swtch back to the scheduler.
void scheduler(void)
{
  struct proc *p;
  struct cpu *c = mycpu();

  c->proc = 0;
  for (;;)
  {
    // Avoid deadlock by ensuring that devices can interrupt.
    intr_on();
#ifdef RR

    for (p = proc; p < &proc[NPROC]; p++)
    {
      acquire(&p->lock);
      if (p->state == RUNNABLE)
      {
        // Switch to chosen process.  It is the process's job
        // to release its lock and then reacquire it
        // before jumping back to us.
        p->state = RUNNING;
        c->proc = p;

        p->no_of_times_scheduled++;
        swtch(&c->context, &p->context);

        // Process is done running for now.
        // It should have changed its p->state before coming back.
        c->proc = 0;
      }
      release(&p->lock);
    }

#endif
#ifdef FCFS
    // printf("fcfs\n");
    struct proc *runningprocess = 0;
    int flag = 0;

    for (p = proc; p < &proc[NPROC]; p++)
    {
      acquire(&p->lock);
      if (p->state == RUNNABLE)
      {
        if (flag == 1 && p->createdtime < runningprocess->createdtime)
        {
          release(&runningprocess->lock);
          runningprocess = p;
        }
        else if (flag == 0)
        {
          runningprocess = p;
          flag = 1;
        }
        else
        {
          release(&p->lock);
        }
      }
      else
      {
        release(&p->lock);
      }
    }
    if (runningprocess)
    {
      runningprocess->state = RUNNING;
      c->proc = runningprocess;
      p->no_of_times_scheduled++;
      swtch(&c->context, &runningprocess->context);
      c->proc = 0;
      release(&runningprocess->lock);
    }
#endif
#ifdef PBS

    struct proc *pro = 0;
    int brr, arr = 101;
    for (p = proc; p < &proc[NPROC]; p++)
    {
      acquire(&p->lock);
      int var;
      int crr = p->sleeptime + p->runtime;
      brr = p->staticpriority;
      var = 5;
      if (p->no_of_times_scheduled && crr)
      {
        var = (p->sleeptime / crr) * 10;
        brr = brr + 5 - var;
      }

      int temp;
      if (brr < 100)
      {
        if (brr < 0)
        {
          temp = 0;
        }
        else
        {
          temp = brr;
        }
      }
      else
      {
        temp = 100;
      }

      if (p->state == RUNNABLE)
      {
        if (!pro || arr > temp || (arr == temp && p->no_of_times_scheduled < pro->no_of_times_scheduled) || (arr == temp && p->no_of_times_scheduled == pro->no_of_times_scheduled && p->createdtime < pro->createdtime))
        {
          if (pro)
            release(&pro->lock);

          pro = p;
          arr = temp;
          continue;
        }
      }
      release(&p->lock);
    }

    if (pro)
    {
      pro->starttime = ticks;
      pro->no_of_times_scheduled++;
      pro->state = RUNNING;

      pro->sleeptime = 0;
      pro->runtime = 0;

      c->proc = pro;
      swtch(&c->context, &pro->context);

      c->proc = 0;
      release(&pro->lock);
    }

#endif
#ifdef MLFQ
    struct proc *chosen = 0;
    // Reset priority1 for old processes /Aging/
    for (p = proc; p < &proc[NPROC]; p++)
    {
      if (p->state == RUNNABLE)
      {
        if (ticks - p->qitime >= OLDAGE)
        {
          p->qitime = ticks;
          if (p->in_queue != 0)
          {
            qrm(&mlfq[p->priority1], p->pid);
            p->in_queue = 0;
          }
          if (p->priority1)
          {
            p->priority1 = p->priority1 - 1;
          }
        }
      }
    }
    for (p = proc; p < &proc[NPROC]; p++)
    {
      acquire(&p->lock);
      if (p->state == RUNNABLE)
      {
        if (!(p->in_queue))
        {
          qpush(&mlfq[p->priority1], p);
          p->in_queue = 1;
        }
      }
      release(&p->lock);
    }
    int level = 0;
    while (level < NMLFQ)
    {
      while (mlfq[level].size != 0)
      {
        p = top(&mlfq[level]);
        acquire(&p->lock);
        qpop(&mlfq[level]);
        p->in_queue = 0;
        if (p->state == RUNNABLE)
        {
          p->qitime = ticks;
          chosen = p;
          break;
        }
        else
        {
          release(&p->lock);
        }
      }
      if (chosen != 0)
        break;
      level++;
    }
    if (chosen == 0)
      continue;
    chosen->quanta = 1 << chosen->priority1;
    chosen->nrun++;
    chosen->state = RUNNING;
    c->proc = chosen;
    swtch(&c->context, &chosen->context);
    chosen->qitime = ticks;
    c->proc = 0;
    release(&chosen->lock);
#endif
#ifdef LBS
    const int golden_ticket = (genrand() % (100)) + 1;
    int ticket_count = 0;

    p = proc;
    for (p = proc; p < &proc[NPROC]; p++)
    {
      acquire(&p->lock);
      if (p->state != RUNNABLE)
      {
        ticket_count += p->tickets;
        release(&p->lock);
      }
      else
      {
        ticket_count = ticket_count + p->tickets;
        if (ticket_count < golden_ticket)
        {
          release(&p->lock);
          continue;
        }
        else if (ticket_count > totaltickets)
        {
          p->state = RUNNING;
        }
        c->proc = p;

        swtch(&c->context, &p->context);
        c->proc = 0;
        release(&p->lock);
        break;
      }
    }
#endif
  }
}

// Switch to scheduler.  Must hold only p->lock
// and have changed proc->state. Saves and restores
// intena because intena is a property of this
// kernel thread, not this CPU. It should
// be proc->intena and proc->noff, but that would
// break in the few places where a lock is held but
// there's no process.
void sched(void)
{
  int intena;
  struct proc *p = myproc();

  if (!holding(&p->lock))
    panic("sched p->lock");
  if (mycpu()->noff != 1)
    panic("sched locks");
  if (p->state == RUNNING)
    panic("sched running");
  if (intr_get())
    panic("sched interruptible");

  intena = mycpu()->intena;
  swtch(&p->context, &mycpu()->context);
  mycpu()->intena = intena;
}

// Give up the CPU for one scheduling round.
void yield(void)
{
  struct proc *p = myproc();
  acquire(&p->lock);
  p->state = RUNNABLE;
  sched();
  release(&p->lock);
}

// A fork child's very first scheduling by scheduler()
// will swtch to forkret.
void forkret(void)
{
  static int first = 1;

  // Still holding p->lock from scheduler.
  release(&myproc()->lock);

  if (first)
  {
    // File system initialization must be run in the context of a
    // regular process (e.g., because it calls sleep), and thus cannot
    // be run from main().
    first = 0;
    fsinit(ROOTDEV);
  }

  usertrapret();
}

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void sleep(void *chan, struct spinlock *lk)
{
  struct proc *p = myproc();

  // Must acquire p->lock in order to
  // change p->state and then call sched.
  // Once we hold p->lock, we can be
  // guaranteed that we won't miss any wakeup
  // (wakeup locks p->lock),
  // so it's okay to release lk.

  acquire(&p->lock); // DOC: sleeplock1
  release(lk);

  // Go to sleep.
  p->chan = chan;
  p->state = SLEEPING;
  totaltickets-=p->tickets;
  sched();

  // Tidy up.
  p->chan = 0;

  // Reacquire original lock.
  release(&p->lock);
  acquire(lk);
}

// Wake up all processes sleeping on chan.
// Must be called without any p->lock.
void wakeup(void *chan)
{
  struct proc *p;

  for (p = proc; p < &proc[NPROC]; p++)
  {
    if (p != myproc())
    {
      acquire(&p->lock);
      if (p->state == SLEEPING && p->chan == chan)
      {
        p->state = RUNNABLE;
      }
      release(&p->lock);
    }
  }
}

// Kill the process with the given pid.
// The victim won't exit until it tries to return
// to user space (see usertrap() in trap.c).
int kill(int pid)
{
  struct proc *p;

  for (p = proc; p < &proc[NPROC]; p++)
  {
    acquire(&p->lock);
    if (p->pid == pid)
    {
      p->killed = 1;
      if (p->state == SLEEPING)
      {
        // Wake process from sleep().
        p->state = RUNNABLE;
      }
      release(&p->lock);
      return 0;
    }
    release(&p->lock);
  }
  return -1;
}

void setkilled(struct proc *p)
{
  acquire(&p->lock);
  p->killed = 1;
  release(&p->lock);
}

int killed(struct proc *p)
{
  int k;

  acquire(&p->lock);
  k = p->killed;
  release(&p->lock);
  return k;
}

// Copy to either a user address, or kernel address,
// depending on usr_dst.
// Returns 0 on success, -1 on error.
int either_copyout(int user_dst, uint64 dst, void *src, uint64 len)
{
  struct proc *p = myproc();
  if (user_dst)
  {
    return copyout(p->pagetable, dst, src, len);
  }
  else
  {
    memmove((char *)dst, src, len);
    return 0;
  }
}

// Copy from either a user address, or kernel address,
// depending on usr_src.
// Returns 0 on success, -1 on error.
int either_copyin(void *dst, int user_src, uint64 src, uint64 len)
{
  struct proc *p = myproc();
  if (user_src)
  {
    return copyin(p->pagetable, dst, src, len);
  }
  else
  {
    memmove(dst, (char *)src, len);
    return 0;
  }
}

// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
  static char *states[] = {
  [UNUSED]    "unused",
  [USED]      "used",
  [SLEEPING]  "sleep ",
  [RUNNABLE]  "runble",
  [RUNNING]   "run   ",
  [ZOMBIE]    "zombie"
  };
  struct proc *p;
  char *state;

  printf("\n");
  for(p = proc; p < &proc[NPROC]; p++){
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
      state = states[p->state];
    else
      state = "???";
    printf("%d %s %s", p->pid, state, p->name);
    printf("\n");
  }
}

int set_priority(int priority, int pid)
{
  struct proc *p;

  for (p = proc; p < &proc[NPROC]; p++)
  {
    acquire(&p->lock);

    if (p->pid == pid)
    {
      int brr = p->staticpriority;
      p->staticpriority = priority;

      p->runtime = 0;
      p->sleeptime = 0;

      release(&p->lock);

      if (brr > priority)
        yield();
      return brr;
    }
    release(&p->lock);
  }
  return -1;
}

int waitx(uint64 addr, uint *rtime, uint *wtime)
{
  struct proc *np;
  int havekids, pid;
  struct proc *p = myproc();

  acquire(&wait_lock);

  for (;;)
  {
    // Scan through table looking for exited children.
    havekids = 0;
    for (np = proc; np < &proc[NPROC]; np++)
    {
      if (np->parent == p)
      {
        // make sure the child isn't still in exit() or swtch().
        acquire(&np->lock);

        havekids = 1;
        if (np->state == ZOMBIE)
        {
          // Found one.
          pid = np->pid;
          *rtime = np->total_run_time;
          *wtime = np->endtime - np->createdtime - np->total_run_time;
          if (addr != 0 && copyout(p->pagetable, addr, (char *)&np->xstate,
                                   sizeof(np->xstate)) < 0)
          {
            release(&np->lock);
            release(&wait_lock);
            return -1;
          }
          freeproc(np);
          release(&np->lock);
          release(&wait_lock);
          return pid;
        }
        release(&np->lock);
      }
    }

    // No point waiting if we don't have any children.
    if (!havekids || p->killed)
    {
      release(&wait_lock);
      return -1;
    }

    // Wait for a child to exit.
    sleep(p, &wait_lock); // DOC: wait-sleep
  }
}

void updateTime()
{
  struct proc *p;
  for (p = proc; p < &proc[NPROC]; p++)
  {
    acquire(&p->lock);

    if (p->state == RUNNING)
    {
      p->runtime++;
      p->total_run_time++;
      #ifdef MLFQ
      p->qrtime[p->priority]++;
      p->quanta--;
      #endif
    }

    if (p->state == SLEEPING)
      p->sleeptime++;

    release(&p->lock);
  }
}

// Queue utils
#ifdef MLFQ
struct proc *top(struct Queue *q)
{
  if (q->head == q->tail)
  {
    return 0;
  }
  else
  {
    return q->procs[q->head];
  }
}

void qpush(struct Queue *q, struct proc *element)
{
  if (q->size == NPROC)
    panic("Proccess limit exceeded");
  else
  {
    q->size++;
    q->tail++;
    q->procs[q->tail - 1] = element;
    if (q->tail == NPROC + 1)
    {
      q->tail = 0;
    }
  }
}

void qpop(struct Queue *q)
{
  if (q->size == 0)
    panic("Empty queue");
  else
  {
    q->size--;
    q->head++;
    if (q->head == NPROC + 1)
    {
      q->head = 0;
    }
  }
}

void qrm(struct Queue *q, int pid)
{
  int current = q->head;
  while ( current != q->tail)
  {
    int temp1 = q->procs[current]->pid;
    if (temp1 == pid)
    {
      struct proc *temp2 = q->procs[current];
      struct proc *temp3 = q->procs[(current + 1) % (NPROC + 1)];
      q->procs[current] = temp3;
      q->procs[(current + 1) % (NPROC + 1)] = temp2;
    }
    current = (current + 1) % (NPROC + 1);
  }
  q->size = q->size - 1;
  q->tail = q->tail - 1;
  if (q->tail < 0)
  {
    q->tail = NPROC;
  }
}
#endif