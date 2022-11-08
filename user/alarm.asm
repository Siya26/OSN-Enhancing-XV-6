
user/_alarm:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <periodic>:
   0:	1141                	addi	sp,sp,-16
   2:	e406                	sd	ra,8(sp)
   4:	e022                	sd	s0,0(sp)
   6:	0800                	addi	s0,sp,16
   8:	00001797          	auipc	a5,0x1
   c:	ff87a783          	lw	a5,-8(a5) # 1000 <count>
  10:	2785                	addiw	a5,a5,1
  12:	00001717          	auipc	a4,0x1
  16:	fef72723          	sw	a5,-18(a4) # 1000 <count>
  1a:	00001517          	auipc	a0,0x1
  1e:	c5650513          	addi	a0,a0,-938 # c70 <malloc+0xee>
  22:	00001097          	auipc	ra,0x1
  26:	aa2080e7          	jalr	-1374(ra) # ac4 <printf>
  2a:	00000097          	auipc	ra,0x0
  2e:	7ba080e7          	jalr	1978(ra) # 7e4 <sigreturn>
  32:	60a2                	ld	ra,8(sp)
  34:	6402                	ld	s0,0(sp)
  36:	0141                	addi	sp,sp,16
  38:	8082                	ret

000000000000003a <slow_handler>:
  3a:	1101                	addi	sp,sp,-32
  3c:	ec06                	sd	ra,24(sp)
  3e:	e822                	sd	s0,16(sp)
  40:	e426                	sd	s1,8(sp)
  42:	1000                	addi	s0,sp,32
  44:	00001497          	auipc	s1,0x1
  48:	fbc48493          	addi	s1,s1,-68 # 1000 <count>
  4c:	00001797          	auipc	a5,0x1
  50:	fb47a783          	lw	a5,-76(a5) # 1000 <count>
  54:	2785                	addiw	a5,a5,1
  56:	c09c                	sw	a5,0(s1)
  58:	00001517          	auipc	a0,0x1
  5c:	c1850513          	addi	a0,a0,-1000 # c70 <malloc+0xee>
  60:	00001097          	auipc	ra,0x1
  64:	a64080e7          	jalr	-1436(ra) # ac4 <printf>
  68:	4098                	lw	a4,0(s1)
  6a:	2701                	sext.w	a4,a4
  6c:	4685                	li	a3,1
  6e:	1dcd67b7          	lui	a5,0x1dcd6
  72:	50078793          	addi	a5,a5,1280 # 1dcd6500 <base+0x1dcd54f0>
  76:	02e6c463          	blt	a3,a4,9e <slow_handler+0x64>
  7a:	0001                	nop
  7c:	37fd                	addiw	a5,a5,-1
  7e:	fff5                	bnez	a5,7a <slow_handler+0x40>
  80:	4581                	li	a1,0
  82:	4501                	li	a0,0
  84:	00000097          	auipc	ra,0x0
  88:	758080e7          	jalr	1880(ra) # 7dc <sigalarm>
  8c:	00000097          	auipc	ra,0x0
  90:	758080e7          	jalr	1880(ra) # 7e4 <sigreturn>
  94:	60e2                	ld	ra,24(sp)
  96:	6442                	ld	s0,16(sp)
  98:	64a2                	ld	s1,8(sp)
  9a:	6105                	addi	sp,sp,32
  9c:	8082                	ret
  9e:	00001517          	auipc	a0,0x1
  a2:	bda50513          	addi	a0,a0,-1062 # c78 <malloc+0xf6>
  a6:	00001097          	auipc	ra,0x1
  aa:	a1e080e7          	jalr	-1506(ra) # ac4 <printf>
  ae:	4505                	li	a0,1
  b0:	00000097          	auipc	ra,0x0
  b4:	674080e7          	jalr	1652(ra) # 724 <exit>

00000000000000b8 <dummy_handler>:
  b8:	1141                	addi	sp,sp,-16
  ba:	e406                	sd	ra,8(sp)
  bc:	e022                	sd	s0,0(sp)
  be:	0800                	addi	s0,sp,16
  c0:	4581                	li	a1,0
  c2:	4501                	li	a0,0
  c4:	00000097          	auipc	ra,0x0
  c8:	718080e7          	jalr	1816(ra) # 7dc <sigalarm>
  cc:	00000097          	auipc	ra,0x0
  d0:	718080e7          	jalr	1816(ra) # 7e4 <sigreturn>
  d4:	60a2                	ld	ra,8(sp)
  d6:	6402                	ld	s0,0(sp)
  d8:	0141                	addi	sp,sp,16
  da:	8082                	ret

00000000000000dc <test0>:
  dc:	7139                	addi	sp,sp,-64
  de:	fc06                	sd	ra,56(sp)
  e0:	f822                	sd	s0,48(sp)
  e2:	f426                	sd	s1,40(sp)
  e4:	f04a                	sd	s2,32(sp)
  e6:	ec4e                	sd	s3,24(sp)
  e8:	e852                	sd	s4,16(sp)
  ea:	e456                	sd	s5,8(sp)
  ec:	0080                	addi	s0,sp,64
  ee:	00001517          	auipc	a0,0x1
  f2:	bc250513          	addi	a0,a0,-1086 # cb0 <malloc+0x12e>
  f6:	00001097          	auipc	ra,0x1
  fa:	9ce080e7          	jalr	-1586(ra) # ac4 <printf>
  fe:	00001797          	auipc	a5,0x1
 102:	f007a123          	sw	zero,-254(a5) # 1000 <count>
 106:	00000597          	auipc	a1,0x0
 10a:	efa58593          	addi	a1,a1,-262 # 0 <periodic>
 10e:	4509                	li	a0,2
 110:	00000097          	auipc	ra,0x0
 114:	6cc080e7          	jalr	1740(ra) # 7dc <sigalarm>
 118:	4481                	li	s1,0
 11a:	000f4937          	lui	s2,0xf4
 11e:	2409091b          	addiw	s2,s2,576
 122:	00001a97          	auipc	s5,0x1
 126:	b9ea8a93          	addi	s5,s5,-1122 # cc0 <malloc+0x13e>
 12a:	00001a17          	auipc	s4,0x1
 12e:	ed6a0a13          	addi	s4,s4,-298 # 1000 <count>
 132:	1dcd69b7          	lui	s3,0x1dcd6
 136:	50098993          	addi	s3,s3,1280 # 1dcd6500 <base+0x1dcd54f0>
 13a:	a005                	j	15a <test0+0x7e>
 13c:	4605                	li	a2,1
 13e:	85d6                	mv	a1,s5
 140:	4509                	li	a0,2
 142:	00000097          	auipc	ra,0x0
 146:	602080e7          	jalr	1538(ra) # 744 <write>
 14a:	000a2783          	lw	a5,0(s4)
 14e:	2781                	sext.w	a5,a5
 150:	00f04963          	bgtz	a5,162 <test0+0x86>
 154:	2485                	addiw	s1,s1,1
 156:	01348663          	beq	s1,s3,162 <test0+0x86>
 15a:	0324e7bb          	remw	a5,s1,s2
 15e:	f7f5                	bnez	a5,14a <test0+0x6e>
 160:	bff1                	j	13c <test0+0x60>
 162:	4581                	li	a1,0
 164:	4501                	li	a0,0
 166:	00000097          	auipc	ra,0x0
 16a:	676080e7          	jalr	1654(ra) # 7dc <sigalarm>
 16e:	00001797          	auipc	a5,0x1
 172:	e927a783          	lw	a5,-366(a5) # 1000 <count>
 176:	02f05363          	blez	a5,19c <test0+0xc0>
 17a:	00001517          	auipc	a0,0x1
 17e:	b4e50513          	addi	a0,a0,-1202 # cc8 <malloc+0x146>
 182:	00001097          	auipc	ra,0x1
 186:	942080e7          	jalr	-1726(ra) # ac4 <printf>
 18a:	70e2                	ld	ra,56(sp)
 18c:	7442                	ld	s0,48(sp)
 18e:	74a2                	ld	s1,40(sp)
 190:	7902                	ld	s2,32(sp)
 192:	69e2                	ld	s3,24(sp)
 194:	6a42                	ld	s4,16(sp)
 196:	6aa2                	ld	s5,8(sp)
 198:	6121                	addi	sp,sp,64
 19a:	8082                	ret
 19c:	00001597          	auipc	a1,0x1
 1a0:	e645a583          	lw	a1,-412(a1) # 1000 <count>
 1a4:	00001517          	auipc	a0,0x1
 1a8:	b3450513          	addi	a0,a0,-1228 # cd8 <malloc+0x156>
 1ac:	00001097          	auipc	ra,0x1
 1b0:	918080e7          	jalr	-1768(ra) # ac4 <printf>
 1b4:	00001517          	auipc	a0,0x1
 1b8:	b2c50513          	addi	a0,a0,-1236 # ce0 <malloc+0x15e>
 1bc:	00001097          	auipc	ra,0x1
 1c0:	908080e7          	jalr	-1784(ra) # ac4 <printf>
 1c4:	b7d9                	j	18a <test0+0xae>

