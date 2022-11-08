
user/_grep:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <matchstar>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	ec26                	sd	s1,24(sp)
   8:	e84a                	sd	s2,16(sp)
   a:	e44e                	sd	s3,8(sp)
   c:	e052                	sd	s4,0(sp)
   e:	1800                	addi	s0,sp,48
  10:	892a                	mv	s2,a0
  12:	89ae                	mv	s3,a1
  14:	84b2                	mv	s1,a2
  16:	02e00a13          	li	s4,46
  1a:	85a6                	mv	a1,s1
  1c:	854e                	mv	a0,s3
  1e:	00000097          	auipc	ra,0x0
  22:	030080e7          	jalr	48(ra) # 4e <matchhere>
  26:	e919                	bnez	a0,3c <matchstar+0x3c>
  28:	0004c783          	lbu	a5,0(s1)
  2c:	cb89                	beqz	a5,3e <matchstar+0x3e>
  2e:	0485                	addi	s1,s1,1
  30:	2781                	sext.w	a5,a5
  32:	ff2784e3          	beq	a5,s2,1a <matchstar+0x1a>
  36:	ff4902e3          	beq	s2,s4,1a <matchstar+0x1a>
  3a:	a011                	j	3e <matchstar+0x3e>
  3c:	4505                	li	a0,1
  3e:	70a2                	ld	ra,40(sp)
  40:	7402                	ld	s0,32(sp)
  42:	64e2                	ld	s1,24(sp)
  44:	6942                	ld	s2,16(sp)
  46:	69a2                	ld	s3,8(sp)
  48:	6a02                	ld	s4,0(sp)
  4a:	6145                	addi	sp,sp,48
  4c:	8082                	ret

000000000000004e <matchhere>:
  4e:	00054703          	lbu	a4,0(a0)
  52:	cb3d                	beqz	a4,c8 <matchhere+0x7a>
  54:	1141                	addi	sp,sp,-16
  56:	e406                	sd	ra,8(sp)
  58:	e022                	sd	s0,0(sp)
  5a:	0800                	addi	s0,sp,16
  5c:	87aa                	mv	a5,a0
  5e:	00154683          	lbu	a3,1(a0)
  62:	02a00613          	li	a2,42
  66:	02c68563          	beq	a3,a2,90 <matchhere+0x42>
  6a:	02400613          	li	a2,36
  6e:	02c70a63          	beq	a4,a2,a2 <matchhere+0x54>
  72:	0005c683          	lbu	a3,0(a1)
  76:	4501                	li	a0,0
  78:	ca81                	beqz	a3,88 <matchhere+0x3a>
  7a:	02e00613          	li	a2,46
  7e:	02c70d63          	beq	a4,a2,b8 <matchhere+0x6a>
  82:	4501                	li	a0,0
  84:	02d70a63          	beq	a4,a3,b8 <matchhere+0x6a>
  88:	60a2                	ld	ra,8(sp)
  8a:	6402                	ld	s0,0(sp)
  8c:	0141                	addi	sp,sp,16
  8e:	8082                	ret
  90:	862e                	mv	a2,a1
  92:	00250593          	addi	a1,a0,2
  96:	853a                	mv	a0,a4
  98:	00000097          	auipc	ra,0x0
  9c:	f68080e7          	jalr	-152(ra) # 0 <matchstar>
  a0:	b7e5                	j	88 <matchhere+0x3a>
  a2:	c691                	beqz	a3,ae <matchhere+0x60>
  a4:	0005c683          	lbu	a3,0(a1)
  a8:	fee9                	bnez	a3,82 <matchhere+0x34>
  aa:	4501                	li	a0,0
  ac:	bff1                	j	88 <matchhere+0x3a>
  ae:	0005c503          	lbu	a0,0(a1)
  b2:	00153513          	seqz	a0,a0
  b6:	bfc9                	j	88 <matchhere+0x3a>
  b8:	0585                	addi	a1,a1,1
  ba:	00178513          	addi	a0,a5,1
  be:	00000097          	auipc	ra,0x0
  c2:	f90080e7          	jalr	-112(ra) # 4e <matchhere>
  c6:	b7c9                	j	88 <matchhere+0x3a>
  c8:	4505                	li	a0,1
  ca:	8082                	ret

00000000000000cc <match>:
  cc:	1101                	addi	sp,sp,-32
  ce:	ec06                	sd	ra,24(sp)
  d0:	e822                	sd	s0,16(sp)
  d2:	e426                	sd	s1,8(sp)
  d4:	e04a                	sd	s2,0(sp)
  d6:	1000                	addi	s0,sp,32
  d8:	892a                	mv	s2,a0
  da:	84ae                	mv	s1,a1
  dc:	00054703          	lbu	a4,0(a0)
  e0:	05e00793          	li	a5,94
  e4:	00f70e63          	beq	a4,a5,100 <match+0x34>
  e8:	85a6                	mv	a1,s1
  ea:	854a                	mv	a0,s2
  ec:	00000097          	auipc	ra,0x0
  f0:	f62080e7          	jalr	-158(ra) # 4e <matchhere>
  f4:	ed01                	bnez	a0,10c <match+0x40>
  f6:	0485                	addi	s1,s1,1
  f8:	fff4c783          	lbu	a5,-1(s1)
  fc:	f7f5                	bnez	a5,e8 <match+0x1c>
  fe:	a801                	j	10e <match+0x42>
 100:	0505                	addi	a0,a0,1
 102:	00000097          	auipc	ra,0x0
 106:	f4c080e7          	jalr	-180(ra) # 4e <matchhere>
 10a:	a011                	j	10e <match+0x42>
 10c:	4505                	li	a0,1
 10e:	60e2                	ld	ra,24(sp)
 110:	6442                	ld	s0,16(sp)
 112:	64a2                	ld	s1,8(sp)
 114:	6902                	ld	s2,0(sp)
 116:	6105                	addi	sp,sp,32
 118:	8082                	ret

