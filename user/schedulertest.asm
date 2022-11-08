
user/_schedulertest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7139                	addi	sp,sp,-64
   2:	fc06                	sd	ra,56(sp)
   4:	f822                	sd	s0,48(sp)
   6:	f426                	sd	s1,40(sp)
   8:	f04a                	sd	s2,32(sp)
   a:	ec4e                	sd	s3,24(sp)
   c:	0080                	addi	s0,sp,64
   e:	4481                	li	s1,0
  10:	4929                	li	s2,10
  12:	00000097          	auipc	ra,0x0
  16:	342080e7          	jalr	834(ra) # 354 <fork>
  1a:	04054d63          	bltz	a0,74 <main+0x74>
  1e:	c519                	beqz	a0,2c <main+0x2c>
  20:	2485                	addiw	s1,s1,1
  22:	ff2498e3          	bne	s1,s2,12 <main+0x12>
  26:	4901                	li	s2,0
  28:	4981                	li	s3,0
  2a:	a8ad                	j	a4 <main+0xa4>
  2c:	fc042223          	sw	zero,-60(s0)
  30:	fc442703          	lw	a4,-60(s0)
  34:	2701                	sext.w	a4,a4
  36:	3b9ad7b7          	lui	a5,0x3b9ad
  3a:	9ff78793          	addi	a5,a5,-1537 # 3b9ac9ff <base+0x3b9ab9ef>
  3e:	00e7cd63          	blt	a5,a4,58 <main+0x58>
  42:	873e                	mv	a4,a5
  44:	fc442783          	lw	a5,-60(s0)
  48:	2785                	addiw	a5,a5,1
  4a:	fcf42223          	sw	a5,-60(s0)
  4e:	fc442783          	lw	a5,-60(s0)
  52:	2781                	sext.w	a5,a5
  54:	fef758e3          	bge	a4,a5,44 <main+0x44>
  58:	85a6                	mv	a1,s1
  5a:	00001517          	auipc	a0,0x1
  5e:	84650513          	addi	a0,a0,-1978 # 8a0 <malloc+0xe6>
  62:	00000097          	auipc	ra,0x0
  66:	69a080e7          	jalr	1690(ra) # 6fc <printf>
  6a:	4501                	li	a0,0
  6c:	00000097          	auipc	ra,0x0
  70:	2f0080e7          	jalr	752(ra) # 35c <exit>
  74:	fa9049e3          	bgtz	s1,26 <main+0x26>
  78:	4901                	li	s2,0
  7a:	4981                	li	s3,0
  7c:	45a9                	li	a1,10
  7e:	02b9c63b          	divw	a2,s3,a1
  82:	02b945bb          	divw	a1,s2,a1
  86:	00001517          	auipc	a0,0x1
  8a:	83250513          	addi	a0,a0,-1998 # 8b8 <malloc+0xfe>
  8e:	00000097          	auipc	ra,0x0
  92:	66e080e7          	jalr	1646(ra) # 6fc <printf>
  96:	4501                	li	a0,0
  98:	00000097          	auipc	ra,0x0
  9c:	2c4080e7          	jalr	708(ra) # 35c <exit>
  a0:	34fd                	addiw	s1,s1,-1
  a2:	dce9                	beqz	s1,7c <main+0x7c>
  a4:	fcc40613          	addi	a2,s0,-52
  a8:	fc840593          	addi	a1,s0,-56
  ac:	4501                	li	a0,0
  ae:	00000097          	auipc	ra,0x0
  b2:	356080e7          	jalr	854(ra) # 404 <waitx>
  b6:	fe0545e3          	bltz	a0,a0 <main+0xa0>
  ba:	fc842783          	lw	a5,-56(s0)
  be:	0127893b          	addw	s2,a5,s2
  c2:	fcc42783          	lw	a5,-52(s0)
  c6:	013789bb          	addw	s3,a5,s3
  ca:	bfd9                	j	a0 <main+0xa0>

00000000000000cc <_main>:
  cc:	1141                	addi	sp,sp,-16
  ce:	e406                	sd	ra,8(sp)
  d0:	e022                	sd	s0,0(sp)
  d2:	0800                	addi	s0,sp,16
  d4:	00000097          	auipc	ra,0x0
  d8:	f2c080e7          	jalr	-212(ra) # 0 <main>
  dc:	4501                	li	a0,0
  de:	00000097          	auipc	ra,0x0
  e2:	27e080e7          	jalr	638(ra) # 35c <exit>

00000000000000e6 <strcpy>:
  e6:	1141                	addi	sp,sp,-16
  e8:	e422                	sd	s0,8(sp)
  ea:	0800                	addi	s0,sp,16
  ec:	87aa                	mv	a5,a0
  ee:	0585                	addi	a1,a1,1
  f0:	0785                	addi	a5,a5,1
  f2:	fff5c703          	lbu	a4,-1(a1)
  f6:	fee78fa3          	sb	a4,-1(a5)
  fa:	fb75                	bnez	a4,ee <strcpy+0x8>
  fc:	6422                	ld	s0,8(sp)
  fe:	0141                	addi	sp,sp,16
 100:	8082                	ret

0000000000000102 <strcmp>:
 102:	1141                	addi	sp,sp,-16
 104:	e422                	sd	s0,8(sp)
 106:	0800                	addi	s0,sp,16
 108:	00054783          	lbu	a5,0(a0)
 10c:	cb91                	beqz	a5,120 <strcmp+0x1e>
 10e:	0005c703          	lbu	a4,0(a1)
 112:	00f71763          	bne	a4,a5,120 <strcmp+0x1e>
 116:	0505                	addi	a0,a0,1
 118:	0585                	addi	a1,a1,1
 11a:	00054783          	lbu	a5,0(a0)
 11e:	fbe5                	bnez	a5,10e <strcmp+0xc>
 120:	0005c503          	lbu	a0,0(a1)
 124:	40a7853b          	subw	a0,a5,a0
 128:	6422                	ld	s0,8(sp)
 12a:	0141                	addi	sp,sp,16
 12c:	8082                	ret