00000000000001c6 <foo>:
 1c6:	1101                	addi	sp,sp,-32
 1c8:	ec06                	sd	ra,24(sp)
 1ca:	e822                	sd	s0,16(sp)
 1cc:	e426                	sd	s1,8(sp)
 1ce:	1000                	addi	s0,sp,32
 1d0:	84ae                	mv	s1,a1
 1d2:	002627b7          	lui	a5,0x262
 1d6:	5a07879b          	addiw	a5,a5,1440
 1da:	02f5653b          	remw	a0,a0,a5
 1de:	c909                	beqz	a0,1f0 <foo+0x2a>
 1e0:	409c                	lw	a5,0(s1)
 1e2:	2785                	addiw	a5,a5,1
 1e4:	c09c                	sw	a5,0(s1)
 1e6:	60e2                	ld	ra,24(sp)
 1e8:	6442                	ld	s0,16(sp)
 1ea:	64a2                	ld	s1,8(sp)
 1ec:	6105                	addi	sp,sp,32
 1ee:	8082                	ret
 1f0:	4605                	li	a2,1
 1f2:	00001597          	auipc	a1,0x1
 1f6:	ace58593          	addi	a1,a1,-1330 # cc0 <malloc+0x13e>
 1fa:	4509                	li	a0,2
 1fc:	00000097          	auipc	ra,0x0
 200:	548080e7          	jalr	1352(ra) # 744 <write>
 204:	bff1                	j	1e0 <foo+0x1a>

0000000000000206 <test1>:
 206:	7139                	addi	sp,sp,-64
 208:	fc06                	sd	ra,56(sp)
 20a:	f822                	sd	s0,48(sp)
 20c:	f426                	sd	s1,40(sp)
 20e:	f04a                	sd	s2,32(sp)
 210:	ec4e                	sd	s3,24(sp)
 212:	e852                	sd	s4,16(sp)
 214:	0080                	addi	s0,sp,64
 216:	00001517          	auipc	a0,0x1
 21a:	b0a50513          	addi	a0,a0,-1270 # d20 <malloc+0x19e>
 21e:	00001097          	auipc	ra,0x1
 222:	8a6080e7          	jalr	-1882(ra) # ac4 <printf>
 226:	00001797          	auipc	a5,0x1
 22a:	dc07ad23          	sw	zero,-550(a5) # 1000 <count>
 22e:	fc042623          	sw	zero,-52(s0)
 232:	00000597          	auipc	a1,0x0
 236:	dce58593          	addi	a1,a1,-562 # 0 <periodic>
 23a:	4509                	li	a0,2
 23c:	00000097          	auipc	ra,0x0
 240:	5a0080e7          	jalr	1440(ra) # 7dc <sigalarm>
 244:	4481                	li	s1,0
 246:	00001a17          	auipc	s4,0x1
 24a:	dbaa0a13          	addi	s4,s4,-582 # 1000 <count>
 24e:	49a5                	li	s3,9
 250:	1dcd6937          	lui	s2,0x1dcd6
 254:	50090913          	addi	s2,s2,1280 # 1dcd6500 <base+0x1dcd54f0>
 258:	000a2783          	lw	a5,0(s4)
 25c:	2781                	sext.w	a5,a5
 25e:	00f9cc63          	blt	s3,a5,276 <test1+0x70>
 262:	fcc40593          	addi	a1,s0,-52
 266:	8526                	mv	a0,s1
 268:	00000097          	auipc	ra,0x0
 26c:	f5e080e7          	jalr	-162(ra) # 1c6 <foo>
 270:	2485                	addiw	s1,s1,1
 272:	ff2493e3          	bne	s1,s2,258 <test1+0x52>
 276:	00001717          	auipc	a4,0x1
 27a:	d8a72703          	lw	a4,-630(a4) # 1000 <count>
 27e:	47a5                	li	a5,9
 280:	02e7d663          	bge	a5,a4,2ac <test1+0xa6>
 284:	fcc42783          	lw	a5,-52(s0)
 288:	04978763          	beq	a5,s1,2d6 <test1+0xd0>
 28c:	00001517          	auipc	a0,0x1
 290:	ad450513          	addi	a0,a0,-1324 # d60 <malloc+0x1de>
 294:	00001097          	auipc	ra,0x1
 298:	830080e7          	jalr	-2000(ra) # ac4 <printf>
 29c:	70e2                	ld	ra,56(sp)
 29e:	7442                	ld	s0,48(sp)
 2a0:	74a2                	ld	s1,40(sp)
 2a2:	7902                	ld	s2,32(sp)
 2a4:	69e2                	ld	s3,24(sp)
 2a6:	6a42                	ld	s4,16(sp)
 2a8:	6121                	addi	sp,sp,64
 2aa:	8082                	ret
 2ac:	00001597          	auipc	a1,0x1
 2b0:	d545a583          	lw	a1,-684(a1) # 1000 <count>
 2b4:	00001517          	auipc	a0,0x1
 2b8:	a2450513          	addi	a0,a0,-1500 # cd8 <malloc+0x156>
 2bc:	00001097          	auipc	ra,0x1
 2c0:	808080e7          	jalr	-2040(ra) # ac4 <printf>
 2c4:	00001517          	auipc	a0,0x1
 2c8:	a6c50513          	addi	a0,a0,-1428 # d30 <malloc+0x1ae>
 2cc:	00000097          	auipc	ra,0x0
 2d0:	7f8080e7          	jalr	2040(ra) # ac4 <printf>
 2d4:	b7e1                	j	29c <test1+0x96>
 2d6:	00001517          	auipc	a0,0x1
 2da:	aca50513          	addi	a0,a0,-1334 # da0 <malloc+0x21e>
 2de:	00000097          	auipc	ra,0x0
 2e2:	7e6080e7          	jalr	2022(ra) # ac4 <printf>
 2e6:	bf5d                	j	29c <test1+0x96>

