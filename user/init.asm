
user/_init:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	addi	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	e426                	sd	s1,8(sp)
   8:	e04a                	sd	s2,0(sp)
   a:	1000                	addi	s0,sp,32
   c:	4589                	li	a1,2
   e:	00001517          	auipc	a0,0x1
  12:	8c250513          	addi	a0,a0,-1854 # 8d0 <malloc+0xea>
  16:	00000097          	auipc	ra,0x0
  1a:	3b2080e7          	jalr	946(ra) # 3c8 <open>
  1e:	06054363          	bltz	a0,84 <main+0x84>
  22:	4501                	li	a0,0
  24:	00000097          	auipc	ra,0x0
  28:	3dc080e7          	jalr	988(ra) # 400 <dup>
  2c:	4501                	li	a0,0
  2e:	00000097          	auipc	ra,0x0
  32:	3d2080e7          	jalr	978(ra) # 400 <dup>
  36:	00001917          	auipc	s2,0x1
  3a:	8a290913          	addi	s2,s2,-1886 # 8d8 <malloc+0xf2>
  3e:	854a                	mv	a0,s2
  40:	00000097          	auipc	ra,0x0
  44:	6e8080e7          	jalr	1768(ra) # 728 <printf>
  48:	00000097          	auipc	ra,0x0
  4c:	338080e7          	jalr	824(ra) # 380 <fork>
  50:	84aa                	mv	s1,a0
  52:	04054d63          	bltz	a0,ac <main+0xac>
  56:	c925                	beqz	a0,c6 <main+0xc6>
  58:	4501                	li	a0,0
  5a:	00000097          	auipc	ra,0x0
  5e:	336080e7          	jalr	822(ra) # 390 <wait>
  62:	fca48ee3          	beq	s1,a0,3e <main+0x3e>
  66:	fe0559e3          	bgez	a0,58 <main+0x58>
  6a:	00001517          	auipc	a0,0x1
  6e:	8be50513          	addi	a0,a0,-1858 # 928 <malloc+0x142>
  72:	00000097          	auipc	ra,0x0
  76:	6b6080e7          	jalr	1718(ra) # 728 <printf>
  7a:	4505                	li	a0,1
  7c:	00000097          	auipc	ra,0x0
  80:	30c080e7          	jalr	780(ra) # 388 <exit>
  84:	4601                	li	a2,0
  86:	4585                	li	a1,1
  88:	00001517          	auipc	a0,0x1
  8c:	84850513          	addi	a0,a0,-1976 # 8d0 <malloc+0xea>
  90:	00000097          	auipc	ra,0x0
  94:	340080e7          	jalr	832(ra) # 3d0 <mknod>
  98:	4589                	li	a1,2
  9a:	00001517          	auipc	a0,0x1
  9e:	83650513          	addi	a0,a0,-1994 # 8d0 <malloc+0xea>
  a2:	00000097          	auipc	ra,0x0
  a6:	326080e7          	jalr	806(ra) # 3c8 <open>
  aa:	bfa5                	j	22 <main+0x22>
  ac:	00001517          	auipc	a0,0x1
  b0:	84450513          	addi	a0,a0,-1980 # 8f0 <malloc+0x10a>
  b4:	00000097          	auipc	ra,0x0
  b8:	674080e7          	jalr	1652(ra) # 728 <printf>
  bc:	4505                	li	a0,1
  be:	00000097          	auipc	ra,0x0
  c2:	2ca080e7          	jalr	714(ra) # 388 <exit>
  c6:	00001597          	auipc	a1,0x1
  ca:	f3a58593          	addi	a1,a1,-198 # 1000 <argv>
  ce:	00001517          	auipc	a0,0x1
  d2:	83a50513          	addi	a0,a0,-1990 # 908 <malloc+0x122>
  d6:	00000097          	auipc	ra,0x0
  da:	2ea080e7          	jalr	746(ra) # 3c0 <exec>
  de:	00001517          	auipc	a0,0x1
  e2:	83250513          	addi	a0,a0,-1998 # 910 <malloc+0x12a>
  e6:	00000097          	auipc	ra,0x0
  ea:	642080e7          	jalr	1602(ra) # 728 <printf>
  ee:	4505                	li	a0,1
  f0:	00000097          	auipc	ra,0x0
  f4:	298080e7          	jalr	664(ra) # 388 <exit>

00000000000000f8 <_main>:
  f8:	1141                	addi	sp,sp,-16
  fa:	e406                	sd	ra,8(sp)
  fc:	e022                	sd	s0,0(sp)
  fe:	0800                	addi	s0,sp,16
 100:	00000097          	auipc	ra,0x0
 104:	f00080e7          	jalr	-256(ra) # 0 <main>
 108:	4501                	li	a0,0
 10a:	00000097          	auipc	ra,0x0
 10e:	27e080e7          	jalr	638(ra) # 388 <exit>

0000000000000112 <strcpy>:
 112:	1141                	addi	sp,sp,-16
 114:	e422                	sd	s0,8(sp)
 116:	0800                	addi	s0,sp,16
 118:	87aa                	mv	a5,a0
 11a:	0585                	addi	a1,a1,1
 11c:	0785                	addi	a5,a5,1
 11e:	fff5c703          	lbu	a4,-1(a1)
 122:	fee78fa3          	sb	a4,-1(a5)
 126:	fb75                	bnez	a4,11a <strcpy+0x8>
 128:	6422                	ld	s0,8(sp)
 12a:	0141                	addi	sp,sp,16
 12c:	8082                	ret