000000000000012e <strlen>:
 12e:	1141                	addi	sp,sp,-16
 130:	e422                	sd	s0,8(sp)
 132:	0800                	addi	s0,sp,16
 134:	00054783          	lbu	a5,0(a0)
 138:	cf91                	beqz	a5,154 <strlen+0x26>
 13a:	0505                	addi	a0,a0,1
 13c:	87aa                	mv	a5,a0
 13e:	4685                	li	a3,1
 140:	9e89                	subw	a3,a3,a0
 142:	00f6853b          	addw	a0,a3,a5
 146:	0785                	addi	a5,a5,1
 148:	fff7c703          	lbu	a4,-1(a5)
 14c:	fb7d                	bnez	a4,142 <strlen+0x14>
 14e:	6422                	ld	s0,8(sp)
 150:	0141                	addi	sp,sp,16
 152:	8082                	ret
 154:	4501                	li	a0,0
 156:	bfe5                	j	14e <strlen+0x20>

0000000000000158 <memset>:
 158:	1141                	addi	sp,sp,-16
 15a:	e422                	sd	s0,8(sp)
 15c:	0800                	addi	s0,sp,16
 15e:	ce09                	beqz	a2,178 <memset+0x20>
 160:	87aa                	mv	a5,a0
 162:	fff6071b          	addiw	a4,a2,-1
 166:	1702                	slli	a4,a4,0x20
 168:	9301                	srli	a4,a4,0x20
 16a:	0705                	addi	a4,a4,1
 16c:	972a                	add	a4,a4,a0
 16e:	00b78023          	sb	a1,0(a5)
 172:	0785                	addi	a5,a5,1
 174:	fee79de3          	bne	a5,a4,16e <memset+0x16>
 178:	6422                	ld	s0,8(sp)
 17a:	0141                	addi	sp,sp,16
 17c:	8082                	ret

000000000000017e <strchr>:
 17e:	1141                	addi	sp,sp,-16
 180:	e422                	sd	s0,8(sp)
 182:	0800                	addi	s0,sp,16
 184:	00054783          	lbu	a5,0(a0)
 188:	cb99                	beqz	a5,19e <strchr+0x20>
 18a:	00f58763          	beq	a1,a5,198 <strchr+0x1a>
 18e:	0505                	addi	a0,a0,1
 190:	00054783          	lbu	a5,0(a0)
 194:	fbfd                	bnez	a5,18a <strchr+0xc>
 196:	4501                	li	a0,0
 198:	6422                	ld	s0,8(sp)
 19a:	0141                	addi	sp,sp,16
 19c:	8082                	ret
 19e:	4501                	li	a0,0
 1a0:	bfe5                	j	198 <strchr+0x1a>

00000000000001a2 <gets>:
 1a2:	711d                	addi	sp,sp,-96
 1a4:	ec86                	sd	ra,88(sp)
 1a6:	e8a2                	sd	s0,80(sp)
 1a8:	e4a6                	sd	s1,72(sp)
 1aa:	e0ca                	sd	s2,64(sp)
 1ac:	fc4e                	sd	s3,56(sp)
 1ae:	f852                	sd	s4,48(sp)
 1b0:	f456                	sd	s5,40(sp)
 1b2:	f05a                	sd	s6,32(sp)
 1b4:	ec5e                	sd	s7,24(sp)
 1b6:	1080                	addi	s0,sp,96
 1b8:	8baa                	mv	s7,a0
 1ba:	8a2e                	mv	s4,a1
 1bc:	892a                	mv	s2,a0
 1be:	4481                	li	s1,0
 1c0:	4aa9                	li	s5,10
 1c2:	4b35                	li	s6,13
 1c4:	89a6                	mv	s3,s1
 1c6:	2485                	addiw	s1,s1,1
 1c8:	0344d863          	bge	s1,s4,1f8 <gets+0x56>
 1cc:	4605                	li	a2,1
 1ce:	faf40593          	addi	a1,s0,-81
 1d2:	4501                	li	a0,0
 1d4:	00000097          	auipc	ra,0x0
 1d8:	1a0080e7          	jalr	416(ra) # 374 <read>
 1dc:	00a05e63          	blez	a0,1f8 <gets+0x56>
 1e0:	faf44783          	lbu	a5,-81(s0)
 1e4:	00f90023          	sb	a5,0(s2)
 1e8:	01578763          	beq	a5,s5,1f6 <gets+0x54>
 1ec:	0905                	addi	s2,s2,1
 1ee:	fd679be3          	bne	a5,s6,1c4 <gets+0x22>
 1f2:	89a6                	mv	s3,s1
 1f4:	a011                	j	1f8 <gets+0x56>
 1f6:	89a6                	mv	s3,s1
 1f8:	99de                	add	s3,s3,s7
 1fa:	00098023          	sb	zero,0(s3)
 1fe:	855e                	mv	a0,s7
 200:	60e6                	ld	ra,88(sp)
 202:	6446                	ld	s0,80(sp)
 204:	64a6                	ld	s1,72(sp)
 206:	6906                	ld	s2,64(sp)
 208:	79e2                	ld	s3,56(sp)
 20a:	7a42                	ld	s4,48(sp)
 20c:	7aa2                	ld	s5,40(sp)
 20e:	7b02                	ld	s6,32(sp)
 210:	6be2                	ld	s7,24(sp)
 212:	6125                	addi	sp,sp,96
 214:	8082                	ret