00000000000002e8 <test2>:
 2e8:	715d                	addi	sp,sp,-80
 2ea:	e486                	sd	ra,72(sp)
 2ec:	e0a2                	sd	s0,64(sp)
 2ee:	fc26                	sd	s1,56(sp)
 2f0:	f84a                	sd	s2,48(sp)
 2f2:	f44e                	sd	s3,40(sp)
 2f4:	f052                	sd	s4,32(sp)
 2f6:	ec56                	sd	s5,24(sp)
 2f8:	0880                	addi	s0,sp,80
 2fa:	00001517          	auipc	a0,0x1
 2fe:	ab650513          	addi	a0,a0,-1354 # db0 <malloc+0x22e>
 302:	00000097          	auipc	ra,0x0
 306:	7c2080e7          	jalr	1986(ra) # ac4 <printf>
 30a:	00000097          	auipc	ra,0x0
 30e:	412080e7          	jalr	1042(ra) # 71c <fork>
 312:	04054263          	bltz	a0,356 <test2+0x6e>
 316:	84aa                	mv	s1,a0
 318:	e539                	bnez	a0,366 <test2+0x7e>
 31a:	00001797          	auipc	a5,0x1
 31e:	ce07a323          	sw	zero,-794(a5) # 1000 <count>
 322:	00000597          	auipc	a1,0x0
 326:	d1858593          	addi	a1,a1,-744 # 3a <slow_handler>
 32a:	4509                	li	a0,2
 32c:	00000097          	auipc	ra,0x0
 330:	4b0080e7          	jalr	1200(ra) # 7dc <sigalarm>
 334:	000f4937          	lui	s2,0xf4
 338:	2409091b          	addiw	s2,s2,576
 33c:	00001a97          	auipc	s5,0x1
 340:	984a8a93          	addi	s5,s5,-1660 # cc0 <malloc+0x13e>
 344:	00001a17          	auipc	s4,0x1
 348:	cbca0a13          	addi	s4,s4,-836 # 1000 <count>
 34c:	1dcd69b7          	lui	s3,0x1dcd6
 350:	50098993          	addi	s3,s3,1280 # 1dcd6500 <base+0x1dcd54f0>
 354:	a891                	j	3a8 <test2+0xc0>
 356:	00001517          	auipc	a0,0x1
 35a:	a6a50513          	addi	a0,a0,-1430 # dc0 <malloc+0x23e>
 35e:	00000097          	auipc	ra,0x0
 362:	766080e7          	jalr	1894(ra) # ac4 <printf>
 366:	fbc40513          	addi	a0,s0,-68
 36a:	00000097          	auipc	ra,0x0
 36e:	3c2080e7          	jalr	962(ra) # 72c <wait>
 372:	fbc42783          	lw	a5,-68(s0)
 376:	c7a5                	beqz	a5,3de <test2+0xf6>
 378:	60a6                	ld	ra,72(sp)
 37a:	6406                	ld	s0,64(sp)
 37c:	74e2                	ld	s1,56(sp)
 37e:	7942                	ld	s2,48(sp)
 380:	79a2                	ld	s3,40(sp)
 382:	7a02                	ld	s4,32(sp)
 384:	6ae2                	ld	s5,24(sp)
 386:	6161                	addi	sp,sp,80
 388:	8082                	ret
 38a:	4605                	li	a2,1
 38c:	85d6                	mv	a1,s5
 38e:	4509                	li	a0,2
 390:	00000097          	auipc	ra,0x0
 394:	3b4080e7          	jalr	948(ra) # 744 <write>
 398:	000a2783          	lw	a5,0(s4)
 39c:	2781                	sext.w	a5,a5
 39e:	00f04963          	bgtz	a5,3b0 <test2+0xc8>
 3a2:	2485                	addiw	s1,s1,1
 3a4:	01348663          	beq	s1,s3,3b0 <test2+0xc8>
 3a8:	0324e7bb          	remw	a5,s1,s2
 3ac:	f7f5                	bnez	a5,398 <test2+0xb0>
 3ae:	bff1                	j	38a <test2+0xa2>
 3b0:	00001797          	auipc	a5,0x1
 3b4:	c507a783          	lw	a5,-944(a5) # 1000 <count>
 3b8:	ef91                	bnez	a5,3d4 <test2+0xec>
 3ba:	00001517          	auipc	a0,0x1
 3be:	a1e50513          	addi	a0,a0,-1506 # dd8 <malloc+0x256>
 3c2:	00000097          	auipc	ra,0x0
 3c6:	702080e7          	jalr	1794(ra) # ac4 <printf>
 3ca:	4505                	li	a0,1
 3cc:	00000097          	auipc	ra,0x0
 3d0:	358080e7          	jalr	856(ra) # 724 <exit>
 3d4:	4501                	li	a0,0
 3d6:	00000097          	auipc	ra,0x0
 3da:	34e080e7          	jalr	846(ra) # 724 <exit>
 3de:	00001517          	auipc	a0,0x1
 3e2:	a2250513          	addi	a0,a0,-1502 # e00 <malloc+0x27e>
 3e6:	00000097          	auipc	ra,0x0
 3ea:	6de080e7          	jalr	1758(ra) # ac4 <printf>
 3ee:	b769                	j	378 <test2+0x90>

00000000000003f0 <test3>:
 3f0:	1141                	addi	sp,sp,-16
 3f2:	e406                	sd	ra,8(sp)
 3f4:	e022                	sd	s0,0(sp)
 3f6:	0800                	addi	s0,sp,16
 3f8:	00000597          	auipc	a1,0x0
 3fc:	cc058593          	addi	a1,a1,-832 # b8 <dummy_handler>
 400:	4505                	li	a0,1
 402:	00000097          	auipc	ra,0x0
 406:	3da080e7          	jalr	986(ra) # 7dc <sigalarm>
 40a:	00001517          	auipc	a0,0x1
 40e:	a0650513          	addi	a0,a0,-1530 # e10 <malloc+0x28e>
 412:	00000097          	auipc	ra,0x0
 416:	6b2080e7          	jalr	1714(ra) # ac4 <printf>
 41a:	000007b7          	lui	a5,0x0
 41e:	0ac78513          	addi	a0,a5,172 # ac <slow_handler+0x72>
 422:	1dcd67b7          	lui	a5,0x1dcd6
 426:	50078793          	addi	a5,a5,1280 # 1dcd6500 <base+0x1dcd54f0>
 42a:	37fd                	addiw	a5,a5,-1
 42c:	fffd                	bnez	a5,42a <test3+0x3a>
 42e:	872a                	mv	a4,a0
 430:	0ac00793          	li	a5,172
 434:	00f70e63          	beq	a4,a5,450 <test3+0x60>
 438:	00001517          	auipc	a0,0x1
 43c:	9e850513          	addi	a0,a0,-1560 # e20 <malloc+0x29e>
 440:	00000097          	auipc	ra,0x0
 444:	684080e7          	jalr	1668(ra) # ac4 <printf>
 448:	60a2                	ld	ra,8(sp)
 44a:	6402                	ld	s0,0(sp)
 44c:	0141                	addi	sp,sp,16
 44e:	8082                	ret
 450:	00001517          	auipc	a0,0x1
 454:	9f850513          	addi	a0,a0,-1544 # e48 <malloc+0x2c6>
 458:	00000097          	auipc	ra,0x0
 45c:	66c080e7          	jalr	1644(ra) # ac4 <printf>
 460:	b7e5                	j	448 <test3+0x58>

0000000000000462 <main>:
 462:	1141                	addi	sp,sp,-16
 464:	e406                	sd	ra,8(sp)
 466:	e022                	sd	s0,0(sp)
 468:	0800                	addi	s0,sp,16
 46a:	00000097          	auipc	ra,0x0
 46e:	c72080e7          	jalr	-910(ra) # dc <test0>
 472:	00000097          	auipc	ra,0x0
 476:	d94080e7          	jalr	-620(ra) # 206 <test1>
 47a:	00000097          	auipc	ra,0x0
 47e:	e6e080e7          	jalr	-402(ra) # 2e8 <test2>
 482:	00000097          	auipc	ra,0x0
 486:	f6e080e7          	jalr	-146(ra) # 3f0 <test3>
 48a:	4501                	li	a0,0
 48c:	00000097          	auipc	ra,0x0
 490:	298080e7          	jalr	664(ra) # 724 <exit>

0000000000000494 <_main>:
 494:	1141                	addi	sp,sp,-16
 496:	e406                	sd	ra,8(sp)
 498:	e022                	sd	s0,0(sp)
 49a:	0800                	addi	s0,sp,16
 49c:	00000097          	auipc	ra,0x0
 4a0:	fc6080e7          	jalr	-58(ra) # 462 <main>
 4a4:	4501                	li	a0,0
 4a6:	00000097          	auipc	ra,0x0
 4aa:	27e080e7          	jalr	638(ra) # 724 <exit>

00000000000004ae <strcpy>:
 4ae:	1141                	addi	sp,sp,-16
 4b0:	e422                	sd	s0,8(sp)
 4b2:	0800                	addi	s0,sp,16
 4b4:	87aa                	mv	a5,a0
 4b6:	0585                	addi	a1,a1,1
 4b8:	0785                	addi	a5,a5,1
 4ba:	fff5c703          	lbu	a4,-1(a1)
 4be:	fee78fa3          	sb	a4,-1(a5)
 4c2:	fb75                	bnez	a4,4b6 <strcpy+0x8>
 4c4:	6422                	ld	s0,8(sp)
 4c6:	0141                	addi	sp,sp,16
 4c8:	8082                	ret

