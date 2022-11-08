
user/_strace:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	712d                	addi	sp,sp,-288
   2:	ee06                	sd	ra,280(sp)
   4:	ea22                	sd	s0,272(sp)
   6:	e626                	sd	s1,264(sp)
   8:	e24a                	sd	s2,256(sp)
   a:	1200                	addi	s0,sp,288
   c:	892a                	mv	s2,a0
   e:	84ae                	mv	s1,a1
  10:	6588                	ld	a0,8(a1)
  12:	00000097          	auipc	ra,0x0
  16:	242080e7          	jalr	578(ra) # 254 <atoi>
  1a:	00000097          	auipc	ra,0x0
  1e:	3da080e7          	jalr	986(ra) # 3f4 <trace>
  22:	06054363          	bltz	a0,88 <main+0x88>
  26:	649c                	ld	a5,8(s1)
  28:	0007c783          	lbu	a5,0(a5)
  2c:	fd07879b          	addiw	a5,a5,-48
  30:	0ff7f793          	andi	a5,a5,255
  34:	4725                	li	a4,9
  36:	06f76863          	bltu	a4,a5,a6 <main+0xa6>
  3a:	4789                	li	a5,2
  3c:	0727d563          	bge	a5,s2,a6 <main+0xa6>
  40:	689c                	ld	a5,16(s1)
  42:	eef43023          	sd	a5,-288(s0)
  46:	ffd9071b          	addiw	a4,s2,-3
  4a:	1702                	slli	a4,a4,0x20
  4c:	9301                	srli	a4,a4,0x20
  4e:	070e                	slli	a4,a4,0x3
  50:	4781                	li	a5,0
  52:	0e800593          	li	a1,232
  56:	00f70c63          	beq	a4,a5,6e <main+0x6e>
  5a:	ee040693          	addi	a3,s0,-288
  5e:	96be                	add	a3,a3,a5
  60:	00f48633          	add	a2,s1,a5
  64:	6e10                	ld	a2,24(a2)
  66:	e690                	sd	a2,8(a3)
  68:	07a1                	addi	a5,a5,8
  6a:	feb796e3          	bne	a5,a1,56 <main+0x56>
  6e:	ee040593          	addi	a1,s0,-288
  72:	ee043503          	ld	a0,-288(s0)
  76:	00000097          	auipc	ra,0x0
  7a:	316080e7          	jalr	790(ra) # 38c <exec>
  7e:	4501                	li	a0,0
  80:	00000097          	auipc	ra,0x0
  84:	2d4080e7          	jalr	724(ra) # 354 <exit>
  88:	6090                	ld	a2,0(s1)
  8a:	00001597          	auipc	a1,0x1
  8e:	81658593          	addi	a1,a1,-2026 # 8a0 <malloc+0xee>
  92:	4509                	li	a0,2
  94:	00000097          	auipc	ra,0x0
  98:	632080e7          	jalr	1586(ra) # 6c6 <fprintf>
  9c:	4505                	li	a0,1
  9e:	00000097          	auipc	ra,0x0
  a2:	2b6080e7          	jalr	694(ra) # 354 <exit>
  a6:	6090                	ld	a2,0(s1)
  a8:	00001597          	auipc	a1,0x1
  ac:	81058593          	addi	a1,a1,-2032 # 8b8 <malloc+0x106>
  b0:	4509                	li	a0,2
  b2:	00000097          	auipc	ra,0x0
  b6:	614080e7          	jalr	1556(ra) # 6c6 <fprintf>
  ba:	4505                	li	a0,1
  bc:	00000097          	auipc	ra,0x0
  c0:	298080e7          	jalr	664(ra) # 354 <exit>

00000000000000c4 <_main>:
  c4:	1141                	addi	sp,sp,-16
  c6:	e406                	sd	ra,8(sp)
  c8:	e022                	sd	s0,0(sp)
  ca:	0800                	addi	s0,sp,16
  cc:	00000097          	auipc	ra,0x0
  d0:	f34080e7          	jalr	-204(ra) # 0 <main>
  d4:	4501                	li	a0,0
  d6:	00000097          	auipc	ra,0x0
  da:	27e080e7          	jalr	638(ra) # 354 <exit>

00000000000000de <strcpy>:
  de:	1141                	addi	sp,sp,-16
  e0:	e422                	sd	s0,8(sp)
  e2:	0800                	addi	s0,sp,16
  e4:	87aa                	mv	a5,a0
  e6:	0585                	addi	a1,a1,1
  e8:	0785                	addi	a5,a5,1
  ea:	fff5c703          	lbu	a4,-1(a1)
  ee:	fee78fa3          	sb	a4,-1(a5)
  f2:	fb75                	bnez	a4,e6 <strcpy+0x8>
  f4:	6422                	ld	s0,8(sp)
  f6:	0141                	addi	sp,sp,16
  f8:	8082                	ret

00000000000000fa <strcmp>:
  fa:	1141                	addi	sp,sp,-16
  fc:	e422                	sd	s0,8(sp)
  fe:	0800                	addi	s0,sp,16
 100:	00054783          	lbu	a5,0(a0)
 104:	cb91                	beqz	a5,118 <strcmp+0x1e>
 106:	0005c703          	lbu	a4,0(a1)
 10a:	00f71763          	bne	a4,a5,118 <strcmp+0x1e>
 10e:	0505                	addi	a0,a0,1
 110:	0585                	addi	a1,a1,1
 112:	00054783          	lbu	a5,0(a0)
 116:	fbe5                	bnez	a5,106 <strcmp+0xc>
 118:	0005c503          	lbu	a0,0(a1)
 11c:	40a7853b          	subw	a0,a5,a0
 120:	6422                	ld	s0,8(sp)
 122:	0141                	addi	sp,sp,16
 124:	8082                	ret