000000000000012e <strcmp>:
 12e:	1141                	addi	sp,sp,-16
 130:	e422                	sd	s0,8(sp)
 132:	0800                	addi	s0,sp,16
 134:	00054783          	lbu	a5,0(a0)
 138:	cb91                	beqz	a5,14c <strcmp+0x1e>
 13a:	0005c703          	lbu	a4,0(a1)
 13e:	00f71763          	bne	a4,a5,14c <strcmp+0x1e>
 142:	0505                	addi	a0,a0,1
 144:	0585                	addi	a1,a1,1
 146:	00054783          	lbu	a5,0(a0)
 14a:	fbe5                	bnez	a5,13a <strcmp+0xc>
 14c:	0005c503          	lbu	a0,0(a1)
 150:	40a7853b          	subw	a0,a5,a0
 154:	6422                	ld	s0,8(sp)
 156:	0141                	addi	sp,sp,16
 158:	8082                	ret

000000000000015a <strlen>:
 15a:	1141                	addi	sp,sp,-16
 15c:	e422                	sd	s0,8(sp)
 15e:	0800                	addi	s0,sp,16
 160:	00054783          	lbu	a5,0(a0)
 164:	cf91                	beqz	a5,180 <strlen+0x26>
 166:	0505                	addi	a0,a0,1
 168:	87aa                	mv	a5,a0
 16a:	4685                	li	a3,1
 16c:	9e89                	subw	a3,a3,a0
 16e:	00f6853b          	addw	a0,a3,a5
 172:	0785                	addi	a5,a5,1
 174:	fff7c703          	lbu	a4,-1(a5)
 178:	fb7d                	bnez	a4,16e <strlen+0x14>
 17a:	6422                	ld	s0,8(sp)
 17c:	0141                	addi	sp,sp,16
 17e:	8082                	ret
 180:	4501                	li	a0,0
 182:	bfe5                	j	17a <strlen+0x20>

0000000000000184 <memset>:
 184:	1141                	addi	sp,sp,-16
 186:	e422                	sd	s0,8(sp)
 188:	0800                	addi	s0,sp,16
 18a:	ce09                	beqz	a2,1a4 <memset+0x20>
 18c:	87aa                	mv	a5,a0
 18e:	fff6071b          	addiw	a4,a2,-1
 192:	1702                	slli	a4,a4,0x20
 194:	9301                	srli	a4,a4,0x20
 196:	0705                	addi	a4,a4,1
 198:	972a                	add	a4,a4,a0
 19a:	00b78023          	sb	a1,0(a5)
 19e:	0785                	addi	a5,a5,1
 1a0:	fee79de3          	bne	a5,a4,19a <memset+0x16>
 1a4:	6422                	ld	s0,8(sp)
 1a6:	0141                	addi	sp,sp,16
 1a8:	8082                	ret

00000000000001aa <strchr>:
 1aa:	1141                	addi	sp,sp,-16
 1ac:	e422                	sd	s0,8(sp)
 1ae:	0800                	addi	s0,sp,16
 1b0:	00054783          	lbu	a5,0(a0)
 1b4:	cb99                	beqz	a5,1ca <strchr+0x20>
 1b6:	00f58763          	beq	a1,a5,1c4 <strchr+0x1a>
 1ba:	0505                	addi	a0,a0,1
 1bc:	00054783          	lbu	a5,0(a0)
 1c0:	fbfd                	bnez	a5,1b6 <strchr+0xc>
 1c2:	4501                	li	a0,0
 1c4:	6422                	ld	s0,8(sp)
 1c6:	0141                	addi	sp,sp,16
 1c8:	8082                	ret
 1ca:	4501                	li	a0,0
 1cc:	bfe5                	j	1c4 <strchr+0x1a>

00000000000001ce <gets>:
 1ce:	711d                	addi	sp,sp,-96
 1d0:	ec86                	sd	ra,88(sp)
 1d2:	e8a2                	sd	s0,80(sp)
 1d4:	e4a6                	sd	s1,72(sp)
 1d6:	e0ca                	sd	s2,64(sp)
 1d8:	fc4e                	sd	s3,56(sp)
 1da:	f852                	sd	s4,48(sp)
 1dc:	f456                	sd	s5,40(sp)
 1de:	f05a                	sd	s6,32(sp)
 1e0:	ec5e                	sd	s7,24(sp)
 1e2:	1080                	addi	s0,sp,96
 1e4:	8baa                	mv	s7,a0
 1e6:	8a2e                	mv	s4,a1
 1e8:	892a                	mv	s2,a0
 1ea:	4481                	li	s1,0
 1ec:	4aa9                	li	s5,10
 1ee:	4b35                	li	s6,13
 1f0:	89a6                	mv	s3,s1
 1f2:	2485                	addiw	s1,s1,1
 1f4:	0344d863          	bge	s1,s4,224 <gets+0x56>
 1f8:	4605                	li	a2,1
 1fa:	faf40593          	addi	a1,s0,-81
 1fe:	4501                	li	a0,0
 200:	00000097          	auipc	ra,0x0
 204:	1a0080e7          	jalr	416(ra) # 3a0 <read>
 208:	00a05e63          	blez	a0,224 <gets+0x56>
 20c:	faf44783          	lbu	a5,-81(s0)
 210:	00f90023          	sb	a5,0(s2)
 214:	01578763          	beq	a5,s5,222 <gets+0x54>
 218:	0905                	addi	s2,s2,1
 21a:	fd679be3          	bne	a5,s6,1f0 <gets+0x22>
 21e:	89a6                	mv	s3,s1
 220:	a011                	j	224 <gets+0x56>
 222:	89a6                	mv	s3,s1
 224:	99de                	add	s3,s3,s7
 226:	00098023          	sb	zero,0(s3)
 22a:	855e                	mv	a0,s7
 22c:	60e6                	ld	ra,88(sp)
 22e:	6446                	ld	s0,80(sp)
 230:	64a6                	ld	s1,72(sp)
 232:	6906                	ld	s2,64(sp)
 234:	79e2                	ld	s3,56(sp)
 236:	7a42                	ld	s4,48(sp)
 238:	7aa2                	ld	s5,40(sp)
 23a:	7b02                	ld	s6,32(sp)
 23c:	6be2                	ld	s7,24(sp)
 23e:	6125                	addi	sp,sp,96
 240:	8082                	ret