000000000000011a <grep>:
 11a:	711d                	addi	sp,sp,-96
 11c:	ec86                	sd	ra,88(sp)
 11e:	e8a2                	sd	s0,80(sp)
 120:	e4a6                	sd	s1,72(sp)
 122:	e0ca                	sd	s2,64(sp)
 124:	fc4e                	sd	s3,56(sp)
 126:	f852                	sd	s4,48(sp)
 128:	f456                	sd	s5,40(sp)
 12a:	f05a                	sd	s6,32(sp)
 12c:	ec5e                	sd	s7,24(sp)
 12e:	e862                	sd	s8,16(sp)
 130:	e466                	sd	s9,8(sp)
 132:	e06a                	sd	s10,0(sp)
 134:	1080                	addi	s0,sp,96
 136:	89aa                	mv	s3,a0
 138:	8bae                	mv	s7,a1
 13a:	4a01                	li	s4,0
 13c:	3ff00c13          	li	s8,1023
 140:	00001b17          	auipc	s6,0x1
 144:	ed0b0b13          	addi	s6,s6,-304 # 1010 <buf>
 148:	8d5a                	mv	s10,s6
 14a:	4aa9                	li	s5,10
 14c:	8cda                	mv	s9,s6
 14e:	a099                	j	194 <grep+0x7a>
 150:	01548023          	sb	s5,0(s1)
 154:	00148613          	addi	a2,s1,1
 158:	4126063b          	subw	a2,a2,s2
 15c:	85ca                	mv	a1,s2
 15e:	4505                	li	a0,1
 160:	00000097          	auipc	ra,0x0
 164:	3fe080e7          	jalr	1022(ra) # 55e <write>
 168:	00148913          	addi	s2,s1,1
 16c:	45a9                	li	a1,10
 16e:	854a                	mv	a0,s2
 170:	00000097          	auipc	ra,0x0
 174:	1f0080e7          	jalr	496(ra) # 360 <strchr>
 178:	84aa                	mv	s1,a0
 17a:	c919                	beqz	a0,190 <grep+0x76>
 17c:	00048023          	sb	zero,0(s1)
 180:	85ca                	mv	a1,s2
 182:	854e                	mv	a0,s3
 184:	00000097          	auipc	ra,0x0
 188:	f48080e7          	jalr	-184(ra) # cc <match>
 18c:	dd71                	beqz	a0,168 <grep+0x4e>
 18e:	b7c9                	j	150 <grep+0x36>
 190:	03404563          	bgtz	s4,1ba <grep+0xa0>
 194:	414c063b          	subw	a2,s8,s4
 198:	014b05b3          	add	a1,s6,s4
 19c:	855e                	mv	a0,s7
 19e:	00000097          	auipc	ra,0x0
 1a2:	3b8080e7          	jalr	952(ra) # 556 <read>
 1a6:	02a05663          	blez	a0,1d2 <grep+0xb8>
 1aa:	00aa0a3b          	addw	s4,s4,a0
 1ae:	014b07b3          	add	a5,s6,s4
 1b2:	00078023          	sb	zero,0(a5)
 1b6:	8966                	mv	s2,s9
 1b8:	bf55                	j	16c <grep+0x52>
 1ba:	416907b3          	sub	a5,s2,s6
 1be:	40fa0a3b          	subw	s4,s4,a5
 1c2:	8652                	mv	a2,s4
 1c4:	85ca                	mv	a1,s2
 1c6:	856a                	mv	a0,s10
 1c8:	00000097          	auipc	ra,0x0
 1cc:	2c0080e7          	jalr	704(ra) # 488 <memmove>
 1d0:	b7d1                	j	194 <grep+0x7a>
 1d2:	60e6                	ld	ra,88(sp)
 1d4:	6446                	ld	s0,80(sp)
 1d6:	64a6                	ld	s1,72(sp)
 1d8:	6906                	ld	s2,64(sp)
 1da:	79e2                	ld	s3,56(sp)
 1dc:	7a42                	ld	s4,48(sp)
 1de:	7aa2                	ld	s5,40(sp)
 1e0:	7b02                	ld	s6,32(sp)
 1e2:	6be2                	ld	s7,24(sp)
 1e4:	6c42                	ld	s8,16(sp)
 1e6:	6ca2                	ld	s9,8(sp)
 1e8:	6d02                	ld	s10,0(sp)
 1ea:	6125                	addi	sp,sp,96
 1ec:	8082                	ret

00000000000001ee <main>:
 1ee:	7139                	addi	sp,sp,-64
 1f0:	fc06                	sd	ra,56(sp)
 1f2:	f822                	sd	s0,48(sp)
 1f4:	f426                	sd	s1,40(sp)
 1f6:	f04a                	sd	s2,32(sp)
 1f8:	ec4e                	sd	s3,24(sp)
 1fa:	e852                	sd	s4,16(sp)
 1fc:	e456                	sd	s5,8(sp)
 1fe:	0080                	addi	s0,sp,64
 200:	4785                	li	a5,1
 202:	04a7de63          	bge	a5,a0,25e <main+0x70>
 206:	0085ba03          	ld	s4,8(a1)
 20a:	4789                	li	a5,2
 20c:	06a7d763          	bge	a5,a0,27a <main+0x8c>
 210:	01058913          	addi	s2,a1,16
 214:	ffd5099b          	addiw	s3,a0,-3
 218:	1982                	slli	s3,s3,0x20
 21a:	0209d993          	srli	s3,s3,0x20
 21e:	098e                	slli	s3,s3,0x3
 220:	05e1                	addi	a1,a1,24
 222:	99ae                	add	s3,s3,a1
 224:	4581                	li	a1,0
 226:	00093503          	ld	a0,0(s2)
 22a:	00000097          	auipc	ra,0x0
 22e:	354080e7          	jalr	852(ra) # 57e <open>
 232:	84aa                	mv	s1,a0
 234:	04054e63          	bltz	a0,290 <main+0xa2>
 238:	85aa                	mv	a1,a0
 23a:	8552                	mv	a0,s4
 23c:	00000097          	auipc	ra,0x0
 240:	ede080e7          	jalr	-290(ra) # 11a <grep>
 244:	8526                	mv	a0,s1
 246:	00000097          	auipc	ra,0x0
 24a:	320080e7          	jalr	800(ra) # 566 <close>
 24e:	0921                	addi	s2,s2,8
 250:	fd391ae3          	bne	s2,s3,224 <main+0x36>
 254:	4501                	li	a0,0
 256:	00000097          	auipc	ra,0x0
 25a:	2e8080e7          	jalr	744(ra) # 53e <exit>
 25e:	00001597          	auipc	a1,0x1
 262:	82258593          	addi	a1,a1,-2014 # a80 <malloc+0xe4>
 266:	4509                	li	a0,2
 268:	00000097          	auipc	ra,0x0
 26c:	648080e7          	jalr	1608(ra) # 8b0 <fprintf>
 270:	4505                	li	a0,1
 272:	00000097          	auipc	ra,0x0
 276:	2cc080e7          	jalr	716(ra) # 53e <exit>
 27a:	4581                	li	a1,0
 27c:	8552                	mv	a0,s4
 27e:	00000097          	auipc	ra,0x0
 282:	e9c080e7          	jalr	-356(ra) # 11a <grep>
 286:	4501                	li	a0,0
 288:	00000097          	auipc	ra,0x0
 28c:	2b6080e7          	jalr	694(ra) # 53e <exit>
 290:	00093583          	ld	a1,0(s2)
 294:	00001517          	auipc	a0,0x1
 298:	80c50513          	addi	a0,a0,-2036 # aa0 <malloc+0x104>
 29c:	00000097          	auipc	ra,0x0
 2a0:	642080e7          	jalr	1602(ra) # 8de <printf>
 2a4:	4505                	li	a0,1
 2a6:	00000097          	auipc	ra,0x0
 2aa:	298080e7          	jalr	664(ra) # 53e <exit>