0000000000000126 <strlen>:
 126:	1141                	addi	sp,sp,-16
 128:	e422                	sd	s0,8(sp)
 12a:	0800                	addi	s0,sp,16
 12c:	00054783          	lbu	a5,0(a0)
 130:	cf91                	beqz	a5,14c <strlen+0x26>
 132:	0505                	addi	a0,a0,1
 134:	87aa                	mv	a5,a0
 136:	4685                	li	a3,1
 138:	9e89                	subw	a3,a3,a0
 13a:	00f6853b          	addw	a0,a3,a5
 13e:	0785                	addi	a5,a5,1
 140:	fff7c703          	lbu	a4,-1(a5)
 144:	fb7d                	bnez	a4,13a <strlen+0x14>
 146:	6422                	ld	s0,8(sp)
 148:	0141                	addi	sp,sp,16
 14a:	8082                	ret
 14c:	4501                	li	a0,0
 14e:	bfe5                	j	146 <strlen+0x20>

0000000000000150 <memset>:
 150:	1141                	addi	sp,sp,-16
 152:	e422                	sd	s0,8(sp)
 154:	0800                	addi	s0,sp,16
 156:	ce09                	beqz	a2,170 <memset+0x20>
 158:	87aa                	mv	a5,a0
 15a:	fff6071b          	addiw	a4,a2,-1
 15e:	1702                	slli	a4,a4,0x20
 160:	9301                	srli	a4,a4,0x20
 162:	0705                	addi	a4,a4,1
 164:	972a                	add	a4,a4,a0
 166:	00b78023          	sb	a1,0(a5)
 16a:	0785                	addi	a5,a5,1
 16c:	fee79de3          	bne	a5,a4,166 <memset+0x16>
 170:	6422                	ld	s0,8(sp)
 172:	0141                	addi	sp,sp,16
 174:	8082                	ret

0000000000000176 <strchr>:
 176:	1141                	addi	sp,sp,-16
 178:	e422                	sd	s0,8(sp)
 17a:	0800                	addi	s0,sp,16
 17c:	00054783          	lbu	a5,0(a0)
 180:	cb99                	beqz	a5,196 <strchr+0x20>
 182:	00f58763          	beq	a1,a5,190 <strchr+0x1a>
 186:	0505                	addi	a0,a0,1
 188:	00054783          	lbu	a5,0(a0)
 18c:	fbfd                	bnez	a5,182 <strchr+0xc>
 18e:	4501                	li	a0,0
 190:	6422                	ld	s0,8(sp)
 192:	0141                	addi	sp,sp,16
 194:	8082                	ret
 196:	4501                	li	a0,0
 198:	bfe5                	j	190 <strchr+0x1a>

000000000000019a <gets>:
 19a:	711d                	addi	sp,sp,-96
 19c:	ec86                	sd	ra,88(sp)
 19e:	e8a2                	sd	s0,80(sp)
 1a0:	e4a6                	sd	s1,72(sp)
 1a2:	e0ca                	sd	s2,64(sp)
 1a4:	fc4e                	sd	s3,56(sp)
 1a6:	f852                	sd	s4,48(sp)
 1a8:	f456                	sd	s5,40(sp)
 1aa:	f05a                	sd	s6,32(sp)
 1ac:	ec5e                	sd	s7,24(sp)
 1ae:	1080                	addi	s0,sp,96
 1b0:	8baa                	mv	s7,a0
 1b2:	8a2e                	mv	s4,a1
 1b4:	892a                	mv	s2,a0
 1b6:	4481                	li	s1,0
 1b8:	4aa9                	li	s5,10
 1ba:	4b35                	li	s6,13
 1bc:	89a6                	mv	s3,s1
 1be:	2485                	addiw	s1,s1,1
 1c0:	0344d863          	bge	s1,s4,1f0 <gets+0x56>
 1c4:	4605                	li	a2,1
 1c6:	faf40593          	addi	a1,s0,-81
 1ca:	4501                	li	a0,0
 1cc:	00000097          	auipc	ra,0x0
 1d0:	1a0080e7          	jalr	416(ra) # 36c <read>
 1d4:	00a05e63          	blez	a0,1f0 <gets+0x56>
 1d8:	faf44783          	lbu	a5,-81(s0)
 1dc:	00f90023          	sb	a5,0(s2)
 1e0:	01578763          	beq	a5,s5,1ee <gets+0x54>
 1e4:	0905                	addi	s2,s2,1
 1e6:	fd679be3          	bne	a5,s6,1bc <gets+0x22>
 1ea:	89a6                	mv	s3,s1
 1ec:	a011                	j	1f0 <gets+0x56>
 1ee:	89a6                	mv	s3,s1
 1f0:	99de                	add	s3,s3,s7
 1f2:	00098023          	sb	zero,0(s3)
 1f6:	855e                	mv	a0,s7
 1f8:	60e6                	ld	ra,88(sp)
 1fa:	6446                	ld	s0,80(sp)
 1fc:	64a6                	ld	s1,72(sp)
 1fe:	6906                	ld	s2,64(sp)
 200:	79e2                	ld	s3,56(sp)
 202:	7a42                	ld	s4,48(sp)
 204:	7aa2                	ld	s5,40(sp)
 206:	7b02                	ld	s6,32(sp)
 208:	6be2                	ld	s7,24(sp)
 20a:	6125                	addi	sp,sp,96
 20c:	8082                	ret