0000000000000242 <stat>:
 242:	1101                	addi	sp,sp,-32
 244:	ec06                	sd	ra,24(sp)
 246:	e822                	sd	s0,16(sp)
 248:	e426                	sd	s1,8(sp)
 24a:	e04a                	sd	s2,0(sp)
 24c:	1000                	addi	s0,sp,32
 24e:	892e                	mv	s2,a1
 250:	4581                	li	a1,0
 252:	00000097          	auipc	ra,0x0
 256:	176080e7          	jalr	374(ra) # 3c8 <open>
 25a:	02054563          	bltz	a0,284 <stat+0x42>
 25e:	84aa                	mv	s1,a0
 260:	85ca                	mv	a1,s2
 262:	00000097          	auipc	ra,0x0
 266:	17e080e7          	jalr	382(ra) # 3e0 <fstat>
 26a:	892a                	mv	s2,a0
 26c:	8526                	mv	a0,s1
 26e:	00000097          	auipc	ra,0x0
 272:	142080e7          	jalr	322(ra) # 3b0 <close>
 276:	854a                	mv	a0,s2
 278:	60e2                	ld	ra,24(sp)
 27a:	6442                	ld	s0,16(sp)
 27c:	64a2                	ld	s1,8(sp)
 27e:	6902                	ld	s2,0(sp)
 280:	6105                	addi	sp,sp,32
 282:	8082                	ret
 284:	597d                	li	s2,-1
 286:	bfc5                	j	276 <stat+0x34>

0000000000000288 <atoi>:
 288:	1141                	addi	sp,sp,-16
 28a:	e422                	sd	s0,8(sp)
 28c:	0800                	addi	s0,sp,16
 28e:	00054603          	lbu	a2,0(a0)
 292:	fd06079b          	addiw	a5,a2,-48
 296:	0ff7f793          	andi	a5,a5,255
 29a:	4725                	li	a4,9
 29c:	02f76963          	bltu	a4,a5,2ce <atoi+0x46>
 2a0:	86aa                	mv	a3,a0
 2a2:	4501                	li	a0,0
 2a4:	45a5                	li	a1,9
 2a6:	0685                	addi	a3,a3,1
 2a8:	0025179b          	slliw	a5,a0,0x2
 2ac:	9fa9                	addw	a5,a5,a0
 2ae:	0017979b          	slliw	a5,a5,0x1
 2b2:	9fb1                	addw	a5,a5,a2
 2b4:	fd07851b          	addiw	a0,a5,-48
 2b8:	0006c603          	lbu	a2,0(a3)
 2bc:	fd06071b          	addiw	a4,a2,-48
 2c0:	0ff77713          	andi	a4,a4,255
 2c4:	fee5f1e3          	bgeu	a1,a4,2a6 <atoi+0x1e>
 2c8:	6422                	ld	s0,8(sp)
 2ca:	0141                	addi	sp,sp,16
 2cc:	8082                	ret
 2ce:	4501                	li	a0,0
 2d0:	bfe5                	j	2c8 <atoi+0x40>

00000000000002d2 <memmove>:
 2d2:	1141                	addi	sp,sp,-16
 2d4:	e422                	sd	s0,8(sp)
 2d6:	0800                	addi	s0,sp,16
 2d8:	02b57663          	bgeu	a0,a1,304 <memmove+0x32>
 2dc:	02c05163          	blez	a2,2fe <memmove+0x2c>
 2e0:	fff6079b          	addiw	a5,a2,-1
 2e4:	1782                	slli	a5,a5,0x20
 2e6:	9381                	srli	a5,a5,0x20
 2e8:	0785                	addi	a5,a5,1
 2ea:	97aa                	add	a5,a5,a0
 2ec:	872a                	mv	a4,a0
 2ee:	0585                	addi	a1,a1,1
 2f0:	0705                	addi	a4,a4,1
 2f2:	fff5c683          	lbu	a3,-1(a1)
 2f6:	fed70fa3          	sb	a3,-1(a4)
 2fa:	fee79ae3          	bne	a5,a4,2ee <memmove+0x1c>
 2fe:	6422                	ld	s0,8(sp)
 300:	0141                	addi	sp,sp,16
 302:	8082                	ret
 304:	00c50733          	add	a4,a0,a2
 308:	95b2                	add	a1,a1,a2
 30a:	fec05ae3          	blez	a2,2fe <memmove+0x2c>
 30e:	fff6079b          	addiw	a5,a2,-1
 312:	1782                	slli	a5,a5,0x20
 314:	9381                	srli	a5,a5,0x20
 316:	fff7c793          	not	a5,a5
 31a:	97ba                	add	a5,a5,a4
 31c:	15fd                	addi	a1,a1,-1
 31e:	177d                	addi	a4,a4,-1
 320:	0005c683          	lbu	a3,0(a1)
 324:	00d70023          	sb	a3,0(a4)
 328:	fee79ae3          	bne	a5,a4,31c <memmove+0x4a>
 32c:	bfc9                	j	2fe <memmove+0x2c>

000000000000032e <memcmp>:
 32e:	1141                	addi	sp,sp,-16
 330:	e422                	sd	s0,8(sp)
 332:	0800                	addi	s0,sp,16
 334:	ca05                	beqz	a2,364 <memcmp+0x36>
 336:	fff6069b          	addiw	a3,a2,-1
 33a:	1682                	slli	a3,a3,0x20
 33c:	9281                	srli	a3,a3,0x20
 33e:	0685                	addi	a3,a3,1
 340:	96aa                	add	a3,a3,a0
 342:	00054783          	lbu	a5,0(a0)
 346:	0005c703          	lbu	a4,0(a1)
 34a:	00e79863          	bne	a5,a4,35a <memcmp+0x2c>
 34e:	0505                	addi	a0,a0,1
 350:	0585                	addi	a1,a1,1
 352:	fed518e3          	bne	a0,a3,342 <memcmp+0x14>
 356:	4501                	li	a0,0
 358:	a019                	j	35e <memcmp+0x30>
 35a:	40e7853b          	subw	a0,a5,a4
 35e:	6422                	ld	s0,8(sp)
 360:	0141                	addi	sp,sp,16
 362:	8082                	ret
 364:	4501                	li	a0,0
 366:	bfe5                	j	35e <memcmp+0x30>