00000000000002ae <_main>:
 2ae:	1141                	addi	sp,sp,-16
 2b0:	e406                	sd	ra,8(sp)
 2b2:	e022                	sd	s0,0(sp)
 2b4:	0800                	addi	s0,sp,16
 2b6:	00000097          	auipc	ra,0x0
 2ba:	f38080e7          	jalr	-200(ra) # 1ee <main>
 2be:	4501                	li	a0,0
 2c0:	00000097          	auipc	ra,0x0
 2c4:	27e080e7          	jalr	638(ra) # 53e <exit>

00000000000002c8 <strcpy>:
 2c8:	1141                	addi	sp,sp,-16
 2ca:	e422                	sd	s0,8(sp)
 2cc:	0800                	addi	s0,sp,16
 2ce:	87aa                	mv	a5,a0
 2d0:	0585                	addi	a1,a1,1
 2d2:	0785                	addi	a5,a5,1
 2d4:	fff5c703          	lbu	a4,-1(a1)
 2d8:	fee78fa3          	sb	a4,-1(a5)
 2dc:	fb75                	bnez	a4,2d0 <strcpy+0x8>
 2de:	6422                	ld	s0,8(sp)
 2e0:	0141                	addi	sp,sp,16
 2e2:	8082                	ret

00000000000002e4 <strcmp>:
 2e4:	1141                	addi	sp,sp,-16
 2e6:	e422                	sd	s0,8(sp)
 2e8:	0800                	addi	s0,sp,16
 2ea:	00054783          	lbu	a5,0(a0)
 2ee:	cb91                	beqz	a5,302 <strcmp+0x1e>
 2f0:	0005c703          	lbu	a4,0(a1)
 2f4:	00f71763          	bne	a4,a5,302 <strcmp+0x1e>
 2f8:	0505                	addi	a0,a0,1
 2fa:	0585                	addi	a1,a1,1
 2fc:	00054783          	lbu	a5,0(a0)
 300:	fbe5                	bnez	a5,2f0 <strcmp+0xc>
 302:	0005c503          	lbu	a0,0(a1)
 306:	40a7853b          	subw	a0,a5,a0
 30a:	6422                	ld	s0,8(sp)
 30c:	0141                	addi	sp,sp,16
 30e:	8082                	ret

0000000000000310 <strlen>:
 310:	1141                	addi	sp,sp,-16
 312:	e422                	sd	s0,8(sp)
 314:	0800                	addi	s0,sp,16
 316:	00054783          	lbu	a5,0(a0)
 31a:	cf91                	beqz	a5,336 <strlen+0x26>
 31c:	0505                	addi	a0,a0,1
 31e:	87aa                	mv	a5,a0
 320:	4685                	li	a3,1
 322:	9e89                	subw	a3,a3,a0
 324:	00f6853b          	addw	a0,a3,a5
 328:	0785                	addi	a5,a5,1
 32a:	fff7c703          	lbu	a4,-1(a5)
 32e:	fb7d                	bnez	a4,324 <strlen+0x14>
 330:	6422                	ld	s0,8(sp)
 332:	0141                	addi	sp,sp,16
 334:	8082                	ret
 336:	4501                	li	a0,0
 338:	bfe5                	j	330 <strlen+0x20>

000000000000033a <memset>:
 33a:	1141                	addi	sp,sp,-16
 33c:	e422                	sd	s0,8(sp)
 33e:	0800                	addi	s0,sp,16
 340:	ce09                	beqz	a2,35a <memset+0x20>
 342:	87aa                	mv	a5,a0
 344:	fff6071b          	addiw	a4,a2,-1
 348:	1702                	slli	a4,a4,0x20
 34a:	9301                	srli	a4,a4,0x20
 34c:	0705                	addi	a4,a4,1
 34e:	972a                	add	a4,a4,a0
 350:	00b78023          	sb	a1,0(a5)
 354:	0785                	addi	a5,a5,1
 356:	fee79de3          	bne	a5,a4,350 <memset+0x16>
 35a:	6422                	ld	s0,8(sp)
 35c:	0141                	addi	sp,sp,16
 35e:	8082                	ret

0000000000000360 <strchr>:
 360:	1141                	addi	sp,sp,-16
 362:	e422                	sd	s0,8(sp)
 364:	0800                	addi	s0,sp,16
 366:	00054783          	lbu	a5,0(a0)
 36a:	cb99                	beqz	a5,380 <strchr+0x20>
 36c:	00f58763          	beq	a1,a5,37a <strchr+0x1a>
 370:	0505                	addi	a0,a0,1
 372:	00054783          	lbu	a5,0(a0)
 376:	fbfd                	bnez	a5,36c <strchr+0xc>
 378:	4501                	li	a0,0
 37a:	6422                	ld	s0,8(sp)
 37c:	0141                	addi	sp,sp,16
 37e:	8082                	ret
 380:	4501                	li	a0,0
 382:	bfe5                	j	37a <strchr+0x1a>

0000000000000384 <gets>:
 384:	711d                	addi	sp,sp,-96
 386:	ec86                	sd	ra,88(sp)
 388:	e8a2                	sd	s0,80(sp)
 38a:	e4a6                	sd	s1,72(sp)
 38c:	e0ca                	sd	s2,64(sp)
 38e:	fc4e                	sd	s3,56(sp)
 390:	f852                	sd	s4,48(sp)
 392:	f456                	sd	s5,40(sp)
 394:	f05a                	sd	s6,32(sp)
 396:	ec5e                	sd	s7,24(sp)
 398:	1080                	addi	s0,sp,96
 39a:	8baa                	mv	s7,a0
 39c:	8a2e                	mv	s4,a1
 39e:	892a                	mv	s2,a0
 3a0:	4481                	li	s1,0
 3a2:	4aa9                	li	s5,10
 3a4:	4b35                	li	s6,13
 3a6:	89a6                	mv	s3,s1
 3a8:	2485                	addiw	s1,s1,1
 3aa:	0344d863          	bge	s1,s4,3da <gets+0x56>
 3ae:	4605                	li	a2,1
 3b0:	faf40593          	addi	a1,s0,-81
 3b4:	4501                	li	a0,0
 3b6:	00000097          	auipc	ra,0x0
 3ba:	1a0080e7          	jalr	416(ra) # 556 <read>
 3be:	00a05e63          	blez	a0,3da <gets+0x56>
 3c2:	faf44783          	lbu	a5,-81(s0)
 3c6:	00f90023          	sb	a5,0(s2)
 3ca:	01578763          	beq	a5,s5,3d8 <gets+0x54>
 3ce:	0905                	addi	s2,s2,1
 3d0:	fd679be3          	bne	a5,s6,3a6 <gets+0x22>
 3d4:	89a6                	mv	s3,s1
 3d6:	a011                	j	3da <gets+0x56>
 3d8:	89a6                	mv	s3,s1
 3da:	99de                	add	s3,s3,s7
 3dc:	00098023          	sb	zero,0(s3)
 3e0:	855e                	mv	a0,s7
 3e2:	60e6                	ld	ra,88(sp)
 3e4:	6446                	ld	s0,80(sp)
 3e6:	64a6                	ld	s1,72(sp)
 3e8:	6906                	ld	s2,64(sp)
 3ea:	79e2                	ld	s3,56(sp)
 3ec:	7a42                	ld	s4,48(sp)
 3ee:	7aa2                	ld	s5,40(sp)
 3f0:	7b02                	ld	s6,32(sp)
 3f2:	6be2                	ld	s7,24(sp)
 3f4:	6125                	addi	sp,sp,96
 3f6:	8082                	ret