00000000000004ca <strcmp>:
 4ca:	1141                	addi	sp,sp,-16
 4cc:	e422                	sd	s0,8(sp)
 4ce:	0800                	addi	s0,sp,16
 4d0:	00054783          	lbu	a5,0(a0)
 4d4:	cb91                	beqz	a5,4e8 <strcmp+0x1e>
 4d6:	0005c703          	lbu	a4,0(a1)
 4da:	00f71763          	bne	a4,a5,4e8 <strcmp+0x1e>
 4de:	0505                	addi	a0,a0,1
 4e0:	0585                	addi	a1,a1,1
 4e2:	00054783          	lbu	a5,0(a0)
 4e6:	fbe5                	bnez	a5,4d6 <strcmp+0xc>
 4e8:	0005c503          	lbu	a0,0(a1)
 4ec:	40a7853b          	subw	a0,a5,a0
 4f0:	6422                	ld	s0,8(sp)
 4f2:	0141                	addi	sp,sp,16
 4f4:	8082                	ret

00000000000004f6 <strlen>:
 4f6:	1141                	addi	sp,sp,-16
 4f8:	e422                	sd	s0,8(sp)
 4fa:	0800                	addi	s0,sp,16
 4fc:	00054783          	lbu	a5,0(a0)
 500:	cf91                	beqz	a5,51c <strlen+0x26>
 502:	0505                	addi	a0,a0,1
 504:	87aa                	mv	a5,a0
 506:	4685                	li	a3,1
 508:	9e89                	subw	a3,a3,a0
 50a:	00f6853b          	addw	a0,a3,a5
 50e:	0785                	addi	a5,a5,1
 510:	fff7c703          	lbu	a4,-1(a5)
 514:	fb7d                	bnez	a4,50a <strlen+0x14>
 516:	6422                	ld	s0,8(sp)
 518:	0141                	addi	sp,sp,16
 51a:	8082                	ret
 51c:	4501                	li	a0,0
 51e:	bfe5                	j	516 <strlen+0x20>

0000000000000520 <memset>:
 520:	1141                	addi	sp,sp,-16
 522:	e422                	sd	s0,8(sp)
 524:	0800                	addi	s0,sp,16
 526:	ce09                	beqz	a2,540 <memset+0x20>
 528:	87aa                	mv	a5,a0
 52a:	fff6071b          	addiw	a4,a2,-1
 52e:	1702                	slli	a4,a4,0x20
 530:	9301                	srli	a4,a4,0x20
 532:	0705                	addi	a4,a4,1
 534:	972a                	add	a4,a4,a0
 536:	00b78023          	sb	a1,0(a5)
 53a:	0785                	addi	a5,a5,1
 53c:	fee79de3          	bne	a5,a4,536 <memset+0x16>
 540:	6422                	ld	s0,8(sp)
 542:	0141                	addi	sp,sp,16
 544:	8082                	ret

0000000000000546 <strchr>:
 546:	1141                	addi	sp,sp,-16
 548:	e422                	sd	s0,8(sp)
 54a:	0800                	addi	s0,sp,16
 54c:	00054783          	lbu	a5,0(a0)
 550:	cb99                	beqz	a5,566 <strchr+0x20>
 552:	00f58763          	beq	a1,a5,560 <strchr+0x1a>
 556:	0505                	addi	a0,a0,1
 558:	00054783          	lbu	a5,0(a0)
 55c:	fbfd                	bnez	a5,552 <strchr+0xc>
 55e:	4501                	li	a0,0
 560:	6422                	ld	s0,8(sp)
 562:	0141                	addi	sp,sp,16
 564:	8082                	ret
 566:	4501                	li	a0,0
 568:	bfe5                	j	560 <strchr+0x1a>

000000000000056a <gets>:
 56a:	711d                	addi	sp,sp,-96
 56c:	ec86                	sd	ra,88(sp)
 56e:	e8a2                	sd	s0,80(sp)
 570:	e4a6                	sd	s1,72(sp)
 572:	e0ca                	sd	s2,64(sp)
 574:	fc4e                	sd	s3,56(sp)
 576:	f852                	sd	s4,48(sp)
 578:	f456                	sd	s5,40(sp)
 57a:	f05a                	sd	s6,32(sp)
 57c:	ec5e                	sd	s7,24(sp)
 57e:	1080                	addi	s0,sp,96
 580:	8baa                	mv	s7,a0
 582:	8a2e                	mv	s4,a1
 584:	892a                	mv	s2,a0
 586:	4481                	li	s1,0
 588:	4aa9                	li	s5,10
 58a:	4b35                	li	s6,13
 58c:	89a6                	mv	s3,s1
 58e:	2485                	addiw	s1,s1,1
 590:	0344d863          	bge	s1,s4,5c0 <gets+0x56>
 594:	4605                	li	a2,1
 596:	faf40593          	addi	a1,s0,-81
 59a:	4501                	li	a0,0
 59c:	00000097          	auipc	ra,0x0
 5a0:	1a0080e7          	jalr	416(ra) # 73c <read>
 5a4:	00a05e63          	blez	a0,5c0 <gets+0x56>
 5a8:	faf44783          	lbu	a5,-81(s0)
 5ac:	00f90023          	sb	a5,0(s2) # f4000 <base+0xf2ff0>
 5b0:	01578763          	beq	a5,s5,5be <gets+0x54>
 5b4:	0905                	addi	s2,s2,1
 5b6:	fd679be3          	bne	a5,s6,58c <gets+0x22>
 5ba:	89a6                	mv	s3,s1
 5bc:	a011                	j	5c0 <gets+0x56>
 5be:	89a6                	mv	s3,s1
 5c0:	99de                	add	s3,s3,s7
 5c2:	00098023          	sb	zero,0(s3)
 5c6:	855e                	mv	a0,s7
 5c8:	60e6                	ld	ra,88(sp)
 5ca:	6446                	ld	s0,80(sp)
 5cc:	64a6                	ld	s1,72(sp)
 5ce:	6906                	ld	s2,64(sp)
 5d0:	79e2                	ld	s3,56(sp)
 5d2:	7a42                	ld	s4,48(sp)
 5d4:	7aa2                	ld	s5,40(sp)
 5d6:	7b02                	ld	s6,32(sp)
 5d8:	6be2                	ld	s7,24(sp)
 5da:	6125                	addi	sp,sp,96
 5dc:	8082                	ret

00000000000005de <stat>:
 5de:	1101                	addi	sp,sp,-32
 5e0:	ec06                	sd	ra,24(sp)
 5e2:	e822                	sd	s0,16(sp)
 5e4:	e426                	sd	s1,8(sp)
 5e6:	e04a                	sd	s2,0(sp)
 5e8:	1000                	addi	s0,sp,32
 5ea:	892e                	mv	s2,a1
 5ec:	4581                	li	a1,0
 5ee:	00000097          	auipc	ra,0x0
 5f2:	176080e7          	jalr	374(ra) # 764 <open>
 5f6:	02054563          	bltz	a0,620 <stat+0x42>
 5fa:	84aa                	mv	s1,a0
 5fc:	85ca                	mv	a1,s2
 5fe:	00000097          	auipc	ra,0x0
 602:	17e080e7          	jalr	382(ra) # 77c <fstat>
 606:	892a                	mv	s2,a0
 608:	8526                	mv	a0,s1
 60a:	00000097          	auipc	ra,0x0
 60e:	142080e7          	jalr	322(ra) # 74c <close>
 612:	854a                	mv	a0,s2
 614:	60e2                	ld	ra,24(sp)
 616:	6442                	ld	s0,16(sp)
 618:	64a2                	ld	s1,8(sp)
 61a:	6902                	ld	s2,0(sp)
 61c:	6105                	addi	sp,sp,32
 61e:	8082                	ret
 620:	597d                	li	s2,-1
 622:	bfc5                	j	612 <stat+0x34>