000000000000020e <stat>:
 20e:	1101                	addi	sp,sp,-32
 210:	ec06                	sd	ra,24(sp)
 212:	e822                	sd	s0,16(sp)
 214:	e426                	sd	s1,8(sp)
 216:	e04a                	sd	s2,0(sp)
 218:	1000                	addi	s0,sp,32
 21a:	892e                	mv	s2,a1
 21c:	4581                	li	a1,0
 21e:	00000097          	auipc	ra,0x0
 222:	176080e7          	jalr	374(ra) # 394 <open>
 226:	02054563          	bltz	a0,250 <stat+0x42>
 22a:	84aa                	mv	s1,a0
 22c:	85ca                	mv	a1,s2
 22e:	00000097          	auipc	ra,0x0
 232:	17e080e7          	jalr	382(ra) # 3ac <fstat>
 236:	892a                	mv	s2,a0
 238:	8526                	mv	a0,s1
 23a:	00000097          	auipc	ra,0x0
 23e:	142080e7          	jalr	322(ra) # 37c <close>
 242:	854a                	mv	a0,s2
 244:	60e2                	ld	ra,24(sp)
 246:	6442                	ld	s0,16(sp)
 248:	64a2                	ld	s1,8(sp)
 24a:	6902                	ld	s2,0(sp)
 24c:	6105                	addi	sp,sp,32
 24e:	8082                	ret
 250:	597d                	li	s2,-1
 252:	bfc5                	j	242 <stat+0x34>

0000000000000254 <atoi>:
 254:	1141                	addi	sp,sp,-16
 256:	e422                	sd	s0,8(sp)
 258:	0800                	addi	s0,sp,16
 25a:	00054603          	lbu	a2,0(a0)
 25e:	fd06079b          	addiw	a5,a2,-48
 262:	0ff7f793          	andi	a5,a5,255
 266:	4725                	li	a4,9
 268:	02f76963          	bltu	a4,a5,29a <atoi+0x46>
 26c:	86aa                	mv	a3,a0
 26e:	4501                	li	a0,0
 270:	45a5                	li	a1,9
 272:	0685                	addi	a3,a3,1
 274:	0025179b          	slliw	a5,a0,0x2
 278:	9fa9                	addw	a5,a5,a0
 27a:	0017979b          	slliw	a5,a5,0x1
 27e:	9fb1                	addw	a5,a5,a2
 280:	fd07851b          	addiw	a0,a5,-48
 284:	0006c603          	lbu	a2,0(a3)
 288:	fd06071b          	addiw	a4,a2,-48
 28c:	0ff77713          	andi	a4,a4,255
 290:	fee5f1e3          	bgeu	a1,a4,272 <atoi+0x1e>
 294:	6422                	ld	s0,8(sp)
 296:	0141                	addi	sp,sp,16
 298:	8082                	ret
 29a:	4501                	li	a0,0
 29c:	bfe5                	j	294 <atoi+0x40>

000000000000029e <memmove>:
 29e:	1141                	addi	sp,sp,-16
 2a0:	e422                	sd	s0,8(sp)
 2a2:	0800                	addi	s0,sp,16
 2a4:	02b57663          	bgeu	a0,a1,2d0 <memmove+0x32>
 2a8:	02c05163          	blez	a2,2ca <memmove+0x2c>
 2ac:	fff6079b          	addiw	a5,a2,-1
 2b0:	1782                	slli	a5,a5,0x20
 2b2:	9381                	srli	a5,a5,0x20
 2b4:	0785                	addi	a5,a5,1
 2b6:	97aa                	add	a5,a5,a0
 2b8:	872a                	mv	a4,a0
 2ba:	0585                	addi	a1,a1,1
 2bc:	0705                	addi	a4,a4,1
 2be:	fff5c683          	lbu	a3,-1(a1)
 2c2:	fed70fa3          	sb	a3,-1(a4)
 2c6:	fee79ae3          	bne	a5,a4,2ba <memmove+0x1c>
 2ca:	6422                	ld	s0,8(sp)
 2cc:	0141                	addi	sp,sp,16
 2ce:	8082                	ret
 2d0:	00c50733          	add	a4,a0,a2
 2d4:	95b2                	add	a1,a1,a2
 2d6:	fec05ae3          	blez	a2,2ca <memmove+0x2c>
 2da:	fff6079b          	addiw	a5,a2,-1
 2de:	1782                	slli	a5,a5,0x20
 2e0:	9381                	srli	a5,a5,0x20
 2e2:	fff7c793          	not	a5,a5
 2e6:	97ba                	add	a5,a5,a4
 2e8:	15fd                	addi	a1,a1,-1
 2ea:	177d                	addi	a4,a4,-1
 2ec:	0005c683          	lbu	a3,0(a1)
 2f0:	00d70023          	sb	a3,0(a4)
 2f4:	fee79ae3          	bne	a5,a4,2e8 <memmove+0x4a>
 2f8:	bfc9                	j	2ca <memmove+0x2c>

00000000000002fa <memcmp>:
 2fa:	1141                	addi	sp,sp,-16
 2fc:	e422                	sd	s0,8(sp)
 2fe:	0800                	addi	s0,sp,16
 300:	ca05                	beqz	a2,330 <memcmp+0x36>
 302:	fff6069b          	addiw	a3,a2,-1
 306:	1682                	slli	a3,a3,0x20
 308:	9281                	srli	a3,a3,0x20
 30a:	0685                	addi	a3,a3,1
 30c:	96aa                	add	a3,a3,a0
 30e:	00054783          	lbu	a5,0(a0)
 312:	0005c703          	lbu	a4,0(a1)
 316:	00e79863          	bne	a5,a4,326 <memcmp+0x2c>
 31a:	0505                	addi	a0,a0,1
 31c:	0585                	addi	a1,a1,1
 31e:	fed518e3          	bne	a0,a3,30e <memcmp+0x14>
 322:	4501                	li	a0,0
 324:	a019                	j	32a <memcmp+0x30>
 326:	40e7853b          	subw	a0,a5,a4
 32a:	6422                	ld	s0,8(sp)
 32c:	0141                	addi	sp,sp,16
 32e:	8082                	ret
 330:	4501                	li	a0,0
 332:	bfe5                	j	32a <memcmp+0x30>