0000000000000216 <stat>:
 216:	1101                	addi	sp,sp,-32
 218:	ec06                	sd	ra,24(sp)
 21a:	e822                	sd	s0,16(sp)
 21c:	e426                	sd	s1,8(sp)
 21e:	e04a                	sd	s2,0(sp)
 220:	1000                	addi	s0,sp,32
 222:	892e                	mv	s2,a1
 224:	4581                	li	a1,0
 226:	00000097          	auipc	ra,0x0
 22a:	176080e7          	jalr	374(ra) # 39c <open>
 22e:	02054563          	bltz	a0,258 <stat+0x42>
 232:	84aa                	mv	s1,a0
 234:	85ca                	mv	a1,s2
 236:	00000097          	auipc	ra,0x0
 23a:	17e080e7          	jalr	382(ra) # 3b4 <fstat>
 23e:	892a                	mv	s2,a0
 240:	8526                	mv	a0,s1
 242:	00000097          	auipc	ra,0x0
 246:	142080e7          	jalr	322(ra) # 384 <close>
 24a:	854a                	mv	a0,s2
 24c:	60e2                	ld	ra,24(sp)
 24e:	6442                	ld	s0,16(sp)
 250:	64a2                	ld	s1,8(sp)
 252:	6902                	ld	s2,0(sp)
 254:	6105                	addi	sp,sp,32
 256:	8082                	ret
 258:	597d                	li	s2,-1
 25a:	bfc5                	j	24a <stat+0x34>

000000000000025c <atoi>:
 25c:	1141                	addi	sp,sp,-16
 25e:	e422                	sd	s0,8(sp)
 260:	0800                	addi	s0,sp,16
 262:	00054603          	lbu	a2,0(a0)
 266:	fd06079b          	addiw	a5,a2,-48
 26a:	0ff7f793          	andi	a5,a5,255
 26e:	4725                	li	a4,9
 270:	02f76963          	bltu	a4,a5,2a2 <atoi+0x46>
 274:	86aa                	mv	a3,a0
 276:	4501                	li	a0,0
 278:	45a5                	li	a1,9
 27a:	0685                	addi	a3,a3,1
 27c:	0025179b          	slliw	a5,a0,0x2
 280:	9fa9                	addw	a5,a5,a0
 282:	0017979b          	slliw	a5,a5,0x1
 286:	9fb1                	addw	a5,a5,a2
 288:	fd07851b          	addiw	a0,a5,-48
 28c:	0006c603          	lbu	a2,0(a3)
 290:	fd06071b          	addiw	a4,a2,-48
 294:	0ff77713          	andi	a4,a4,255
 298:	fee5f1e3          	bgeu	a1,a4,27a <atoi+0x1e>
 29c:	6422                	ld	s0,8(sp)
 29e:	0141                	addi	sp,sp,16
 2a0:	8082                	ret
 2a2:	4501                	li	a0,0
 2a4:	bfe5                	j	29c <atoi+0x40>

00000000000002a6 <memmove>:
 2a6:	1141                	addi	sp,sp,-16
 2a8:	e422                	sd	s0,8(sp)
 2aa:	0800                	addi	s0,sp,16
 2ac:	02b57663          	bgeu	a0,a1,2d8 <memmove+0x32>
 2b0:	02c05163          	blez	a2,2d2 <memmove+0x2c>
 2b4:	fff6079b          	addiw	a5,a2,-1
 2b8:	1782                	slli	a5,a5,0x20
 2ba:	9381                	srli	a5,a5,0x20
 2bc:	0785                	addi	a5,a5,1
 2be:	97aa                	add	a5,a5,a0
 2c0:	872a                	mv	a4,a0
 2c2:	0585                	addi	a1,a1,1
 2c4:	0705                	addi	a4,a4,1
 2c6:	fff5c683          	lbu	a3,-1(a1)
 2ca:	fed70fa3          	sb	a3,-1(a4)
 2ce:	fee79ae3          	bne	a5,a4,2c2 <memmove+0x1c>
 2d2:	6422                	ld	s0,8(sp)
 2d4:	0141                	addi	sp,sp,16
 2d6:	8082                	ret
 2d8:	00c50733          	add	a4,a0,a2
 2dc:	95b2                	add	a1,a1,a2
 2de:	fec05ae3          	blez	a2,2d2 <memmove+0x2c>
 2e2:	fff6079b          	addiw	a5,a2,-1
 2e6:	1782                	slli	a5,a5,0x20
 2e8:	9381                	srli	a5,a5,0x20
 2ea:	fff7c793          	not	a5,a5
 2ee:	97ba                	add	a5,a5,a4
 2f0:	15fd                	addi	a1,a1,-1
 2f2:	177d                	addi	a4,a4,-1
 2f4:	0005c683          	lbu	a3,0(a1)
 2f8:	00d70023          	sb	a3,0(a4)
 2fc:	fee79ae3          	bne	a5,a4,2f0 <memmove+0x4a>
 300:	bfc9                	j	2d2 <memmove+0x2c>

0000000000000302 <memcmp>:
 302:	1141                	addi	sp,sp,-16
 304:	e422                	sd	s0,8(sp)
 306:	0800                	addi	s0,sp,16
 308:	ca05                	beqz	a2,338 <memcmp+0x36>
 30a:	fff6069b          	addiw	a3,a2,-1
 30e:	1682                	slli	a3,a3,0x20
 310:	9281                	srli	a3,a3,0x20
 312:	0685                	addi	a3,a3,1
 314:	96aa                	add	a3,a3,a0
 316:	00054783          	lbu	a5,0(a0)
 31a:	0005c703          	lbu	a4,0(a1)
 31e:	00e79863          	bne	a5,a4,32e <memcmp+0x2c>
 322:	0505                	addi	a0,a0,1
 324:	0585                	addi	a1,a1,1
 326:	fed518e3          	bne	a0,a3,316 <memcmp+0x14>
 32a:	4501                	li	a0,0
 32c:	a019                	j	332 <memcmp+0x30>
 32e:	40e7853b          	subw	a0,a5,a4
 332:	6422                	ld	s0,8(sp)
 334:	0141                	addi	sp,sp,16
 336:	8082                	ret
 338:	4501                	li	a0,0
 33a:	bfe5                	j	332 <memcmp+0x30>