0000000000000368 <memcpy>:
 368:	1141                	addi	sp,sp,-16
 36a:	e406                	sd	ra,8(sp)
 36c:	e022                	sd	s0,0(sp)
 36e:	0800                	addi	s0,sp,16
 370:	00000097          	auipc	ra,0x0
 374:	f62080e7          	jalr	-158(ra) # 2d2 <memmove>
 378:	60a2                	ld	ra,8(sp)
 37a:	6402                	ld	s0,0(sp)
 37c:	0141                	addi	sp,sp,16
 37e:	8082                	ret

0000000000000380 <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
 380:	4885                	li	a7,1
 ecall
 382:	00000073          	ecall
 ret
 386:	8082                	ret

0000000000000388 <exit>:
.global exit
exit:
 li a7, SYS_exit
 388:	4889                	li	a7,2
 ecall
 38a:	00000073          	ecall
 ret
 38e:	8082                	ret

0000000000000390 <wait>:
.global wait
wait:
 li a7, SYS_wait
 390:	488d                	li	a7,3
 ecall
 392:	00000073          	ecall
 ret
 396:	8082                	ret

0000000000000398 <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
 398:	4891                	li	a7,4
 ecall
 39a:	00000073          	ecall
 ret
 39e:	8082                	ret

00000000000003a0 <read>:
.global read
read:
 li a7, SYS_read
 3a0:	4895                	li	a7,5
 ecall
 3a2:	00000073          	ecall
 ret
 3a6:	8082                	ret

00000000000003a8 <write>:
.global write
write:
 li a7, SYS_write
 3a8:	48c1                	li	a7,16
 ecall
 3aa:	00000073          	ecall
 ret
 3ae:	8082                	ret

00000000000003b0 <close>:
.global close
close:
 li a7, SYS_close
 3b0:	48d5                	li	a7,21
 ecall
 3b2:	00000073          	ecall
 ret
 3b6:	8082                	ret

00000000000003b8 <kill>:
.global kill
kill:
 li a7, SYS_kill
 3b8:	4899                	li	a7,6
 ecall
 3ba:	00000073          	ecall
 ret
 3be:	8082                	ret

00000000000003c0 <exec>:
.global exec
exec:
 li a7, SYS_exec
 3c0:	489d                	li	a7,7
 ecall
 3c2:	00000073          	ecall
 ret
 3c6:	8082                	ret

00000000000003c8 <open>:
.global open
open:
 li a7, SYS_open
 3c8:	48bd                	li	a7,15
 ecall
 3ca:	00000073          	ecall
 ret
 3ce:	8082                	ret

00000000000003d0 <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
 3d0:	48c5                	li	a7,17
 ecall
 3d2:	00000073          	ecall
 ret
 3d6:	8082                	ret

00000000000003d8 <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
 3d8:	48c9                	li	a7,18
 ecall
 3da:	00000073          	ecall
 ret
 3de:	8082                	ret

00000000000003e0 <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
 3e0:	48a1                	li	a7,8
 ecall
 3e2:	00000073          	ecall
 ret
 3e6:	8082                	ret

00000000000003e8 <link>:
.global link
link:
 li a7, SYS_link
 3e8:	48cd                	li	a7,19
 ecall
 3ea:	00000073          	ecall
 ret
 3ee:	8082                	ret

00000000000003f0 <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
 3f0:	48d1                	li	a7,20
 ecall
 3f2:	00000073          	ecall
 ret
 3f6:	8082                	ret

00000000000003f8 <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
 3f8:	48a5                	li	a7,9
 ecall
 3fa:	00000073          	ecall
 ret
 3fe:	8082                	ret

0000000000000400 <dup>:
.global dup
dup:
 li a7, SYS_dup
 400:	48a9                	li	a7,10
 ecall
 402:	00000073          	ecall
 ret
 406:	8082                	ret

0000000000000408 <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
 408:	48ad                	li	a7,11
 ecall
 40a:	00000073          	ecall
 ret
 40e:	8082                	ret

0000000000000410 <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
 410:	48b1                	li	a7,12
 ecall
 412:	00000073          	ecall
 ret
 416:	8082                	ret

0000000000000418 <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
 418:	48b5                	li	a7,13
 ecall
 41a:	00000073          	ecall
 ret
 41e:	8082                	ret

0000000000000420 <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
 420:	48b9                	li	a7,14
 ecall
 422:	00000073          	ecall
 ret
 426:	8082                	ret

0000000000000428 <trace>:
.global trace
trace:
 li a7, SYS_trace
 428:	48d9                	li	a7,22
 ecall
 42a:	00000073          	ecall
 ret
 42e:	8082                	ret

0000000000000430 <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
 430:	48e1                	li	a7,24
 ecall
 432:	00000073          	ecall
 ret
 436:	8082                	ret

0000000000000438 <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
 438:	48dd                	li	a7,23
 ecall
 43a:	00000073          	ecall
 ret
 43e:	8082                	ret

0000000000000440 <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
 440:	48e5                	li	a7,25
 ecall
 442:	00000073          	ecall
 ret
 446:	8082                	ret

0000000000000448 <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
 448:	48e9                	li	a7,26
 ecall
 44a:	00000073          	ecall
 ret
 44e:	8082                	ret