0000000000000334 <memcpy>:
 334:	1141                	addi	sp,sp,-16
 336:	e406                	sd	ra,8(sp)
 338:	e022                	sd	s0,0(sp)
 33a:	0800                	addi	s0,sp,16
 33c:	00000097          	auipc	ra,0x0
 340:	f62080e7          	jalr	-158(ra) # 29e <memmove>
 344:	60a2                	ld	ra,8(sp)
 346:	6402                	ld	s0,0(sp)
 348:	0141                	addi	sp,sp,16
 34a:	8082                	ret

000000000000034c <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
 34c:	4885                	li	a7,1
 ecall
 34e:	00000073          	ecall
 ret
 352:	8082                	ret

0000000000000354 <exit>:
.global exit
exit:
 li a7, SYS_exit
 354:	4889                	li	a7,2
 ecall
 356:	00000073          	ecall
 ret
 35a:	8082                	ret

000000000000035c <wait>:
.global wait
wait:
 li a7, SYS_wait
 35c:	488d                	li	a7,3
 ecall
 35e:	00000073          	ecall
 ret
 362:	8082                	ret

0000000000000364 <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
 364:	4891                	li	a7,4
 ecall
 366:	00000073          	ecall
 ret
 36a:	8082                	ret

000000000000036c <read>:
.global read
read:
 li a7, SYS_read
 36c:	4895                	li	a7,5
 ecall
 36e:	00000073          	ecall
 ret
 372:	8082                	ret

0000000000000374 <write>:
.global write
write:
 li a7, SYS_write
 374:	48c1                	li	a7,16
 ecall
 376:	00000073          	ecall
 ret
 37a:	8082                	ret

000000000000037c <close>:
.global close
close:
 li a7, SYS_close
 37c:	48d5                	li	a7,21
 ecall
 37e:	00000073          	ecall
 ret
 382:	8082                	ret

0000000000000384 <kill>:
.global kill
kill:
 li a7, SYS_kill
 384:	4899                	li	a7,6
 ecall
 386:	00000073          	ecall
 ret
 38a:	8082                	ret

000000000000038c <exec>:
.global exec
exec:
 li a7, SYS_exec
 38c:	489d                	li	a7,7
 ecall
 38e:	00000073          	ecall
 ret
 392:	8082                	ret

0000000000000394 <open>:
.global open
open:
 li a7, SYS_open
 394:	48bd                	li	a7,15
 ecall
 396:	00000073          	ecall
 ret
 39a:	8082                	ret

000000000000039c <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
 39c:	48c5                	li	a7,17
 ecall
 39e:	00000073          	ecall
 ret
 3a2:	8082                	ret

00000000000003a4 <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
 3a4:	48c9                	li	a7,18
 ecall
 3a6:	00000073          	ecall
 ret
 3aa:	8082                	ret

00000000000003ac <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
 3ac:	48a1                	li	a7,8
 ecall
 3ae:	00000073          	ecall
 ret
 3b2:	8082                	ret

00000000000003b4 <link>:
.global link
link:
 li a7, SYS_link
 3b4:	48cd                	li	a7,19
 ecall
 3b6:	00000073          	ecall
 ret
 3ba:	8082                	ret

00000000000003bc <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
 3bc:	48d1                	li	a7,20
 ecall
 3be:	00000073          	ecall
 ret
 3c2:	8082                	ret

00000000000003c4 <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
 3c4:	48a5                	li	a7,9
 ecall
 3c6:	00000073          	ecall
 ret
 3ca:	8082                	ret

00000000000003cc <dup>:
.global dup
dup:
 li a7, SYS_dup
 3cc:	48a9                	li	a7,10
 ecall
 3ce:	00000073          	ecall
 ret
 3d2:	8082                	ret

00000000000003d4 <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
 3d4:	48ad                	li	a7,11
 ecall
 3d6:	00000073          	ecall
 ret
 3da:	8082                	ret

00000000000003dc <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
 3dc:	48b1                	li	a7,12
 ecall
 3de:	00000073          	ecall
 ret
 3e2:	8082                	ret

00000000000003e4 <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
 3e4:	48b5                	li	a7,13
 ecall
 3e6:	00000073          	ecall
 ret
 3ea:	8082                	ret

00000000000003ec <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
 3ec:	48b9                	li	a7,14
 ecall
 3ee:	00000073          	ecall
 ret
 3f2:	8082                	ret

00000000000003f4 <trace>:
.global trace
trace:
 li a7, SYS_trace
 3f4:	48d9                	li	a7,22
 ecall
 3f6:	00000073          	ecall
 ret
 3fa:	8082                	ret

00000000000003fc <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
 3fc:	48e1                	li	a7,24
 ecall
 3fe:	00000073          	ecall
 ret
 402:	8082                	ret

0000000000000404 <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
 404:	48dd                	li	a7,23
 ecall
 406:	00000073          	ecall
 ret
 40a:	8082                	ret

000000000000040c <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
 40c:	48e5                	li	a7,25
 ecall
 40e:	00000073          	ecall
 ret
 412:	8082                	ret

0000000000000414 <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
 414:	48e9                	li	a7,26
 ecall
 416:	00000073          	ecall
 ret
 41a:	8082                	ret

000000000000041c <putc>:
 41c:	1101                	addi	sp,sp,-32
 41e:	ec06                	sd	ra,24(sp)
 420:	e822                	sd	s0,16(sp)
 422:	1000                	addi	s0,sp,32
 424:	feb407a3          	sb	a1,-17(s0)
 428:	4605                	li	a2,1
 42a:	fef40593          	addi	a1,s0,-17
 42e:	00000097          	auipc	ra,0x0
 432:	f46080e7          	jalr	-186(ra) # 374 <write>
 436:	60e2                	ld	ra,24(sp)
 438:	6442                	ld	s0,16(sp)
 43a:	6105                	addi	sp,sp,32
 43c:	8082                	ret