0000000000000624 <atoi>:
 624:	1141                	addi	sp,sp,-16
 626:	e422                	sd	s0,8(sp)
 628:	0800                	addi	s0,sp,16
 62a:	00054603          	lbu	a2,0(a0)
 62e:	fd06079b          	addiw	a5,a2,-48
 632:	0ff7f793          	andi	a5,a5,255
 636:	4725                	li	a4,9
 638:	02f76963          	bltu	a4,a5,66a <atoi+0x46>
 63c:	86aa                	mv	a3,a0
 63e:	4501                	li	a0,0
 640:	45a5                	li	a1,9
 642:	0685                	addi	a3,a3,1
 644:	0025179b          	slliw	a5,a0,0x2
 648:	9fa9                	addw	a5,a5,a0
 64a:	0017979b          	slliw	a5,a5,0x1
 64e:	9fb1                	addw	a5,a5,a2
 650:	fd07851b          	addiw	a0,a5,-48
 654:	0006c603          	lbu	a2,0(a3)
 658:	fd06071b          	addiw	a4,a2,-48
 65c:	0ff77713          	andi	a4,a4,255
 660:	fee5f1e3          	bgeu	a1,a4,642 <atoi+0x1e>
 664:	6422                	ld	s0,8(sp)
 666:	0141                	addi	sp,sp,16
 668:	8082                	ret
 66a:	4501                	li	a0,0
 66c:	bfe5                	j	664 <atoi+0x40>

000000000000066e <memmove>:
 66e:	1141                	addi	sp,sp,-16
 670:	e422                	sd	s0,8(sp)
 672:	0800                	addi	s0,sp,16
 674:	02b57663          	bgeu	a0,a1,6a0 <memmove+0x32>
 678:	02c05163          	blez	a2,69a <memmove+0x2c>
 67c:	fff6079b          	addiw	a5,a2,-1
 680:	1782                	slli	a5,a5,0x20
 682:	9381                	srli	a5,a5,0x20
 684:	0785                	addi	a5,a5,1
 686:	97aa                	add	a5,a5,a0
 688:	872a                	mv	a4,a0
 68a:	0585                	addi	a1,a1,1
 68c:	0705                	addi	a4,a4,1
 68e:	fff5c683          	lbu	a3,-1(a1)
 692:	fed70fa3          	sb	a3,-1(a4)
 696:	fee79ae3          	bne	a5,a4,68a <memmove+0x1c>
 69a:	6422                	ld	s0,8(sp)
 69c:	0141                	addi	sp,sp,16
 69e:	8082                	ret
 6a0:	00c50733          	add	a4,a0,a2
 6a4:	95b2                	add	a1,a1,a2
 6a6:	fec05ae3          	blez	a2,69a <memmove+0x2c>
 6aa:	fff6079b          	addiw	a5,a2,-1
 6ae:	1782                	slli	a5,a5,0x20
 6b0:	9381                	srli	a5,a5,0x20
 6b2:	fff7c793          	not	a5,a5
 6b6:	97ba                	add	a5,a5,a4
 6b8:	15fd                	addi	a1,a1,-1
 6ba:	177d                	addi	a4,a4,-1
 6bc:	0005c683          	lbu	a3,0(a1)
 6c0:	00d70023          	sb	a3,0(a4)
 6c4:	fee79ae3          	bne	a5,a4,6b8 <memmove+0x4a>
 6c8:	bfc9                	j	69a <memmove+0x2c>

00000000000006ca <memcmp>:
 6ca:	1141                	addi	sp,sp,-16
 6cc:	e422                	sd	s0,8(sp)
 6ce:	0800                	addi	s0,sp,16
 6d0:	ca05                	beqz	a2,700 <memcmp+0x36>
 6d2:	fff6069b          	addiw	a3,a2,-1
 6d6:	1682                	slli	a3,a3,0x20
 6d8:	9281                	srli	a3,a3,0x20
 6da:	0685                	addi	a3,a3,1
 6dc:	96aa                	add	a3,a3,a0
 6de:	00054783          	lbu	a5,0(a0)
 6e2:	0005c703          	lbu	a4,0(a1)
 6e6:	00e79863          	bne	a5,a4,6f6 <memcmp+0x2c>
 6ea:	0505                	addi	a0,a0,1
 6ec:	0585                	addi	a1,a1,1
 6ee:	fed518e3          	bne	a0,a3,6de <memcmp+0x14>
 6f2:	4501                	li	a0,0
 6f4:	a019                	j	6fa <memcmp+0x30>
 6f6:	40e7853b          	subw	a0,a5,a4
 6fa:	6422                	ld	s0,8(sp)
 6fc:	0141                	addi	sp,sp,16
 6fe:	8082                	ret
 700:	4501                	li	a0,0
 702:	bfe5                	j	6fa <memcmp+0x30>

0000000000000704 <memcpy>:
 704:	1141                	addi	sp,sp,-16
 706:	e406                	sd	ra,8(sp)
 708:	e022                	sd	s0,0(sp)
 70a:	0800                	addi	s0,sp,16
 70c:	00000097          	auipc	ra,0x0
 710:	f62080e7          	jalr	-158(ra) # 66e <memmove>
 714:	60a2                	ld	ra,8(sp)
 716:	6402                	ld	s0,0(sp)
 718:	0141                	addi	sp,sp,16
 71a:	8082                	ret

000000000000071c <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
 71c:	4885                	li	a7,1
 ecall
 71e:	00000073          	ecall
 ret
 722:	8082                	ret

0000000000000724 <exit>:
.global exit
exit:
 li a7, SYS_exit
 724:	4889                	li	a7,2
 ecall
 726:	00000073          	ecall
 ret
 72a:	8082                	ret

000000000000072c <wait>:
.global wait
wait:
 li a7, SYS_wait
 72c:	488d                	li	a7,3
 ecall
 72e:	00000073          	ecall
 ret
 732:	8082                	ret

0000000000000734 <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
 734:	4891                	li	a7,4
 ecall
 736:	00000073          	ecall
 ret
 73a:	8082                	ret

000000000000073c <read>:
.global read
read:
 li a7, SYS_read
 73c:	4895                	li	a7,5
 ecall
 73e:	00000073          	ecall
 ret
 742:	8082                	ret

0000000000000744 <write>:
.global write
write:
 li a7, SYS_write
 744:	48c1                	li	a7,16
 ecall
 746:	00000073          	ecall
 ret
 74a:	8082                	ret

000000000000074c <close>:
.global close
close:
 li a7, SYS_close
 74c:	48d5                	li	a7,21
 ecall
 74e:	00000073          	ecall
 ret
 752:	8082                	ret

0000000000000754 <kill>:
.global kill
kill:
 li a7, SYS_kill
 754:	4899                	li	a7,6
 ecall
 756:	00000073          	ecall
 ret
 75a:	8082                	ret

000000000000075c <exec>:
.global exec
exec:
 li a7, SYS_exec
 75c:	489d                	li	a7,7
 ecall
 75e:	00000073          	ecall
 ret
 762:	8082                	ret

0000000000000764 <open>:
.global open
open:
 li a7, SYS_open
 764:	48bd                	li	a7,15
 ecall
 766:	00000073          	ecall
 ret
 76a:	8082                	ret

000000000000076c <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
 76c:	48c5                	li	a7,17
 ecall
 76e:	00000073          	ecall
 ret
 772:	8082                	ret

0000000000000774 <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
 774:	48c9                	li	a7,18
 ecall
 776:	00000073          	ecall
 ret
 77a:	8082                	ret

000000000000077c <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
 77c:	48a1                	li	a7,8
 ecall
 77e:	00000073          	ecall
 ret
 782:	8082                	ret

0000000000000784 <link>:
.global link
link:
 li a7, SYS_link
 784:	48cd                	li	a7,19
 ecall
 786:	00000073          	ecall
 ret
 78a:	8082                	ret

000000000000078c <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
 78c:	48d1                	li	a7,20
 ecall
 78e:	00000073          	ecall
 ret
 792:	8082                	ret

0000000000000794 <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
 794:	48a5                	li	a7,9
 ecall
 796:	00000073          	ecall
 ret
 79a:	8082                	ret

000000000000079c <dup>:
.global dup
dup:
 li a7, SYS_dup
 79c:	48a9                	li	a7,10
 ecall
 79e:	00000073          	ecall
 ret
 7a2:	8082                	ret

00000000000007a4 <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
 7a4:	48ad                	li	a7,11
 ecall
 7a6:	00000073          	ecall
 ret
 7aa:	8082                	ret

00000000000007ac <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
 7ac:	48b1                	li	a7,12
 ecall
 7ae:	00000073          	ecall
 ret
 7b2:	8082                	ret

00000000000007b4 <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
 7b4:	48b5                	li	a7,13
 ecall
 7b6:	00000073          	ecall
 ret
 7ba:	8082                	ret