0000000000000450 <putc>:
 450:	1101                	addi	sp,sp,-32
 452:	ec06                	sd	ra,24(sp)
 454:	e822                	sd	s0,16(sp)
 456:	1000                	addi	s0,sp,32
 458:	feb407a3          	sb	a1,-17(s0)
 45c:	4605                	li	a2,1
 45e:	fef40593          	addi	a1,s0,-17
 462:	00000097          	auipc	ra,0x0
 466:	f46080e7          	jalr	-186(ra) # 3a8 <write>
 46a:	60e2                	ld	ra,24(sp)
 46c:	6442                	ld	s0,16(sp)
 46e:	6105                	addi	sp,sp,32
 470:	8082                	ret

0000000000000472 <printint>:
 472:	7139                	addi	sp,sp,-64
 474:	fc06                	sd	ra,56(sp)
 476:	f822                	sd	s0,48(sp)
 478:	f426                	sd	s1,40(sp)
 47a:	f04a                	sd	s2,32(sp)
 47c:	ec4e                	sd	s3,24(sp)
 47e:	0080                	addi	s0,sp,64
 480:	84aa                	mv	s1,a0
 482:	c299                	beqz	a3,488 <printint+0x16>
 484:	0805c863          	bltz	a1,514 <printint+0xa2>
 488:	2581                	sext.w	a1,a1
 48a:	4881                	li	a7,0
 48c:	fc040693          	addi	a3,s0,-64
 490:	4701                	li	a4,0
 492:	2601                	sext.w	a2,a2
 494:	00000517          	auipc	a0,0x0
 498:	4bc50513          	addi	a0,a0,1212 # 950 <digits>
 49c:	883a                	mv	a6,a4
 49e:	2705                	addiw	a4,a4,1
 4a0:	02c5f7bb          	remuw	a5,a1,a2
 4a4:	1782                	slli	a5,a5,0x20
 4a6:	9381                	srli	a5,a5,0x20
 4a8:	97aa                	add	a5,a5,a0
 4aa:	0007c783          	lbu	a5,0(a5)
 4ae:	00f68023          	sb	a5,0(a3)
 4b2:	0005879b          	sext.w	a5,a1
 4b6:	02c5d5bb          	divuw	a1,a1,a2
 4ba:	0685                	addi	a3,a3,1
 4bc:	fec7f0e3          	bgeu	a5,a2,49c <printint+0x2a>
 4c0:	00088b63          	beqz	a7,4d6 <printint+0x64>
 4c4:	fd040793          	addi	a5,s0,-48
 4c8:	973e                	add	a4,a4,a5
 4ca:	02d00793          	li	a5,45
 4ce:	fef70823          	sb	a5,-16(a4)
 4d2:	0028071b          	addiw	a4,a6,2
 4d6:	02e05863          	blez	a4,506 <printint+0x94>
 4da:	fc040793          	addi	a5,s0,-64
 4de:	00e78933          	add	s2,a5,a4
 4e2:	fff78993          	addi	s3,a5,-1
 4e6:	99ba                	add	s3,s3,a4
 4e8:	377d                	addiw	a4,a4,-1
 4ea:	1702                	slli	a4,a4,0x20
 4ec:	9301                	srli	a4,a4,0x20
 4ee:	40e989b3          	sub	s3,s3,a4
 4f2:	fff94583          	lbu	a1,-1(s2)
 4f6:	8526                	mv	a0,s1
 4f8:	00000097          	auipc	ra,0x0
 4fc:	f58080e7          	jalr	-168(ra) # 450 <putc>
 500:	197d                	addi	s2,s2,-1
 502:	ff3918e3          	bne	s2,s3,4f2 <printint+0x80>
 506:	70e2                	ld	ra,56(sp)
 508:	7442                	ld	s0,48(sp)
 50a:	74a2                	ld	s1,40(sp)
 50c:	7902                	ld	s2,32(sp)
 50e:	69e2                	ld	s3,24(sp)
 510:	6121                	addi	sp,sp,64
 512:	8082                	ret
 514:	40b005bb          	negw	a1,a1
 518:	4885                	li	a7,1
 51a:	bf8d                	j	48c <printint+0x1a>