000000000000043e <printint>:
 43e:	7139                	addi	sp,sp,-64
 440:	fc06                	sd	ra,56(sp)
 442:	f822                	sd	s0,48(sp)
 444:	f426                	sd	s1,40(sp)
 446:	f04a                	sd	s2,32(sp)
 448:	ec4e                	sd	s3,24(sp)
 44a:	0080                	addi	s0,sp,64
 44c:	84aa                	mv	s1,a0
 44e:	c299                	beqz	a3,454 <printint+0x16>
 450:	0805c863          	bltz	a1,4e0 <printint+0xa2>
 454:	2581                	sext.w	a1,a1
 456:	4881                	li	a7,0
 458:	fc040693          	addi	a3,s0,-64
 45c:	4701                	li	a4,0
 45e:	2601                	sext.w	a2,a2
 460:	00000517          	auipc	a0,0x0
 464:	47850513          	addi	a0,a0,1144 # 8d8 <digits>
 468:	883a                	mv	a6,a4
 46a:	2705                	addiw	a4,a4,1
 46c:	02c5f7bb          	remuw	a5,a1,a2
 470:	1782                	slli	a5,a5,0x20
 472:	9381                	srli	a5,a5,0x20
 474:	97aa                	add	a5,a5,a0
 476:	0007c783          	lbu	a5,0(a5)
 47a:	00f68023          	sb	a5,0(a3)
 47e:	0005879b          	sext.w	a5,a1
 482:	02c5d5bb          	divuw	a1,a1,a2
 486:	0685                	addi	a3,a3,1
 488:	fec7f0e3          	bgeu	a5,a2,468 <printint+0x2a>
 48c:	00088b63          	beqz	a7,4a2 <printint+0x64>
 490:	fd040793          	addi	a5,s0,-48
 494:	973e                	add	a4,a4,a5
 496:	02d00793          	li	a5,45
 49a:	fef70823          	sb	a5,-16(a4)
 49e:	0028071b          	addiw	a4,a6,2
 4a2:	02e05863          	blez	a4,4d2 <printint+0x94>
 4a6:	fc040793          	addi	a5,s0,-64
 4aa:	00e78933          	add	s2,a5,a4
 4ae:	fff78993          	addi	s3,a5,-1
 4b2:	99ba                	add	s3,s3,a4
 4b4:	377d                	addiw	a4,a4,-1
 4b6:	1702                	slli	a4,a4,0x20
 4b8:	9301                	srli	a4,a4,0x20
 4ba:	40e989b3          	sub	s3,s3,a4
 4be:	fff94583          	lbu	a1,-1(s2)
 4c2:	8526                	mv	a0,s1
 4c4:	00000097          	auipc	ra,0x0
 4c8:	f58080e7          	jalr	-168(ra) # 41c <putc>
 4cc:	197d                	addi	s2,s2,-1
 4ce:	ff3918e3          	bne	s2,s3,4be <printint+0x80>
 4d2:	70e2                	ld	ra,56(sp)
 4d4:	7442                	ld	s0,48(sp)
 4d6:	74a2                	ld	s1,40(sp)
 4d8:	7902                	ld	s2,32(sp)
 4da:	69e2                	ld	s3,24(sp)
 4dc:	6121                	addi	sp,sp,64
 4de:	8082                	ret
 4e0:	40b005bb          	negw	a1,a1
 4e4:	4885                	li	a7,1
 4e6:	bf8d                	j	458 <printint+0x1a>