000000000000033c <memcpy>:
 33c:	1141                	addi	sp,sp,-16
 33e:	e406                	sd	ra,8(sp)
 340:	e022                	sd	s0,0(sp)
 342:	0800                	addi	s0,sp,16
 344:	00000097          	auipc	ra,0x0
 348:	f62080e7          	jalr	-158(ra) # 2a6 <memmove>
 34c:	60a2                	ld	ra,8(sp)
 34e:	6402                	ld	s0,0(sp)
 350:	0141                	addi	sp,sp,16
 352:	8082                	ret

0000000000000354 <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
 354:	4885                	li	a7,1
 ecall
 356:	00000073          	ecall
 ret
 35a:	8082                	ret

000000000000035c <exit>:
.global exit
exit:
 li a7, SYS_exit
 35c:	4889                	li	a7,2
 ecall
 35e:	00000073          	ecall
 ret
 362:	8082                	ret

0000000000000364 <wait>:
.global wait
wait:
 li a7, SYS_wait
 364:	488d                	li	a7,3
 ecall
 366:	00000073          	ecall
 ret
 36a:	8082                	ret

000000000000036c <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
 36c:	4891                	li	a7,4
 ecall
 36e:	00000073          	ecall
 ret
 372:	8082                	ret

0000000000000374 <read>:
.global read
read:
 li a7, SYS_read
 374:	4895                	li	a7,5
 ecall
 376:	00000073          	ecall
 ret
 37a:	8082                	ret

000000000000037c <write>:
.global write
write:
 li a7, SYS_write
 37c:	48c1                	li	a7,16
 ecall
 37e:	00000073          	ecall
 ret
 382:	8082                	ret

0000000000000384 <close>:
.global close
close:
 li a7, SYS_close
 384:	48d5                	li	a7,21
 ecall
 386:	00000073          	ecall
 ret
 38a:	8082                	ret

000000000000038c <kill>:
.global kill
kill:
 li a7, SYS_kill
 38c:	4899                	li	a7,6
 ecall
 38e:	00000073          	ecall
 ret
 392:	8082                	ret

0000000000000394 <exec>:
.global exec
exec:
 li a7, SYS_exec
 394:	489d                	li	a7,7
 ecall
 396:	00000073          	ecall
 ret
 39a:	8082                	ret

000000000000039c <open>:
.global open
open:
 li a7, SYS_open
 39c:	48bd                	li	a7,15
 ecall
 39e:	00000073          	ecall
 ret
 3a2:	8082                	ret

00000000000003a4 <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
 3a4:	48c5                	li	a7,17
 ecall
 3a6:	00000073          	ecall
 ret
 3aa:	8082                	ret

00000000000003ac <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
 3ac:	48c9                	li	a7,18
 ecall
 3ae:	00000073          	ecall
 ret
 3b2:	8082                	ret

00000000000003b4 <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
 3b4:	48a1                	li	a7,8
 ecall
 3b6:	00000073          	ecall
 ret
 3ba:	8082                	ret

00000000000003bc <link>:
.global link
link:
 li a7, SYS_link
 3bc:	48cd                	li	a7,19
 ecall
 3be:	00000073          	ecall
 ret
 3c2:	8082                	ret

00000000000003c4 <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
 3c4:	48d1                	li	a7,20
 ecall
 3c6:	00000073          	ecall
 ret
 3ca:	8082                	ret

00000000000003cc <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
 3cc:	48a5                	li	a7,9
 ecall
 3ce:	00000073          	ecall
 ret
 3d2:	8082                	ret

00000000000003d4 <dup>:
.global dup
dup:
 li a7, SYS_dup
 3d4:	48a9                	li	a7,10
 ecall
 3d6:	00000073          	ecall
 ret
 3da:	8082                	ret

00000000000003dc <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
 3dc:	48ad                	li	a7,11
 ecall
 3de:	00000073          	ecall
 ret
 3e2:	8082                	ret

00000000000003e4 <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
 3e4:	48b1                	li	a7,12
 ecall
 3e6:	00000073          	ecall
 ret
 3ea:	8082                	ret

00000000000003ec <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
 3ec:	48b5                	li	a7,13
 ecall
 3ee:	00000073          	ecall
 ret
 3f2:	8082                	ret

00000000000003f4 <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
 3f4:	48b9                	li	a7,14
 ecall
 3f6:	00000073          	ecall
 ret
 3fa:	8082                	ret

00000000000003fc <trace>:
.global trace
trace:
 li a7, SYS_trace
 3fc:	48d9                	li	a7,22
 ecall
 3fe:	00000073          	ecall
 ret
 402:	8082                	ret

0000000000000404 <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
 404:	48e1                	li	a7,24
 ecall
 406:	00000073          	ecall
 ret
 40a:	8082                	ret

000000000000040c <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
 40c:	48dd                	li	a7,23
 ecall
 40e:	00000073          	ecall
 ret
 412:	8082                	ret

0000000000000414 <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
 414:	48e5                	li	a7,25
 ecall
 416:	00000073          	ecall
 ret
 41a:	8082                	ret

000000000000041c <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
 41c:	48e9                	li	a7,26
 ecall
 41e:	00000073          	ecall
 ret
 422:	8082                	ret