000000000000051c <vprintf>:
 51c:	7119                	addi	sp,sp,-128
 51e:	fc86                	sd	ra,120(sp)
 520:	f8a2                	sd	s0,112(sp)
 522:	f4a6                	sd	s1,104(sp)
 524:	f0ca                	sd	s2,96(sp)
 526:	ecce                	sd	s3,88(sp)
 528:	e8d2                	sd	s4,80(sp)
 52a:	e4d6                	sd	s5,72(sp)
 52c:	e0da                	sd	s6,64(sp)
 52e:	fc5e                	sd	s7,56(sp)
 530:	f862                	sd	s8,48(sp)
 532:	f466                	sd	s9,40(sp)
 534:	f06a                	sd	s10,32(sp)
 536:	ec6e                	sd	s11,24(sp)
 538:	0100                	addi	s0,sp,128
 53a:	0005c903          	lbu	s2,0(a1)
 53e:	18090f63          	beqz	s2,6dc <vprintf+0x1c0>
 542:	8aaa                	mv	s5,a0
 544:	8b32                	mv	s6,a2
 546:	00158493          	addi	s1,a1,1
 54a:	4981                	li	s3,0
 54c:	02500a13          	li	s4,37
 550:	06400c13          	li	s8,100
 554:	06c00c93          	li	s9,108
 558:	07800d13          	li	s10,120
 55c:	07000d93          	li	s11,112
 560:	00000b97          	auipc	s7,0x0
 564:	3f0b8b93          	addi	s7,s7,1008 # 950 <digits>
 568:	a839                	j	586 <vprintf+0x6a>
 56a:	85ca                	mv	a1,s2
 56c:	8556                	mv	a0,s5
 56e:	00000097          	auipc	ra,0x0
 572:	ee2080e7          	jalr	-286(ra) # 450 <putc>
 576:	a019                	j	57c <vprintf+0x60>
 578:	01498f63          	beq	s3,s4,596 <vprintf+0x7a>
 57c:	0485                	addi	s1,s1,1
 57e:	fff4c903          	lbu	s2,-1(s1)
 582:	14090d63          	beqz	s2,6dc <vprintf+0x1c0>
 586:	0009079b          	sext.w	a5,s2
 58a:	fe0997e3          	bnez	s3,578 <vprintf+0x5c>
 58e:	fd479ee3          	bne	a5,s4,56a <vprintf+0x4e>
 592:	89be                	mv	s3,a5
 594:	b7e5                	j	57c <vprintf+0x60>
 596:	05878063          	beq	a5,s8,5d6 <vprintf+0xba>
 59a:	05978c63          	beq	a5,s9,5f2 <vprintf+0xd6>
 59e:	07a78863          	beq	a5,s10,60e <vprintf+0xf2>
 5a2:	09b78463          	beq	a5,s11,62a <vprintf+0x10e>
 5a6:	07300713          	li	a4,115
 5aa:	0ce78663          	beq	a5,a4,676 <vprintf+0x15a>
 5ae:	06300713          	li	a4,99
 5b2:	0ee78e63          	beq	a5,a4,6ae <vprintf+0x192>
 5b6:	11478863          	beq	a5,s4,6c6 <vprintf+0x1aa>
 5ba:	85d2                	mv	a1,s4
 5bc:	8556                	mv	a0,s5
 5be:	00000097          	auipc	ra,0x0
 5c2:	e92080e7          	jalr	-366(ra) # 450 <putc>
 5c6:	85ca                	mv	a1,s2
 5c8:	8556                	mv	a0,s5
 5ca:	00000097          	auipc	ra,0x0
 5ce:	e86080e7          	jalr	-378(ra) # 450 <putc>
 5d2:	4981                	li	s3,0
 5d4:	b765                	j	57c <vprintf+0x60>
 5d6:	008b0913          	addi	s2,s6,8
 5da:	4685                	li	a3,1
 5dc:	4629                	li	a2,10
 5de:	000b2583          	lw	a1,0(s6)
 5e2:	8556                	mv	a0,s5
 5e4:	00000097          	auipc	ra,0x0
 5e8:	e8e080e7          	jalr	-370(ra) # 472 <printint>
 5ec:	8b4a                	mv	s6,s2
 5ee:	4981                	li	s3,0
 5f0:	b771                	j	57c <vprintf+0x60>
 5f2:	008b0913          	addi	s2,s6,8
 5f6:	4681                	li	a3,0
 5f8:	4629                	li	a2,10
 5fa:	000b2583          	lw	a1,0(s6)
 5fe:	8556                	mv	a0,s5
 600:	00000097          	auipc	ra,0x0
 604:	e72080e7          	jalr	-398(ra) # 472 <printint>
 608:	8b4a                	mv	s6,s2
 60a:	4981                	li	s3,0
 60c:	bf85                	j	57c <vprintf+0x60>
 60e:	008b0913          	addi	s2,s6,8
 612:	4681                	li	a3,0
 614:	4641                	li	a2,16
 616:	000b2583          	lw	a1,0(s6)
 61a:	8556                	mv	a0,s5
 61c:	00000097          	auipc	ra,0x0
 620:	e56080e7          	jalr	-426(ra) # 472 <printint>
 624:	8b4a                	mv	s6,s2
 626:	4981                	li	s3,0
 628:	bf91                	j	57c <vprintf+0x60>
 62a:	008b0793          	addi	a5,s6,8
 62e:	f8f43423          	sd	a5,-120(s0)
 632:	000b3983          	ld	s3,0(s6)
 636:	03000593          	li	a1,48
 63a:	8556                	mv	a0,s5
 63c:	00000097          	auipc	ra,0x0
 640:	e14080e7          	jalr	-492(ra) # 450 <putc>
 644:	85ea                	mv	a1,s10
 646:	8556                	mv	a0,s5
 648:	00000097          	auipc	ra,0x0
 64c:	e08080e7          	jalr	-504(ra) # 450 <putc>
 650:	4941                	li	s2,16
 652:	03c9d793          	srli	a5,s3,0x3c
 656:	97de                	add	a5,a5,s7
 658:	0007c583          	lbu	a1,0(a5)
 65c:	8556                	mv	a0,s5
 65e:	00000097          	auipc	ra,0x0
 662:	df2080e7          	jalr	-526(ra) # 450 <putc>
 666:	0992                	slli	s3,s3,0x4
 668:	397d                	addiw	s2,s2,-1
 66a:	fe0914e3          	bnez	s2,652 <vprintf+0x136>
 66e:	f8843b03          	ld	s6,-120(s0)
 672:	4981                	li	s3,0
 674:	b721                	j	57c <vprintf+0x60>
 676:	008b0993          	addi	s3,s6,8
 67a:	000b3903          	ld	s2,0(s6)
 67e:	02090163          	beqz	s2,6a0 <vprintf+0x184>
 682:	00094583          	lbu	a1,0(s2)
 686:	c9a1                	beqz	a1,6d6 <vprintf+0x1ba>
 688:	8556                	mv	a0,s5
 68a:	00000097          	auipc	ra,0x0
 68e:	dc6080e7          	jalr	-570(ra) # 450 <putc>
 692:	0905                	addi	s2,s2,1
 694:	00094583          	lbu	a1,0(s2)
 698:	f9e5                	bnez	a1,688 <vprintf+0x16c>
 69a:	8b4e                	mv	s6,s3
 69c:	4981                	li	s3,0
 69e:	bdf9                	j	57c <vprintf+0x60>
 6a0:	00000917          	auipc	s2,0x0
 6a4:	2a890913          	addi	s2,s2,680 # 948 <malloc+0x162>
 6a8:	02800593          	li	a1,40
 6ac:	bff1                	j	688 <vprintf+0x16c>
 6ae:	008b0913          	addi	s2,s6,8
 6b2:	000b4583          	lbu	a1,0(s6)
 6b6:	8556                	mv	a0,s5
 6b8:	00000097          	auipc	ra,0x0
 6bc:	d98080e7          	jalr	-616(ra) # 450 <putc>
 6c0:	8b4a                	mv	s6,s2
 6c2:	4981                	li	s3,0
 6c4:	bd65                	j	57c <vprintf+0x60>
 6c6:	85d2                	mv	a1,s4
 6c8:	8556                	mv	a0,s5
 6ca:	00000097          	auipc	ra,0x0
 6ce:	d86080e7          	jalr	-634(ra) # 450 <putc>
 6d2:	4981                	li	s3,0
 6d4:	b565                	j	57c <vprintf+0x60>
 6d6:	8b4e                	mv	s6,s3
 6d8:	4981                	li	s3,0
 6da:	b54d                	j	57c <vprintf+0x60>
 6dc:	70e6                	ld	ra,120(sp)
 6de:	7446                	ld	s0,112(sp)
 6e0:	74a6                	ld	s1,104(sp)
 6e2:	7906                	ld	s2,96(sp)
 6e4:	69e6                	ld	s3,88(sp)
 6e6:	6a46                	ld	s4,80(sp)
 6e8:	6aa6                	ld	s5,72(sp)
 6ea:	6b06                	ld	s6,64(sp)
 6ec:	7be2                	ld	s7,56(sp)
 6ee:	7c42                	ld	s8,48(sp)
 6f0:	7ca2                	ld	s9,40(sp)
 6f2:	7d02                	ld	s10,32(sp)
 6f4:	6de2                	ld	s11,24(sp)
 6f6:	6109                	addi	sp,sp,128
 6f8:	8082                	ret