00000000000007bc <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
 7bc:	48b9                	li	a7,14
 ecall
 7be:	00000073          	ecall
 ret
 7c2:	8082                	ret

00000000000007c4 <trace>:
.global trace
trace:
 li a7, SYS_trace
 7c4:	48d9                	li	a7,22
 ecall
 7c6:	00000073          	ecall
 ret
 7ca:	8082                	ret

00000000000007cc <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
 7cc:	48e1                	li	a7,24
 ecall
 7ce:	00000073          	ecall
 ret
 7d2:	8082                	ret

00000000000007d4 <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
 7d4:	48dd                	li	a7,23
 ecall
 7d6:	00000073          	ecall
 ret
 7da:	8082                	ret

00000000000007dc <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
 7dc:	48e5                	li	a7,25
 ecall
 7de:	00000073          	ecall
 ret
 7e2:	8082                	ret

00000000000007e4 <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
 7e4:	48e9                	li	a7,26
 ecall
 7e6:	00000073          	ecall
 ret
 7ea:	8082                	ret

00000000000007ec <putc>:
 7ec:	1101                	addi	sp,sp,-32
 7ee:	ec06                	sd	ra,24(sp)
 7f0:	e822                	sd	s0,16(sp)
 7f2:	1000                	addi	s0,sp,32
 7f4:	feb407a3          	sb	a1,-17(s0)
 7f8:	4605                	li	a2,1
 7fa:	fef40593          	addi	a1,s0,-17
 7fe:	00000097          	auipc	ra,0x0
 802:	f46080e7          	jalr	-186(ra) # 744 <write>
 806:	60e2                	ld	ra,24(sp)
 808:	6442                	ld	s0,16(sp)
 80a:	6105                	addi	sp,sp,32
 80c:	8082                	ret

000000000000080e <printint>:
 80e:	7139                	addi	sp,sp,-64
 810:	fc06                	sd	ra,56(sp)
 812:	f822                	sd	s0,48(sp)
 814:	f426                	sd	s1,40(sp)
 816:	f04a                	sd	s2,32(sp)
 818:	ec4e                	sd	s3,24(sp)
 81a:	0080                	addi	s0,sp,64
 81c:	84aa                	mv	s1,a0
 81e:	c299                	beqz	a3,824 <printint+0x16>
 820:	0805c863          	bltz	a1,8b0 <printint+0xa2>
 824:	2581                	sext.w	a1,a1
 826:	4881                	li	a7,0
 828:	fc040693          	addi	a3,s0,-64
 82c:	4701                	li	a4,0
 82e:	2601                	sext.w	a2,a2
 830:	00000517          	auipc	a0,0x0
 834:	63050513          	addi	a0,a0,1584 # e60 <digits>
 838:	883a                	mv	a6,a4
 83a:	2705                	addiw	a4,a4,1
 83c:	02c5f7bb          	remuw	a5,a1,a2
 840:	1782                	slli	a5,a5,0x20
 842:	9381                	srli	a5,a5,0x20
 844:	97aa                	add	a5,a5,a0
 846:	0007c783          	lbu	a5,0(a5)
 84a:	00f68023          	sb	a5,0(a3)
 84e:	0005879b          	sext.w	a5,a1
 852:	02c5d5bb          	divuw	a1,a1,a2
 856:	0685                	addi	a3,a3,1
 858:	fec7f0e3          	bgeu	a5,a2,838 <printint+0x2a>
 85c:	00088b63          	beqz	a7,872 <printint+0x64>
 860:	fd040793          	addi	a5,s0,-48
 864:	973e                	add	a4,a4,a5
 866:	02d00793          	li	a5,45
 86a:	fef70823          	sb	a5,-16(a4)
 86e:	0028071b          	addiw	a4,a6,2
 872:	02e05863          	blez	a4,8a2 <printint+0x94>
 876:	fc040793          	addi	a5,s0,-64
 87a:	00e78933          	add	s2,a5,a4
 87e:	fff78993          	addi	s3,a5,-1
 882:	99ba                	add	s3,s3,a4
 884:	377d                	addiw	a4,a4,-1
 886:	1702                	slli	a4,a4,0x20
 888:	9301                	srli	a4,a4,0x20
 88a:	40e989b3          	sub	s3,s3,a4
 88e:	fff94583          	lbu	a1,-1(s2)
 892:	8526                	mv	a0,s1
 894:	00000097          	auipc	ra,0x0
 898:	f58080e7          	jalr	-168(ra) # 7ec <putc>
 89c:	197d                	addi	s2,s2,-1
 89e:	ff3918e3          	bne	s2,s3,88e <printint+0x80>
 8a2:	70e2                	ld	ra,56(sp)
 8a4:	7442                	ld	s0,48(sp)
 8a6:	74a2                	ld	s1,40(sp)
 8a8:	7902                	ld	s2,32(sp)
 8aa:	69e2                	ld	s3,24(sp)
 8ac:	6121                	addi	sp,sp,64
 8ae:	8082                	ret
 8b0:	40b005bb          	negw	a1,a1
 8b4:	4885                	li	a7,1
 8b6:	bf8d                	j	828 <printint+0x1a>