00000000000003f8 <stat>:
 3f8:	1101                	addi	sp,sp,-32
 3fa:	ec06                	sd	ra,24(sp)
 3fc:	e822                	sd	s0,16(sp)
 3fe:	e426                	sd	s1,8(sp)
 400:	e04a                	sd	s2,0(sp)
 402:	1000                	addi	s0,sp,32
 404:	892e                	mv	s2,a1
 406:	4581                	li	a1,0
 408:	00000097          	auipc	ra,0x0
 40c:	176080e7          	jalr	374(ra) # 57e <open>
 410:	02054563          	bltz	a0,43a <stat+0x42>
 414:	84aa                	mv	s1,a0
 416:	85ca                	mv	a1,s2
 418:	00000097          	auipc	ra,0x0
 41c:	17e080e7          	jalr	382(ra) # 596 <fstat>
 420:	892a                	mv	s2,a0
 422:	8526                	mv	a0,s1
 424:	00000097          	auipc	ra,0x0
 428:	142080e7          	jalr	322(ra) # 566 <close>
 42c:	854a                	mv	a0,s2
 42e:	60e2                	ld	ra,24(sp)
 430:	6442                	ld	s0,16(sp)
 432:	64a2                	ld	s1,8(sp)
 434:	6902                	ld	s2,0(sp)
 436:	6105                	addi	sp,sp,32
 438:	8082                	ret
 43a:	597d                	li	s2,-1
 43c:	bfc5                	j	42c <stat+0x34>

000000000000043e <atoi>:
 43e:	1141                	addi	sp,sp,-16
 440:	e422                	sd	s0,8(sp)
 442:	0800                	addi	s0,sp,16
 444:	00054603          	lbu	a2,0(a0)
 448:	fd06079b          	addiw	a5,a2,-48
 44c:	0ff7f793          	andi	a5,a5,255
 450:	4725                	li	a4,9
 452:	02f76963          	bltu	a4,a5,484 <atoi+0x46>
 456:	86aa                	mv	a3,a0
 458:	4501                	li	a0,0
 45a:	45a5                	li	a1,9
 45c:	0685                	addi	a3,a3,1
 45e:	0025179b          	slliw	a5,a0,0x2
 462:	9fa9                	addw	a5,a5,a0
 464:	0017979b          	slliw	a5,a5,0x1
 468:	9fb1                	addw	a5,a5,a2
 46a:	fd07851b          	addiw	a0,a5,-48
 46e:	0006c603          	lbu	a2,0(a3)
 472:	fd06071b          	addiw	a4,a2,-48
 476:	0ff77713          	andi	a4,a4,255
 47a:	fee5f1e3          	bgeu	a1,a4,45c <atoi+0x1e>
 47e:	6422                	ld	s0,8(sp)
 480:	0141                	addi	sp,sp,16
 482:	8082                	ret
 484:	4501                	li	a0,0
 486:	bfe5                	j	47e <atoi+0x40>

0000000000000488 <memmove>:
 488:	1141                	addi	sp,sp,-16
 48a:	e422                	sd	s0,8(sp)
 48c:	0800                	addi	s0,sp,16
 48e:	02b57663          	bgeu	a0,a1,4ba <memmove+0x32>
 492:	02c05163          	blez	a2,4b4 <memmove+0x2c>
 496:	fff6079b          	addiw	a5,a2,-1
 49a:	1782                	slli	a5,a5,0x20
 49c:	9381                	srli	a5,a5,0x20
 49e:	0785                	addi	a5,a5,1
 4a0:	97aa                	add	a5,a5,a0
 4a2:	872a                	mv	a4,a0
 4a4:	0585                	addi	a1,a1,1
 4a6:	0705                	addi	a4,a4,1
 4a8:	fff5c683          	lbu	a3,-1(a1)
 4ac:	fed70fa3          	sb	a3,-1(a4)
 4b0:	fee79ae3          	bne	a5,a4,4a4 <memmove+0x1c>
 4b4:	6422                	ld	s0,8(sp)
 4b6:	0141                	addi	sp,sp,16
 4b8:	8082                	ret
 4ba:	00c50733          	add	a4,a0,a2
 4be:	95b2                	add	a1,a1,a2
 4c0:	fec05ae3          	blez	a2,4b4 <memmove+0x2c>
 4c4:	fff6079b          	addiw	a5,a2,-1
 4c8:	1782                	slli	a5,a5,0x20
 4ca:	9381                	srli	a5,a5,0x20
 4cc:	fff7c793          	not	a5,a5
 4d0:	97ba                	add	a5,a5,a4
 4d2:	15fd                	addi	a1,a1,-1
 4d4:	177d                	addi	a4,a4,-1
 4d6:	0005c683          	lbu	a3,0(a1)
 4da:	00d70023          	sb	a3,0(a4)
 4de:	fee79ae3          	bne	a5,a4,4d2 <memmove+0x4a>
 4e2:	bfc9                	j	4b4 <memmove+0x2c>

00000000000004e4 <memcmp>:
 4e4:	1141                	addi	sp,sp,-16
 4e6:	e422                	sd	s0,8(sp)
 4e8:	0800                	addi	s0,sp,16
 4ea:	ca05                	beqz	a2,51a <memcmp+0x36>
 4ec:	fff6069b          	addiw	a3,a2,-1
 4f0:	1682                	slli	a3,a3,0x20
 4f2:	9281                	srli	a3,a3,0x20
 4f4:	0685                	addi	a3,a3,1
 4f6:	96aa                	add	a3,a3,a0
 4f8:	00054783          	lbu	a5,0(a0)
 4fc:	0005c703          	lbu	a4,0(a1)
 500:	00e79863          	bne	a5,a4,510 <memcmp+0x2c>
 504:	0505                	addi	a0,a0,1
 506:	0585                	addi	a1,a1,1
 508:	fed518e3          	bne	a0,a3,4f8 <memcmp+0x14>
 50c:	4501                	li	a0,0
 50e:	a019                	j	514 <memcmp+0x30>
 510:	40e7853b          	subw	a0,a5,a4
 514:	6422                	ld	s0,8(sp)
 516:	0141                	addi	sp,sp,16
 518:	8082                	ret
 51a:	4501                	li	a0,0
 51c:	bfe5                	j	514 <memcmp+0x30>

000000000000051e <memcpy>:
 51e:	1141                	addi	sp,sp,-16
 520:	e406                	sd	ra,8(sp)
 522:	e022                	sd	s0,0(sp)
 524:	0800                	addi	s0,sp,16
 526:	00000097          	auipc	ra,0x0
 52a:	f62080e7          	jalr	-158(ra) # 488 <memmove>
 52e:	60a2                	ld	ra,8(sp)
 530:	6402                	ld	s0,0(sp)
 532:	0141                	addi	sp,sp,16
 534:	8082                	ret