0000000000000424 <putc>:
 424:	1101                	addi	sp,sp,-32
 426:	ec06                	sd	ra,24(sp)
 428:	e822                	sd	s0,16(sp)
 42a:	1000                	addi	s0,sp,32
 42c:	feb407a3          	sb	a1,-17(s0)
 430:	4605                	li	a2,1
 432:	fef40593          	addi	a1,s0,-17
 436:	00000097          	auipc	ra,0x0
 43a:	f46080e7          	jalr	-186(ra) # 37c <write>
 43e:	60e2                	ld	ra,24(sp)
 440:	6442                	ld	s0,16(sp)
 442:	6105                	addi	sp,sp,32
 444:	8082                	ret

0000000000000446 <printint>:
 446:	7139                	addi	sp,sp,-64
 448:	fc06                	sd	ra,56(sp)
 44a:	f822                	sd	s0,48(sp)
 44c:	f426                	sd	s1,40(sp)
 44e:	f04a                	sd	s2,32(sp)
 450:	ec4e                	sd	s3,24(sp)
 452:	0080                	addi	s0,sp,64
 454:	84aa                	mv	s1,a0
 456:	c299                	beqz	a3,45c <printint+0x16>
 458:	0805c863          	bltz	a1,4e8 <printint+0xa2>
 45c:	2581                	sext.w	a1,a1
 45e:	4881                	li	a7,0
 460:	fc040693          	addi	a3,s0,-64
 464:	4701                	li	a4,0
 466:	2601                	sext.w	a2,a2
 468:	00000517          	auipc	a0,0x0
 46c:	47850513          	addi	a0,a0,1144 # 8e0 <digits>
 470:	883a                	mv	a6,a4
 472:	2705                	addiw	a4,a4,1
 474:	02c5f7bb          	remuw	a5,a1,a2
 478:	1782                	slli	a5,a5,0x20
 47a:	9381                	srli	a5,a5,0x20
 47c:	97aa                	add	a5,a5,a0
 47e:	0007c783          	lbu	a5,0(a5)
 482:	00f68023          	sb	a5,0(a3)
 486:	0005879b          	sext.w	a5,a1
 48a:	02c5d5bb          	divuw	a1,a1,a2
 48e:	0685                	addi	a3,a3,1
 490:	fec7f0e3          	bgeu	a5,a2,470 <printint+0x2a>
 494:	00088b63          	beqz	a7,4aa <printint+0x64>
 498:	fd040793          	addi	a5,s0,-48
 49c:	973e                	add	a4,a4,a5
 49e:	02d00793          	li	a5,45
 4a2:	fef70823          	sb	a5,-16(a4)
 4a6:	0028071b          	addiw	a4,a6,2
 4aa:	02e05863          	blez	a4,4da <printint+0x94>
 4ae:	fc040793          	addi	a5,s0,-64
 4b2:	00e78933          	add	s2,a5,a4
 4b6:	fff78993          	addi	s3,a5,-1
 4ba:	99ba                	add	s3,s3,a4
 4bc:	377d                	addiw	a4,a4,-1
 4be:	1702                	slli	a4,a4,0x20
 4c0:	9301                	srli	a4,a4,0x20
 4c2:	40e989b3          	sub	s3,s3,a4
 4c6:	fff94583          	lbu	a1,-1(s2)
 4ca:	8526                	mv	a0,s1
 4cc:	00000097          	auipc	ra,0x0
 4d0:	f58080e7          	jalr	-168(ra) # 424 <putc>
 4d4:	197d                	addi	s2,s2,-1
 4d6:	ff3918e3          	bne	s2,s3,4c6 <printint+0x80>
 4da:	70e2                	ld	ra,56(sp)
 4dc:	7442                	ld	s0,48(sp)
 4de:	74a2                	ld	s1,40(sp)
 4e0:	7902                	ld	s2,32(sp)
 4e2:	69e2                	ld	s3,24(sp)
 4e4:	6121                	addi	sp,sp,64
 4e6:	8082                	ret
 4e8:	40b005bb          	negw	a1,a1
 4ec:	4885                	li	a7,1
 4ee:	bf8d                	j	460 <printint+0x1a>