00000000000004e8 <vprintf>:
 4e8:	7119                	addi	sp,sp,-128
 4ea:	fc86                	sd	ra,120(sp)
 4ec:	f8a2                	sd	s0,112(sp)
 4ee:	f4a6                	sd	s1,104(sp)
 4f0:	f0ca                	sd	s2,96(sp)
 4f2:	ecce                	sd	s3,88(sp)
 4f4:	e8d2                	sd	s4,80(sp)
 4f6:	e4d6                	sd	s5,72(sp)
 4f8:	e0da                	sd	s6,64(sp)
 4fa:	fc5e                	sd	s7,56(sp)
 4fc:	f862                	sd	s8,48(sp)
 4fe:	f466                	sd	s9,40(sp)
 500:	f06a                	sd	s10,32(sp)
 502:	ec6e                	sd	s11,24(sp)
 504:	0100                	addi	s0,sp,128
 506:	0005c903          	lbu	s2,0(a1)
 50a:	18090f63          	beqz	s2,6a8 <vprintf+0x1c0>
 50e:	8aaa                	mv	s5,a0
 510:	8b32                	mv	s6,a2
 512:	00158493          	addi	s1,a1,1
 516:	4981                	li	s3,0
 518:	02500a13          	li	s4,37
 51c:	06400c13          	li	s8,100
 520:	06c00c93          	li	s9,108
 524:	07800d13          	li	s10,120
 528:	07000d93          	li	s11,112
 52c:	00000b97          	auipc	s7,0x0
 530:	3acb8b93          	addi	s7,s7,940 # 8d8 <digits>
 534:	a839                	j	552 <vprintf+0x6a>
 536:	85ca                	mv	a1,s2
 538:	8556                	mv	a0,s5
 53a:	00000097          	auipc	ra,0x0
 53e:	ee2080e7          	jalr	-286(ra) # 41c <putc>
 542:	a019                	j	548 <vprintf+0x60>
 544:	01498f63          	beq	s3,s4,562 <vprintf+0x7a>
 548:	0485                	addi	s1,s1,1
 54a:	fff4c903          	lbu	s2,-1(s1)
 54e:	14090d63          	beqz	s2,6a8 <vprintf+0x1c0>
 552:	0009079b          	sext.w	a5,s2
 556:	fe0997e3          	bnez	s3,544 <vprintf+0x5c>
 55a:	fd479ee3          	bne	a5,s4,536 <vprintf+0x4e>
 55e:	89be                	mv	s3,a5
 560:	b7e5                	j	548 <vprintf+0x60>
 562:	05878063          	beq	a5,s8,5a2 <vprintf+0xba>
 566:	05978c63          	beq	a5,s9,5be <vprintf+0xd6>
 56a:	07a78863          	beq	a5,s10,5da <vprintf+0xf2>
 56e:	09b78463          	beq	a5,s11,5f6 <vprintf+0x10e>
 572:	07300713          	li	a4,115
 576:	0ce78663          	beq	a5,a4,642 <vprintf+0x15a>
 57a:	06300713          	li	a4,99
 57e:	0ee78e63          	beq	a5,a4,67a <vprintf+0x192>
 582:	11478863          	beq	a5,s4,692 <vprintf+0x1aa>
 586:	85d2                	mv	a1,s4
 588:	8556                	mv	a0,s5
 58a:	00000097          	auipc	ra,0x0
 58e:	e92080e7          	jalr	-366(ra) # 41c <putc>
 592:	85ca                	mv	a1,s2
 594:	8556                	mv	a0,s5
 596:	00000097          	auipc	ra,0x0
 59a:	e86080e7          	jalr	-378(ra) # 41c <putc>
 59e:	4981                	li	s3,0
 5a0:	b765                	j	548 <vprintf+0x60>
 5a2:	008b0913          	addi	s2,s6,8
 5a6:	4685                	li	a3,1
 5a8:	4629                	li	a2,10
 5aa:	000b2583          	lw	a1,0(s6)
 5ae:	8556                	mv	a0,s5
 5b0:	00000097          	auipc	ra,0x0
 5b4:	e8e080e7          	jalr	-370(ra) # 43e <printint>
 5b8:	8b4a                	mv	s6,s2
 5ba:	4981                	li	s3,0
 5bc:	b771                	j	548 <vprintf+0x60>
 5be:	008b0913          	addi	s2,s6,8
 5c2:	4681                	li	a3,0
 5c4:	4629                	li	a2,10
 5c6:	000b2583          	lw	a1,0(s6)
 5ca:	8556                	mv	a0,s5
 5cc:	00000097          	auipc	ra,0x0
 5d0:	e72080e7          	jalr	-398(ra) # 43e <printint>
 5d4:	8b4a                	mv	s6,s2
 5d6:	4981                	li	s3,0
 5d8:	bf85                	j	548 <vprintf+0x60>
 5da:	008b0913          	addi	s2,s6,8
 5de:	4681                	li	a3,0
 5e0:	4641                	li	a2,16
 5e2:	000b2583          	lw	a1,0(s6)
 5e6:	8556                	mv	a0,s5
 5e8:	00000097          	auipc	ra,0x0
 5ec:	e56080e7          	jalr	-426(ra) # 43e <printint>
 5f0:	8b4a                	mv	s6,s2
 5f2:	4981                	li	s3,0
 5f4:	bf91                	j	548 <vprintf+0x60>
 5f6:	008b0793          	addi	a5,s6,8
 5fa:	f8f43423          	sd	a5,-120(s0)
 5fe:	000b3983          	ld	s3,0(s6)
 602:	03000593          	li	a1,48
 606:	8556                	mv	a0,s5
 608:	00000097          	auipc	ra,0x0
 60c:	e14080e7          	jalr	-492(ra) # 41c <putc>
 610:	85ea                	mv	a1,s10
 612:	8556                	mv	a0,s5
 614:	00000097          	auipc	ra,0x0
 618:	e08080e7          	jalr	-504(ra) # 41c <putc>
 61c:	4941                	li	s2,16
 61e:	03c9d793          	srli	a5,s3,0x3c
 622:	97de                	add	a5,a5,s7
 624:	0007c583          	lbu	a1,0(a5)
 628:	8556                	mv	a0,s5
 62a:	00000097          	auipc	ra,0x0
 62e:	df2080e7          	jalr	-526(ra) # 41c <putc>
 632:	0992                	slli	s3,s3,0x4
 634:	397d                	addiw	s2,s2,-1
 636:	fe0914e3          	bnez	s2,61e <vprintf+0x136>
 63a:	f8843b03          	ld	s6,-120(s0)
 63e:	4981                	li	s3,0
 640:	b721                	j	548 <vprintf+0x60>
 642:	008b0993          	addi	s3,s6,8
 646:	000b3903          	ld	s2,0(s6)
 64a:	02090163          	beqz	s2,66c <vprintf+0x184>
 64e:	00094583          	lbu	a1,0(s2)
 652:	c9a1                	beqz	a1,6a2 <vprintf+0x1ba>
 654:	8556                	mv	a0,s5
 656:	00000097          	auipc	ra,0x0
 65a:	dc6080e7          	jalr	-570(ra) # 41c <putc>
 65e:	0905                	addi	s2,s2,1
 660:	00094583          	lbu	a1,0(s2)
 664:	f9e5                	bnez	a1,654 <vprintf+0x16c>
 666:	8b4e                	mv	s6,s3
 668:	4981                	li	s3,0
 66a:	bdf9                	j	548 <vprintf+0x60>
 66c:	00000917          	auipc	s2,0x0
 670:	26490913          	addi	s2,s2,612 # 8d0 <malloc+0x11e>
 674:	02800593          	li	a1,40
 678:	bff1                	j	654 <vprintf+0x16c>
 67a:	008b0913          	addi	s2,s6,8
 67e:	000b4583          	lbu	a1,0(s6)
 682:	8556                	mv	a0,s5
 684:	00000097          	auipc	ra,0x0
 688:	d98080e7          	jalr	-616(ra) # 41c <putc>
 68c:	8b4a                	mv	s6,s2
 68e:	4981                	li	s3,0
 690:	bd65                	j	548 <vprintf+0x60>
 692:	85d2                	mv	a1,s4
 694:	8556                	mv	a0,s5
 696:	00000097          	auipc	ra,0x0
 69a:	d86080e7          	jalr	-634(ra) # 41c <putc>
 69e:	4981                	li	s3,0
 6a0:	b565                	j	548 <vprintf+0x60>
 6a2:	8b4e                	mv	s6,s3
 6a4:	4981                	li	s3,0
 6a6:	b54d                	j	548 <vprintf+0x60>
 6a8:	70e6                	ld	ra,120(sp)
 6aa:	7446                	ld	s0,112(sp)
 6ac:	74a6                	ld	s1,104(sp)
 6ae:	7906                	ld	s2,96(sp)
 6b0:	69e6                	ld	s3,88(sp)
 6b2:	6a46                	ld	s4,80(sp)
 6b4:	6aa6                	ld	s5,72(sp)
 6b6:	6b06                	ld	s6,64(sp)
 6b8:	7be2                	ld	s7,56(sp)
 6ba:	7c42                	ld	s8,48(sp)
 6bc:	7ca2                	ld	s9,40(sp)
 6be:	7d02                	ld	s10,32(sp)
 6c0:	6de2                	ld	s11,24(sp)
 6c2:	6109                	addi	sp,sp,128
 6c4:	8082                	ret