0000000000000536 <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
 536:	4885                	li	a7,1
 ecall
 538:	00000073          	ecall
 ret
 53c:	8082                	ret

000000000000053e <exit>:
.global exit
exit:
 li a7, SYS_exit
 53e:	4889                	li	a7,2
 ecall
 540:	00000073          	ecall
 ret
 544:	8082                	ret

0000000000000546 <wait>:
.global wait
wait:
 li a7, SYS_wait
 546:	488d                	li	a7,3
 ecall
 548:	00000073          	ecall
 ret
 54c:	8082                	ret

000000000000054e <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
 54e:	4891                	li	a7,4
 ecall
 550:	00000073          	ecall
 ret
 554:	8082                	ret

0000000000000556 <read>:
.global read
read:
 li a7, SYS_read
 556:	4895                	li	a7,5
 ecall
 558:	00000073          	ecall
 ret
 55c:	8082                	ret

000000000000055e <write>:
.global write
write:
 li a7, SYS_write
 55e:	48c1                	li	a7,16
 ecall
 560:	00000073          	ecall
 ret
 564:	8082                	ret

0000000000000566 <close>:
.global close
close:
 li a7, SYS_close
 566:	48d5                	li	a7,21
 ecall
 568:	00000073          	ecall
 ret
 56c:	8082                	ret

000000000000056e <kill>:
.global kill
kill:
 li a7, SYS_kill
 56e:	4899                	li	a7,6
 ecall
 570:	00000073          	ecall
 ret
 574:	8082                	ret

0000000000000576 <exec>:
.global exec
exec:
 li a7, SYS_exec
 576:	489d                	li	a7,7
 ecall
 578:	00000073          	ecall
 ret
 57c:	8082                	ret

000000000000057e <open>:
.global open
open:
 li a7, SYS_open
 57e:	48bd                	li	a7,15
 ecall
 580:	00000073          	ecall
 ret
 584:	8082                	ret

0000000000000586 <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
 586:	48c5                	li	a7,17
 ecall
 588:	00000073          	ecall
 ret
 58c:	8082                	ret

000000000000058e <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
 58e:	48c9                	li	a7,18
 ecall
 590:	00000073          	ecall
 ret
 594:	8082                	ret

0000000000000596 <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
 596:	48a1                	li	a7,8
 ecall
 598:	00000073          	ecall
 ret
 59c:	8082                	ret

000000000000059e <link>:
.global link
link:
 li a7, SYS_link
 59e:	48cd                	li	a7,19
 ecall
 5a0:	00000073          	ecall
 ret
 5a4:	8082                	ret

00000000000005a6 <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
 5a6:	48d1                	li	a7,20
 ecall
 5a8:	00000073          	ecall
 ret
 5ac:	8082                	ret

00000000000005ae <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
 5ae:	48a5                	li	a7,9
 ecall
 5b0:	00000073          	ecall
 ret
 5b4:	8082                	ret

00000000000005b6 <dup>:
.global dup
dup:
 li a7, SYS_dup
 5b6:	48a9                	li	a7,10
 ecall
 5b8:	00000073          	ecall
 ret
 5bc:	8082                	ret

00000000000005be <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
 5be:	48ad                	li	a7,11
 ecall
 5c0:	00000073          	ecall
 ret
 5c4:	8082                	ret

00000000000005c6 <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
 5c6:	48b1                	li	a7,12
 ecall
 5c8:	00000073          	ecall
 ret
 5cc:	8082                	ret

00000000000005ce <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
 5ce:	48b5                	li	a7,13
 ecall
 5d0:	00000073          	ecall
 ret
 5d4:	8082                	ret

00000000000005d6 <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
 5d6:	48b9                	li	a7,14
 ecall
 5d8:	00000073          	ecall
 ret
 5dc:	8082                	ret

00000000000005de <trace>:
.global trace
trace:
 li a7, SYS_trace
 5de:	48d9                	li	a7,22
 ecall
 5e0:	00000073          	ecall
 ret
 5e4:	8082                	ret

00000000000005e6 <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
 5e6:	48e1                	li	a7,24
 ecall
 5e8:	00000073          	ecall
 ret
 5ec:	8082                	ret

00000000000005ee <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
 5ee:	48dd                	li	a7,23
 ecall
 5f0:	00000073          	ecall
 ret
 5f4:	8082                	ret

00000000000005f6 <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
 5f6:	48e5                	li	a7,25
 ecall
 5f8:	00000073          	ecall
 ret
 5fc:	8082                	ret

00000000000005fe <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
 5fe:	48e9                	li	a7,26
 ecall
 600:	00000073          	ecall
 ret
 604:	8082                	ret

0000000000000606 <putc>:
 606:	1101                	addi	sp,sp,-32
 608:	ec06                	sd	ra,24(sp)
 60a:	e822                	sd	s0,16(sp)
 60c:	1000                	addi	s0,sp,32
 60e:	feb407a3          	sb	a1,-17(s0)
 612:	4605                	li	a2,1
 614:	fef40593          	addi	a1,s0,-17
 618:	00000097          	auipc	ra,0x0
 61c:	f46080e7          	jalr	-186(ra) # 55e <write>
 620:	60e2                	ld	ra,24(sp)
 622:	6442                	ld	s0,16(sp)
 624:	6105                	addi	sp,sp,32
 626:	8082                	ret