00000000000004f0 <vprintf>:
 4f0:	7119                	addi	sp,sp,-128
 4f2:	fc86                	sd	ra,120(sp)
 4f4:	f8a2                	sd	s0,112(sp)
 4f6:	f4a6                	sd	s1,104(sp)
 4f8:	f0ca                	sd	s2,96(sp)
 4fa:	ecce                	sd	s3,88(sp)
 4fc:	e8d2                	sd	s4,80(sp)
 4fe:	e4d6                	sd	s5,72(sp)
 500:	e0da                	sd	s6,64(sp)
 502:	fc5e                	sd	s7,56(sp)
 504:	f862                	sd	s8,48(sp)
 506:	f466                	sd	s9,40(sp)
 508:	f06a                	sd	s10,32(sp)
 50a:	ec6e                	sd	s11,24(sp)
 50c:	0100                	addi	s0,sp,128
 50e:	0005c903          	lbu	s2,0(a1)
 512:	18090f63          	beqz	s2,6b0 <vprintf+0x1c0>
 516:	8aaa                	mv	s5,a0
 518:	8b32                	mv	s6,a2
 51a:	00158493          	addi	s1,a1,1
 51e:	4981                	li	s3,0
 520:	02500a13          	li	s4,37
 524:	06400c13          	li	s8,100
 528:	06c00c93          	li	s9,108
 52c:	07800d13          	li	s10,120
 530:	07000d93          	li	s11,112
 534:	00000b97          	auipc	s7,0x0
 538:	3acb8b93          	addi	s7,s7,940 # 8e0 <digits>
 53c:	a839                	j	55a <vprintf+0x6a>
 53e:	85ca                	mv	a1,s2
 540:	8556                	mv	a0,s5
 542:	00000097          	auipc	ra,0x0
 546:	ee2080e7          	jalr	-286(ra) # 424 <putc>
 54a:	a019                	j	550 <vprintf+0x60>
 54c:	01498f63          	beq	s3,s4,56a <vprintf+0x7a>
 550:	0485                	addi	s1,s1,1
 552:	fff4c903          	lbu	s2,-1(s1)
 556:	14090d63          	beqz	s2,6b0 <vprintf+0x1c0>
 55a:	0009079b          	sext.w	a5,s2
 55e:	fe0997e3          	bnez	s3,54c <vprintf+0x5c>
 562:	fd479ee3          	bne	a5,s4,53e <vprintf+0x4e>
 566:	89be                	mv	s3,a5
 568:	b7e5                	j	550 <vprintf+0x60>
 56a:	05878063          	beq	a5,s8,5aa <vprintf+0xba>
 56e:	05978c63          	beq	a5,s9,5c6 <vprintf+0xd6>
 572:	07a78863          	beq	a5,s10,5e2 <vprintf+0xf2>
 576:	09b78463          	beq	a5,s11,5fe <vprintf+0x10e>
 57a:	07300713          	li	a4,115
 57e:	0ce78663          	beq	a5,a4,64a <vprintf+0x15a>
 582:	06300713          	li	a4,99
 586:	0ee78e63          	beq	a5,a4,682 <vprintf+0x192>
 58a:	11478863          	beq	a5,s4,69a <vprintf+0x1aa>
 58e:	85d2                	mv	a1,s4
 590:	8556                	mv	a0,s5
 592:	00000097          	auipc	ra,0x0
 596:	e92080e7          	jalr	-366(ra) # 424 <putc>
 59a:	85ca                	mv	a1,s2
 59c:	8556                	mv	a0,s5
 59e:	00000097          	auipc	ra,0x0
 5a2:	e86080e7          	jalr	-378(ra) # 424 <putc>
 5a6:	4981                	li	s3,0
 5a8:	b765                	j	550 <vprintf+0x60>
 5aa:	008b0913          	addi	s2,s6,8
 5ae:	4685                	li	a3,1
 5b0:	4629                	li	a2,10
 5b2:	000b2583          	lw	a1,0(s6)
 5b6:	8556                	mv	a0,s5
 5b8:	00000097          	auipc	ra,0x0
 5bc:	e8e080e7          	jalr	-370(ra) # 446 <printint>
 5c0:	8b4a                	mv	s6,s2
 5c2:	4981                	li	s3,0
 5c4:	b771                	j	550 <vprintf+0x60>
 5c6:	008b0913          	addi	s2,s6,8
 5ca:	4681                	li	a3,0
 5cc:	4629                	li	a2,10
 5ce:	000b2583          	lw	a1,0(s6)
 5d2:	8556                	mv	a0,s5
 5d4:	00000097          	auipc	ra,0x0
 5d8:	e72080e7          	jalr	-398(ra) # 446 <printint>
 5dc:	8b4a                	mv	s6,s2
 5de:	4981                	li	s3,0
 5e0:	bf85                	j	550 <vprintf+0x60>
 5e2:	008b0913          	addi	s2,s6,8
 5e6:	4681                	li	a3,0
 5e8:	4641                	li	a2,16
 5ea:	000b2583          	lw	a1,0(s6)
 5ee:	8556                	mv	a0,s5
 5f0:	00000097          	auipc	ra,0x0
 5f4:	e56080e7          	jalr	-426(ra) # 446 <printint>
 5f8:	8b4a                	mv	s6,s2
 5fa:	4981                	li	s3,0
 5fc:	bf91                	j	550 <vprintf+0x60>
 5fe:	008b0793          	addi	a5,s6,8
 602:	f8f43423          	sd	a5,-120(s0)
 606:	000b3983          	ld	s3,0(s6)
 60a:	03000593          	li	a1,48
 60e:	8556                	mv	a0,s5
 610:	00000097          	auipc	ra,0x0
 614:	e14080e7          	jalr	-492(ra) # 424 <putc>
 618:	85ea                	mv	a1,s10
 61a:	8556                	mv	a0,s5
 61c:	00000097          	auipc	ra,0x0
 620:	e08080e7          	jalr	-504(ra) # 424 <putc>
 624:	4941                	li	s2,16
 626:	03c9d793          	srli	a5,s3,0x3c
 62a:	97de                	add	a5,a5,s7
 62c:	0007c583          	lbu	a1,0(a5)
 630:	8556                	mv	a0,s5
 632:	00000097          	auipc	ra,0x0
 636:	df2080e7          	jalr	-526(ra) # 424 <putc>
 63a:	0992                	slli	s3,s3,0x4
 63c:	397d                	addiw	s2,s2,-1
 63e:	fe0914e3          	bnez	s2,626 <vprintf+0x136>
 642:	f8843b03          	ld	s6,-120(s0)
 646:	4981                	li	s3,0
 648:	b721                	j	550 <vprintf+0x60>
 64a:	008b0993          	addi	s3,s6,8
 64e:	000b3903          	ld	s2,0(s6)
 652:	02090163          	beqz	s2,674 <vprintf+0x184>
 656:	00094583          	lbu	a1,0(s2)
 65a:	c9a1                	beqz	a1,6aa <vprintf+0x1ba>
 65c:	8556                	mv	a0,s5
 65e:	00000097          	auipc	ra,0x0
 662:	dc6080e7          	jalr	-570(ra) # 424 <putc>
 666:	0905                	addi	s2,s2,1
 668:	00094583          	lbu	a1,0(s2)
 66c:	f9e5                	bnez	a1,65c <vprintf+0x16c>
 66e:	8b4e                	mv	s6,s3
 670:	4981                	li	s3,0
 672:	bdf9                	j	550 <vprintf+0x60>
 674:	00000917          	auipc	s2,0x0
 678:	26490913          	addi	s2,s2,612 # 8d8 <malloc+0x11e>
 67c:	02800593          	li	a1,40
 680:	bff1                	j	65c <vprintf+0x16c>
 682:	008b0913          	addi	s2,s6,8
 686:	000b4583          	lbu	a1,0(s6)
 68a:	8556                	mv	a0,s5
 68c:	00000097          	auipc	ra,0x0
 690:	d98080e7          	jalr	-616(ra) # 424 <putc>
 694:	8b4a                	mv	s6,s2
 696:	4981                	li	s3,0
 698:	bd65                	j	550 <vprintf+0x60>
 69a:	85d2                	mv	a1,s4
 69c:	8556                	mv	a0,s5
 69e:	00000097          	auipc	ra,0x0
 6a2:	d86080e7          	jalr	-634(ra) # 424 <putc>
 6a6:	4981                	li	s3,0
 6a8:	b565                	j	550 <vprintf+0x60>
 6aa:	8b4e                	mv	s6,s3
 6ac:	4981                	li	s3,0
 6ae:	b54d                	j	550 <vprintf+0x60>
 6b0:	70e6                	ld	ra,120(sp)
 6b2:	7446                	ld	s0,112(sp)
 6b4:	74a6                	ld	s1,104(sp)
 6b6:	7906                	ld	s2,96(sp)
 6b8:	69e6                	ld	s3,88(sp)
 6ba:	6a46                	ld	s4,80(sp)
 6bc:	6aa6                	ld	s5,72(sp)
 6be:	6b06                	ld	s6,64(sp)
 6c0:	7be2                	ld	s7,56(sp)
 6c2:	7c42                	ld	s8,48(sp)
 6c4:	7ca2                	ld	s9,40(sp)
 6c6:	7d02                	ld	s10,32(sp)
 6c8:	6de2                	ld	s11,24(sp)
 6ca:	6109                	addi	sp,sp,128
 6cc:	8082                	ret