00000000000006c6 <fprintf>:
 6c6:	715d                	addi	sp,sp,-80
 6c8:	ec06                	sd	ra,24(sp)
 6ca:	e822                	sd	s0,16(sp)
 6cc:	1000                	addi	s0,sp,32
 6ce:	e010                	sd	a2,0(s0)
 6d0:	e414                	sd	a3,8(s0)
 6d2:	e818                	sd	a4,16(s0)
 6d4:	ec1c                	sd	a5,24(s0)
 6d6:	03043023          	sd	a6,32(s0)
 6da:	03143423          	sd	a7,40(s0)
 6de:	fe843423          	sd	s0,-24(s0)
 6e2:	8622                	mv	a2,s0
 6e4:	00000097          	auipc	ra,0x0
 6e8:	e04080e7          	jalr	-508(ra) # 4e8 <vprintf>
 6ec:	60e2                	ld	ra,24(sp)
 6ee:	6442                	ld	s0,16(sp)
 6f0:	6161                	addi	sp,sp,80
 6f2:	8082                	ret

00000000000006f4 <printf>:
 6f4:	711d                	addi	sp,sp,-96
 6f6:	ec06                	sd	ra,24(sp)
 6f8:	e822                	sd	s0,16(sp)
 6fa:	1000                	addi	s0,sp,32
 6fc:	e40c                	sd	a1,8(s0)
 6fe:	e810                	sd	a2,16(s0)
 700:	ec14                	sd	a3,24(s0)
 702:	f018                	sd	a4,32(s0)
 704:	f41c                	sd	a5,40(s0)
 706:	03043823          	sd	a6,48(s0)
 70a:	03143c23          	sd	a7,56(s0)
 70e:	00840613          	addi	a2,s0,8
 712:	fec43423          	sd	a2,-24(s0)
 716:	85aa                	mv	a1,a0
 718:	4505                	li	a0,1
 71a:	00000097          	auipc	ra,0x0
 71e:	dce080e7          	jalr	-562(ra) # 4e8 <vprintf>
 722:	60e2                	ld	ra,24(sp)
 724:	6442                	ld	s0,16(sp)
 726:	6125                	addi	sp,sp,96
 728:	8082                	ret

000000000000072a <free>:
 72a:	1141                	addi	sp,sp,-16
 72c:	e422                	sd	s0,8(sp)
 72e:	0800                	addi	s0,sp,16
 730:	ff050693          	addi	a3,a0,-16
 734:	00001797          	auipc	a5,0x1
 738:	8cc7b783          	ld	a5,-1844(a5) # 1000 <freep>
 73c:	a805                	j	76c <free+0x42>
 73e:	4618                	lw	a4,8(a2)
 740:	9db9                	addw	a1,a1,a4
 742:	feb52c23          	sw	a1,-8(a0)
 746:	6398                	ld	a4,0(a5)
 748:	6318                	ld	a4,0(a4)
 74a:	fee53823          	sd	a4,-16(a0)
 74e:	a091                	j	792 <free+0x68>
 750:	ff852703          	lw	a4,-8(a0)
 754:	9e39                	addw	a2,a2,a4
 756:	c790                	sw	a2,8(a5)
 758:	ff053703          	ld	a4,-16(a0)
 75c:	e398                	sd	a4,0(a5)
 75e:	a099                	j	7a4 <free+0x7a>
 760:	6398                	ld	a4,0(a5)
 762:	00e7e463          	bltu	a5,a4,76a <free+0x40>
 766:	00e6ea63          	bltu	a3,a4,77a <free+0x50>
 76a:	87ba                	mv	a5,a4
 76c:	fed7fae3          	bgeu	a5,a3,760 <free+0x36>
 770:	6398                	ld	a4,0(a5)
 772:	00e6e463          	bltu	a3,a4,77a <free+0x50>
 776:	fee7eae3          	bltu	a5,a4,76a <free+0x40>
 77a:	ff852583          	lw	a1,-8(a0)
 77e:	6390                	ld	a2,0(a5)
 780:	02059713          	slli	a4,a1,0x20
 784:	9301                	srli	a4,a4,0x20
 786:	0712                	slli	a4,a4,0x4
 788:	9736                	add	a4,a4,a3
 78a:	fae60ae3          	beq	a2,a4,73e <free+0x14>
 78e:	fec53823          	sd	a2,-16(a0)
 792:	4790                	lw	a2,8(a5)
 794:	02061713          	slli	a4,a2,0x20
 798:	9301                	srli	a4,a4,0x20
 79a:	0712                	slli	a4,a4,0x4
 79c:	973e                	add	a4,a4,a5
 79e:	fae689e3          	beq	a3,a4,750 <free+0x26>
 7a2:	e394                	sd	a3,0(a5)
 7a4:	00001717          	auipc	a4,0x1
 7a8:	84f73e23          	sd	a5,-1956(a4) # 1000 <freep>
 7ac:	6422                	ld	s0,8(sp)
 7ae:	0141                	addi	sp,sp,16
 7b0:	8082                	ret