0000000000000628 <printint>:
 628:	7139                	addi	sp,sp,-64
 62a:	fc06                	sd	ra,56(sp)
 62c:	f822                	sd	s0,48(sp)
 62e:	f426                	sd	s1,40(sp)
 630:	f04a                	sd	s2,32(sp)
 632:	ec4e                	sd	s3,24(sp)
 634:	0080                	addi	s0,sp,64
 636:	84aa                	mv	s1,a0
 638:	c299                	beqz	a3,63e <printint+0x16>
 63a:	0805c863          	bltz	a1,6ca <printint+0xa2>
 63e:	2581                	sext.w	a1,a1
 640:	4881                	li	a7,0
 642:	fc040693          	addi	a3,s0,-64
 646:	4701                	li	a4,0
 648:	2601                	sext.w	a2,a2
 64a:	00000517          	auipc	a0,0x0
 64e:	47650513          	addi	a0,a0,1142 # ac0 <digits>
 652:	883a                	mv	a6,a4
 654:	2705                	addiw	a4,a4,1
 656:	02c5f7bb          	remuw	a5,a1,a2
 65a:	1782                	slli	a5,a5,0x20
 65c:	9381                	srli	a5,a5,0x20
 65e:	97aa                	add	a5,a5,a0
 660:	0007c783          	lbu	a5,0(a5)
 664:	00f68023          	sb	a5,0(a3)
 668:	0005879b          	sext.w	a5,a1
 66c:	02c5d5bb          	divuw	a1,a1,a2
 670:	0685                	addi	a3,a3,1
 672:	fec7f0e3          	bgeu	a5,a2,652 <printint+0x2a>
 676:	00088b63          	beqz	a7,68c <printint+0x64>
 67a:	fd040793          	addi	a5,s0,-48
 67e:	973e                	add	a4,a4,a5
 680:	02d00793          	li	a5,45
 684:	fef70823          	sb	a5,-16(a4)
 688:	0028071b          	addiw	a4,a6,2
 68c:	02e05863          	blez	a4,6bc <printint+0x94>
 690:	fc040793          	addi	a5,s0,-64
 694:	00e78933          	add	s2,a5,a4
 698:	fff78993          	addi	s3,a5,-1
 69c:	99ba                	add	s3,s3,a4
 69e:	377d                	addiw	a4,a4,-1
 6a0:	1702                	slli	a4,a4,0x20
 6a2:	9301                	srli	a4,a4,0x20
 6a4:	40e989b3          	sub	s3,s3,a4
 6a8:	fff94583          	lbu	a1,-1(s2)
 6ac:	8526                	mv	a0,s1
 6ae:	00000097          	auipc	ra,0x0
 6b2:	f58080e7          	jalr	-168(ra) # 606 <putc>
 6b6:	197d                	addi	s2,s2,-1
 6b8:	ff3918e3          	bne	s2,s3,6a8 <printint+0x80>
 6bc:	70e2                	ld	ra,56(sp)
 6be:	7442                	ld	s0,48(sp)
 6c0:	74a2                	ld	s1,40(sp)
 6c2:	7902                	ld	s2,32(sp)
 6c4:	69e2                	ld	s3,24(sp)
 6c6:	6121                	addi	sp,sp,64
 6c8:	8082                	ret
 6ca:	40b005bb          	negw	a1,a1
 6ce:	4885                	li	a7,1
 6d0:	bf8d                	j	642 <printint+0x1a>

00000000000006d2 <vprintf>:
 6d2:	7119                	addi	sp,sp,-128
 6d4:	fc86                	sd	ra,120(sp)
 6d6:	f8a2                	sd	s0,112(sp)
 6d8:	f4a6                	sd	s1,104(sp)
 6da:	f0ca                	sd	s2,96(sp)
 6dc:	ecce                	sd	s3,88(sp)
 6de:	e8d2                	sd	s4,80(sp)
 6e0:	e4d6                	sd	s5,72(sp)
 6e2:	e0da                	sd	s6,64(sp)
 6e4:	fc5e                	sd	s7,56(sp)
 6e6:	f862                	sd	s8,48(sp)
 6e8:	f466                	sd	s9,40(sp)
 6ea:	f06a                	sd	s10,32(sp)
 6ec:	ec6e                	sd	s11,24(sp)
 6ee:	0100                	addi	s0,sp,128
 6f0:	0005c903          	lbu	s2,0(a1)
 6f4:	18090f63          	beqz	s2,892 <vprintf+0x1c0>
 6f8:	8aaa                	mv	s5,a0
 6fa:	8b32                	mv	s6,a2
 6fc:	00158493          	addi	s1,a1,1
 700:	4981                	li	s3,0
 702:	02500a13          	li	s4,37
 706:	06400c13          	li	s8,100
 70a:	06c00c93          	li	s9,108
 70e:	07800d13          	li	s10,120
 712:	07000d93          	li	s11,112
 716:	00000b97          	auipc	s7,0x0
 71a:	3aab8b93          	addi	s7,s7,938 # ac0 <digits>
 71e:	a839                	j	73c <vprintf+0x6a>
 720:	85ca                	mv	a1,s2
 722:	8556                	mv	a0,s5
 724:	00000097          	auipc	ra,0x0
 728:	ee2080e7          	jalr	-286(ra) # 606 <putc>
 72c:	a019                	j	732 <vprintf+0x60>
 72e:	01498f63          	beq	s3,s4,74c <vprintf+0x7a>
 732:	0485                	addi	s1,s1,1
 734:	fff4c903          	lbu	s2,-1(s1)
 738:	14090d63          	beqz	s2,892 <vprintf+0x1c0>
 73c:	0009079b          	sext.w	a5,s2
 740:	fe0997e3          	bnez	s3,72e <vprintf+0x5c>
 744:	fd479ee3          	bne	a5,s4,720 <vprintf+0x4e>
 748:	89be                	mv	s3,a5
 74a:	b7e5                	j	732 <vprintf+0x60>
 74c:	05878063          	beq	a5,s8,78c <vprintf+0xba>
 750:	05978c63          	beq	a5,s9,7a8 <vprintf+0xd6>
 754:	07a78863          	beq	a5,s10,7c4 <vprintf+0xf2>
 758:	09b78463          	beq	a5,s11,7e0 <vprintf+0x10e>
 75c:	07300713          	li	a4,115
 760:	0ce78663          	beq	a5,a4,82c <vprintf+0x15a>
 764:	06300713          	li	a4,99
 768:	0ee78e63          	beq	a5,a4,864 <vprintf+0x192>
 76c:	11478863          	beq	a5,s4,87c <vprintf+0x1aa>
 770:	85d2                	mv	a1,s4
 772:	8556                	mv	a0,s5
 774:	00000097          	auipc	ra,0x0
 778:	e92080e7          	jalr	-366(ra) # 606 <putc>
 77c:	85ca                	mv	a1,s2
 77e:	8556                	mv	a0,s5
 780:	00000097          	auipc	ra,0x0
 784:	e86080e7          	jalr	-378(ra) # 606 <putc>
 788:	4981                	li	s3,0
 78a:	b765                	j	732 <vprintf+0x60>
 78c:	008b0913          	addi	s2,s6,8
 790:	4685                	li	a3,1
 792:	4629                	li	a2,10
 794:	000b2583          	lw	a1,0(s6)
 798:	8556                	mv	a0,s5
 79a:	00000097          	auipc	ra,0x0
 79e:	e8e080e7          	jalr	-370(ra) # 628 <printint>
 7a2:	8b4a                	mv	s6,s2
 7a4:	4981                	li	s3,0
 7a6:	b771                	j	732 <vprintf+0x60>
 7a8:	008b0913          	addi	s2,s6,8
 7ac:	4681                	li	a3,0
 7ae:	4629                	li	a2,10
 7b0:	000b2583          	lw	a1,0(s6)
 7b4:	8556                	mv	a0,s5
 7b6:	00000097          	auipc	ra,0x0
 7ba:	e72080e7          	jalr	-398(ra) # 628 <printint>
 7be:	8b4a                	mv	s6,s2
 7c0:	4981                	li	s3,0
 7c2:	bf85                	j	732 <vprintf+0x60>
 7c4:	008b0913          	addi	s2,s6,8
 7c8:	4681                	li	a3,0
 7ca:	4641                	li	a2,16
 7cc:	000b2583          	lw	a1,0(s6)
 7d0:	8556                	mv	a0,s5
 7d2:	00000097          	auipc	ra,0x0
 7d6:	e56080e7          	jalr	-426(ra) # 628 <printint>
 7da:	8b4a                	mv	s6,s2
 7dc:	4981                	li	s3,0
 7de:	bf91                	j	732 <vprintf+0x60>
 7e0:	008b0793          	addi	a5,s6,8
 7e4:	f8f43423          	sd	a5,-120(s0)
 7e8:	000b3983          	ld	s3,0(s6)
 7ec:	03000593          	li	a1,48
 7f0:	8556                	mv	a0,s5
 7f2:	00000097          	auipc	ra,0x0
 7f6:	e14080e7          	jalr	-492(ra) # 606 <putc>
 7fa:	85ea                	mv	a1,s10
 7fc:	8556                	mv	a0,s5
 7fe:	00000097          	auipc	ra,0x0
 802:	e08080e7          	jalr	-504(ra) # 606 <putc>
 806:	4941                	li	s2,16
 808:	03c9d793          	srli	a5,s3,0x3c
 80c:	97de                	add	a5,a5,s7
 80e:	0007c583          	lbu	a1,0(a5)
 812:	8556                	mv	a0,s5
 814:	00000097          	auipc	ra,0x0
 818:	df2080e7          	jalr	-526(ra) # 606 <putc>
 81c:	0992                	slli	s3,s3,0x4
 81e:	397d                	addiw	s2,s2,-1
 820:	fe0914e3          	bnez	s2,808 <vprintf+0x136>
 824:	f8843b03          	ld	s6,-120(s0)
 828:	4981                	li	s3,0
 82a:	b721                	j	732 <vprintf+0x60>
 82c:	008b0993          	addi	s3,s6,8
 830:	000b3903          	ld	s2,0(s6)
 834:	02090163          	beqz	s2,856 <vprintf+0x184>
 838:	00094583          	lbu	a1,0(s2)
 83c:	c9a1                	beqz	a1,88c <vprintf+0x1ba>
 83e:	8556                	mv	a0,s5
 840:	00000097          	auipc	ra,0x0
 844:	dc6080e7          	jalr	-570(ra) # 606 <putc>
 848:	0905                	addi	s2,s2,1
 84a:	00094583          	lbu	a1,0(s2)
 84e:	f9e5                	bnez	a1,83e <vprintf+0x16c>
 850:	8b4e                	mv	s6,s3
 852:	4981                	li	s3,0
 854:	bdf9                	j	732 <vprintf+0x60>
 856:	00000917          	auipc	s2,0x0
 85a:	26290913          	addi	s2,s2,610 # ab8 <malloc+0x11c>
 85e:	02800593          	li	a1,40
 862:	bff1                	j	83e <vprintf+0x16c>
 864:	008b0913          	addi	s2,s6,8
 868:	000b4583          	lbu	a1,0(s6)
 86c:	8556                	mv	a0,s5
 86e:	00000097          	auipc	ra,0x0
 872:	d98080e7          	jalr	-616(ra) # 606 <putc>
 876:	8b4a                	mv	s6,s2
 878:	4981                	li	s3,0
 87a:	bd65                	j	732 <vprintf+0x60>
 87c:	85d2                	mv	a1,s4
 87e:	8556                	mv	a0,s5
 880:	00000097          	auipc	ra,0x0
 884:	d86080e7          	jalr	-634(ra) # 606 <putc>
 888:	4981                	li	s3,0
 88a:	b565                	j	732 <vprintf+0x60>
 88c:	8b4e                	mv	s6,s3
 88e:	4981                	li	s3,0
 890:	b54d                	j	732 <vprintf+0x60>
 892:	70e6                	ld	ra,120(sp)
 894:	7446                	ld	s0,112(sp)
 896:	74a6                	ld	s1,104(sp)
 898:	7906                	ld	s2,96(sp)
 89a:	69e6                	ld	s3,88(sp)
 89c:	6a46                	ld	s4,80(sp)
 89e:	6aa6                	ld	s5,72(sp)
 8a0:	6b06                	ld	s6,64(sp)
 8a2:	7be2                	ld	s7,56(sp)
 8a4:	7c42                	ld	s8,48(sp)
 8a6:	7ca2                	ld	s9,40(sp)
 8a8:	7d02                	ld	s10,32(sp)
 8aa:	6de2                	ld	s11,24(sp)
 8ac:	6109                	addi	sp,sp,128
 8ae:	8082                	ret