00000000000008b8 <vprintf>:
 8b8:	7119                	addi	sp,sp,-128
 8ba:	fc86                	sd	ra,120(sp)
 8bc:	f8a2                	sd	s0,112(sp)
 8be:	f4a6                	sd	s1,104(sp)
 8c0:	f0ca                	sd	s2,96(sp)
 8c2:	ecce                	sd	s3,88(sp)
 8c4:	e8d2                	sd	s4,80(sp)
 8c6:	e4d6                	sd	s5,72(sp)
 8c8:	e0da                	sd	s6,64(sp)
 8ca:	fc5e                	sd	s7,56(sp)
 8cc:	f862                	sd	s8,48(sp)
 8ce:	f466                	sd	s9,40(sp)
 8d0:	f06a                	sd	s10,32(sp)
 8d2:	ec6e                	sd	s11,24(sp)
 8d4:	0100                	addi	s0,sp,128
 8d6:	0005c903          	lbu	s2,0(a1)
 8da:	18090f63          	beqz	s2,a78 <vprintf+0x1c0>
 8de:	8aaa                	mv	s5,a0
 8e0:	8b32                	mv	s6,a2
 8e2:	00158493          	addi	s1,a1,1
 8e6:	4981                	li	s3,0
 8e8:	02500a13          	li	s4,37
 8ec:	06400c13          	li	s8,100
 8f0:	06c00c93          	li	s9,108
 8f4:	07800d13          	li	s10,120
 8f8:	07000d93          	li	s11,112
 8fc:	00000b97          	auipc	s7,0x0
 900:	564b8b93          	addi	s7,s7,1380 # e60 <digits>
 904:	a839                	j	922 <vprintf+0x6a>
 906:	85ca                	mv	a1,s2
 908:	8556                	mv	a0,s5
 90a:	00000097          	auipc	ra,0x0
 90e:	ee2080e7          	jalr	-286(ra) # 7ec <putc>
 912:	a019                	j	918 <vprintf+0x60>
 914:	01498f63          	beq	s3,s4,932 <vprintf+0x7a>
 918:	0485                	addi	s1,s1,1
 91a:	fff4c903          	lbu	s2,-1(s1)
 91e:	14090d63          	beqz	s2,a78 <vprintf+0x1c0>
 922:	0009079b          	sext.w	a5,s2
 926:	fe0997e3          	bnez	s3,914 <vprintf+0x5c>
 92a:	fd479ee3          	bne	a5,s4,906 <vprintf+0x4e>
 92e:	89be                	mv	s3,a5
 930:	b7e5                	j	918 <vprintf+0x60>
 932:	05878063          	beq	a5,s8,972 <vprintf+0xba>
 936:	05978c63          	beq	a5,s9,98e <vprintf+0xd6>
 93a:	07a78863          	beq	a5,s10,9aa <vprintf+0xf2>
 93e:	09b78463          	beq	a5,s11,9c6 <vprintf+0x10e>
 942:	07300713          	li	a4,115
 946:	0ce78663          	beq	a5,a4,a12 <vprintf+0x15a>
 94a:	06300713          	li	a4,99
 94e:	0ee78e63          	beq	a5,a4,a4a <vprintf+0x192>
 952:	11478863          	beq	a5,s4,a62 <vprintf+0x1aa>
 956:	85d2                	mv	a1,s4
 958:	8556                	mv	a0,s5
 95a:	00000097          	auipc	ra,0x0
 95e:	e92080e7          	jalr	-366(ra) # 7ec <putc>
 962:	85ca                	mv	a1,s2
 964:	8556                	mv	a0,s5
 966:	00000097          	auipc	ra,0x0
 96a:	e86080e7          	jalr	-378(ra) # 7ec <putc>
 96e:	4981                	li	s3,0
 970:	b765                	j	918 <vprintf+0x60>
 972:	008b0913          	addi	s2,s6,8
 976:	4685                	li	a3,1
 978:	4629                	li	a2,10
 97a:	000b2583          	lw	a1,0(s6)
 97e:	8556                	mv	a0,s5
 980:	00000097          	auipc	ra,0x0
 984:	e8e080e7          	jalr	-370(ra) # 80e <printint>
 988:	8b4a                	mv	s6,s2
 98a:	4981                	li	s3,0
 98c:	b771                	j	918 <vprintf+0x60>
 98e:	008b0913          	addi	s2,s6,8
 992:	4681                	li	a3,0
 994:	4629                	li	a2,10
 996:	000b2583          	lw	a1,0(s6)
 99a:	8556                	mv	a0,s5
 99c:	00000097          	auipc	ra,0x0
 9a0:	e72080e7          	jalr	-398(ra) # 80e <printint>
 9a4:	8b4a                	mv	s6,s2
 9a6:	4981                	li	s3,0
 9a8:	bf85                	j	918 <vprintf+0x60>
 9aa:	008b0913          	addi	s2,s6,8
 9ae:	4681                	li	a3,0
 9b0:	4641                	li	a2,16
 9b2:	000b2583          	lw	a1,0(s6)
 9b6:	8556                	mv	a0,s5
 9b8:	00000097          	auipc	ra,0x0
 9bc:	e56080e7          	jalr	-426(ra) # 80e <printint>
 9c0:	8b4a                	mv	s6,s2
 9c2:	4981                	li	s3,0
 9c4:	bf91                	j	918 <vprintf+0x60>
 9c6:	008b0793          	addi	a5,s6,8
 9ca:	f8f43423          	sd	a5,-120(s0)
 9ce:	000b3983          	ld	s3,0(s6)
 9d2:	03000593          	li	a1,48
 9d6:	8556                	mv	a0,s5
 9d8:	00000097          	auipc	ra,0x0
 9dc:	e14080e7          	jalr	-492(ra) # 7ec <putc>
 9e0:	85ea                	mv	a1,s10
 9e2:	8556                	mv	a0,s5
 9e4:	00000097          	auipc	ra,0x0
 9e8:	e08080e7          	jalr	-504(ra) # 7ec <putc>
 9ec:	4941                	li	s2,16
 9ee:	03c9d793          	srli	a5,s3,0x3c
 9f2:	97de                	add	a5,a5,s7
 9f4:	0007c583          	lbu	a1,0(a5)
 9f8:	8556                	mv	a0,s5
 9fa:	00000097          	auipc	ra,0x0
 9fe:	df2080e7          	jalr	-526(ra) # 7ec <putc>
 a02:	0992                	slli	s3,s3,0x4
 a04:	397d                	addiw	s2,s2,-1
 a06:	fe0914e3          	bnez	s2,9ee <vprintf+0x136>
 a0a:	f8843b03          	ld	s6,-120(s0)
 a0e:	4981                	li	s3,0
 a10:	b721                	j	918 <vprintf+0x60>
 a12:	008b0993          	addi	s3,s6,8
 a16:	000b3903          	ld	s2,0(s6)
 a1a:	02090163          	beqz	s2,a3c <vprintf+0x184>
 a1e:	00094583          	lbu	a1,0(s2)
 a22:	c9a1                	beqz	a1,a72 <vprintf+0x1ba>
 a24:	8556                	mv	a0,s5
 a26:	00000097          	auipc	ra,0x0
 a2a:	dc6080e7          	jalr	-570(ra) # 7ec <putc>
 a2e:	0905                	addi	s2,s2,1
 a30:	00094583          	lbu	a1,0(s2)
 a34:	f9e5                	bnez	a1,a24 <vprintf+0x16c>
 a36:	8b4e                	mv	s6,s3
 a38:	4981                	li	s3,0
 a3a:	bdf9                	j	918 <vprintf+0x60>
 a3c:	00000917          	auipc	s2,0x0
 a40:	41c90913          	addi	s2,s2,1052 # e58 <malloc+0x2d6>
 a44:	02800593          	li	a1,40
 a48:	bff1                	j	a24 <vprintf+0x16c>
 a4a:	008b0913          	addi	s2,s6,8
 a4e:	000b4583          	lbu	a1,0(s6)
 a52:	8556                	mv	a0,s5
 a54:	00000097          	auipc	ra,0x0
 a58:	d98080e7          	jalr	-616(ra) # 7ec <putc>
 a5c:	8b4a                	mv	s6,s2
 a5e:	4981                	li	s3,0
 a60:	bd65                	j	918 <vprintf+0x60>
 a62:	85d2                	mv	a1,s4
 a64:	8556                	mv	a0,s5
 a66:	00000097          	auipc	ra,0x0
 a6a:	d86080e7          	jalr	-634(ra) # 7ec <putc>
 a6e:	4981                	li	s3,0
 a70:	b565                	j	918 <vprintf+0x60>
 a72:	8b4e                	mv	s6,s3
 a74:	4981                	li	s3,0
 a76:	b54d                	j	918 <vprintf+0x60>
 a78:	70e6                	ld	ra,120(sp)
 a7a:	7446                	ld	s0,112(sp)
 a7c:	74a6                	ld	s1,104(sp)
 a7e:	7906                	ld	s2,96(sp)
 a80:	69e6                	ld	s3,88(sp)
 a82:	6a46                	ld	s4,80(sp)
 a84:	6aa6                	ld	s5,72(sp)
 a86:	6b06                	ld	s6,64(sp)
 a88:	7be2                	ld	s7,56(sp)
 a8a:	7c42                	ld	s8,48(sp)
 a8c:	7ca2                	ld	s9,40(sp)
 a8e:	7d02                	ld	s10,32(sp)
 a90:	6de2                	ld	s11,24(sp)
 a92:	6109                	addi	sp,sp,128
 a94:	8082                	ret

0000000000000a96 <fprintf>:
 a96:	715d                	addi	sp,sp,-80
 a98:	ec06                	sd	ra,24(sp)
 a9a:	e822                	sd	s0,16(sp)
 a9c:	1000                	addi	s0,sp,32
 a9e:	e010                	sd	a2,0(s0)
 aa0:	e414                	sd	a3,8(s0)
 aa2:	e818                	sd	a4,16(s0)
 aa4:	ec1c                	sd	a5,24(s0)
 aa6:	03043023          	sd	a6,32(s0)
 aaa:	03143423          	sd	a7,40(s0)
 aae:	fe843423          	sd	s0,-24(s0)
 ab2:	8622                	mv	a2,s0
 ab4:	00000097          	auipc	ra,0x0
 ab8:	e04080e7          	jalr	-508(ra) # 8b8 <vprintf>
 abc:	60e2                	ld	ra,24(sp)
 abe:	6442                	ld	s0,16(sp)
 ac0:	6161                	addi	sp,sp,80
 ac2:	8082                	ret

0000000000000ac4 <printf>:
 ac4:	711d                	addi	sp,sp,-96
 ac6:	ec06                	sd	ra,24(sp)
 ac8:	e822                	sd	s0,16(sp)
 aca:	1000                	addi	s0,sp,32
 acc:	e40c                	sd	a1,8(s0)
 ace:	e810                	sd	a2,16(s0)
 ad0:	ec14                	sd	a3,24(s0)
 ad2:	f018                	sd	a4,32(s0)
 ad4:	f41c                	sd	a5,40(s0)
 ad6:	03043823          	sd	a6,48(s0)
 ada:	03143c23          	sd	a7,56(s0)
 ade:	00840613          	addi	a2,s0,8
 ae2:	fec43423          	sd	a2,-24(s0)
 ae6:	85aa                	mv	a1,a0
 ae8:	4505                	li	a0,1
 aea:	00000097          	auipc	ra,0x0
 aee:	dce080e7          	jalr	-562(ra) # 8b8 <vprintf>
 af2:	60e2                	ld	ra,24(sp)
 af4:	6442                	ld	s0,16(sp)
 af6:	6125                	addi	sp,sp,96
 af8:	8082                	ret