00000000000007b2 <malloc>:
 7b2:	7139                	addi	sp,sp,-64
 7b4:	fc06                	sd	ra,56(sp)
 7b6:	f822                	sd	s0,48(sp)
 7b8:	f426                	sd	s1,40(sp)
 7ba:	f04a                	sd	s2,32(sp)
 7bc:	ec4e                	sd	s3,24(sp)
 7be:	e852                	sd	s4,16(sp)
 7c0:	e456                	sd	s5,8(sp)
 7c2:	e05a                	sd	s6,0(sp)
 7c4:	0080                	addi	s0,sp,64
 7c6:	02051493          	slli	s1,a0,0x20
 7ca:	9081                	srli	s1,s1,0x20
 7cc:	04bd                	addi	s1,s1,15
 7ce:	8091                	srli	s1,s1,0x4
 7d0:	0014899b          	addiw	s3,s1,1
 7d4:	0485                	addi	s1,s1,1
 7d6:	00001517          	auipc	a0,0x1
 7da:	82a53503          	ld	a0,-2006(a0) # 1000 <freep>
 7de:	c515                	beqz	a0,80a <malloc+0x58>
 7e0:	611c                	ld	a5,0(a0)
 7e2:	4798                	lw	a4,8(a5)
 7e4:	02977f63          	bgeu	a4,s1,822 <malloc+0x70>
 7e8:	8a4e                	mv	s4,s3
 7ea:	0009871b          	sext.w	a4,s3
 7ee:	6685                	lui	a3,0x1
 7f0:	00d77363          	bgeu	a4,a3,7f6 <malloc+0x44>
 7f4:	6a05                	lui	s4,0x1
 7f6:	000a0b1b          	sext.w	s6,s4
 7fa:	004a1a1b          	slliw	s4,s4,0x4
 7fe:	00001917          	auipc	s2,0x1
 802:	80290913          	addi	s2,s2,-2046 # 1000 <freep>
 806:	5afd                	li	s5,-1
 808:	a88d                	j	87a <malloc+0xc8>
 80a:	00001797          	auipc	a5,0x1
 80e:	80678793          	addi	a5,a5,-2042 # 1010 <base>
 812:	00000717          	auipc	a4,0x0
 816:	7ef73723          	sd	a5,2030(a4) # 1000 <freep>
 81a:	e39c                	sd	a5,0(a5)
 81c:	0007a423          	sw	zero,8(a5)
 820:	b7e1                	j	7e8 <malloc+0x36>
 822:	02e48b63          	beq	s1,a4,858 <malloc+0xa6>
 826:	4137073b          	subw	a4,a4,s3
 82a:	c798                	sw	a4,8(a5)
 82c:	1702                	slli	a4,a4,0x20
 82e:	9301                	srli	a4,a4,0x20
 830:	0712                	slli	a4,a4,0x4
 832:	97ba                	add	a5,a5,a4
 834:	0137a423          	sw	s3,8(a5)
 838:	00000717          	auipc	a4,0x0
 83c:	7ca73423          	sd	a0,1992(a4) # 1000 <freep>
 840:	01078513          	addi	a0,a5,16
 844:	70e2                	ld	ra,56(sp)
 846:	7442                	ld	s0,48(sp)
 848:	74a2                	ld	s1,40(sp)
 84a:	7902                	ld	s2,32(sp)
 84c:	69e2                	ld	s3,24(sp)
 84e:	6a42                	ld	s4,16(sp)
 850:	6aa2                	ld	s5,8(sp)
 852:	6b02                	ld	s6,0(sp)
 854:	6121                	addi	sp,sp,64
 856:	8082                	ret
 858:	6398                	ld	a4,0(a5)
 85a:	e118                	sd	a4,0(a0)
 85c:	bff1                	j	838 <malloc+0x86>
 85e:	01652423          	sw	s6,8(a0)
 862:	0541                	addi	a0,a0,16
 864:	00000097          	auipc	ra,0x0
 868:	ec6080e7          	jalr	-314(ra) # 72a <free>
 86c:	00093503          	ld	a0,0(s2)
 870:	d971                	beqz	a0,844 <malloc+0x92>
 872:	611c                	ld	a5,0(a0)
 874:	4798                	lw	a4,8(a5)
 876:	fa9776e3          	bgeu	a4,s1,822 <malloc+0x70>
 87a:	00093703          	ld	a4,0(s2)
 87e:	853e                	mv	a0,a5
 880:	fef719e3          	bne	a4,a5,872 <malloc+0xc0>
 884:	8552                	mv	a0,s4
 886:	00000097          	auipc	ra,0x0
 88a:	b56080e7          	jalr	-1194(ra) # 3dc <sbrk>
 88e:	fd5518e3          	bne	a0,s5,85e <malloc+0xac>
 892:	4501                	li	a0,0
 894:	bf45                	j	844 <malloc+0x92>