00000000000008b0 <fprintf>:
 8b0:	715d                	addi	sp,sp,-80
 8b2:	ec06                	sd	ra,24(sp)
 8b4:	e822                	sd	s0,16(sp)
 8b6:	1000                	addi	s0,sp,32
 8b8:	e010                	sd	a2,0(s0)
 8ba:	e414                	sd	a3,8(s0)
 8bc:	e818                	sd	a4,16(s0)
 8be:	ec1c                	sd	a5,24(s0)
 8c0:	03043023          	sd	a6,32(s0)
 8c4:	03143423          	sd	a7,40(s0)
 8c8:	fe843423          	sd	s0,-24(s0)
 8cc:	8622                	mv	a2,s0
 8ce:	00000097          	auipc	ra,0x0
 8d2:	e04080e7          	jalr	-508(ra) # 6d2 <vprintf>
 8d6:	60e2                	ld	ra,24(sp)
 8d8:	6442                	ld	s0,16(sp)
 8da:	6161                	addi	sp,sp,80
 8dc:	8082                	ret

00000000000008de <printf>:
 8de:	711d                	addi	sp,sp,-96
 8e0:	ec06                	sd	ra,24(sp)
 8e2:	e822                	sd	s0,16(sp)
 8e4:	1000                	addi	s0,sp,32
 8e6:	e40c                	sd	a1,8(s0)
 8e8:	e810                	sd	a2,16(s0)
 8ea:	ec14                	sd	a3,24(s0)
 8ec:	f018                	sd	a4,32(s0)
 8ee:	f41c                	sd	a5,40(s0)
 8f0:	03043823          	sd	a6,48(s0)
 8f4:	03143c23          	sd	a7,56(s0)
 8f8:	00840613          	addi	a2,s0,8
 8fc:	fec43423          	sd	a2,-24(s0)
 900:	85aa                	mv	a1,a0
 902:	4505                	li	a0,1
 904:	00000097          	auipc	ra,0x0
 908:	dce080e7          	jalr	-562(ra) # 6d2 <vprintf>
 90c:	60e2                	ld	ra,24(sp)
 90e:	6442                	ld	s0,16(sp)
 910:	6125                	addi	sp,sp,96
 912:	8082                	ret