00000000000006ce <fprintf>:
 6ce:	715d                	addi	sp,sp,-80
 6d0:	ec06                	sd	ra,24(sp)
 6d2:	e822                	sd	s0,16(sp)
 6d4:	1000                	addi	s0,sp,32
 6d6:	e010                	sd	a2,0(s0)
 6d8:	e414                	sd	a3,8(s0)
 6da:	e818                	sd	a4,16(s0)
 6dc:	ec1c                	sd	a5,24(s0)
 6de:	03043023          	sd	a6,32(s0)
 6e2:	03143423          	sd	a7,40(s0)
 6e6:	fe843423          	sd	s0,-24(s0)
 6ea:	8622                	mv	a2,s0
 6ec:	00000097          	auipc	ra,0x0
 6f0:	e04080e7          	jalr	-508(ra) # 4f0 <vprintf>
 6f4:	60e2                	ld	ra,24(sp)
 6f6:	6442                	ld	s0,16(sp)
 6f8:	6161                	addi	sp,sp,80
 6fa:	8082                	ret

00000000000006fc <printf>:
 6fc:	711d                	addi	sp,sp,-96
 6fe:	ec06                	sd	ra,24(sp)
 700:	e822                	sd	s0,16(sp)
 702:	1000                	addi	s0,sp,32
 704:	e40c                	sd	a1,8(s0)
 706:	e810                	sd	a2,16(s0)
 708:	ec14                	sd	a3,24(s0)
 70a:	f018                	sd	a4,32(s0)
 70c:	f41c                	sd	a5,40(s0)
 70e:	03043823          	sd	a6,48(s0)
 712:	03143c23          	sd	a7,56(s0)
 716:	00840613          	addi	a2,s0,8
 71a:	fec43423          	sd	a2,-24(s0)
 71e:	85aa                	mv	a1,a0
 720:	4505                	li	a0,1
 722:	00000097          	auipc	ra,0x0
 726:	dce080e7          	jalr	-562(ra) # 4f0 <vprintf>
 72a:	60e2                	ld	ra,24(sp)
 72c:	6442                	ld	s0,16(sp)
 72e:	6125                	addi	sp,sp,96
 730:	8082                	ret

0000000000000732 <free>:
 732:	1141                	addi	sp,sp,-16
 734:	e422                	sd	s0,8(sp)
 736:	0800                	addi	s0,sp,16
 738:	ff050693          	addi	a3,a0,-16
 73c:	00001797          	auipc	a5,0x1
 740:	8c47b783          	ld	a5,-1852(a5) # 1000 <freep>
 744:	a805                	j	774 <free+0x42>
 746:	4618                	lw	a4,8(a2)
 748:	9db9                	addw	a1,a1,a4
 74a:	feb52c23          	sw	a1,-8(a0)
 74e:	6398                	ld	a4,0(a5)
 750:	6318                	ld	a4,0(a4)
 752:	fee53823          	sd	a4,-16(a0)
 756:	a091                	j	79a <free+0x68>
 758:	ff852703          	lw	a4,-8(a0)
 75c:	9e39                	addw	a2,a2,a4
 75e:	c790                	sw	a2,8(a5)
 760:	ff053703          	ld	a4,-16(a0)
 764:	e398                	sd	a4,0(a5)
 766:	a099                	j	7ac <free+0x7a>
 768:	6398                	ld	a4,0(a5)
 76a:	00e7e463          	bltu	a5,a4,772 <free+0x40>
 76e:	00e6ea63          	bltu	a3,a4,782 <free+0x50>
 772:	87ba                	mv	a5,a4
 774:	fed7fae3          	bgeu	a5,a3,768 <free+0x36>
 778:	6398                	ld	a4,0(a5)
 77a:	00e6e463          	bltu	a3,a4,782 <free+0x50>
 77e:	fee7eae3          	bltu	a5,a4,772 <free+0x40>
 782:	ff852583          	lw	a1,-8(a0)
 786:	6390                	ld	a2,0(a5)
 788:	02059713          	slli	a4,a1,0x20
 78c:	9301                	srli	a4,a4,0x20
 78e:	0712                	slli	a4,a4,0x4
 790:	9736                	add	a4,a4,a3
 792:	fae60ae3          	beq	a2,a4,746 <free+0x14>
 796:	fec53823          	sd	a2,-16(a0)
 79a:	4790                	lw	a2,8(a5)
 79c:	02061713          	slli	a4,a2,0x20
 7a0:	9301                	srli	a4,a4,0x20
 7a2:	0712                	slli	a4,a4,0x4
 7a4:	973e                	add	a4,a4,a5
 7a6:	fae689e3          	beq	a3,a4,758 <free+0x26>
 7aa:	e394                	sd	a3,0(a5)
 7ac:	00001717          	auipc	a4,0x1
 7b0:	84f73a23          	sd	a5,-1964(a4) # 1000 <freep>
 7b4:	6422                	ld	s0,8(sp)
 7b6:	0141                	addi	sp,sp,16
 7b8:	8082                	ret