00000000000006fa <fprintf>:
 6fa:	715d                	addi	sp,sp,-80
 6fc:	ec06                	sd	ra,24(sp)
 6fe:	e822                	sd	s0,16(sp)
 700:	1000                	addi	s0,sp,32
 702:	e010                	sd	a2,0(s0)
 704:	e414                	sd	a3,8(s0)
 706:	e818                	sd	a4,16(s0)
 708:	ec1c                	sd	a5,24(s0)
 70a:	03043023          	sd	a6,32(s0)
 70e:	03143423          	sd	a7,40(s0)
 712:	fe843423          	sd	s0,-24(s0)
 716:	8622                	mv	a2,s0
 718:	00000097          	auipc	ra,0x0
 71c:	e04080e7          	jalr	-508(ra) # 51c <vprintf>
 720:	60e2                	ld	ra,24(sp)
 722:	6442                	ld	s0,16(sp)
 724:	6161                	addi	sp,sp,80
 726:	8082                	ret

0000000000000728 <printf>:
 728:	711d                	addi	sp,sp,-96
 72a:	ec06                	sd	ra,24(sp)
 72c:	e822                	sd	s0,16(sp)
 72e:	1000                	addi	s0,sp,32
 730:	e40c                	sd	a1,8(s0)
 732:	e810                	sd	a2,16(s0)
 734:	ec14                	sd	a3,24(s0)
 736:	f018                	sd	a4,32(s0)
 738:	f41c                	sd	a5,40(s0)
 73a:	03043823          	sd	a6,48(s0)
 73e:	03143c23          	sd	a7,56(s0)
 742:	00840613          	addi	a2,s0,8
 746:	fec43423          	sd	a2,-24(s0)
 74a:	85aa                	mv	a1,a0
 74c:	4505                	li	a0,1
 74e:	00000097          	auipc	ra,0x0
 752:	dce080e7          	jalr	-562(ra) # 51c <vprintf>
 756:	60e2                	ld	ra,24(sp)
 758:	6442                	ld	s0,16(sp)
 75a:	6125                	addi	sp,sp,96
 75c:	8082                	ret

000000000000075e <free>:
 75e:	1141                	addi	sp,sp,-16
 760:	e422                	sd	s0,8(sp)
 762:	0800                	addi	s0,sp,16
 764:	ff050693          	addi	a3,a0,-16
 768:	00001797          	auipc	a5,0x1
 76c:	8a87b783          	ld	a5,-1880(a5) # 1010 <freep>
 770:	a805                	j	7a0 <free+0x42>
 772:	4618                	lw	a4,8(a2)
 774:	9db9                	addw	a1,a1,a4
 776:	feb52c23          	sw	a1,-8(a0)
 77a:	6398                	ld	a4,0(a5)
 77c:	6318                	ld	a4,0(a4)
 77e:	fee53823          	sd	a4,-16(a0)
 782:	a091                	j	7c6 <free+0x68>
 784:	ff852703          	lw	a4,-8(a0)
 788:	9e39                	addw	a2,a2,a4
 78a:	c790                	sw	a2,8(a5)
 78c:	ff053703          	ld	a4,-16(a0)
 790:	e398                	sd	a4,0(a5)
 792:	a099                	j	7d8 <free+0x7a>
 794:	6398                	ld	a4,0(a5)
 796:	00e7e463          	bltu	a5,a4,79e <free+0x40>
 79a:	00e6ea63          	bltu	a3,a4,7ae <free+0x50>
 79e:	87ba                	mv	a5,a4
 7a0:	fed7fae3          	bgeu	a5,a3,794 <free+0x36>
 7a4:	6398                	ld	a4,0(a5)
 7a6:	00e6e463          	bltu	a3,a4,7ae <free+0x50>
 7aa:	fee7eae3          	bltu	a5,a4,79e <free+0x40>
 7ae:	ff852583          	lw	a1,-8(a0)
 7b2:	6390                	ld	a2,0(a5)
 7b4:	02059713          	slli	a4,a1,0x20
 7b8:	9301                	srli	a4,a4,0x20
 7ba:	0712                	slli	a4,a4,0x4
 7bc:	9736                	add	a4,a4,a3
 7be:	fae60ae3          	beq	a2,a4,772 <free+0x14>
 7c2:	fec53823          	sd	a2,-16(a0)
 7c6:	4790                	lw	a2,8(a5)
 7c8:	02061713          	slli	a4,a2,0x20
 7cc:	9301                	srli	a4,a4,0x20
 7ce:	0712                	slli	a4,a4,0x4
 7d0:	973e                	add	a4,a4,a5
 7d2:	fae689e3          	beq	a3,a4,784 <free+0x26>
 7d6:	e394                	sd	a3,0(a5)
 7d8:	00001717          	auipc	a4,0x1
 7dc:	82f73c23          	sd	a5,-1992(a4) # 1010 <freep>
 7e0:	6422                	ld	s0,8(sp)
 7e2:	0141                	addi	sp,sp,16
 7e4:	8082                	ret