0000000000000914 <free>:
 914:	1141                	addi	sp,sp,-16
 916:	e422                	sd	s0,8(sp)
 918:	0800                	addi	s0,sp,16
 91a:	ff050693          	addi	a3,a0,-16
 91e:	00000797          	auipc	a5,0x0
 922:	6e27b783          	ld	a5,1762(a5) # 1000 <freep>
 926:	a805                	j	956 <free+0x42>
 928:	4618                	lw	a4,8(a2)
 92a:	9db9                	addw	a1,a1,a4
 92c:	feb52c23          	sw	a1,-8(a0)
 930:	6398                	ld	a4,0(a5)
 932:	6318                	ld	a4,0(a4)
 934:	fee53823          	sd	a4,-16(a0)
 938:	a091                	j	97c <free+0x68>
 93a:	ff852703          	lw	a4,-8(a0)
 93e:	9e39                	addw	a2,a2,a4
 940:	c790                	sw	a2,8(a5)
 942:	ff053703          	ld	a4,-16(a0)
 946:	e398                	sd	a4,0(a5)
 948:	a099                	j	98e <free+0x7a>
 94a:	6398                	ld	a4,0(a5)
 94c:	00e7e463          	bltu	a5,a4,954 <free+0x40>
 950:	00e6ea63          	bltu	a3,a4,964 <free+0x50>
 954:	87ba                	mv	a5,a4
 956:	fed7fae3          	bgeu	a5,a3,94a <free+0x36>
 95a:	6398                	ld	a4,0(a5)
 95c:	00e6e463          	bltu	a3,a4,964 <free+0x50>
 960:	fee7eae3          	bltu	a5,a4,954 <free+0x40>
 964:	ff852583          	lw	a1,-8(a0)
 968:	6390                	ld	a2,0(a5)
 96a:	02059713          	slli	a4,a1,0x20
 96e:	9301                	srli	a4,a4,0x20
 970:	0712                	slli	a4,a4,0x4
 972:	9736                	add	a4,a4,a3
 974:	fae60ae3          	beq	a2,a4,928 <free+0x14>
 978:	fec53823          	sd	a2,-16(a0)
 97c:	4790                	lw	a2,8(a5)
 97e:	02061713          	slli	a4,a2,0x20
 982:	9301                	srli	a4,a4,0x20
 984:	0712                	slli	a4,a4,0x4
 986:	973e                	add	a4,a4,a5
 988:	fae689e3          	beq	a3,a4,93a <free+0x26>
 98c:	e394                	sd	a3,0(a5)
 98e:	00000717          	auipc	a4,0x0
 992:	66f73923          	sd	a5,1650(a4) # 1000 <freep>
 996:	6422                	ld	s0,8(sp)
 998:	0141                	addi	sp,sp,16
 99a:	8082                	ret

000000000000099c <malloc>:
 99c:	7139                	addi	sp,sp,-64
 99e:	fc06                	sd	ra,56(sp)
 9a0:	f822                	sd	s0,48(sp)
 9a2:	f426                	sd	s1,40(sp)
 9a4:	f04a                	sd	s2,32(sp)
 9a6:	ec4e                	sd	s3,24(sp)
 9a8:	e852                	sd	s4,16(sp)
 9aa:	e456                	sd	s5,8(sp)
 9ac:	e05a                	sd	s6,0(sp)
 9ae:	0080                	addi	s0,sp,64
 9b0:	02051493          	slli	s1,a0,0x20
 9b4:	9081                	srli	s1,s1,0x20
 9b6:	04bd                	addi	s1,s1,15
 9b8:	8091                	srli	s1,s1,0x4
 9ba:	0014899b          	addiw	s3,s1,1
 9be:	0485                	addi	s1,s1,1
 9c0:	00000517          	auipc	a0,0x0
 9c4:	64053503          	ld	a0,1600(a0) # 1000 <freep>
 9c8:	c515                	beqz	a0,9f4 <malloc+0x58>
 9ca:	611c                	ld	a5,0(a0)
 9cc:	4798                	lw	a4,8(a5)
 9ce:	02977f63          	bgeu	a4,s1,a0c <malloc+0x70>
 9d2:	8a4e                	mv	s4,s3
 9d4:	0009871b          	sext.w	a4,s3
 9d8:	6685                	lui	a3,0x1
 9da:	00d77363          	bgeu	a4,a3,9e0 <malloc+0x44>
 9de:	6a05                	lui	s4,0x1
 9e0:	000a0b1b          	sext.w	s6,s4
 9e4:	004a1a1b          	slliw	s4,s4,0x4
 9e8:	00000917          	auipc	s2,0x0
 9ec:	61890913          	addi	s2,s2,1560 # 1000 <freep>
 9f0:	5afd                	li	s5,-1
 9f2:	a88d                	j	a64 <malloc+0xc8>
 9f4:	00001797          	auipc	a5,0x1
 9f8:	a1c78793          	addi	a5,a5,-1508 # 1410 <base>
 9fc:	00000717          	auipc	a4,0x0
 a00:	60f73223          	sd	a5,1540(a4) # 1000 <freep>
 a04:	e39c                	sd	a5,0(a5)
 a06:	0007a423          	sw	zero,8(a5)
 a0a:	b7e1                	j	9d2 <malloc+0x36>
 a0c:	02e48b63          	beq	s1,a4,a42 <malloc+0xa6>
 a10:	4137073b          	subw	a4,a4,s3
 a14:	c798                	sw	a4,8(a5)
 a16:	1702                	slli	a4,a4,0x20
 a18:	9301                	srli	a4,a4,0x20
 a1a:	0712                	slli	a4,a4,0x4
 a1c:	97ba                	add	a5,a5,a4
 a1e:	0137a423          	sw	s3,8(a5)
 a22:	00000717          	auipc	a4,0x0
 a26:	5ca73f23          	sd	a0,1502(a4) # 1000 <freep>
 a2a:	01078513          	addi	a0,a5,16
 a2e:	70e2                	ld	ra,56(sp)
 a30:	7442                	ld	s0,48(sp)
 a32:	74a2                	ld	s1,40(sp)
 a34:	7902                	ld	s2,32(sp)
 a36:	69e2                	ld	s3,24(sp)
 a38:	6a42                	ld	s4,16(sp)
 a3a:	6aa2                	ld	s5,8(sp)
 a3c:	6b02                	ld	s6,0(sp)
 a3e:	6121                	addi	sp,sp,64
 a40:	8082                	ret
 a42:	6398                	ld	a4,0(a5)
 a44:	e118                	sd	a4,0(a0)
 a46:	bff1                	j	a22 <malloc+0x86>
 a48:	01652423          	sw	s6,8(a0)
 a4c:	0541                	addi	a0,a0,16
 a4e:	00000097          	auipc	ra,0x0
 a52:	ec6080e7          	jalr	-314(ra) # 914 <free>
 a56:	00093503          	ld	a0,0(s2)
 a5a:	d971                	beqz	a0,a2e <malloc+0x92>
 a5c:	611c                	ld	a5,0(a0)
 a5e:	4798                	lw	a4,8(a5)
 a60:	fa9776e3          	bgeu	a4,s1,a0c <malloc+0x70>
 a64:	00093703          	ld	a4,0(s2)
 a68:	853e                	mv	a0,a5
 a6a:	fef719e3          	bne	a4,a5,a5c <malloc+0xc0>
 a6e:	8552                	mv	a0,s4
 a70:	00000097          	auipc	ra,0x0
 a74:	b56080e7          	jalr	-1194(ra) # 5c6 <sbrk>
 a78:	fd5518e3          	bne	a0,s5,a48 <malloc+0xac>
 a7c:	4501                	li	a0,0
 a7e:	bf45                	j	a2e <malloc+0x92>