00000000000007ba <malloc>:
 7ba:	7139                	addi	sp,sp,-64
 7bc:	fc06                	sd	ra,56(sp)
 7be:	f822                	sd	s0,48(sp)
 7c0:	f426                	sd	s1,40(sp)
 7c2:	f04a                	sd	s2,32(sp)
 7c4:	ec4e                	sd	s3,24(sp)
 7c6:	e852                	sd	s4,16(sp)
 7c8:	e456                	sd	s5,8(sp)
 7ca:	e05a                	sd	s6,0(sp)
 7cc:	0080                	addi	s0,sp,64
 7ce:	02051493          	slli	s1,a0,0x20
 7d2:	9081                	srli	s1,s1,0x20
 7d4:	04bd                	addi	s1,s1,15
 7d6:	8091                	srli	s1,s1,0x4
 7d8:	0014899b          	addiw	s3,s1,1
 7dc:	0485                	addi	s1,s1,1
 7de:	00001517          	auipc	a0,0x1
 7e2:	82253503          	ld	a0,-2014(a0) # 1000 <freep>
 7e6:	c515                	beqz	a0,812 <malloc+0x58>
 7e8:	611c                	ld	a5,0(a0)
 7ea:	4798                	lw	a4,8(a5)
 7ec:	02977f63          	bgeu	a4,s1,82a <malloc+0x70>
 7f0:	8a4e                	mv	s4,s3
 7f2:	0009871b          	sext.w	a4,s3
 7f6:	6685                	lui	a3,0x1
 7f8:	00d77363          	bgeu	a4,a3,7fe <malloc+0x44>
 7fc:	6a05                	lui	s4,0x1
 7fe:	000a0b1b          	sext.w	s6,s4
 802:	004a1a1b          	slliw	s4,s4,0x4
 806:	00000917          	auipc	s2,0x0
 80a:	7fa90913          	addi	s2,s2,2042 # 1000 <freep>
 80e:	5afd                	li	s5,-1
 810:	a88d                	j	882 <malloc+0xc8>
 812:	00000797          	auipc	a5,0x0
 816:	7fe78793          	addi	a5,a5,2046 # 1010 <base>
 81a:	00000717          	auipc	a4,0x0
 81e:	7ef73323          	sd	a5,2022(a4) # 1000 <freep>
 822:	e39c                	sd	a5,0(a5)
 824:	0007a423          	sw	zero,8(a5)
 828:	b7e1                	j	7f0 <malloc+0x36>
 82a:	02e48b63          	beq	s1,a4,860 <malloc+0xa6>
 82e:	4137073b          	subw	a4,a4,s3
 832:	c798                	sw	a4,8(a5)
 834:	1702                	slli	a4,a4,0x20
 836:	9301                	srli	a4,a4,0x20
 838:	0712                	slli	a4,a4,0x4
 83a:	97ba                	add	a5,a5,a4
 83c:	0137a423          	sw	s3,8(a5)
 840:	00000717          	auipc	a4,0x0
 844:	7ca73023          	sd	a0,1984(a4) # 1000 <freep>
 848:	01078513          	addi	a0,a5,16
 84c:	70e2                	ld	ra,56(sp)
 84e:	7442                	ld	s0,48(sp)
 850:	74a2                	ld	s1,40(sp)
 852:	7902                	ld	s2,32(sp)
 854:	69e2                	ld	s3,24(sp)
 856:	6a42                	ld	s4,16(sp)
 858:	6aa2                	ld	s5,8(sp)
 85a:	6b02                	ld	s6,0(sp)
 85c:	6121                	addi	sp,sp,64
 85e:	8082                	ret
 860:	6398                	ld	a4,0(a5)
 862:	e118                	sd	a4,0(a0)
 864:	bff1                	j	840 <malloc+0x86>
 866:	01652423          	sw	s6,8(a0)
 86a:	0541                	addi	a0,a0,16
 86c:	00000097          	auipc	ra,0x0
 870:	ec6080e7          	jalr	-314(ra) # 732 <free>
 874:	00093503          	ld	a0,0(s2)
 878:	d971                	beqz	a0,84c <malloc+0x92>
 87a:	611c                	ld	a5,0(a0)
 87c:	4798                	lw	a4,8(a5)
 87e:	fa9776e3          	bgeu	a4,s1,82a <malloc+0x70>
 882:	00093703          	ld	a4,0(s2)
 886:	853e                	mv	a0,a5
 888:	fef719e3          	bne	a4,a5,87a <malloc+0xc0>
 88c:	8552                	mv	a0,s4
 88e:	00000097          	auipc	ra,0x0
 892:	b56080e7          	jalr	-1194(ra) # 3e4 <sbrk>
 896:	fd5518e3          	bne	a0,s5,866 <malloc+0xac>
 89a:	4501                	li	a0,0
 89c:	bf45                	j	84c <malloc+0x92>