0000000000000afa <free>:
 afa:	1141                	addi	sp,sp,-16
 afc:	e422                	sd	s0,8(sp)
 afe:	0800                	addi	s0,sp,16
 b00:	ff050693          	addi	a3,a0,-16
 b04:	00000797          	auipc	a5,0x0
 b08:	5047b783          	ld	a5,1284(a5) # 1008 <freep>
 b0c:	a805                	j	b3c <free+0x42>
 b0e:	4618                	lw	a4,8(a2)
 b10:	9db9                	addw	a1,a1,a4
 b12:	feb52c23          	sw	a1,-8(a0)
 b16:	6398                	ld	a4,0(a5)
 b18:	6318                	ld	a4,0(a4)
 b1a:	fee53823          	sd	a4,-16(a0)
 b1e:	a091                	j	b62 <free+0x68>
 b20:	ff852703          	lw	a4,-8(a0)
 b24:	9e39                	addw	a2,a2,a4
 b26:	c790                	sw	a2,8(a5)
 b28:	ff053703          	ld	a4,-16(a0)
 b2c:	e398                	sd	a4,0(a5)
 b2e:	a099                	j	b74 <free+0x7a>
 b30:	6398                	ld	a4,0(a5)
 b32:	00e7e463          	bltu	a5,a4,b3a <free+0x40>
 b36:	00e6ea63          	bltu	a3,a4,b4a <free+0x50>
 b3a:	87ba                	mv	a5,a4
 b3c:	fed7fae3          	bgeu	a5,a3,b30 <free+0x36>
 b40:	6398                	ld	a4,0(a5)
 b42:	00e6e463          	bltu	a3,a4,b4a <free+0x50>
 b46:	fee7eae3          	bltu	a5,a4,b3a <free+0x40>
 b4a:	ff852583          	lw	a1,-8(a0)
 b4e:	6390                	ld	a2,0(a5)
 b50:	02059713          	slli	a4,a1,0x20
 b54:	9301                	srli	a4,a4,0x20
 b56:	0712                	slli	a4,a4,0x4
 b58:	9736                	add	a4,a4,a3
 b5a:	fae60ae3          	beq	a2,a4,b0e <free+0x14>
 b5e:	fec53823          	sd	a2,-16(a0)
 b62:	4790                	lw	a2,8(a5)
 b64:	02061713          	slli	a4,a2,0x20
 b68:	9301                	srli	a4,a4,0x20
 b6a:	0712                	slli	a4,a4,0x4
 b6c:	973e                	add	a4,a4,a5
 b6e:	fae689e3          	beq	a3,a4,b20 <free+0x26>
 b72:	e394                	sd	a3,0(a5)
 b74:	00000717          	auipc	a4,0x0
 b78:	48f73a23          	sd	a5,1172(a4) # 1008 <freep>
 b7c:	6422                	ld	s0,8(sp)
 b7e:	0141                	addi	sp,sp,16
 b80:	8082                	ret

0000000000000b82 <malloc>:
 b82:	7139                	addi	sp,sp,-64
 b84:	fc06                	sd	ra,56(sp)
 b86:	f822                	sd	s0,48(sp)
 b88:	f426                	sd	s1,40(sp)
 b8a:	f04a                	sd	s2,32(sp)
 b8c:	ec4e                	sd	s3,24(sp)
 b8e:	e852                	sd	s4,16(sp)
 b90:	e456                	sd	s5,8(sp)
 b92:	e05a                	sd	s6,0(sp)
 b94:	0080                	addi	s0,sp,64
 b96:	02051493          	slli	s1,a0,0x20
 b9a:	9081                	srli	s1,s1,0x20
 b9c:	04bd                	addi	s1,s1,15
 b9e:	8091                	srli	s1,s1,0x4
 ba0:	0014899b          	addiw	s3,s1,1
 ba4:	0485                	addi	s1,s1,1
 ba6:	00000517          	auipc	a0,0x0
 baa:	46253503          	ld	a0,1122(a0) # 1008 <freep>
 bae:	c515                	beqz	a0,bda <malloc+0x58>
 bb0:	611c                	ld	a5,0(a0)
 bb2:	4798                	lw	a4,8(a5)
 bb4:	02977f63          	bgeu	a4,s1,bf2 <malloc+0x70>
 bb8:	8a4e                	mv	s4,s3
 bba:	0009871b          	sext.w	a4,s3
 bbe:	6685                	lui	a3,0x1
 bc0:	00d77363          	bgeu	a4,a3,bc6 <malloc+0x44>
 bc4:	6a05                	lui	s4,0x1
 bc6:	000a0b1b          	sext.w	s6,s4
 bca:	004a1a1b          	slliw	s4,s4,0x4
 bce:	00000917          	auipc	s2,0x0
 bd2:	43a90913          	addi	s2,s2,1082 # 1008 <freep>
 bd6:	5afd                	li	s5,-1
 bd8:	a88d                	j	c4a <malloc+0xc8>
 bda:	00000797          	auipc	a5,0x0
 bde:	43678793          	addi	a5,a5,1078 # 1010 <base>
 be2:	00000717          	auipc	a4,0x0
 be6:	42f73323          	sd	a5,1062(a4) # 1008 <freep>
 bea:	e39c                	sd	a5,0(a5)
 bec:	0007a423          	sw	zero,8(a5)
 bf0:	b7e1                	j	bb8 <malloc+0x36>
 bf2:	02e48b63          	beq	s1,a4,c28 <malloc+0xa6>
 bf6:	4137073b          	subw	a4,a4,s3
 bfa:	c798                	sw	a4,8(a5)
 bfc:	1702                	slli	a4,a4,0x20
 bfe:	9301                	srli	a4,a4,0x20
 c00:	0712                	slli	a4,a4,0x4
 c02:	97ba                	add	a5,a5,a4
 c04:	0137a423          	sw	s3,8(a5)
 c08:	00000717          	auipc	a4,0x0
 c0c:	40a73023          	sd	a0,1024(a4) # 1008 <freep>
 c10:	01078513          	addi	a0,a5,16
 c14:	70e2                	ld	ra,56(sp)
 c16:	7442                	ld	s0,48(sp)
 c18:	74a2                	ld	s1,40(sp)
 c1a:	7902                	ld	s2,32(sp)
 c1c:	69e2                	ld	s3,24(sp)
 c1e:	6a42                	ld	s4,16(sp)
 c20:	6aa2                	ld	s5,8(sp)
 c22:	6b02                	ld	s6,0(sp)
 c24:	6121                	addi	sp,sp,64
 c26:	8082                	ret
 c28:	6398                	ld	a4,0(a5)
 c2a:	e118                	sd	a4,0(a0)
 c2c:	bff1                	j	c08 <malloc+0x86>
 c2e:	01652423          	sw	s6,8(a0)
 c32:	0541                	addi	a0,a0,16
 c34:	00000097          	auipc	ra,0x0
 c38:	ec6080e7          	jalr	-314(ra) # afa <free>
 c3c:	00093503          	ld	a0,0(s2)
 c40:	d971                	beqz	a0,c14 <malloc+0x92>
 c42:	611c                	ld	a5,0(a0)
 c44:	4798                	lw	a4,8(a5)
 c46:	fa9776e3          	bgeu	a4,s1,bf2 <malloc+0x70>
 c4a:	00093703          	ld	a4,0(s2)
 c4e:	853e                	mv	a0,a5
 c50:	fef719e3          	bne	a4,a5,c42 <malloc+0xc0>
 c54:	8552                	mv	a0,s4
 c56:	00000097          	auipc	ra,0x0
 c5a:	b56080e7          	jalr	-1194(ra) # 7ac <sbrk>
 c5e:	fd5518e3          	bne	a0,s5,c2e <malloc+0xac>
 c62:	4501                	li	a0,0
 c64:	bf45                	j	c14 <malloc+0x92>