00000000000007e6 <malloc>:
 7e6:	7139                	addi	sp,sp,-64
 7e8:	fc06                	sd	ra,56(sp)
 7ea:	f822                	sd	s0,48(sp)
 7ec:	f426                	sd	s1,40(sp)
 7ee:	f04a                	sd	s2,32(sp)
 7f0:	ec4e                	sd	s3,24(sp)
 7f2:	e852                	sd	s4,16(sp)
 7f4:	e456                	sd	s5,8(sp)
 7f6:	e05a                	sd	s6,0(sp)
 7f8:	0080                	addi	s0,sp,64
 7fa:	02051493          	slli	s1,a0,0x20
 7fe:	9081                	srli	s1,s1,0x20
 800:	04bd                	addi	s1,s1,15
 802:	8091                	srli	s1,s1,0x4
 804:	0014899b          	addiw	s3,s1,1
 808:	0485                	addi	s1,s1,1
 80a:	00001517          	auipc	a0,0x1
 80e:	80653503          	ld	a0,-2042(a0) # 1010 <freep>
 812:	c515                	beqz	a0,83e <malloc+0x58>
 814:	611c                	ld	a5,0(a0)
 816:	4798                	lw	a4,8(a5)
 818:	02977f63          	bgeu	a4,s1,856 <malloc+0x70>
 81c:	8a4e                	mv	s4,s3
 81e:	0009871b          	sext.w	a4,s3
 822:	6685                	lui	a3,0x1
 824:	00d77363          	bgeu	a4,a3,82a <malloc+0x44>
 828:	6a05                	lui	s4,0x1
 82a:	000a0b1b          	sext.w	s6,s4
 82e:	004a1a1b          	slliw	s4,s4,0x4
 832:	00000917          	auipc	s2,0x0
 836:	7de90913          	addi	s2,s2,2014 # 1010 <freep>
 83a:	5afd                	li	s5,-1
 83c:	a88d                	j	8ae <malloc+0xc8>
 83e:	00000797          	auipc	a5,0x0
 842:	7e278793          	addi	a5,a5,2018 # 1020 <base>
 846:	00000717          	auipc	a4,0x0
 84a:	7cf73523          	sd	a5,1994(a4) # 1010 <freep>
 84e:	e39c                	sd	a5,0(a5)
 850:	0007a423          	sw	zero,8(a5)
 854:	b7e1                	j	81c <malloc+0x36>
 856:	02e48b63          	beq	s1,a4,88c <malloc+0xa6>
 85a:	4137073b          	subw	a4,a4,s3
 85e:	c798                	sw	a4,8(a5)
 860:	1702                	slli	a4,a4,0x20
 862:	9301                	srli	a4,a4,0x20
 864:	0712                	slli	a4,a4,0x4
 866:	97ba                	add	a5,a5,a4
 868:	0137a423          	sw	s3,8(a5)
 86c:	00000717          	auipc	a4,0x0
 870:	7aa73223          	sd	a0,1956(a4) # 1010 <freep>
 874:	01078513          	addi	a0,a5,16
 878:	70e2                	ld	ra,56(sp)
 87a:	7442                	ld	s0,48(sp)
 87c:	74a2                	ld	s1,40(sp)
 87e:	7902                	ld	s2,32(sp)
 880:	69e2                	ld	s3,24(sp)
 882:	6a42                	ld	s4,16(sp)
 884:	6aa2                	ld	s5,8(sp)
 886:	6b02                	ld	s6,0(sp)
 888:	6121                	addi	sp,sp,64
 88a:	8082                	ret
 88c:	6398                	ld	a4,0(a5)
 88e:	e118                	sd	a4,0(a0)
 890:	bff1                	j	86c <malloc+0x86>
 892:	01652423          	sw	s6,8(a0)
 896:	0541                	addi	a0,a0,16
 898:	00000097          	auipc	ra,0x0
 89c:	ec6080e7          	jalr	-314(ra) # 75e <free>
 8a0:	00093503          	ld	a0,0(s2)
 8a4:	d971                	beqz	a0,878 <malloc+0x92>
 8a6:	611c                	ld	a5,0(a0)
 8a8:	4798                	lw	a4,8(a5)
 8aa:	fa9776e3          	bgeu	a4,s1,856 <malloc+0x70>
 8ae:	00093703          	ld	a4,0(s2)
 8b2:	853e                	mv	a0,a5
 8b4:	fef719e3          	bne	a4,a5,8a6 <malloc+0xc0>
 8b8:	8552                	mv	a0,s4
 8ba:	00000097          	auipc	ra,0x0
 8be:	b56080e7          	jalr	-1194(ra) # 410 <sbrk>
 8c2:	fd5518e3          	bne	a0,s5,892 <malloc+0xac>
 8c6:	4501                	li	a0,0
 8c8:	bf45                	j	878 <malloc+0x92>
