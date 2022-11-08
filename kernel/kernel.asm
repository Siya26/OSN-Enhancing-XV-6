
kernel/kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	d5010113          	addi	sp,sp,-688 # 80009d50 <stack0>
    80000008:	6505                	lui	a0,0x1
    8000000a:	f14025f3          	csrr	a1,mhartid
    8000000e:	0585                	addi	a1,a1,1
    80000010:	02b50533          	mul	a0,a0,a1
    80000014:	912a                	add	sp,sp,a0
    80000016:	078000ef          	jal	ra,8000008e <start>

000000008000001a <spin>:
    8000001a:	a001                	j	8000001a <spin>

000000008000001c <timerinit>:
    8000001c:	1141                	addi	sp,sp,-16
    8000001e:	e422                	sd	s0,8(sp)
    80000020:	0800                	addi	s0,sp,16
    80000022:	f14027f3          	csrr	a5,mhartid
    80000026:	0007869b          	sext.w	a3,a5
    8000002a:	0037979b          	slliw	a5,a5,0x3
    8000002e:	02004737          	lui	a4,0x2004
    80000032:	97ba                	add	a5,a5,a4
    80000034:	0200c737          	lui	a4,0x200c
    80000038:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000003c:	000f4637          	lui	a2,0xf4
    80000040:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80000044:	95b2                	add	a1,a1,a2
    80000046:	e38c                	sd	a1,0(a5)
    80000048:	00269713          	slli	a4,a3,0x2
    8000004c:	9736                	add	a4,a4,a3
    8000004e:	00371693          	slli	a3,a4,0x3
    80000052:	0000a717          	auipc	a4,0xa
    80000056:	bbe70713          	addi	a4,a4,-1090 # 80009c10 <timer_scratch>
    8000005a:	9736                	add	a4,a4,a3
    8000005c:	ef1c                	sd	a5,24(a4)
    8000005e:	f310                	sd	a2,32(a4)
    80000060:	34071073          	csrw	mscratch,a4
    80000064:	00007797          	auipc	a5,0x7
    80000068:	a6c78793          	addi	a5,a5,-1428 # 80006ad0 <timervec>
    8000006c:	30579073          	csrw	mtvec,a5
    80000070:	300027f3          	csrr	a5,mstatus
    80000074:	0087e793          	ori	a5,a5,8
    80000078:	30079073          	csrw	mstatus,a5
    8000007c:	304027f3          	csrr	a5,mie
    80000080:	0807e793          	ori	a5,a5,128
    80000084:	30479073          	csrw	mie,a5
    80000088:	6422                	ld	s0,8(sp)
    8000008a:	0141                	addi	sp,sp,16
    8000008c:	8082                	ret

000000008000008e <start>:
    8000008e:	1141                	addi	sp,sp,-16
    80000090:	e406                	sd	ra,8(sp)
    80000092:	e022                	sd	s0,0(sp)
    80000094:	0800                	addi	s0,sp,16
    80000096:	300027f3          	csrr	a5,mstatus
    8000009a:	7779                	lui	a4,0xffffe
    8000009c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fdb776f>
    800000a0:	8ff9                	and	a5,a5,a4
    800000a2:	6705                	lui	a4,0x1
    800000a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800000a8:	8fd9                	or	a5,a5,a4
    800000aa:	30079073          	csrw	mstatus,a5
    800000ae:	00001797          	auipc	a5,0x1
    800000b2:	fea78793          	addi	a5,a5,-22 # 80001098 <main>
    800000b6:	34179073          	csrw	mepc,a5
    800000ba:	4781                	li	a5,0
    800000bc:	18079073          	csrw	satp,a5
    800000c0:	67c1                	lui	a5,0x10
    800000c2:	17fd                	addi	a5,a5,-1
    800000c4:	30279073          	csrw	medeleg,a5
    800000c8:	30379073          	csrw	mideleg,a5
    800000cc:	104027f3          	csrr	a5,sie
    800000d0:	2227e793          	ori	a5,a5,546
    800000d4:	10479073          	csrw	sie,a5
    800000d8:	57fd                	li	a5,-1
    800000da:	83a9                	srli	a5,a5,0xa
    800000dc:	3b079073          	csrw	pmpaddr0,a5
    800000e0:	47bd                	li	a5,15
    800000e2:	3a079073          	csrw	pmpcfg0,a5
    800000e6:	00000097          	auipc	ra,0x0
    800000ea:	f36080e7          	jalr	-202(ra) # 8000001c <timerinit>
    800000ee:	f14027f3          	csrr	a5,mhartid
    800000f2:	2781                	sext.w	a5,a5
    800000f4:	823e                	mv	tp,a5
    800000f6:	30200073          	mret
    800000fa:	60a2                	ld	ra,8(sp)
    800000fc:	6402                	ld	s0,0(sp)
    800000fe:	0141                	addi	sp,sp,16
    80000100:	8082                	ret

0000000080000102 <consolewrite>:
    80000102:	715d                	addi	sp,sp,-80
    80000104:	e486                	sd	ra,72(sp)
    80000106:	e0a2                	sd	s0,64(sp)
    80000108:	fc26                	sd	s1,56(sp)
    8000010a:	f84a                	sd	s2,48(sp)
    8000010c:	f44e                	sd	s3,40(sp)
    8000010e:	f052                	sd	s4,32(sp)
    80000110:	ec56                	sd	s5,24(sp)
    80000112:	0880                	addi	s0,sp,80
    80000114:	04c05663          	blez	a2,80000160 <consolewrite+0x5e>
    80000118:	8a2a                	mv	s4,a0
    8000011a:	84ae                	mv	s1,a1
    8000011c:	89b2                	mv	s3,a2
    8000011e:	4901                	li	s2,0
    80000120:	5afd                	li	s5,-1
    80000122:	4685                	li	a3,1
    80000124:	8626                	mv	a2,s1
    80000126:	85d2                	mv	a1,s4
    80000128:	fbf40513          	addi	a0,s0,-65
    8000012c:	00003097          	auipc	ra,0x3
    80000130:	860080e7          	jalr	-1952(ra) # 8000298c <either_copyin>
    80000134:	01550c63          	beq	a0,s5,8000014c <consolewrite+0x4a>
    80000138:	fbf44503          	lbu	a0,-65(s0)
    8000013c:	00000097          	auipc	ra,0x0
    80000140:	794080e7          	jalr	1940(ra) # 800008d0 <uartputc>
    80000144:	2905                	addiw	s2,s2,1
    80000146:	0485                	addi	s1,s1,1
    80000148:	fd299de3          	bne	s3,s2,80000122 <consolewrite+0x20>
    8000014c:	854a                	mv	a0,s2
    8000014e:	60a6                	ld	ra,72(sp)
    80000150:	6406                	ld	s0,64(sp)
    80000152:	74e2                	ld	s1,56(sp)
    80000154:	7942                	ld	s2,48(sp)
    80000156:	79a2                	ld	s3,40(sp)
    80000158:	7a02                	ld	s4,32(sp)
    8000015a:	6ae2                	ld	s5,24(sp)
    8000015c:	6161                	addi	sp,sp,80
    8000015e:	8082                	ret
    80000160:	4901                	li	s2,0
    80000162:	b7ed                	j	8000014c <consolewrite+0x4a>

0000000080000164 <consoleread>:
    80000164:	7119                	addi	sp,sp,-128
    80000166:	fc86                	sd	ra,120(sp)
    80000168:	f8a2                	sd	s0,112(sp)
    8000016a:	f4a6                	sd	s1,104(sp)
    8000016c:	f0ca                	sd	s2,96(sp)
    8000016e:	ecce                	sd	s3,88(sp)
    80000170:	e8d2                	sd	s4,80(sp)
    80000172:	e4d6                	sd	s5,72(sp)
    80000174:	e0da                	sd	s6,64(sp)
    80000176:	fc5e                	sd	s7,56(sp)
    80000178:	f862                	sd	s8,48(sp)
    8000017a:	f466                	sd	s9,40(sp)
    8000017c:	f06a                	sd	s10,32(sp)
    8000017e:	ec6e                	sd	s11,24(sp)
    80000180:	0100                	addi	s0,sp,128
    80000182:	8b2a                	mv	s6,a0
    80000184:	8aae                	mv	s5,a1
    80000186:	8a32                	mv	s4,a2
    80000188:	00060b9b          	sext.w	s7,a2
    8000018c:	00012517          	auipc	a0,0x12
    80000190:	bc450513          	addi	a0,a0,-1084 # 80011d50 <cons>
    80000194:	00001097          	auipc	ra,0x1
    80000198:	c5a080e7          	jalr	-934(ra) # 80000dee <acquire>
    8000019c:	00012497          	auipc	s1,0x12
    800001a0:	bb448493          	addi	s1,s1,-1100 # 80011d50 <cons>
    800001a4:	89a6                	mv	s3,s1
    800001a6:	00012917          	auipc	s2,0x12
    800001aa:	c4290913          	addi	s2,s2,-958 # 80011de8 <cons+0x98>
    800001ae:	4c91                	li	s9,4
    800001b0:	5d7d                	li	s10,-1
    800001b2:	4da9                	li	s11,10
    800001b4:	07405b63          	blez	s4,8000022a <consoleread+0xc6>
    800001b8:	0984a783          	lw	a5,152(s1)
    800001bc:	09c4a703          	lw	a4,156(s1)
    800001c0:	02f71763          	bne	a4,a5,800001ee <consoleread+0x8a>
    800001c4:	00002097          	auipc	ra,0x2
    800001c8:	c54080e7          	jalr	-940(ra) # 80001e18 <myproc>
    800001cc:	00002097          	auipc	ra,0x2
    800001d0:	60a080e7          	jalr	1546(ra) # 800027d6 <killed>
    800001d4:	e535                	bnez	a0,80000240 <consoleread+0xdc>
    800001d6:	85ce                	mv	a1,s3
    800001d8:	854a                	mv	a0,s2
    800001da:	00002097          	auipc	ra,0x2
    800001de:	320080e7          	jalr	800(ra) # 800024fa <sleep>
    800001e2:	0984a783          	lw	a5,152(s1)
    800001e6:	09c4a703          	lw	a4,156(s1)
    800001ea:	fcf70de3          	beq	a4,a5,800001c4 <consoleread+0x60>
    800001ee:	0017871b          	addiw	a4,a5,1
    800001f2:	08e4ac23          	sw	a4,152(s1)
    800001f6:	07f7f713          	andi	a4,a5,127
    800001fa:	9726                	add	a4,a4,s1
    800001fc:	01874703          	lbu	a4,24(a4)
    80000200:	00070c1b          	sext.w	s8,a4
    80000204:	079c0663          	beq	s8,s9,80000270 <consoleread+0x10c>
    80000208:	f8e407a3          	sb	a4,-113(s0)
    8000020c:	4685                	li	a3,1
    8000020e:	f8f40613          	addi	a2,s0,-113
    80000212:	85d6                	mv	a1,s5
    80000214:	855a                	mv	a0,s6
    80000216:	00002097          	auipc	ra,0x2
    8000021a:	720080e7          	jalr	1824(ra) # 80002936 <either_copyout>
    8000021e:	01a50663          	beq	a0,s10,8000022a <consoleread+0xc6>
    80000222:	0a85                	addi	s5,s5,1
    80000224:	3a7d                	addiw	s4,s4,-1
    80000226:	f9bc17e3          	bne	s8,s11,800001b4 <consoleread+0x50>
    8000022a:	00012517          	auipc	a0,0x12
    8000022e:	b2650513          	addi	a0,a0,-1242 # 80011d50 <cons>
    80000232:	00001097          	auipc	ra,0x1
    80000236:	c70080e7          	jalr	-912(ra) # 80000ea2 <release>
    8000023a:	414b853b          	subw	a0,s7,s4
    8000023e:	a811                	j	80000252 <consoleread+0xee>
    80000240:	00012517          	auipc	a0,0x12
    80000244:	b1050513          	addi	a0,a0,-1264 # 80011d50 <cons>
    80000248:	00001097          	auipc	ra,0x1
    8000024c:	c5a080e7          	jalr	-934(ra) # 80000ea2 <release>
    80000250:	557d                	li	a0,-1
    80000252:	70e6                	ld	ra,120(sp)
    80000254:	7446                	ld	s0,112(sp)
    80000256:	74a6                	ld	s1,104(sp)
    80000258:	7906                	ld	s2,96(sp)
    8000025a:	69e6                	ld	s3,88(sp)
    8000025c:	6a46                	ld	s4,80(sp)
    8000025e:	6aa6                	ld	s5,72(sp)
    80000260:	6b06                	ld	s6,64(sp)
    80000262:	7be2                	ld	s7,56(sp)
    80000264:	7c42                	ld	s8,48(sp)
    80000266:	7ca2                	ld	s9,40(sp)
    80000268:	7d02                	ld	s10,32(sp)
    8000026a:	6de2                	ld	s11,24(sp)
    8000026c:	6109                	addi	sp,sp,128
    8000026e:	8082                	ret
    80000270:	000a071b          	sext.w	a4,s4
    80000274:	fb777be3          	bgeu	a4,s7,8000022a <consoleread+0xc6>
    80000278:	00012717          	auipc	a4,0x12
    8000027c:	b6f72823          	sw	a5,-1168(a4) # 80011de8 <cons+0x98>
    80000280:	b76d                	j	8000022a <consoleread+0xc6>

0000000080000282 <consputc>:
    80000282:	1141                	addi	sp,sp,-16
    80000284:	e406                	sd	ra,8(sp)
    80000286:	e022                	sd	s0,0(sp)
    80000288:	0800                	addi	s0,sp,16
    8000028a:	10000793          	li	a5,256
    8000028e:	00f50a63          	beq	a0,a5,800002a2 <consputc+0x20>
    80000292:	00000097          	auipc	ra,0x0
    80000296:	564080e7          	jalr	1380(ra) # 800007f6 <uartputc_sync>
    8000029a:	60a2                	ld	ra,8(sp)
    8000029c:	6402                	ld	s0,0(sp)
    8000029e:	0141                	addi	sp,sp,16
    800002a0:	8082                	ret
    800002a2:	4521                	li	a0,8
    800002a4:	00000097          	auipc	ra,0x0
    800002a8:	552080e7          	jalr	1362(ra) # 800007f6 <uartputc_sync>
    800002ac:	02000513          	li	a0,32
    800002b0:	00000097          	auipc	ra,0x0
    800002b4:	546080e7          	jalr	1350(ra) # 800007f6 <uartputc_sync>
    800002b8:	4521                	li	a0,8
    800002ba:	00000097          	auipc	ra,0x0
    800002be:	53c080e7          	jalr	1340(ra) # 800007f6 <uartputc_sync>
    800002c2:	bfe1                	j	8000029a <consputc+0x18>

00000000800002c4 <consoleintr>:
    800002c4:	1101                	addi	sp,sp,-32
    800002c6:	ec06                	sd	ra,24(sp)
    800002c8:	e822                	sd	s0,16(sp)
    800002ca:	e426                	sd	s1,8(sp)
    800002cc:	e04a                	sd	s2,0(sp)
    800002ce:	1000                	addi	s0,sp,32
    800002d0:	84aa                	mv	s1,a0
    800002d2:	00012517          	auipc	a0,0x12
    800002d6:	a7e50513          	addi	a0,a0,-1410 # 80011d50 <cons>
    800002da:	00001097          	auipc	ra,0x1
    800002de:	b14080e7          	jalr	-1260(ra) # 80000dee <acquire>
    800002e2:	47d5                	li	a5,21
    800002e4:	0af48663          	beq	s1,a5,80000390 <consoleintr+0xcc>
    800002e8:	0297ca63          	blt	a5,s1,8000031c <consoleintr+0x58>
    800002ec:	47a1                	li	a5,8
    800002ee:	0ef48763          	beq	s1,a5,800003dc <consoleintr+0x118>
    800002f2:	47c1                	li	a5,16
    800002f4:	10f49a63          	bne	s1,a5,80000408 <consoleintr+0x144>
    800002f8:	00002097          	auipc	ra,0x2
    800002fc:	6ea080e7          	jalr	1770(ra) # 800029e2 <procdump>
    80000300:	00012517          	auipc	a0,0x12
    80000304:	a5050513          	addi	a0,a0,-1456 # 80011d50 <cons>
    80000308:	00001097          	auipc	ra,0x1
    8000030c:	b9a080e7          	jalr	-1126(ra) # 80000ea2 <release>
    80000310:	60e2                	ld	ra,24(sp)
    80000312:	6442                	ld	s0,16(sp)
    80000314:	64a2                	ld	s1,8(sp)
    80000316:	6902                	ld	s2,0(sp)
    80000318:	6105                	addi	sp,sp,32
    8000031a:	8082                	ret
    8000031c:	07f00793          	li	a5,127
    80000320:	0af48e63          	beq	s1,a5,800003dc <consoleintr+0x118>
    80000324:	00012717          	auipc	a4,0x12
    80000328:	a2c70713          	addi	a4,a4,-1492 # 80011d50 <cons>
    8000032c:	0a072783          	lw	a5,160(a4)
    80000330:	09872703          	lw	a4,152(a4)
    80000334:	9f99                	subw	a5,a5,a4
    80000336:	07f00713          	li	a4,127
    8000033a:	fcf763e3          	bltu	a4,a5,80000300 <consoleintr+0x3c>
    8000033e:	47b5                	li	a5,13
    80000340:	0cf48763          	beq	s1,a5,8000040e <consoleintr+0x14a>
    80000344:	8526                	mv	a0,s1
    80000346:	00000097          	auipc	ra,0x0
    8000034a:	f3c080e7          	jalr	-196(ra) # 80000282 <consputc>
    8000034e:	00012797          	auipc	a5,0x12
    80000352:	a0278793          	addi	a5,a5,-1534 # 80011d50 <cons>
    80000356:	0a07a683          	lw	a3,160(a5)
    8000035a:	0016871b          	addiw	a4,a3,1
    8000035e:	0007061b          	sext.w	a2,a4
    80000362:	0ae7a023          	sw	a4,160(a5)
    80000366:	07f6f693          	andi	a3,a3,127
    8000036a:	97b6                	add	a5,a5,a3
    8000036c:	00978c23          	sb	s1,24(a5)
    80000370:	47a9                	li	a5,10
    80000372:	0cf48563          	beq	s1,a5,8000043c <consoleintr+0x178>
    80000376:	4791                	li	a5,4
    80000378:	0cf48263          	beq	s1,a5,8000043c <consoleintr+0x178>
    8000037c:	00012797          	auipc	a5,0x12
    80000380:	a6c7a783          	lw	a5,-1428(a5) # 80011de8 <cons+0x98>
    80000384:	9f1d                	subw	a4,a4,a5
    80000386:	08000793          	li	a5,128
    8000038a:	f6f71be3          	bne	a4,a5,80000300 <consoleintr+0x3c>
    8000038e:	a07d                	j	8000043c <consoleintr+0x178>
    80000390:	00012717          	auipc	a4,0x12
    80000394:	9c070713          	addi	a4,a4,-1600 # 80011d50 <cons>
    80000398:	0a072783          	lw	a5,160(a4)
    8000039c:	09c72703          	lw	a4,156(a4)
    800003a0:	00012497          	auipc	s1,0x12
    800003a4:	9b048493          	addi	s1,s1,-1616 # 80011d50 <cons>
    800003a8:	4929                	li	s2,10
    800003aa:	f4f70be3          	beq	a4,a5,80000300 <consoleintr+0x3c>
    800003ae:	37fd                	addiw	a5,a5,-1
    800003b0:	07f7f713          	andi	a4,a5,127
    800003b4:	9726                	add	a4,a4,s1
    800003b6:	01874703          	lbu	a4,24(a4)
    800003ba:	f52703e3          	beq	a4,s2,80000300 <consoleintr+0x3c>
    800003be:	0af4a023          	sw	a5,160(s1)
    800003c2:	10000513          	li	a0,256
    800003c6:	00000097          	auipc	ra,0x0
    800003ca:	ebc080e7          	jalr	-324(ra) # 80000282 <consputc>
    800003ce:	0a04a783          	lw	a5,160(s1)
    800003d2:	09c4a703          	lw	a4,156(s1)
    800003d6:	fcf71ce3          	bne	a4,a5,800003ae <consoleintr+0xea>
    800003da:	b71d                	j	80000300 <consoleintr+0x3c>
    800003dc:	00012717          	auipc	a4,0x12
    800003e0:	97470713          	addi	a4,a4,-1676 # 80011d50 <cons>
    800003e4:	0a072783          	lw	a5,160(a4)
    800003e8:	09c72703          	lw	a4,156(a4)
    800003ec:	f0f70ae3          	beq	a4,a5,80000300 <consoleintr+0x3c>
    800003f0:	37fd                	addiw	a5,a5,-1
    800003f2:	00012717          	auipc	a4,0x12
    800003f6:	9ef72f23          	sw	a5,-1538(a4) # 80011df0 <cons+0xa0>
    800003fa:	10000513          	li	a0,256
    800003fe:	00000097          	auipc	ra,0x0
    80000402:	e84080e7          	jalr	-380(ra) # 80000282 <consputc>
    80000406:	bded                	j	80000300 <consoleintr+0x3c>
    80000408:	ee048ce3          	beqz	s1,80000300 <consoleintr+0x3c>
    8000040c:	bf21                	j	80000324 <consoleintr+0x60>
    8000040e:	4529                	li	a0,10
    80000410:	00000097          	auipc	ra,0x0
    80000414:	e72080e7          	jalr	-398(ra) # 80000282 <consputc>
    80000418:	00012797          	auipc	a5,0x12
    8000041c:	93878793          	addi	a5,a5,-1736 # 80011d50 <cons>
    80000420:	0a07a703          	lw	a4,160(a5)
    80000424:	0017069b          	addiw	a3,a4,1
    80000428:	0006861b          	sext.w	a2,a3
    8000042c:	0ad7a023          	sw	a3,160(a5)
    80000430:	07f77713          	andi	a4,a4,127
    80000434:	97ba                	add	a5,a5,a4
    80000436:	4729                	li	a4,10
    80000438:	00e78c23          	sb	a4,24(a5)
    8000043c:	00012797          	auipc	a5,0x12
    80000440:	9ac7a823          	sw	a2,-1616(a5) # 80011dec <cons+0x9c>
    80000444:	00012517          	auipc	a0,0x12
    80000448:	9a450513          	addi	a0,a0,-1628 # 80011de8 <cons+0x98>
    8000044c:	00002097          	auipc	ra,0x2
    80000450:	124080e7          	jalr	292(ra) # 80002570 <wakeup>
    80000454:	b575                	j	80000300 <consoleintr+0x3c>

0000000080000456 <consoleinit>:
    80000456:	1141                	addi	sp,sp,-16
    80000458:	e406                	sd	ra,8(sp)
    8000045a:	e022                	sd	s0,0(sp)
    8000045c:	0800                	addi	s0,sp,16
    8000045e:	00009597          	auipc	a1,0x9
    80000462:	bb258593          	addi	a1,a1,-1102 # 80009010 <etext+0x10>
    80000466:	00012517          	auipc	a0,0x12
    8000046a:	8ea50513          	addi	a0,a0,-1814 # 80011d50 <cons>
    8000046e:	00001097          	auipc	ra,0x1
    80000472:	8f0080e7          	jalr	-1808(ra) # 80000d5e <initlock>
    80000476:	00000097          	auipc	ra,0x0
    8000047a:	330080e7          	jalr	816(ra) # 800007a6 <uartinit>
    8000047e:	00246797          	auipc	a5,0x246
    80000482:	a7a78793          	addi	a5,a5,-1414 # 80245ef8 <devsw>
    80000486:	00000717          	auipc	a4,0x0
    8000048a:	cde70713          	addi	a4,a4,-802 # 80000164 <consoleread>
    8000048e:	eb98                	sd	a4,16(a5)
    80000490:	00000717          	auipc	a4,0x0
    80000494:	c7270713          	addi	a4,a4,-910 # 80000102 <consolewrite>
    80000498:	ef98                	sd	a4,24(a5)
    8000049a:	60a2                	ld	ra,8(sp)
    8000049c:	6402                	ld	s0,0(sp)
    8000049e:	0141                	addi	sp,sp,16
    800004a0:	8082                	ret

00000000800004a2 <printint>:
    800004a2:	7179                	addi	sp,sp,-48
    800004a4:	f406                	sd	ra,40(sp)
    800004a6:	f022                	sd	s0,32(sp)
    800004a8:	ec26                	sd	s1,24(sp)
    800004aa:	e84a                	sd	s2,16(sp)
    800004ac:	1800                	addi	s0,sp,48
    800004ae:	c219                	beqz	a2,800004b4 <printint+0x12>
    800004b0:	08054663          	bltz	a0,8000053c <printint+0x9a>
    800004b4:	2501                	sext.w	a0,a0
    800004b6:	4881                	li	a7,0
    800004b8:	fd040693          	addi	a3,s0,-48
    800004bc:	4701                	li	a4,0
    800004be:	2581                	sext.w	a1,a1
    800004c0:	00009617          	auipc	a2,0x9
    800004c4:	b8060613          	addi	a2,a2,-1152 # 80009040 <digits>
    800004c8:	883a                	mv	a6,a4
    800004ca:	2705                	addiw	a4,a4,1
    800004cc:	02b577bb          	remuw	a5,a0,a1
    800004d0:	1782                	slli	a5,a5,0x20
    800004d2:	9381                	srli	a5,a5,0x20
    800004d4:	97b2                	add	a5,a5,a2
    800004d6:	0007c783          	lbu	a5,0(a5)
    800004da:	00f68023          	sb	a5,0(a3)
    800004de:	0005079b          	sext.w	a5,a0
    800004e2:	02b5553b          	divuw	a0,a0,a1
    800004e6:	0685                	addi	a3,a3,1
    800004e8:	feb7f0e3          	bgeu	a5,a1,800004c8 <printint+0x26>
    800004ec:	00088b63          	beqz	a7,80000502 <printint+0x60>
    800004f0:	fe040793          	addi	a5,s0,-32
    800004f4:	973e                	add	a4,a4,a5
    800004f6:	02d00793          	li	a5,45
    800004fa:	fef70823          	sb	a5,-16(a4)
    800004fe:	0028071b          	addiw	a4,a6,2
    80000502:	02e05763          	blez	a4,80000530 <printint+0x8e>
    80000506:	fd040793          	addi	a5,s0,-48
    8000050a:	00e784b3          	add	s1,a5,a4
    8000050e:	fff78913          	addi	s2,a5,-1
    80000512:	993a                	add	s2,s2,a4
    80000514:	377d                	addiw	a4,a4,-1
    80000516:	1702                	slli	a4,a4,0x20
    80000518:	9301                	srli	a4,a4,0x20
    8000051a:	40e90933          	sub	s2,s2,a4
    8000051e:	fff4c503          	lbu	a0,-1(s1)
    80000522:	00000097          	auipc	ra,0x0
    80000526:	d60080e7          	jalr	-672(ra) # 80000282 <consputc>
    8000052a:	14fd                	addi	s1,s1,-1
    8000052c:	ff2499e3          	bne	s1,s2,8000051e <printint+0x7c>
    80000530:	70a2                	ld	ra,40(sp)
    80000532:	7402                	ld	s0,32(sp)
    80000534:	64e2                	ld	s1,24(sp)
    80000536:	6942                	ld	s2,16(sp)
    80000538:	6145                	addi	sp,sp,48
    8000053a:	8082                	ret
    8000053c:	40a0053b          	negw	a0,a0
    80000540:	4885                	li	a7,1
    80000542:	bf9d                	j	800004b8 <printint+0x16>

0000000080000544 <panic>:
    80000544:	1101                	addi	sp,sp,-32
    80000546:	ec06                	sd	ra,24(sp)
    80000548:	e822                	sd	s0,16(sp)
    8000054a:	e426                	sd	s1,8(sp)
    8000054c:	1000                	addi	s0,sp,32
    8000054e:	84aa                	mv	s1,a0
    80000550:	00012797          	auipc	a5,0x12
    80000554:	8c07a023          	sw	zero,-1856(a5) # 80011e10 <pr+0x18>
    80000558:	00009517          	auipc	a0,0x9
    8000055c:	ac050513          	addi	a0,a0,-1344 # 80009018 <etext+0x18>
    80000560:	00000097          	auipc	ra,0x0
    80000564:	02e080e7          	jalr	46(ra) # 8000058e <printf>
    80000568:	8526                	mv	a0,s1
    8000056a:	00000097          	auipc	ra,0x0
    8000056e:	024080e7          	jalr	36(ra) # 8000058e <printf>
    80000572:	00009517          	auipc	a0,0x9
    80000576:	bb650513          	addi	a0,a0,-1098 # 80009128 <digits+0xe8>
    8000057a:	00000097          	auipc	ra,0x0
    8000057e:	014080e7          	jalr	20(ra) # 8000058e <printf>
    80000582:	4785                	li	a5,1
    80000584:	00009717          	auipc	a4,0x9
    80000588:	64f72623          	sw	a5,1612(a4) # 80009bd0 <panicked>
    8000058c:	a001                	j	8000058c <panic+0x48>

000000008000058e <printf>:
    8000058e:	7131                	addi	sp,sp,-192
    80000590:	fc86                	sd	ra,120(sp)
    80000592:	f8a2                	sd	s0,112(sp)
    80000594:	f4a6                	sd	s1,104(sp)
    80000596:	f0ca                	sd	s2,96(sp)
    80000598:	ecce                	sd	s3,88(sp)
    8000059a:	e8d2                	sd	s4,80(sp)
    8000059c:	e4d6                	sd	s5,72(sp)
    8000059e:	e0da                	sd	s6,64(sp)
    800005a0:	fc5e                	sd	s7,56(sp)
    800005a2:	f862                	sd	s8,48(sp)
    800005a4:	f466                	sd	s9,40(sp)
    800005a6:	f06a                	sd	s10,32(sp)
    800005a8:	ec6e                	sd	s11,24(sp)
    800005aa:	0100                	addi	s0,sp,128
    800005ac:	8a2a                	mv	s4,a0
    800005ae:	e40c                	sd	a1,8(s0)
    800005b0:	e810                	sd	a2,16(s0)
    800005b2:	ec14                	sd	a3,24(s0)
    800005b4:	f018                	sd	a4,32(s0)
    800005b6:	f41c                	sd	a5,40(s0)
    800005b8:	03043823          	sd	a6,48(s0)
    800005bc:	03143c23          	sd	a7,56(s0)
    800005c0:	00012d97          	auipc	s11,0x12
    800005c4:	850dad83          	lw	s11,-1968(s11) # 80011e10 <pr+0x18>
    800005c8:	020d9b63          	bnez	s11,800005fe <printf+0x70>
    800005cc:	040a0263          	beqz	s4,80000610 <printf+0x82>
    800005d0:	00840793          	addi	a5,s0,8
    800005d4:	f8f43423          	sd	a5,-120(s0)
    800005d8:	000a4503          	lbu	a0,0(s4)
    800005dc:	16050263          	beqz	a0,80000740 <printf+0x1b2>
    800005e0:	4481                	li	s1,0
    800005e2:	02500a93          	li	s5,37
    800005e6:	07000b13          	li	s6,112
    800005ea:	4d41                	li	s10,16
    800005ec:	00009b97          	auipc	s7,0x9
    800005f0:	a54b8b93          	addi	s7,s7,-1452 # 80009040 <digits>
    800005f4:	07300c93          	li	s9,115
    800005f8:	06400c13          	li	s8,100
    800005fc:	a82d                	j	80000636 <printf+0xa8>
    800005fe:	00011517          	auipc	a0,0x11
    80000602:	7fa50513          	addi	a0,a0,2042 # 80011df8 <pr>
    80000606:	00000097          	auipc	ra,0x0
    8000060a:	7e8080e7          	jalr	2024(ra) # 80000dee <acquire>
    8000060e:	bf7d                	j	800005cc <printf+0x3e>
    80000610:	00009517          	auipc	a0,0x9
    80000614:	a1850513          	addi	a0,a0,-1512 # 80009028 <etext+0x28>
    80000618:	00000097          	auipc	ra,0x0
    8000061c:	f2c080e7          	jalr	-212(ra) # 80000544 <panic>
    80000620:	00000097          	auipc	ra,0x0
    80000624:	c62080e7          	jalr	-926(ra) # 80000282 <consputc>
    80000628:	2485                	addiw	s1,s1,1
    8000062a:	009a07b3          	add	a5,s4,s1
    8000062e:	0007c503          	lbu	a0,0(a5)
    80000632:	10050763          	beqz	a0,80000740 <printf+0x1b2>
    80000636:	ff5515e3          	bne	a0,s5,80000620 <printf+0x92>
    8000063a:	2485                	addiw	s1,s1,1
    8000063c:	009a07b3          	add	a5,s4,s1
    80000640:	0007c783          	lbu	a5,0(a5)
    80000644:	0007891b          	sext.w	s2,a5
    80000648:	cfe5                	beqz	a5,80000740 <printf+0x1b2>
    8000064a:	05678a63          	beq	a5,s6,8000069e <printf+0x110>
    8000064e:	02fb7663          	bgeu	s6,a5,8000067a <printf+0xec>
    80000652:	09978963          	beq	a5,s9,800006e4 <printf+0x156>
    80000656:	07800713          	li	a4,120
    8000065a:	0ce79863          	bne	a5,a4,8000072a <printf+0x19c>
    8000065e:	f8843783          	ld	a5,-120(s0)
    80000662:	00878713          	addi	a4,a5,8
    80000666:	f8e43423          	sd	a4,-120(s0)
    8000066a:	4605                	li	a2,1
    8000066c:	85ea                	mv	a1,s10
    8000066e:	4388                	lw	a0,0(a5)
    80000670:	00000097          	auipc	ra,0x0
    80000674:	e32080e7          	jalr	-462(ra) # 800004a2 <printint>
    80000678:	bf45                	j	80000628 <printf+0x9a>
    8000067a:	0b578263          	beq	a5,s5,8000071e <printf+0x190>
    8000067e:	0b879663          	bne	a5,s8,8000072a <printf+0x19c>
    80000682:	f8843783          	ld	a5,-120(s0)
    80000686:	00878713          	addi	a4,a5,8
    8000068a:	f8e43423          	sd	a4,-120(s0)
    8000068e:	4605                	li	a2,1
    80000690:	45a9                	li	a1,10
    80000692:	4388                	lw	a0,0(a5)
    80000694:	00000097          	auipc	ra,0x0
    80000698:	e0e080e7          	jalr	-498(ra) # 800004a2 <printint>
    8000069c:	b771                	j	80000628 <printf+0x9a>
    8000069e:	f8843783          	ld	a5,-120(s0)
    800006a2:	00878713          	addi	a4,a5,8
    800006a6:	f8e43423          	sd	a4,-120(s0)
    800006aa:	0007b983          	ld	s3,0(a5)
    800006ae:	03000513          	li	a0,48
    800006b2:	00000097          	auipc	ra,0x0
    800006b6:	bd0080e7          	jalr	-1072(ra) # 80000282 <consputc>
    800006ba:	07800513          	li	a0,120
    800006be:	00000097          	auipc	ra,0x0
    800006c2:	bc4080e7          	jalr	-1084(ra) # 80000282 <consputc>
    800006c6:	896a                	mv	s2,s10
    800006c8:	03c9d793          	srli	a5,s3,0x3c
    800006cc:	97de                	add	a5,a5,s7
    800006ce:	0007c503          	lbu	a0,0(a5)
    800006d2:	00000097          	auipc	ra,0x0
    800006d6:	bb0080e7          	jalr	-1104(ra) # 80000282 <consputc>
    800006da:	0992                	slli	s3,s3,0x4
    800006dc:	397d                	addiw	s2,s2,-1
    800006de:	fe0915e3          	bnez	s2,800006c8 <printf+0x13a>
    800006e2:	b799                	j	80000628 <printf+0x9a>
    800006e4:	f8843783          	ld	a5,-120(s0)
    800006e8:	00878713          	addi	a4,a5,8
    800006ec:	f8e43423          	sd	a4,-120(s0)
    800006f0:	0007b903          	ld	s2,0(a5)
    800006f4:	00090e63          	beqz	s2,80000710 <printf+0x182>
    800006f8:	00094503          	lbu	a0,0(s2)
    800006fc:	d515                	beqz	a0,80000628 <printf+0x9a>
    800006fe:	00000097          	auipc	ra,0x0
    80000702:	b84080e7          	jalr	-1148(ra) # 80000282 <consputc>
    80000706:	0905                	addi	s2,s2,1
    80000708:	00094503          	lbu	a0,0(s2)
    8000070c:	f96d                	bnez	a0,800006fe <printf+0x170>
    8000070e:	bf29                	j	80000628 <printf+0x9a>
    80000710:	00009917          	auipc	s2,0x9
    80000714:	91090913          	addi	s2,s2,-1776 # 80009020 <etext+0x20>
    80000718:	02800513          	li	a0,40
    8000071c:	b7cd                	j	800006fe <printf+0x170>
    8000071e:	8556                	mv	a0,s5
    80000720:	00000097          	auipc	ra,0x0
    80000724:	b62080e7          	jalr	-1182(ra) # 80000282 <consputc>
    80000728:	b701                	j	80000628 <printf+0x9a>
    8000072a:	8556                	mv	a0,s5
    8000072c:	00000097          	auipc	ra,0x0
    80000730:	b56080e7          	jalr	-1194(ra) # 80000282 <consputc>
    80000734:	854a                	mv	a0,s2
    80000736:	00000097          	auipc	ra,0x0
    8000073a:	b4c080e7          	jalr	-1204(ra) # 80000282 <consputc>
    8000073e:	b5ed                	j	80000628 <printf+0x9a>
    80000740:	020d9163          	bnez	s11,80000762 <printf+0x1d4>
    80000744:	70e6                	ld	ra,120(sp)
    80000746:	7446                	ld	s0,112(sp)
    80000748:	74a6                	ld	s1,104(sp)
    8000074a:	7906                	ld	s2,96(sp)
    8000074c:	69e6                	ld	s3,88(sp)
    8000074e:	6a46                	ld	s4,80(sp)
    80000750:	6aa6                	ld	s5,72(sp)
    80000752:	6b06                	ld	s6,64(sp)
    80000754:	7be2                	ld	s7,56(sp)
    80000756:	7c42                	ld	s8,48(sp)
    80000758:	7ca2                	ld	s9,40(sp)
    8000075a:	7d02                	ld	s10,32(sp)
    8000075c:	6de2                	ld	s11,24(sp)
    8000075e:	6129                	addi	sp,sp,192
    80000760:	8082                	ret
    80000762:	00011517          	auipc	a0,0x11
    80000766:	69650513          	addi	a0,a0,1686 # 80011df8 <pr>
    8000076a:	00000097          	auipc	ra,0x0
    8000076e:	738080e7          	jalr	1848(ra) # 80000ea2 <release>
    80000772:	bfc9                	j	80000744 <printf+0x1b6>

0000000080000774 <printfinit>:
    80000774:	1101                	addi	sp,sp,-32
    80000776:	ec06                	sd	ra,24(sp)
    80000778:	e822                	sd	s0,16(sp)
    8000077a:	e426                	sd	s1,8(sp)
    8000077c:	1000                	addi	s0,sp,32
    8000077e:	00011497          	auipc	s1,0x11
    80000782:	67a48493          	addi	s1,s1,1658 # 80011df8 <pr>
    80000786:	00009597          	auipc	a1,0x9
    8000078a:	8b258593          	addi	a1,a1,-1870 # 80009038 <etext+0x38>
    8000078e:	8526                	mv	a0,s1
    80000790:	00000097          	auipc	ra,0x0
    80000794:	5ce080e7          	jalr	1486(ra) # 80000d5e <initlock>
    80000798:	4785                	li	a5,1
    8000079a:	cc9c                	sw	a5,24(s1)
    8000079c:	60e2                	ld	ra,24(sp)
    8000079e:	6442                	ld	s0,16(sp)
    800007a0:	64a2                	ld	s1,8(sp)
    800007a2:	6105                	addi	sp,sp,32
    800007a4:	8082                	ret

00000000800007a6 <uartinit>:
    800007a6:	1141                	addi	sp,sp,-16
    800007a8:	e406                	sd	ra,8(sp)
    800007aa:	e022                	sd	s0,0(sp)
    800007ac:	0800                	addi	s0,sp,16
    800007ae:	100007b7          	lui	a5,0x10000
    800007b2:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800007b6:	f8000713          	li	a4,-128
    800007ba:	00e781a3          	sb	a4,3(a5)
    800007be:	470d                	li	a4,3
    800007c0:	00e78023          	sb	a4,0(a5)
    800007c4:	000780a3          	sb	zero,1(a5)
    800007c8:	00e781a3          	sb	a4,3(a5)
    800007cc:	469d                	li	a3,7
    800007ce:	00d78123          	sb	a3,2(a5)
    800007d2:	00e780a3          	sb	a4,1(a5)
    800007d6:	00009597          	auipc	a1,0x9
    800007da:	88258593          	addi	a1,a1,-1918 # 80009058 <digits+0x18>
    800007de:	00011517          	auipc	a0,0x11
    800007e2:	63a50513          	addi	a0,a0,1594 # 80011e18 <uart_tx_lock>
    800007e6:	00000097          	auipc	ra,0x0
    800007ea:	578080e7          	jalr	1400(ra) # 80000d5e <initlock>
    800007ee:	60a2                	ld	ra,8(sp)
    800007f0:	6402                	ld	s0,0(sp)
    800007f2:	0141                	addi	sp,sp,16
    800007f4:	8082                	ret

00000000800007f6 <uartputc_sync>:
    800007f6:	1101                	addi	sp,sp,-32
    800007f8:	ec06                	sd	ra,24(sp)
    800007fa:	e822                	sd	s0,16(sp)
    800007fc:	e426                	sd	s1,8(sp)
    800007fe:	1000                	addi	s0,sp,32
    80000800:	84aa                	mv	s1,a0
    80000802:	00000097          	auipc	ra,0x0
    80000806:	5a0080e7          	jalr	1440(ra) # 80000da2 <push_off>
    8000080a:	00009797          	auipc	a5,0x9
    8000080e:	3c67a783          	lw	a5,966(a5) # 80009bd0 <panicked>
    80000812:	10000737          	lui	a4,0x10000
    80000816:	c391                	beqz	a5,8000081a <uartputc_sync+0x24>
    80000818:	a001                	j	80000818 <uartputc_sync+0x22>
    8000081a:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000081e:	0ff7f793          	andi	a5,a5,255
    80000822:	0207f793          	andi	a5,a5,32
    80000826:	dbf5                	beqz	a5,8000081a <uartputc_sync+0x24>
    80000828:	0ff4f793          	andi	a5,s1,255
    8000082c:	10000737          	lui	a4,0x10000
    80000830:	00f70023          	sb	a5,0(a4) # 10000000 <_entry-0x70000000>
    80000834:	00000097          	auipc	ra,0x0
    80000838:	60e080e7          	jalr	1550(ra) # 80000e42 <pop_off>
    8000083c:	60e2                	ld	ra,24(sp)
    8000083e:	6442                	ld	s0,16(sp)
    80000840:	64a2                	ld	s1,8(sp)
    80000842:	6105                	addi	sp,sp,32
    80000844:	8082                	ret

0000000080000846 <uartstart>:
    80000846:	00009717          	auipc	a4,0x9
    8000084a:	39273703          	ld	a4,914(a4) # 80009bd8 <uart_tx_r>
    8000084e:	00009797          	auipc	a5,0x9
    80000852:	3927b783          	ld	a5,914(a5) # 80009be0 <uart_tx_w>
    80000856:	06e78c63          	beq	a5,a4,800008ce <uartstart+0x88>
    8000085a:	7139                	addi	sp,sp,-64
    8000085c:	fc06                	sd	ra,56(sp)
    8000085e:	f822                	sd	s0,48(sp)
    80000860:	f426                	sd	s1,40(sp)
    80000862:	f04a                	sd	s2,32(sp)
    80000864:	ec4e                	sd	s3,24(sp)
    80000866:	e852                	sd	s4,16(sp)
    80000868:	e456                	sd	s5,8(sp)
    8000086a:	0080                	addi	s0,sp,64
    8000086c:	10000937          	lui	s2,0x10000
    80000870:	00011a17          	auipc	s4,0x11
    80000874:	5a8a0a13          	addi	s4,s4,1448 # 80011e18 <uart_tx_lock>
    80000878:	00009497          	auipc	s1,0x9
    8000087c:	36048493          	addi	s1,s1,864 # 80009bd8 <uart_tx_r>
    80000880:	00009997          	auipc	s3,0x9
    80000884:	36098993          	addi	s3,s3,864 # 80009be0 <uart_tx_w>
    80000888:	00594783          	lbu	a5,5(s2) # 10000005 <_entry-0x6ffffffb>
    8000088c:	0ff7f793          	andi	a5,a5,255
    80000890:	0207f793          	andi	a5,a5,32
    80000894:	c785                	beqz	a5,800008bc <uartstart+0x76>
    80000896:	01f77793          	andi	a5,a4,31
    8000089a:	97d2                	add	a5,a5,s4
    8000089c:	0187ca83          	lbu	s5,24(a5)
    800008a0:	0705                	addi	a4,a4,1
    800008a2:	e098                	sd	a4,0(s1)
    800008a4:	8526                	mv	a0,s1
    800008a6:	00002097          	auipc	ra,0x2
    800008aa:	cca080e7          	jalr	-822(ra) # 80002570 <wakeup>
    800008ae:	01590023          	sb	s5,0(s2)
    800008b2:	6098                	ld	a4,0(s1)
    800008b4:	0009b783          	ld	a5,0(s3)
    800008b8:	fce798e3          	bne	a5,a4,80000888 <uartstart+0x42>
    800008bc:	70e2                	ld	ra,56(sp)
    800008be:	7442                	ld	s0,48(sp)
    800008c0:	74a2                	ld	s1,40(sp)
    800008c2:	7902                	ld	s2,32(sp)
    800008c4:	69e2                	ld	s3,24(sp)
    800008c6:	6a42                	ld	s4,16(sp)
    800008c8:	6aa2                	ld	s5,8(sp)
    800008ca:	6121                	addi	sp,sp,64
    800008cc:	8082                	ret
    800008ce:	8082                	ret

00000000800008d0 <uartputc>:
    800008d0:	7179                	addi	sp,sp,-48
    800008d2:	f406                	sd	ra,40(sp)
    800008d4:	f022                	sd	s0,32(sp)
    800008d6:	ec26                	sd	s1,24(sp)
    800008d8:	e84a                	sd	s2,16(sp)
    800008da:	e44e                	sd	s3,8(sp)
    800008dc:	e052                	sd	s4,0(sp)
    800008de:	1800                	addi	s0,sp,48
    800008e0:	89aa                	mv	s3,a0
    800008e2:	00011517          	auipc	a0,0x11
    800008e6:	53650513          	addi	a0,a0,1334 # 80011e18 <uart_tx_lock>
    800008ea:	00000097          	auipc	ra,0x0
    800008ee:	504080e7          	jalr	1284(ra) # 80000dee <acquire>
    800008f2:	00009797          	auipc	a5,0x9
    800008f6:	2de7a783          	lw	a5,734(a5) # 80009bd0 <panicked>
    800008fa:	e7c9                	bnez	a5,80000984 <uartputc+0xb4>
    800008fc:	00009797          	auipc	a5,0x9
    80000900:	2e47b783          	ld	a5,740(a5) # 80009be0 <uart_tx_w>
    80000904:	00009717          	auipc	a4,0x9
    80000908:	2d473703          	ld	a4,724(a4) # 80009bd8 <uart_tx_r>
    8000090c:	02070713          	addi	a4,a4,32
    80000910:	00011a17          	auipc	s4,0x11
    80000914:	508a0a13          	addi	s4,s4,1288 # 80011e18 <uart_tx_lock>
    80000918:	00009497          	auipc	s1,0x9
    8000091c:	2c048493          	addi	s1,s1,704 # 80009bd8 <uart_tx_r>
    80000920:	00009917          	auipc	s2,0x9
    80000924:	2c090913          	addi	s2,s2,704 # 80009be0 <uart_tx_w>
    80000928:	00f71f63          	bne	a4,a5,80000946 <uartputc+0x76>
    8000092c:	85d2                	mv	a1,s4
    8000092e:	8526                	mv	a0,s1
    80000930:	00002097          	auipc	ra,0x2
    80000934:	bca080e7          	jalr	-1078(ra) # 800024fa <sleep>
    80000938:	00093783          	ld	a5,0(s2)
    8000093c:	6098                	ld	a4,0(s1)
    8000093e:	02070713          	addi	a4,a4,32
    80000942:	fef705e3          	beq	a4,a5,8000092c <uartputc+0x5c>
    80000946:	00011497          	auipc	s1,0x11
    8000094a:	4d248493          	addi	s1,s1,1234 # 80011e18 <uart_tx_lock>
    8000094e:	01f7f713          	andi	a4,a5,31
    80000952:	9726                	add	a4,a4,s1
    80000954:	01370c23          	sb	s3,24(a4)
    80000958:	0785                	addi	a5,a5,1
    8000095a:	00009717          	auipc	a4,0x9
    8000095e:	28f73323          	sd	a5,646(a4) # 80009be0 <uart_tx_w>
    80000962:	00000097          	auipc	ra,0x0
    80000966:	ee4080e7          	jalr	-284(ra) # 80000846 <uartstart>
    8000096a:	8526                	mv	a0,s1
    8000096c:	00000097          	auipc	ra,0x0
    80000970:	536080e7          	jalr	1334(ra) # 80000ea2 <release>
    80000974:	70a2                	ld	ra,40(sp)
    80000976:	7402                	ld	s0,32(sp)
    80000978:	64e2                	ld	s1,24(sp)
    8000097a:	6942                	ld	s2,16(sp)
    8000097c:	69a2                	ld	s3,8(sp)
    8000097e:	6a02                	ld	s4,0(sp)
    80000980:	6145                	addi	sp,sp,48
    80000982:	8082                	ret
    80000984:	a001                	j	80000984 <uartputc+0xb4>

0000000080000986 <uartgetc>:
    80000986:	1141                	addi	sp,sp,-16
    80000988:	e422                	sd	s0,8(sp)
    8000098a:	0800                	addi	s0,sp,16
    8000098c:	100007b7          	lui	a5,0x10000
    80000990:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80000994:	8b85                	andi	a5,a5,1
    80000996:	cb91                	beqz	a5,800009aa <uartgetc+0x24>
    80000998:	100007b7          	lui	a5,0x10000
    8000099c:	0007c503          	lbu	a0,0(a5) # 10000000 <_entry-0x70000000>
    800009a0:	0ff57513          	andi	a0,a0,255
    800009a4:	6422                	ld	s0,8(sp)
    800009a6:	0141                	addi	sp,sp,16
    800009a8:	8082                	ret
    800009aa:	557d                	li	a0,-1
    800009ac:	bfe5                	j	800009a4 <uartgetc+0x1e>

00000000800009ae <uartintr>:
    800009ae:	1101                	addi	sp,sp,-32
    800009b0:	ec06                	sd	ra,24(sp)
    800009b2:	e822                	sd	s0,16(sp)
    800009b4:	e426                	sd	s1,8(sp)
    800009b6:	1000                	addi	s0,sp,32
    800009b8:	54fd                	li	s1,-1
    800009ba:	00000097          	auipc	ra,0x0
    800009be:	fcc080e7          	jalr	-52(ra) # 80000986 <uartgetc>
    800009c2:	00950763          	beq	a0,s1,800009d0 <uartintr+0x22>
    800009c6:	00000097          	auipc	ra,0x0
    800009ca:	8fe080e7          	jalr	-1794(ra) # 800002c4 <consoleintr>
    800009ce:	b7f5                	j	800009ba <uartintr+0xc>
    800009d0:	00011497          	auipc	s1,0x11
    800009d4:	44848493          	addi	s1,s1,1096 # 80011e18 <uart_tx_lock>
    800009d8:	8526                	mv	a0,s1
    800009da:	00000097          	auipc	ra,0x0
    800009de:	414080e7          	jalr	1044(ra) # 80000dee <acquire>
    800009e2:	00000097          	auipc	ra,0x0
    800009e6:	e64080e7          	jalr	-412(ra) # 80000846 <uartstart>
    800009ea:	8526                	mv	a0,s1
    800009ec:	00000097          	auipc	ra,0x0
    800009f0:	4b6080e7          	jalr	1206(ra) # 80000ea2 <release>
    800009f4:	60e2                	ld	ra,24(sp)
    800009f6:	6442                	ld	s0,16(sp)
    800009f8:	64a2                	ld	s1,8(sp)
    800009fa:	6105                	addi	sp,sp,32
    800009fc:	8082                	ret

00000000800009fe <init_page_ref>:
    800009fe:	1141                	addi	sp,sp,-16
    80000a00:	e406                	sd	ra,8(sp)
    80000a02:	e022                	sd	s0,0(sp)
    80000a04:	0800                	addi	s0,sp,16
    80000a06:	00008597          	auipc	a1,0x8
    80000a0a:	65a58593          	addi	a1,a1,1626 # 80009060 <digits+0x20>
    80000a0e:	00011517          	auipc	a0,0x11
    80000a12:	46250513          	addi	a0,a0,1122 # 80011e70 <page_ref>
    80000a16:	00000097          	auipc	ra,0x0
    80000a1a:	348080e7          	jalr	840(ra) # 80000d5e <initlock>
    80000a1e:	00011517          	auipc	a0,0x11
    80000a22:	45250513          	addi	a0,a0,1106 # 80011e70 <page_ref>
    80000a26:	00000097          	auipc	ra,0x0
    80000a2a:	3c8080e7          	jalr	968(ra) # 80000dee <acquire>
    80000a2e:	00011797          	auipc	a5,0x11
    80000a32:	45a78793          	addi	a5,a5,1114 # 80011e88 <page_ref+0x18>
    80000a36:	00231717          	auipc	a4,0x231
    80000a3a:	45270713          	addi	a4,a4,1106 # 80231e88 <pid_lock>
    80000a3e:	0007a023          	sw	zero,0(a5)
    80000a42:	0791                	addi	a5,a5,4
    80000a44:	fee79de3          	bne	a5,a4,80000a3e <init_page_ref+0x40>
    80000a48:	00011517          	auipc	a0,0x11
    80000a4c:	42850513          	addi	a0,a0,1064 # 80011e70 <page_ref>
    80000a50:	00000097          	auipc	ra,0x0
    80000a54:	452080e7          	jalr	1106(ra) # 80000ea2 <release>
    80000a58:	60a2                	ld	ra,8(sp)
    80000a5a:	6402                	ld	s0,0(sp)
    80000a5c:	0141                	addi	sp,sp,16
    80000a5e:	8082                	ret

0000000080000a60 <kfree>:
    80000a60:	1101                	addi	sp,sp,-32
    80000a62:	ec06                	sd	ra,24(sp)
    80000a64:	e822                	sd	s0,16(sp)
    80000a66:	e426                	sd	s1,8(sp)
    80000a68:	e04a                	sd	s2,0(sp)
    80000a6a:	1000                	addi	s0,sp,32
    80000a6c:	84aa                	mv	s1,a0
    80000a6e:	00011517          	auipc	a0,0x11
    80000a72:	40250513          	addi	a0,a0,1026 # 80011e70 <page_ref>
    80000a76:	00000097          	auipc	ra,0x0
    80000a7a:	378080e7          	jalr	888(ra) # 80000dee <acquire>
    80000a7e:	00c4d793          	srli	a5,s1,0xc
    80000a82:	00478713          	addi	a4,a5,4
    80000a86:	00271693          	slli	a3,a4,0x2
    80000a8a:	00011717          	auipc	a4,0x11
    80000a8e:	3e670713          	addi	a4,a4,998 # 80011e70 <page_ref>
    80000a92:	9736                	add	a4,a4,a3
    80000a94:	4718                	lw	a4,8(a4)
    80000a96:	06e05763          	blez	a4,80000b04 <kfree+0xa4>
    80000a9a:	377d                	addiw	a4,a4,-1
    80000a9c:	0007061b          	sext.w	a2,a4
    80000aa0:	0791                	addi	a5,a5,4
    80000aa2:	078a                	slli	a5,a5,0x2
    80000aa4:	00011697          	auipc	a3,0x11
    80000aa8:	3cc68693          	addi	a3,a3,972 # 80011e70 <page_ref>
    80000aac:	97b6                	add	a5,a5,a3
    80000aae:	c798                	sw	a4,8(a5)
    80000ab0:	06c04263          	bgtz	a2,80000b14 <kfree+0xb4>
    80000ab4:	00011517          	auipc	a0,0x11
    80000ab8:	3bc50513          	addi	a0,a0,956 # 80011e70 <page_ref>
    80000abc:	00000097          	auipc	ra,0x0
    80000ac0:	3e6080e7          	jalr	998(ra) # 80000ea2 <release>
    80000ac4:	6605                	lui	a2,0x1
    80000ac6:	4585                	li	a1,1
    80000ac8:	8526                	mv	a0,s1
    80000aca:	00000097          	auipc	ra,0x0
    80000ace:	420080e7          	jalr	1056(ra) # 80000eea <memset>
    80000ad2:	00011917          	auipc	s2,0x11
    80000ad6:	37e90913          	addi	s2,s2,894 # 80011e50 <kmem>
    80000ada:	854a                	mv	a0,s2
    80000adc:	00000097          	auipc	ra,0x0
    80000ae0:	312080e7          	jalr	786(ra) # 80000dee <acquire>
    80000ae4:	01893783          	ld	a5,24(s2)
    80000ae8:	e09c                	sd	a5,0(s1)
    80000aea:	00993c23          	sd	s1,24(s2)
    80000aee:	854a                	mv	a0,s2
    80000af0:	00000097          	auipc	ra,0x0
    80000af4:	3b2080e7          	jalr	946(ra) # 80000ea2 <release>
    80000af8:	60e2                	ld	ra,24(sp)
    80000afa:	6442                	ld	s0,16(sp)
    80000afc:	64a2                	ld	s1,8(sp)
    80000afe:	6902                	ld	s2,0(sp)
    80000b00:	6105                	addi	sp,sp,32
    80000b02:	8082                	ret
    80000b04:	00008517          	auipc	a0,0x8
    80000b08:	56c50513          	addi	a0,a0,1388 # 80009070 <digits+0x30>
    80000b0c:	00000097          	auipc	ra,0x0
    80000b10:	a38080e7          	jalr	-1480(ra) # 80000544 <panic>
    80000b14:	8536                	mv	a0,a3
    80000b16:	00000097          	auipc	ra,0x0
    80000b1a:	38c080e7          	jalr	908(ra) # 80000ea2 <release>
    80000b1e:	bfe9                	j	80000af8 <kfree+0x98>

0000000080000b20 <dec_page_ref>:
    80000b20:	1101                	addi	sp,sp,-32
    80000b22:	ec06                	sd	ra,24(sp)
    80000b24:	e822                	sd	s0,16(sp)
    80000b26:	e426                	sd	s1,8(sp)
    80000b28:	1000                	addi	s0,sp,32
    80000b2a:	84aa                	mv	s1,a0
    80000b2c:	00011517          	auipc	a0,0x11
    80000b30:	34450513          	addi	a0,a0,836 # 80011e70 <page_ref>
    80000b34:	00000097          	auipc	ra,0x0
    80000b38:	2ba080e7          	jalr	698(ra) # 80000dee <acquire>
    80000b3c:	00c4d793          	srli	a5,s1,0xc
    80000b40:	00478713          	addi	a4,a5,4
    80000b44:	00271693          	slli	a3,a4,0x2
    80000b48:	00011717          	auipc	a4,0x11
    80000b4c:	32870713          	addi	a4,a4,808 # 80011e70 <page_ref>
    80000b50:	9736                	add	a4,a4,a3
    80000b52:	4718                	lw	a4,8(a4)
    80000b54:	02e05463          	blez	a4,80000b7c <dec_page_ref+0x5c>
    80000b58:	00011517          	auipc	a0,0x11
    80000b5c:	31850513          	addi	a0,a0,792 # 80011e70 <page_ref>
    80000b60:	0791                	addi	a5,a5,4
    80000b62:	078a                	slli	a5,a5,0x2
    80000b64:	97aa                	add	a5,a5,a0
    80000b66:	377d                	addiw	a4,a4,-1
    80000b68:	c798                	sw	a4,8(a5)
    80000b6a:	00000097          	auipc	ra,0x0
    80000b6e:	338080e7          	jalr	824(ra) # 80000ea2 <release>
    80000b72:	60e2                	ld	ra,24(sp)
    80000b74:	6442                	ld	s0,16(sp)
    80000b76:	64a2                	ld	s1,8(sp)
    80000b78:	6105                	addi	sp,sp,32
    80000b7a:	8082                	ret
    80000b7c:	00008517          	auipc	a0,0x8
    80000b80:	50450513          	addi	a0,a0,1284 # 80009080 <digits+0x40>
    80000b84:	00000097          	auipc	ra,0x0
    80000b88:	9c0080e7          	jalr	-1600(ra) # 80000544 <panic>

0000000080000b8c <inc_page_ref>:
    80000b8c:	1101                	addi	sp,sp,-32
    80000b8e:	ec06                	sd	ra,24(sp)
    80000b90:	e822                	sd	s0,16(sp)
    80000b92:	e426                	sd	s1,8(sp)
    80000b94:	1000                	addi	s0,sp,32
    80000b96:	84aa                	mv	s1,a0
    80000b98:	00011517          	auipc	a0,0x11
    80000b9c:	2d850513          	addi	a0,a0,728 # 80011e70 <page_ref>
    80000ba0:	00000097          	auipc	ra,0x0
    80000ba4:	24e080e7          	jalr	590(ra) # 80000dee <acquire>
    80000ba8:	00c4d793          	srli	a5,s1,0xc
    80000bac:	00478713          	addi	a4,a5,4
    80000bb0:	00271693          	slli	a3,a4,0x2
    80000bb4:	00011717          	auipc	a4,0x11
    80000bb8:	2bc70713          	addi	a4,a4,700 # 80011e70 <page_ref>
    80000bbc:	9736                	add	a4,a4,a3
    80000bbe:	4718                	lw	a4,8(a4)
    80000bc0:	02074463          	bltz	a4,80000be8 <inc_page_ref+0x5c>
    80000bc4:	00011517          	auipc	a0,0x11
    80000bc8:	2ac50513          	addi	a0,a0,684 # 80011e70 <page_ref>
    80000bcc:	0791                	addi	a5,a5,4
    80000bce:	078a                	slli	a5,a5,0x2
    80000bd0:	97aa                	add	a5,a5,a0
    80000bd2:	2705                	addiw	a4,a4,1
    80000bd4:	c798                	sw	a4,8(a5)
    80000bd6:	00000097          	auipc	ra,0x0
    80000bda:	2cc080e7          	jalr	716(ra) # 80000ea2 <release>
    80000bde:	60e2                	ld	ra,24(sp)
    80000be0:	6442                	ld	s0,16(sp)
    80000be2:	64a2                	ld	s1,8(sp)
    80000be4:	6105                	addi	sp,sp,32
    80000be6:	8082                	ret
    80000be8:	00008517          	auipc	a0,0x8
    80000bec:	4b050513          	addi	a0,a0,1200 # 80009098 <digits+0x58>
    80000bf0:	00000097          	auipc	ra,0x0
    80000bf4:	954080e7          	jalr	-1708(ra) # 80000544 <panic>

0000000080000bf8 <freerange>:
    80000bf8:	7139                	addi	sp,sp,-64
    80000bfa:	fc06                	sd	ra,56(sp)
    80000bfc:	f822                	sd	s0,48(sp)
    80000bfe:	f426                	sd	s1,40(sp)
    80000c00:	f04a                	sd	s2,32(sp)
    80000c02:	ec4e                	sd	s3,24(sp)
    80000c04:	e852                	sd	s4,16(sp)
    80000c06:	e456                	sd	s5,8(sp)
    80000c08:	0080                	addi	s0,sp,64
    80000c0a:	6785                	lui	a5,0x1
    80000c0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80000c10:	94aa                	add	s1,s1,a0
    80000c12:	757d                	lui	a0,0xfffff
    80000c14:	8ce9                	and	s1,s1,a0
    80000c16:	94be                	add	s1,s1,a5
    80000c18:	0295e463          	bltu	a1,s1,80000c40 <freerange+0x48>
    80000c1c:	89ae                	mv	s3,a1
    80000c1e:	7afd                	lui	s5,0xfffff
    80000c20:	6a05                	lui	s4,0x1
    80000c22:	01548933          	add	s2,s1,s5
    80000c26:	854a                	mv	a0,s2
    80000c28:	00000097          	auipc	ra,0x0
    80000c2c:	f64080e7          	jalr	-156(ra) # 80000b8c <inc_page_ref>
    80000c30:	854a                	mv	a0,s2
    80000c32:	00000097          	auipc	ra,0x0
    80000c36:	e2e080e7          	jalr	-466(ra) # 80000a60 <kfree>
    80000c3a:	94d2                	add	s1,s1,s4
    80000c3c:	fe99f3e3          	bgeu	s3,s1,80000c22 <freerange+0x2a>
    80000c40:	70e2                	ld	ra,56(sp)
    80000c42:	7442                	ld	s0,48(sp)
    80000c44:	74a2                	ld	s1,40(sp)
    80000c46:	7902                	ld	s2,32(sp)
    80000c48:	69e2                	ld	s3,24(sp)
    80000c4a:	6a42                	ld	s4,16(sp)
    80000c4c:	6aa2                	ld	s5,8(sp)
    80000c4e:	6121                	addi	sp,sp,64
    80000c50:	8082                	ret

0000000080000c52 <kinit>:
    80000c52:	1141                	addi	sp,sp,-16
    80000c54:	e406                	sd	ra,8(sp)
    80000c56:	e022                	sd	s0,0(sp)
    80000c58:	0800                	addi	s0,sp,16
    80000c5a:	00000097          	auipc	ra,0x0
    80000c5e:	da4080e7          	jalr	-604(ra) # 800009fe <init_page_ref>
    80000c62:	00008597          	auipc	a1,0x8
    80000c66:	44e58593          	addi	a1,a1,1102 # 800090b0 <digits+0x70>
    80000c6a:	00011517          	auipc	a0,0x11
    80000c6e:	1e650513          	addi	a0,a0,486 # 80011e50 <kmem>
    80000c72:	00000097          	auipc	ra,0x0
    80000c76:	0ec080e7          	jalr	236(ra) # 80000d5e <initlock>
    80000c7a:	45c5                	li	a1,17
    80000c7c:	05ee                	slli	a1,a1,0x1b
    80000c7e:	00246517          	auipc	a0,0x246
    80000c82:	41250513          	addi	a0,a0,1042 # 80247090 <end>
    80000c86:	00000097          	auipc	ra,0x0
    80000c8a:	f72080e7          	jalr	-142(ra) # 80000bf8 <freerange>
    80000c8e:	60a2                	ld	ra,8(sp)
    80000c90:	6402                	ld	s0,0(sp)
    80000c92:	0141                	addi	sp,sp,16
    80000c94:	8082                	ret

0000000080000c96 <kalloc>:
    80000c96:	1101                	addi	sp,sp,-32
    80000c98:	ec06                	sd	ra,24(sp)
    80000c9a:	e822                	sd	s0,16(sp)
    80000c9c:	e426                	sd	s1,8(sp)
    80000c9e:	1000                	addi	s0,sp,32
    80000ca0:	00011497          	auipc	s1,0x11
    80000ca4:	1b048493          	addi	s1,s1,432 # 80011e50 <kmem>
    80000ca8:	8526                	mv	a0,s1
    80000caa:	00000097          	auipc	ra,0x0
    80000cae:	144080e7          	jalr	324(ra) # 80000dee <acquire>
    80000cb2:	6c84                	ld	s1,24(s1)
    80000cb4:	cc8d                	beqz	s1,80000cee <kalloc+0x58>
    80000cb6:	609c                	ld	a5,0(s1)
    80000cb8:	00011517          	auipc	a0,0x11
    80000cbc:	19850513          	addi	a0,a0,408 # 80011e50 <kmem>
    80000cc0:	ed1c                	sd	a5,24(a0)
    80000cc2:	00000097          	auipc	ra,0x0
    80000cc6:	1e0080e7          	jalr	480(ra) # 80000ea2 <release>
    80000cca:	6605                	lui	a2,0x1
    80000ccc:	4595                	li	a1,5
    80000cce:	8526                	mv	a0,s1
    80000cd0:	00000097          	auipc	ra,0x0
    80000cd4:	21a080e7          	jalr	538(ra) # 80000eea <memset>
    80000cd8:	8526                	mv	a0,s1
    80000cda:	00000097          	auipc	ra,0x0
    80000cde:	eb2080e7          	jalr	-334(ra) # 80000b8c <inc_page_ref>
    80000ce2:	8526                	mv	a0,s1
    80000ce4:	60e2                	ld	ra,24(sp)
    80000ce6:	6442                	ld	s0,16(sp)
    80000ce8:	64a2                	ld	s1,8(sp)
    80000cea:	6105                	addi	sp,sp,32
    80000cec:	8082                	ret
    80000cee:	00011517          	auipc	a0,0x11
    80000cf2:	16250513          	addi	a0,a0,354 # 80011e50 <kmem>
    80000cf6:	00000097          	auipc	ra,0x0
    80000cfa:	1ac080e7          	jalr	428(ra) # 80000ea2 <release>
    80000cfe:	b7d5                	j	80000ce2 <kalloc+0x4c>

0000000080000d00 <get_page_ref>:
    80000d00:	1101                	addi	sp,sp,-32
    80000d02:	ec06                	sd	ra,24(sp)
    80000d04:	e822                	sd	s0,16(sp)
    80000d06:	e426                	sd	s1,8(sp)
    80000d08:	1000                	addi	s0,sp,32
    80000d0a:	84aa                	mv	s1,a0
    80000d0c:	00011517          	auipc	a0,0x11
    80000d10:	16450513          	addi	a0,a0,356 # 80011e70 <page_ref>
    80000d14:	00000097          	auipc	ra,0x0
    80000d18:	0da080e7          	jalr	218(ra) # 80000dee <acquire>
    80000d1c:	80b1                	srli	s1,s1,0xc
    80000d1e:	0491                	addi	s1,s1,4
    80000d20:	048a                	slli	s1,s1,0x2
    80000d22:	00011797          	auipc	a5,0x11
    80000d26:	14e78793          	addi	a5,a5,334 # 80011e70 <page_ref>
    80000d2a:	94be                	add	s1,s1,a5
    80000d2c:	4484                	lw	s1,8(s1)
    80000d2e:	0204c063          	bltz	s1,80000d4e <get_page_ref+0x4e>
    80000d32:	00011517          	auipc	a0,0x11
    80000d36:	13e50513          	addi	a0,a0,318 # 80011e70 <page_ref>
    80000d3a:	00000097          	auipc	ra,0x0
    80000d3e:	168080e7          	jalr	360(ra) # 80000ea2 <release>
    80000d42:	8526                	mv	a0,s1
    80000d44:	60e2                	ld	ra,24(sp)
    80000d46:	6442                	ld	s0,16(sp)
    80000d48:	64a2                	ld	s1,8(sp)
    80000d4a:	6105                	addi	sp,sp,32
    80000d4c:	8082                	ret
    80000d4e:	00008517          	auipc	a0,0x8
    80000d52:	36a50513          	addi	a0,a0,874 # 800090b8 <digits+0x78>
    80000d56:	fffff097          	auipc	ra,0xfffff
    80000d5a:	7ee080e7          	jalr	2030(ra) # 80000544 <panic>

0000000080000d5e <initlock>:
    80000d5e:	1141                	addi	sp,sp,-16
    80000d60:	e422                	sd	s0,8(sp)
    80000d62:	0800                	addi	s0,sp,16
    80000d64:	e50c                	sd	a1,8(a0)
    80000d66:	00052023          	sw	zero,0(a0)
    80000d6a:	00053823          	sd	zero,16(a0)
    80000d6e:	6422                	ld	s0,8(sp)
    80000d70:	0141                	addi	sp,sp,16
    80000d72:	8082                	ret

0000000080000d74 <holding>:
    80000d74:	411c                	lw	a5,0(a0)
    80000d76:	e399                	bnez	a5,80000d7c <holding+0x8>
    80000d78:	4501                	li	a0,0
    80000d7a:	8082                	ret
    80000d7c:	1101                	addi	sp,sp,-32
    80000d7e:	ec06                	sd	ra,24(sp)
    80000d80:	e822                	sd	s0,16(sp)
    80000d82:	e426                	sd	s1,8(sp)
    80000d84:	1000                	addi	s0,sp,32
    80000d86:	6904                	ld	s1,16(a0)
    80000d88:	00001097          	auipc	ra,0x1
    80000d8c:	074080e7          	jalr	116(ra) # 80001dfc <mycpu>
    80000d90:	40a48533          	sub	a0,s1,a0
    80000d94:	00153513          	seqz	a0,a0
    80000d98:	60e2                	ld	ra,24(sp)
    80000d9a:	6442                	ld	s0,16(sp)
    80000d9c:	64a2                	ld	s1,8(sp)
    80000d9e:	6105                	addi	sp,sp,32
    80000da0:	8082                	ret

0000000080000da2 <push_off>:
    80000da2:	1101                	addi	sp,sp,-32
    80000da4:	ec06                	sd	ra,24(sp)
    80000da6:	e822                	sd	s0,16(sp)
    80000da8:	e426                	sd	s1,8(sp)
    80000daa:	1000                	addi	s0,sp,32
    80000dac:	100024f3          	csrr	s1,sstatus
    80000db0:	100027f3          	csrr	a5,sstatus
    80000db4:	9bf5                	andi	a5,a5,-3
    80000db6:	10079073          	csrw	sstatus,a5
    80000dba:	00001097          	auipc	ra,0x1
    80000dbe:	042080e7          	jalr	66(ra) # 80001dfc <mycpu>
    80000dc2:	5d3c                	lw	a5,120(a0)
    80000dc4:	cf89                	beqz	a5,80000dde <push_off+0x3c>
    80000dc6:	00001097          	auipc	ra,0x1
    80000dca:	036080e7          	jalr	54(ra) # 80001dfc <mycpu>
    80000dce:	5d3c                	lw	a5,120(a0)
    80000dd0:	2785                	addiw	a5,a5,1
    80000dd2:	dd3c                	sw	a5,120(a0)
    80000dd4:	60e2                	ld	ra,24(sp)
    80000dd6:	6442                	ld	s0,16(sp)
    80000dd8:	64a2                	ld	s1,8(sp)
    80000dda:	6105                	addi	sp,sp,32
    80000ddc:	8082                	ret
    80000dde:	00001097          	auipc	ra,0x1
    80000de2:	01e080e7          	jalr	30(ra) # 80001dfc <mycpu>
    80000de6:	8085                	srli	s1,s1,0x1
    80000de8:	8885                	andi	s1,s1,1
    80000dea:	dd64                	sw	s1,124(a0)
    80000dec:	bfe9                	j	80000dc6 <push_off+0x24>

0000000080000dee <acquire>:
    80000dee:	1101                	addi	sp,sp,-32
    80000df0:	ec06                	sd	ra,24(sp)
    80000df2:	e822                	sd	s0,16(sp)
    80000df4:	e426                	sd	s1,8(sp)
    80000df6:	1000                	addi	s0,sp,32
    80000df8:	84aa                	mv	s1,a0
    80000dfa:	00000097          	auipc	ra,0x0
    80000dfe:	fa8080e7          	jalr	-88(ra) # 80000da2 <push_off>
    80000e02:	8526                	mv	a0,s1
    80000e04:	00000097          	auipc	ra,0x0
    80000e08:	f70080e7          	jalr	-144(ra) # 80000d74 <holding>
    80000e0c:	4705                	li	a4,1
    80000e0e:	e115                	bnez	a0,80000e32 <acquire+0x44>
    80000e10:	87ba                	mv	a5,a4
    80000e12:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80000e16:	2781                	sext.w	a5,a5
    80000e18:	ffe5                	bnez	a5,80000e10 <acquire+0x22>
    80000e1a:	0ff0000f          	fence
    80000e1e:	00001097          	auipc	ra,0x1
    80000e22:	fde080e7          	jalr	-34(ra) # 80001dfc <mycpu>
    80000e26:	e888                	sd	a0,16(s1)
    80000e28:	60e2                	ld	ra,24(sp)
    80000e2a:	6442                	ld	s0,16(sp)
    80000e2c:	64a2                	ld	s1,8(sp)
    80000e2e:	6105                	addi	sp,sp,32
    80000e30:	8082                	ret
    80000e32:	00008517          	auipc	a0,0x8
    80000e36:	29e50513          	addi	a0,a0,670 # 800090d0 <digits+0x90>
    80000e3a:	fffff097          	auipc	ra,0xfffff
    80000e3e:	70a080e7          	jalr	1802(ra) # 80000544 <panic>

0000000080000e42 <pop_off>:
    80000e42:	1141                	addi	sp,sp,-16
    80000e44:	e406                	sd	ra,8(sp)
    80000e46:	e022                	sd	s0,0(sp)
    80000e48:	0800                	addi	s0,sp,16
    80000e4a:	00001097          	auipc	ra,0x1
    80000e4e:	fb2080e7          	jalr	-78(ra) # 80001dfc <mycpu>
    80000e52:	100027f3          	csrr	a5,sstatus
    80000e56:	8b89                	andi	a5,a5,2
    80000e58:	e78d                	bnez	a5,80000e82 <pop_off+0x40>
    80000e5a:	5d3c                	lw	a5,120(a0)
    80000e5c:	02f05b63          	blez	a5,80000e92 <pop_off+0x50>
    80000e60:	37fd                	addiw	a5,a5,-1
    80000e62:	0007871b          	sext.w	a4,a5
    80000e66:	dd3c                	sw	a5,120(a0)
    80000e68:	eb09                	bnez	a4,80000e7a <pop_off+0x38>
    80000e6a:	5d7c                	lw	a5,124(a0)
    80000e6c:	c799                	beqz	a5,80000e7a <pop_off+0x38>
    80000e6e:	100027f3          	csrr	a5,sstatus
    80000e72:	0027e793          	ori	a5,a5,2
    80000e76:	10079073          	csrw	sstatus,a5
    80000e7a:	60a2                	ld	ra,8(sp)
    80000e7c:	6402                	ld	s0,0(sp)
    80000e7e:	0141                	addi	sp,sp,16
    80000e80:	8082                	ret
    80000e82:	00008517          	auipc	a0,0x8
    80000e86:	25650513          	addi	a0,a0,598 # 800090d8 <digits+0x98>
    80000e8a:	fffff097          	auipc	ra,0xfffff
    80000e8e:	6ba080e7          	jalr	1722(ra) # 80000544 <panic>
    80000e92:	00008517          	auipc	a0,0x8
    80000e96:	25e50513          	addi	a0,a0,606 # 800090f0 <digits+0xb0>
    80000e9a:	fffff097          	auipc	ra,0xfffff
    80000e9e:	6aa080e7          	jalr	1706(ra) # 80000544 <panic>

0000000080000ea2 <release>:
    80000ea2:	1101                	addi	sp,sp,-32
    80000ea4:	ec06                	sd	ra,24(sp)
    80000ea6:	e822                	sd	s0,16(sp)
    80000ea8:	e426                	sd	s1,8(sp)
    80000eaa:	1000                	addi	s0,sp,32
    80000eac:	84aa                	mv	s1,a0
    80000eae:	00000097          	auipc	ra,0x0
    80000eb2:	ec6080e7          	jalr	-314(ra) # 80000d74 <holding>
    80000eb6:	c115                	beqz	a0,80000eda <release+0x38>
    80000eb8:	0004b823          	sd	zero,16(s1)
    80000ebc:	0ff0000f          	fence
    80000ec0:	0f50000f          	fence	iorw,ow
    80000ec4:	0804a02f          	amoswap.w	zero,zero,(s1)
    80000ec8:	00000097          	auipc	ra,0x0
    80000ecc:	f7a080e7          	jalr	-134(ra) # 80000e42 <pop_off>
    80000ed0:	60e2                	ld	ra,24(sp)
    80000ed2:	6442                	ld	s0,16(sp)
    80000ed4:	64a2                	ld	s1,8(sp)
    80000ed6:	6105                	addi	sp,sp,32
    80000ed8:	8082                	ret
    80000eda:	00008517          	auipc	a0,0x8
    80000ede:	21e50513          	addi	a0,a0,542 # 800090f8 <digits+0xb8>
    80000ee2:	fffff097          	auipc	ra,0xfffff
    80000ee6:	662080e7          	jalr	1634(ra) # 80000544 <panic>

0000000080000eea <memset>:
    80000eea:	1141                	addi	sp,sp,-16
    80000eec:	e422                	sd	s0,8(sp)
    80000eee:	0800                	addi	s0,sp,16
    80000ef0:	ce09                	beqz	a2,80000f0a <memset+0x20>
    80000ef2:	87aa                	mv	a5,a0
    80000ef4:	fff6071b          	addiw	a4,a2,-1
    80000ef8:	1702                	slli	a4,a4,0x20
    80000efa:	9301                	srli	a4,a4,0x20
    80000efc:	0705                	addi	a4,a4,1
    80000efe:	972a                	add	a4,a4,a0
    80000f00:	00b78023          	sb	a1,0(a5)
    80000f04:	0785                	addi	a5,a5,1
    80000f06:	fee79de3          	bne	a5,a4,80000f00 <memset+0x16>
    80000f0a:	6422                	ld	s0,8(sp)
    80000f0c:	0141                	addi	sp,sp,16
    80000f0e:	8082                	ret

0000000080000f10 <memcmp>:
    80000f10:	1141                	addi	sp,sp,-16
    80000f12:	e422                	sd	s0,8(sp)
    80000f14:	0800                	addi	s0,sp,16
    80000f16:	ca05                	beqz	a2,80000f46 <memcmp+0x36>
    80000f18:	fff6069b          	addiw	a3,a2,-1
    80000f1c:	1682                	slli	a3,a3,0x20
    80000f1e:	9281                	srli	a3,a3,0x20
    80000f20:	0685                	addi	a3,a3,1
    80000f22:	96aa                	add	a3,a3,a0
    80000f24:	00054783          	lbu	a5,0(a0)
    80000f28:	0005c703          	lbu	a4,0(a1)
    80000f2c:	00e79863          	bne	a5,a4,80000f3c <memcmp+0x2c>
    80000f30:	0505                	addi	a0,a0,1
    80000f32:	0585                	addi	a1,a1,1
    80000f34:	fed518e3          	bne	a0,a3,80000f24 <memcmp+0x14>
    80000f38:	4501                	li	a0,0
    80000f3a:	a019                	j	80000f40 <memcmp+0x30>
    80000f3c:	40e7853b          	subw	a0,a5,a4
    80000f40:	6422                	ld	s0,8(sp)
    80000f42:	0141                	addi	sp,sp,16
    80000f44:	8082                	ret
    80000f46:	4501                	li	a0,0
    80000f48:	bfe5                	j	80000f40 <memcmp+0x30>

0000000080000f4a <memmove>:
    80000f4a:	1141                	addi	sp,sp,-16
    80000f4c:	e422                	sd	s0,8(sp)
    80000f4e:	0800                	addi	s0,sp,16
    80000f50:	ca0d                	beqz	a2,80000f82 <memmove+0x38>
    80000f52:	00a5f963          	bgeu	a1,a0,80000f64 <memmove+0x1a>
    80000f56:	02061693          	slli	a3,a2,0x20
    80000f5a:	9281                	srli	a3,a3,0x20
    80000f5c:	00d58733          	add	a4,a1,a3
    80000f60:	02e56463          	bltu	a0,a4,80000f88 <memmove+0x3e>
    80000f64:	fff6079b          	addiw	a5,a2,-1
    80000f68:	1782                	slli	a5,a5,0x20
    80000f6a:	9381                	srli	a5,a5,0x20
    80000f6c:	0785                	addi	a5,a5,1
    80000f6e:	97ae                	add	a5,a5,a1
    80000f70:	872a                	mv	a4,a0
    80000f72:	0585                	addi	a1,a1,1
    80000f74:	0705                	addi	a4,a4,1
    80000f76:	fff5c683          	lbu	a3,-1(a1)
    80000f7a:	fed70fa3          	sb	a3,-1(a4)
    80000f7e:	fef59ae3          	bne	a1,a5,80000f72 <memmove+0x28>
    80000f82:	6422                	ld	s0,8(sp)
    80000f84:	0141                	addi	sp,sp,16
    80000f86:	8082                	ret
    80000f88:	96aa                	add	a3,a3,a0
    80000f8a:	fff6079b          	addiw	a5,a2,-1
    80000f8e:	1782                	slli	a5,a5,0x20
    80000f90:	9381                	srli	a5,a5,0x20
    80000f92:	fff7c793          	not	a5,a5
    80000f96:	97ba                	add	a5,a5,a4
    80000f98:	177d                	addi	a4,a4,-1
    80000f9a:	16fd                	addi	a3,a3,-1
    80000f9c:	00074603          	lbu	a2,0(a4)
    80000fa0:	00c68023          	sb	a2,0(a3)
    80000fa4:	fef71ae3          	bne	a4,a5,80000f98 <memmove+0x4e>
    80000fa8:	bfe9                	j	80000f82 <memmove+0x38>

0000000080000faa <memcpy>:
    80000faa:	1141                	addi	sp,sp,-16
    80000fac:	e406                	sd	ra,8(sp)
    80000fae:	e022                	sd	s0,0(sp)
    80000fb0:	0800                	addi	s0,sp,16
    80000fb2:	00000097          	auipc	ra,0x0
    80000fb6:	f98080e7          	jalr	-104(ra) # 80000f4a <memmove>
    80000fba:	60a2                	ld	ra,8(sp)
    80000fbc:	6402                	ld	s0,0(sp)
    80000fbe:	0141                	addi	sp,sp,16
    80000fc0:	8082                	ret

0000000080000fc2 <strncmp>:
    80000fc2:	1141                	addi	sp,sp,-16
    80000fc4:	e422                	sd	s0,8(sp)
    80000fc6:	0800                	addi	s0,sp,16
    80000fc8:	ce11                	beqz	a2,80000fe4 <strncmp+0x22>
    80000fca:	00054783          	lbu	a5,0(a0)
    80000fce:	cf89                	beqz	a5,80000fe8 <strncmp+0x26>
    80000fd0:	0005c703          	lbu	a4,0(a1)
    80000fd4:	00f71a63          	bne	a4,a5,80000fe8 <strncmp+0x26>
    80000fd8:	367d                	addiw	a2,a2,-1
    80000fda:	0505                	addi	a0,a0,1
    80000fdc:	0585                	addi	a1,a1,1
    80000fde:	f675                	bnez	a2,80000fca <strncmp+0x8>
    80000fe0:	4501                	li	a0,0
    80000fe2:	a809                	j	80000ff4 <strncmp+0x32>
    80000fe4:	4501                	li	a0,0
    80000fe6:	a039                	j	80000ff4 <strncmp+0x32>
    80000fe8:	ca09                	beqz	a2,80000ffa <strncmp+0x38>
    80000fea:	00054503          	lbu	a0,0(a0)
    80000fee:	0005c783          	lbu	a5,0(a1)
    80000ff2:	9d1d                	subw	a0,a0,a5
    80000ff4:	6422                	ld	s0,8(sp)
    80000ff6:	0141                	addi	sp,sp,16
    80000ff8:	8082                	ret
    80000ffa:	4501                	li	a0,0
    80000ffc:	bfe5                	j	80000ff4 <strncmp+0x32>

0000000080000ffe <strncpy>:
    80000ffe:	1141                	addi	sp,sp,-16
    80001000:	e422                	sd	s0,8(sp)
    80001002:	0800                	addi	s0,sp,16
    80001004:	872a                	mv	a4,a0
    80001006:	8832                	mv	a6,a2
    80001008:	367d                	addiw	a2,a2,-1
    8000100a:	01005963          	blez	a6,8000101c <strncpy+0x1e>
    8000100e:	0705                	addi	a4,a4,1
    80001010:	0005c783          	lbu	a5,0(a1)
    80001014:	fef70fa3          	sb	a5,-1(a4)
    80001018:	0585                	addi	a1,a1,1
    8000101a:	f7f5                	bnez	a5,80001006 <strncpy+0x8>
    8000101c:	00c05d63          	blez	a2,80001036 <strncpy+0x38>
    80001020:	86ba                	mv	a3,a4
    80001022:	0685                	addi	a3,a3,1
    80001024:	fe068fa3          	sb	zero,-1(a3)
    80001028:	fff6c793          	not	a5,a3
    8000102c:	9fb9                	addw	a5,a5,a4
    8000102e:	010787bb          	addw	a5,a5,a6
    80001032:	fef048e3          	bgtz	a5,80001022 <strncpy+0x24>
    80001036:	6422                	ld	s0,8(sp)
    80001038:	0141                	addi	sp,sp,16
    8000103a:	8082                	ret

000000008000103c <safestrcpy>:
    8000103c:	1141                	addi	sp,sp,-16
    8000103e:	e422                	sd	s0,8(sp)
    80001040:	0800                	addi	s0,sp,16
    80001042:	02c05363          	blez	a2,80001068 <safestrcpy+0x2c>
    80001046:	fff6069b          	addiw	a3,a2,-1
    8000104a:	1682                	slli	a3,a3,0x20
    8000104c:	9281                	srli	a3,a3,0x20
    8000104e:	96ae                	add	a3,a3,a1
    80001050:	87aa                	mv	a5,a0
    80001052:	00d58963          	beq	a1,a3,80001064 <safestrcpy+0x28>
    80001056:	0585                	addi	a1,a1,1
    80001058:	0785                	addi	a5,a5,1
    8000105a:	fff5c703          	lbu	a4,-1(a1)
    8000105e:	fee78fa3          	sb	a4,-1(a5)
    80001062:	fb65                	bnez	a4,80001052 <safestrcpy+0x16>
    80001064:	00078023          	sb	zero,0(a5)
    80001068:	6422                	ld	s0,8(sp)
    8000106a:	0141                	addi	sp,sp,16
    8000106c:	8082                	ret

000000008000106e <strlen>:
    8000106e:	1141                	addi	sp,sp,-16
    80001070:	e422                	sd	s0,8(sp)
    80001072:	0800                	addi	s0,sp,16
    80001074:	00054783          	lbu	a5,0(a0)
    80001078:	cf91                	beqz	a5,80001094 <strlen+0x26>
    8000107a:	0505                	addi	a0,a0,1
    8000107c:	87aa                	mv	a5,a0
    8000107e:	4685                	li	a3,1
    80001080:	9e89                	subw	a3,a3,a0
    80001082:	00f6853b          	addw	a0,a3,a5
    80001086:	0785                	addi	a5,a5,1
    80001088:	fff7c703          	lbu	a4,-1(a5)
    8000108c:	fb7d                	bnez	a4,80001082 <strlen+0x14>
    8000108e:	6422                	ld	s0,8(sp)
    80001090:	0141                	addi	sp,sp,16
    80001092:	8082                	ret
    80001094:	4501                	li	a0,0
    80001096:	bfe5                	j	8000108e <strlen+0x20>

0000000080001098 <main>:
    80001098:	1141                	addi	sp,sp,-16
    8000109a:	e406                	sd	ra,8(sp)
    8000109c:	e022                	sd	s0,0(sp)
    8000109e:	0800                	addi	s0,sp,16
    800010a0:	00001097          	auipc	ra,0x1
    800010a4:	d4c080e7          	jalr	-692(ra) # 80001dec <cpuid>
    800010a8:	00009717          	auipc	a4,0x9
    800010ac:	b4070713          	addi	a4,a4,-1216 # 80009be8 <started>
    800010b0:	c139                	beqz	a0,800010f6 <main+0x5e>
    800010b2:	431c                	lw	a5,0(a4)
    800010b4:	2781                	sext.w	a5,a5
    800010b6:	dff5                	beqz	a5,800010b2 <main+0x1a>
    800010b8:	0ff0000f          	fence
    800010bc:	00001097          	auipc	ra,0x1
    800010c0:	d30080e7          	jalr	-720(ra) # 80001dec <cpuid>
    800010c4:	85aa                	mv	a1,a0
    800010c6:	00008517          	auipc	a0,0x8
    800010ca:	05250513          	addi	a0,a0,82 # 80009118 <digits+0xd8>
    800010ce:	fffff097          	auipc	ra,0xfffff
    800010d2:	4c0080e7          	jalr	1216(ra) # 8000058e <printf>
    800010d6:	00000097          	auipc	ra,0x0
    800010da:	0d8080e7          	jalr	216(ra) # 800011ae <kvminithart>
    800010de:	00002097          	auipc	ra,0x2
    800010e2:	f8e080e7          	jalr	-114(ra) # 8000306c <trapinithart>
    800010e6:	00006097          	auipc	ra,0x6
    800010ea:	a2a080e7          	jalr	-1494(ra) # 80006b10 <plicinithart>
    800010ee:	00002097          	auipc	ra,0x2
    800010f2:	d1e080e7          	jalr	-738(ra) # 80002e0c <scheduler>
    800010f6:	fffff097          	auipc	ra,0xfffff
    800010fa:	360080e7          	jalr	864(ra) # 80000456 <consoleinit>
    800010fe:	fffff097          	auipc	ra,0xfffff
    80001102:	676080e7          	jalr	1654(ra) # 80000774 <printfinit>
    80001106:	00008517          	auipc	a0,0x8
    8000110a:	02250513          	addi	a0,a0,34 # 80009128 <digits+0xe8>
    8000110e:	fffff097          	auipc	ra,0xfffff
    80001112:	480080e7          	jalr	1152(ra) # 8000058e <printf>
    80001116:	00008517          	auipc	a0,0x8
    8000111a:	fea50513          	addi	a0,a0,-22 # 80009100 <digits+0xc0>
    8000111e:	fffff097          	auipc	ra,0xfffff
    80001122:	470080e7          	jalr	1136(ra) # 8000058e <printf>
    80001126:	00008517          	auipc	a0,0x8
    8000112a:	00250513          	addi	a0,a0,2 # 80009128 <digits+0xe8>
    8000112e:	fffff097          	auipc	ra,0xfffff
    80001132:	460080e7          	jalr	1120(ra) # 8000058e <printf>
    80001136:	00000097          	auipc	ra,0x0
    8000113a:	b1c080e7          	jalr	-1252(ra) # 80000c52 <kinit>
    8000113e:	00000097          	auipc	ra,0x0
    80001142:	326080e7          	jalr	806(ra) # 80001464 <kvminit>
    80001146:	00000097          	auipc	ra,0x0
    8000114a:	068080e7          	jalr	104(ra) # 800011ae <kvminithart>
    8000114e:	00001097          	auipc	ra,0x1
    80001152:	bca080e7          	jalr	-1078(ra) # 80001d18 <procinit>
    80001156:	00002097          	auipc	ra,0x2
    8000115a:	eee080e7          	jalr	-274(ra) # 80003044 <trapinit>
    8000115e:	00002097          	auipc	ra,0x2
    80001162:	f0e080e7          	jalr	-242(ra) # 8000306c <trapinithart>
    80001166:	00006097          	auipc	ra,0x6
    8000116a:	994080e7          	jalr	-1644(ra) # 80006afa <plicinit>
    8000116e:	00006097          	auipc	ra,0x6
    80001172:	9a2080e7          	jalr	-1630(ra) # 80006b10 <plicinithart>
    80001176:	00003097          	auipc	ra,0x3
    8000117a:	b4e080e7          	jalr	-1202(ra) # 80003cc4 <binit>
    8000117e:	00003097          	auipc	ra,0x3
    80001182:	1f2080e7          	jalr	498(ra) # 80004370 <iinit>
    80001186:	00004097          	auipc	ra,0x4
    8000118a:	190080e7          	jalr	400(ra) # 80005316 <fileinit>
    8000118e:	00006097          	auipc	ra,0x6
    80001192:	a8a080e7          	jalr	-1398(ra) # 80006c18 <virtio_disk_init>
    80001196:	00001097          	auipc	ra,0x1
    8000119a:	fc8080e7          	jalr	-56(ra) # 8000215e <userinit>
    8000119e:	0ff0000f          	fence
    800011a2:	4785                	li	a5,1
    800011a4:	00009717          	auipc	a4,0x9
    800011a8:	a4f72223          	sw	a5,-1468(a4) # 80009be8 <started>
    800011ac:	b789                	j	800010ee <main+0x56>

00000000800011ae <kvminithart>:
    800011ae:	1141                	addi	sp,sp,-16
    800011b0:	e422                	sd	s0,8(sp)
    800011b2:	0800                	addi	s0,sp,16
    800011b4:	12000073          	sfence.vma
    800011b8:	00009797          	auipc	a5,0x9
    800011bc:	a387b783          	ld	a5,-1480(a5) # 80009bf0 <kernel_pagetable>
    800011c0:	83b1                	srli	a5,a5,0xc
    800011c2:	577d                	li	a4,-1
    800011c4:	177e                	slli	a4,a4,0x3f
    800011c6:	8fd9                	or	a5,a5,a4
    800011c8:	18079073          	csrw	satp,a5
    800011cc:	12000073          	sfence.vma
    800011d0:	6422                	ld	s0,8(sp)
    800011d2:	0141                	addi	sp,sp,16
    800011d4:	8082                	ret

00000000800011d6 <walk>:
    800011d6:	7139                	addi	sp,sp,-64
    800011d8:	fc06                	sd	ra,56(sp)
    800011da:	f822                	sd	s0,48(sp)
    800011dc:	f426                	sd	s1,40(sp)
    800011de:	f04a                	sd	s2,32(sp)
    800011e0:	ec4e                	sd	s3,24(sp)
    800011e2:	e852                	sd	s4,16(sp)
    800011e4:	e456                	sd	s5,8(sp)
    800011e6:	e05a                	sd	s6,0(sp)
    800011e8:	0080                	addi	s0,sp,64
    800011ea:	84aa                	mv	s1,a0
    800011ec:	89ae                	mv	s3,a1
    800011ee:	8ab2                	mv	s5,a2
    800011f0:	57fd                	li	a5,-1
    800011f2:	83e9                	srli	a5,a5,0x1a
    800011f4:	4a79                	li	s4,30
    800011f6:	4b31                	li	s6,12
    800011f8:	04b7f263          	bgeu	a5,a1,8000123c <walk+0x66>
    800011fc:	00008517          	auipc	a0,0x8
    80001200:	f3450513          	addi	a0,a0,-204 # 80009130 <digits+0xf0>
    80001204:	fffff097          	auipc	ra,0xfffff
    80001208:	340080e7          	jalr	832(ra) # 80000544 <panic>
    8000120c:	060a8663          	beqz	s5,80001278 <walk+0xa2>
    80001210:	00000097          	auipc	ra,0x0
    80001214:	a86080e7          	jalr	-1402(ra) # 80000c96 <kalloc>
    80001218:	84aa                	mv	s1,a0
    8000121a:	c529                	beqz	a0,80001264 <walk+0x8e>
    8000121c:	6605                	lui	a2,0x1
    8000121e:	4581                	li	a1,0
    80001220:	00000097          	auipc	ra,0x0
    80001224:	cca080e7          	jalr	-822(ra) # 80000eea <memset>
    80001228:	00c4d793          	srli	a5,s1,0xc
    8000122c:	07aa                	slli	a5,a5,0xa
    8000122e:	0017e793          	ori	a5,a5,1
    80001232:	00f93023          	sd	a5,0(s2)
    80001236:	3a5d                	addiw	s4,s4,-9
    80001238:	036a0063          	beq	s4,s6,80001258 <walk+0x82>
    8000123c:	0149d933          	srl	s2,s3,s4
    80001240:	1ff97913          	andi	s2,s2,511
    80001244:	090e                	slli	s2,s2,0x3
    80001246:	9926                	add	s2,s2,s1
    80001248:	00093483          	ld	s1,0(s2)
    8000124c:	0014f793          	andi	a5,s1,1
    80001250:	dfd5                	beqz	a5,8000120c <walk+0x36>
    80001252:	80a9                	srli	s1,s1,0xa
    80001254:	04b2                	slli	s1,s1,0xc
    80001256:	b7c5                	j	80001236 <walk+0x60>
    80001258:	00c9d513          	srli	a0,s3,0xc
    8000125c:	1ff57513          	andi	a0,a0,511
    80001260:	050e                	slli	a0,a0,0x3
    80001262:	9526                	add	a0,a0,s1
    80001264:	70e2                	ld	ra,56(sp)
    80001266:	7442                	ld	s0,48(sp)
    80001268:	74a2                	ld	s1,40(sp)
    8000126a:	7902                	ld	s2,32(sp)
    8000126c:	69e2                	ld	s3,24(sp)
    8000126e:	6a42                	ld	s4,16(sp)
    80001270:	6aa2                	ld	s5,8(sp)
    80001272:	6b02                	ld	s6,0(sp)
    80001274:	6121                	addi	sp,sp,64
    80001276:	8082                	ret
    80001278:	4501                	li	a0,0
    8000127a:	b7ed                	j	80001264 <walk+0x8e>

000000008000127c <walkaddr>:
    8000127c:	57fd                	li	a5,-1
    8000127e:	83e9                	srli	a5,a5,0x1a
    80001280:	00b7f463          	bgeu	a5,a1,80001288 <walkaddr+0xc>
    80001284:	4501                	li	a0,0
    80001286:	8082                	ret
    80001288:	1141                	addi	sp,sp,-16
    8000128a:	e406                	sd	ra,8(sp)
    8000128c:	e022                	sd	s0,0(sp)
    8000128e:	0800                	addi	s0,sp,16
    80001290:	4601                	li	a2,0
    80001292:	00000097          	auipc	ra,0x0
    80001296:	f44080e7          	jalr	-188(ra) # 800011d6 <walk>
    8000129a:	c105                	beqz	a0,800012ba <walkaddr+0x3e>
    8000129c:	611c                	ld	a5,0(a0)
    8000129e:	0117f693          	andi	a3,a5,17
    800012a2:	4745                	li	a4,17
    800012a4:	4501                	li	a0,0
    800012a6:	00e68663          	beq	a3,a4,800012b2 <walkaddr+0x36>
    800012aa:	60a2                	ld	ra,8(sp)
    800012ac:	6402                	ld	s0,0(sp)
    800012ae:	0141                	addi	sp,sp,16
    800012b0:	8082                	ret
    800012b2:	00a7d513          	srli	a0,a5,0xa
    800012b6:	0532                	slli	a0,a0,0xc
    800012b8:	bfcd                	j	800012aa <walkaddr+0x2e>
    800012ba:	4501                	li	a0,0
    800012bc:	b7fd                	j	800012aa <walkaddr+0x2e>

00000000800012be <mappages>:
    800012be:	715d                	addi	sp,sp,-80
    800012c0:	e486                	sd	ra,72(sp)
    800012c2:	e0a2                	sd	s0,64(sp)
    800012c4:	fc26                	sd	s1,56(sp)
    800012c6:	f84a                	sd	s2,48(sp)
    800012c8:	f44e                	sd	s3,40(sp)
    800012ca:	f052                	sd	s4,32(sp)
    800012cc:	ec56                	sd	s5,24(sp)
    800012ce:	e85a                	sd	s6,16(sp)
    800012d0:	e45e                	sd	s7,8(sp)
    800012d2:	0880                	addi	s0,sp,80
    800012d4:	c205                	beqz	a2,800012f4 <mappages+0x36>
    800012d6:	8aaa                	mv	s5,a0
    800012d8:	8b3a                	mv	s6,a4
    800012da:	77fd                	lui	a5,0xfffff
    800012dc:	00f5fa33          	and	s4,a1,a5
    800012e0:	15fd                	addi	a1,a1,-1
    800012e2:	00c589b3          	add	s3,a1,a2
    800012e6:	00f9f9b3          	and	s3,s3,a5
    800012ea:	8952                	mv	s2,s4
    800012ec:	41468a33          	sub	s4,a3,s4
    800012f0:	6b85                	lui	s7,0x1
    800012f2:	a015                	j	80001316 <mappages+0x58>
    800012f4:	00008517          	auipc	a0,0x8
    800012f8:	e4450513          	addi	a0,a0,-444 # 80009138 <digits+0xf8>
    800012fc:	fffff097          	auipc	ra,0xfffff
    80001300:	248080e7          	jalr	584(ra) # 80000544 <panic>
    80001304:	00008517          	auipc	a0,0x8
    80001308:	e4450513          	addi	a0,a0,-444 # 80009148 <digits+0x108>
    8000130c:	fffff097          	auipc	ra,0xfffff
    80001310:	238080e7          	jalr	568(ra) # 80000544 <panic>
    80001314:	995e                	add	s2,s2,s7
    80001316:	012a04b3          	add	s1,s4,s2
    8000131a:	4605                	li	a2,1
    8000131c:	85ca                	mv	a1,s2
    8000131e:	8556                	mv	a0,s5
    80001320:	00000097          	auipc	ra,0x0
    80001324:	eb6080e7          	jalr	-330(ra) # 800011d6 <walk>
    80001328:	cd19                	beqz	a0,80001346 <mappages+0x88>
    8000132a:	611c                	ld	a5,0(a0)
    8000132c:	8b85                	andi	a5,a5,1
    8000132e:	fbf9                	bnez	a5,80001304 <mappages+0x46>
    80001330:	80b1                	srli	s1,s1,0xc
    80001332:	04aa                	slli	s1,s1,0xa
    80001334:	0164e4b3          	or	s1,s1,s6
    80001338:	0014e493          	ori	s1,s1,1
    8000133c:	e104                	sd	s1,0(a0)
    8000133e:	fd391be3          	bne	s2,s3,80001314 <mappages+0x56>
    80001342:	4501                	li	a0,0
    80001344:	a011                	j	80001348 <mappages+0x8a>
    80001346:	557d                	li	a0,-1
    80001348:	60a6                	ld	ra,72(sp)
    8000134a:	6406                	ld	s0,64(sp)
    8000134c:	74e2                	ld	s1,56(sp)
    8000134e:	7942                	ld	s2,48(sp)
    80001350:	79a2                	ld	s3,40(sp)
    80001352:	7a02                	ld	s4,32(sp)
    80001354:	6ae2                	ld	s5,24(sp)
    80001356:	6b42                	ld	s6,16(sp)
    80001358:	6ba2                	ld	s7,8(sp)
    8000135a:	6161                	addi	sp,sp,80
    8000135c:	8082                	ret

000000008000135e <kvmmap>:
    8000135e:	1141                	addi	sp,sp,-16
    80001360:	e406                	sd	ra,8(sp)
    80001362:	e022                	sd	s0,0(sp)
    80001364:	0800                	addi	s0,sp,16
    80001366:	87b6                	mv	a5,a3
    80001368:	86b2                	mv	a3,a2
    8000136a:	863e                	mv	a2,a5
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	f52080e7          	jalr	-174(ra) # 800012be <mappages>
    80001374:	e509                	bnez	a0,8000137e <kvmmap+0x20>
    80001376:	60a2                	ld	ra,8(sp)
    80001378:	6402                	ld	s0,0(sp)
    8000137a:	0141                	addi	sp,sp,16
    8000137c:	8082                	ret
    8000137e:	00008517          	auipc	a0,0x8
    80001382:	dda50513          	addi	a0,a0,-550 # 80009158 <digits+0x118>
    80001386:	fffff097          	auipc	ra,0xfffff
    8000138a:	1be080e7          	jalr	446(ra) # 80000544 <panic>

000000008000138e <kvmmake>:
    8000138e:	1101                	addi	sp,sp,-32
    80001390:	ec06                	sd	ra,24(sp)
    80001392:	e822                	sd	s0,16(sp)
    80001394:	e426                	sd	s1,8(sp)
    80001396:	e04a                	sd	s2,0(sp)
    80001398:	1000                	addi	s0,sp,32
    8000139a:	00000097          	auipc	ra,0x0
    8000139e:	8fc080e7          	jalr	-1796(ra) # 80000c96 <kalloc>
    800013a2:	84aa                	mv	s1,a0
    800013a4:	6605                	lui	a2,0x1
    800013a6:	4581                	li	a1,0
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	b42080e7          	jalr	-1214(ra) # 80000eea <memset>
    800013b0:	4719                	li	a4,6
    800013b2:	6685                	lui	a3,0x1
    800013b4:	10000637          	lui	a2,0x10000
    800013b8:	100005b7          	lui	a1,0x10000
    800013bc:	8526                	mv	a0,s1
    800013be:	00000097          	auipc	ra,0x0
    800013c2:	fa0080e7          	jalr	-96(ra) # 8000135e <kvmmap>
    800013c6:	4719                	li	a4,6
    800013c8:	6685                	lui	a3,0x1
    800013ca:	10001637          	lui	a2,0x10001
    800013ce:	100015b7          	lui	a1,0x10001
    800013d2:	8526                	mv	a0,s1
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	f8a080e7          	jalr	-118(ra) # 8000135e <kvmmap>
    800013dc:	4719                	li	a4,6
    800013de:	004006b7          	lui	a3,0x400
    800013e2:	0c000637          	lui	a2,0xc000
    800013e6:	0c0005b7          	lui	a1,0xc000
    800013ea:	8526                	mv	a0,s1
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	f72080e7          	jalr	-142(ra) # 8000135e <kvmmap>
    800013f4:	00008917          	auipc	s2,0x8
    800013f8:	c0c90913          	addi	s2,s2,-1012 # 80009000 <etext>
    800013fc:	4729                	li	a4,10
    800013fe:	80008697          	auipc	a3,0x80008
    80001402:	c0268693          	addi	a3,a3,-1022 # 9000 <_entry-0x7fff7000>
    80001406:	4605                	li	a2,1
    80001408:	067e                	slli	a2,a2,0x1f
    8000140a:	85b2                	mv	a1,a2
    8000140c:	8526                	mv	a0,s1
    8000140e:	00000097          	auipc	ra,0x0
    80001412:	f50080e7          	jalr	-176(ra) # 8000135e <kvmmap>
    80001416:	4719                	li	a4,6
    80001418:	46c5                	li	a3,17
    8000141a:	06ee                	slli	a3,a3,0x1b
    8000141c:	412686b3          	sub	a3,a3,s2
    80001420:	864a                	mv	a2,s2
    80001422:	85ca                	mv	a1,s2
    80001424:	8526                	mv	a0,s1
    80001426:	00000097          	auipc	ra,0x0
    8000142a:	f38080e7          	jalr	-200(ra) # 8000135e <kvmmap>
    8000142e:	4729                	li	a4,10
    80001430:	6685                	lui	a3,0x1
    80001432:	00007617          	auipc	a2,0x7
    80001436:	bce60613          	addi	a2,a2,-1074 # 80008000 <_trampoline>
    8000143a:	040005b7          	lui	a1,0x4000
    8000143e:	15fd                	addi	a1,a1,-1
    80001440:	05b2                	slli	a1,a1,0xc
    80001442:	8526                	mv	a0,s1
    80001444:	00000097          	auipc	ra,0x0
    80001448:	f1a080e7          	jalr	-230(ra) # 8000135e <kvmmap>
    8000144c:	8526                	mv	a0,s1
    8000144e:	00001097          	auipc	ra,0x1
    80001452:	834080e7          	jalr	-1996(ra) # 80001c82 <proc_mapstacks>
    80001456:	8526                	mv	a0,s1
    80001458:	60e2                	ld	ra,24(sp)
    8000145a:	6442                	ld	s0,16(sp)
    8000145c:	64a2                	ld	s1,8(sp)
    8000145e:	6902                	ld	s2,0(sp)
    80001460:	6105                	addi	sp,sp,32
    80001462:	8082                	ret

0000000080001464 <kvminit>:
    80001464:	1141                	addi	sp,sp,-16
    80001466:	e406                	sd	ra,8(sp)
    80001468:	e022                	sd	s0,0(sp)
    8000146a:	0800                	addi	s0,sp,16
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	f22080e7          	jalr	-222(ra) # 8000138e <kvmmake>
    80001474:	00008797          	auipc	a5,0x8
    80001478:	76a7be23          	sd	a0,1916(a5) # 80009bf0 <kernel_pagetable>
    8000147c:	60a2                	ld	ra,8(sp)
    8000147e:	6402                	ld	s0,0(sp)
    80001480:	0141                	addi	sp,sp,16
    80001482:	8082                	ret

0000000080001484 <uvmunmap>:
    80001484:	715d                	addi	sp,sp,-80
    80001486:	e486                	sd	ra,72(sp)
    80001488:	e0a2                	sd	s0,64(sp)
    8000148a:	fc26                	sd	s1,56(sp)
    8000148c:	f84a                	sd	s2,48(sp)
    8000148e:	f44e                	sd	s3,40(sp)
    80001490:	f052                	sd	s4,32(sp)
    80001492:	ec56                	sd	s5,24(sp)
    80001494:	e85a                	sd	s6,16(sp)
    80001496:	e45e                	sd	s7,8(sp)
    80001498:	0880                	addi	s0,sp,80
    8000149a:	03459793          	slli	a5,a1,0x34
    8000149e:	e795                	bnez	a5,800014ca <uvmunmap+0x46>
    800014a0:	8a2a                	mv	s4,a0
    800014a2:	892e                	mv	s2,a1
    800014a4:	8ab6                	mv	s5,a3
    800014a6:	0632                	slli	a2,a2,0xc
    800014a8:	00b609b3          	add	s3,a2,a1
    800014ac:	4b85                	li	s7,1
    800014ae:	6b05                	lui	s6,0x1
    800014b0:	0735e863          	bltu	a1,s3,80001520 <uvmunmap+0x9c>
    800014b4:	60a6                	ld	ra,72(sp)
    800014b6:	6406                	ld	s0,64(sp)
    800014b8:	74e2                	ld	s1,56(sp)
    800014ba:	7942                	ld	s2,48(sp)
    800014bc:	79a2                	ld	s3,40(sp)
    800014be:	7a02                	ld	s4,32(sp)
    800014c0:	6ae2                	ld	s5,24(sp)
    800014c2:	6b42                	ld	s6,16(sp)
    800014c4:	6ba2                	ld	s7,8(sp)
    800014c6:	6161                	addi	sp,sp,80
    800014c8:	8082                	ret
    800014ca:	00008517          	auipc	a0,0x8
    800014ce:	c9650513          	addi	a0,a0,-874 # 80009160 <digits+0x120>
    800014d2:	fffff097          	auipc	ra,0xfffff
    800014d6:	072080e7          	jalr	114(ra) # 80000544 <panic>
    800014da:	00008517          	auipc	a0,0x8
    800014de:	c9e50513          	addi	a0,a0,-866 # 80009178 <digits+0x138>
    800014e2:	fffff097          	auipc	ra,0xfffff
    800014e6:	062080e7          	jalr	98(ra) # 80000544 <panic>
    800014ea:	00008517          	auipc	a0,0x8
    800014ee:	c9e50513          	addi	a0,a0,-866 # 80009188 <digits+0x148>
    800014f2:	fffff097          	auipc	ra,0xfffff
    800014f6:	052080e7          	jalr	82(ra) # 80000544 <panic>
    800014fa:	00008517          	auipc	a0,0x8
    800014fe:	ca650513          	addi	a0,a0,-858 # 800091a0 <digits+0x160>
    80001502:	fffff097          	auipc	ra,0xfffff
    80001506:	042080e7          	jalr	66(ra) # 80000544 <panic>
    8000150a:	8129                	srli	a0,a0,0xa
    8000150c:	0532                	slli	a0,a0,0xc
    8000150e:	fffff097          	auipc	ra,0xfffff
    80001512:	552080e7          	jalr	1362(ra) # 80000a60 <kfree>
    80001516:	0004b023          	sd	zero,0(s1)
    8000151a:	995a                	add	s2,s2,s6
    8000151c:	f9397ce3          	bgeu	s2,s3,800014b4 <uvmunmap+0x30>
    80001520:	4601                	li	a2,0
    80001522:	85ca                	mv	a1,s2
    80001524:	8552                	mv	a0,s4
    80001526:	00000097          	auipc	ra,0x0
    8000152a:	cb0080e7          	jalr	-848(ra) # 800011d6 <walk>
    8000152e:	84aa                	mv	s1,a0
    80001530:	d54d                	beqz	a0,800014da <uvmunmap+0x56>
    80001532:	6108                	ld	a0,0(a0)
    80001534:	00157793          	andi	a5,a0,1
    80001538:	dbcd                	beqz	a5,800014ea <uvmunmap+0x66>
    8000153a:	3ff57793          	andi	a5,a0,1023
    8000153e:	fb778ee3          	beq	a5,s7,800014fa <uvmunmap+0x76>
    80001542:	fc0a8ae3          	beqz	s5,80001516 <uvmunmap+0x92>
    80001546:	b7d1                	j	8000150a <uvmunmap+0x86>

0000000080001548 <uvmcreate>:
    80001548:	1101                	addi	sp,sp,-32
    8000154a:	ec06                	sd	ra,24(sp)
    8000154c:	e822                	sd	s0,16(sp)
    8000154e:	e426                	sd	s1,8(sp)
    80001550:	1000                	addi	s0,sp,32
    80001552:	fffff097          	auipc	ra,0xfffff
    80001556:	744080e7          	jalr	1860(ra) # 80000c96 <kalloc>
    8000155a:	84aa                	mv	s1,a0
    8000155c:	c519                	beqz	a0,8000156a <uvmcreate+0x22>
    8000155e:	6605                	lui	a2,0x1
    80001560:	4581                	li	a1,0
    80001562:	00000097          	auipc	ra,0x0
    80001566:	988080e7          	jalr	-1656(ra) # 80000eea <memset>
    8000156a:	8526                	mv	a0,s1
    8000156c:	60e2                	ld	ra,24(sp)
    8000156e:	6442                	ld	s0,16(sp)
    80001570:	64a2                	ld	s1,8(sp)
    80001572:	6105                	addi	sp,sp,32
    80001574:	8082                	ret

0000000080001576 <uvmfirst>:
    80001576:	7179                	addi	sp,sp,-48
    80001578:	f406                	sd	ra,40(sp)
    8000157a:	f022                	sd	s0,32(sp)
    8000157c:	ec26                	sd	s1,24(sp)
    8000157e:	e84a                	sd	s2,16(sp)
    80001580:	e44e                	sd	s3,8(sp)
    80001582:	e052                	sd	s4,0(sp)
    80001584:	1800                	addi	s0,sp,48
    80001586:	6785                	lui	a5,0x1
    80001588:	04f67863          	bgeu	a2,a5,800015d8 <uvmfirst+0x62>
    8000158c:	8a2a                	mv	s4,a0
    8000158e:	89ae                	mv	s3,a1
    80001590:	84b2                	mv	s1,a2
    80001592:	fffff097          	auipc	ra,0xfffff
    80001596:	704080e7          	jalr	1796(ra) # 80000c96 <kalloc>
    8000159a:	892a                	mv	s2,a0
    8000159c:	6605                	lui	a2,0x1
    8000159e:	4581                	li	a1,0
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	94a080e7          	jalr	-1718(ra) # 80000eea <memset>
    800015a8:	4779                	li	a4,30
    800015aa:	86ca                	mv	a3,s2
    800015ac:	6605                	lui	a2,0x1
    800015ae:	4581                	li	a1,0
    800015b0:	8552                	mv	a0,s4
    800015b2:	00000097          	auipc	ra,0x0
    800015b6:	d0c080e7          	jalr	-756(ra) # 800012be <mappages>
    800015ba:	8626                	mv	a2,s1
    800015bc:	85ce                	mv	a1,s3
    800015be:	854a                	mv	a0,s2
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	98a080e7          	jalr	-1654(ra) # 80000f4a <memmove>
    800015c8:	70a2                	ld	ra,40(sp)
    800015ca:	7402                	ld	s0,32(sp)
    800015cc:	64e2                	ld	s1,24(sp)
    800015ce:	6942                	ld	s2,16(sp)
    800015d0:	69a2                	ld	s3,8(sp)
    800015d2:	6a02                	ld	s4,0(sp)
    800015d4:	6145                	addi	sp,sp,48
    800015d6:	8082                	ret
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	be050513          	addi	a0,a0,-1056 # 800091b8 <digits+0x178>
    800015e0:	fffff097          	auipc	ra,0xfffff
    800015e4:	f64080e7          	jalr	-156(ra) # 80000544 <panic>

00000000800015e8 <uvmdealloc>:
    800015e8:	1101                	addi	sp,sp,-32
    800015ea:	ec06                	sd	ra,24(sp)
    800015ec:	e822                	sd	s0,16(sp)
    800015ee:	e426                	sd	s1,8(sp)
    800015f0:	1000                	addi	s0,sp,32
    800015f2:	84ae                	mv	s1,a1
    800015f4:	00b67d63          	bgeu	a2,a1,8000160e <uvmdealloc+0x26>
    800015f8:	84b2                	mv	s1,a2
    800015fa:	6785                	lui	a5,0x1
    800015fc:	17fd                	addi	a5,a5,-1
    800015fe:	00f60733          	add	a4,a2,a5
    80001602:	767d                	lui	a2,0xfffff
    80001604:	8f71                	and	a4,a4,a2
    80001606:	97ae                	add	a5,a5,a1
    80001608:	8ff1                	and	a5,a5,a2
    8000160a:	00f76863          	bltu	a4,a5,8000161a <uvmdealloc+0x32>
    8000160e:	8526                	mv	a0,s1
    80001610:	60e2                	ld	ra,24(sp)
    80001612:	6442                	ld	s0,16(sp)
    80001614:	64a2                	ld	s1,8(sp)
    80001616:	6105                	addi	sp,sp,32
    80001618:	8082                	ret
    8000161a:	8f99                	sub	a5,a5,a4
    8000161c:	83b1                	srli	a5,a5,0xc
    8000161e:	4685                	li	a3,1
    80001620:	0007861b          	sext.w	a2,a5
    80001624:	85ba                	mv	a1,a4
    80001626:	00000097          	auipc	ra,0x0
    8000162a:	e5e080e7          	jalr	-418(ra) # 80001484 <uvmunmap>
    8000162e:	b7c5                	j	8000160e <uvmdealloc+0x26>

0000000080001630 <uvmalloc>:
    80001630:	0ab66563          	bltu	a2,a1,800016da <uvmalloc+0xaa>
    80001634:	7139                	addi	sp,sp,-64
    80001636:	fc06                	sd	ra,56(sp)
    80001638:	f822                	sd	s0,48(sp)
    8000163a:	f426                	sd	s1,40(sp)
    8000163c:	f04a                	sd	s2,32(sp)
    8000163e:	ec4e                	sd	s3,24(sp)
    80001640:	e852                	sd	s4,16(sp)
    80001642:	e456                	sd	s5,8(sp)
    80001644:	e05a                	sd	s6,0(sp)
    80001646:	0080                	addi	s0,sp,64
    80001648:	8aaa                	mv	s5,a0
    8000164a:	8a32                	mv	s4,a2
    8000164c:	6985                	lui	s3,0x1
    8000164e:	19fd                	addi	s3,s3,-1
    80001650:	95ce                	add	a1,a1,s3
    80001652:	79fd                	lui	s3,0xfffff
    80001654:	0135f9b3          	and	s3,a1,s3
    80001658:	08c9f363          	bgeu	s3,a2,800016de <uvmalloc+0xae>
    8000165c:	894e                	mv	s2,s3
    8000165e:	0126eb13          	ori	s6,a3,18
    80001662:	fffff097          	auipc	ra,0xfffff
    80001666:	634080e7          	jalr	1588(ra) # 80000c96 <kalloc>
    8000166a:	84aa                	mv	s1,a0
    8000166c:	c51d                	beqz	a0,8000169a <uvmalloc+0x6a>
    8000166e:	6605                	lui	a2,0x1
    80001670:	4581                	li	a1,0
    80001672:	00000097          	auipc	ra,0x0
    80001676:	878080e7          	jalr	-1928(ra) # 80000eea <memset>
    8000167a:	875a                	mv	a4,s6
    8000167c:	86a6                	mv	a3,s1
    8000167e:	6605                	lui	a2,0x1
    80001680:	85ca                	mv	a1,s2
    80001682:	8556                	mv	a0,s5
    80001684:	00000097          	auipc	ra,0x0
    80001688:	c3a080e7          	jalr	-966(ra) # 800012be <mappages>
    8000168c:	e90d                	bnez	a0,800016be <uvmalloc+0x8e>
    8000168e:	6785                	lui	a5,0x1
    80001690:	993e                	add	s2,s2,a5
    80001692:	fd4968e3          	bltu	s2,s4,80001662 <uvmalloc+0x32>
    80001696:	8552                	mv	a0,s4
    80001698:	a809                	j	800016aa <uvmalloc+0x7a>
    8000169a:	864e                	mv	a2,s3
    8000169c:	85ca                	mv	a1,s2
    8000169e:	8556                	mv	a0,s5
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f48080e7          	jalr	-184(ra) # 800015e8 <uvmdealloc>
    800016a8:	4501                	li	a0,0
    800016aa:	70e2                	ld	ra,56(sp)
    800016ac:	7442                	ld	s0,48(sp)
    800016ae:	74a2                	ld	s1,40(sp)
    800016b0:	7902                	ld	s2,32(sp)
    800016b2:	69e2                	ld	s3,24(sp)
    800016b4:	6a42                	ld	s4,16(sp)
    800016b6:	6aa2                	ld	s5,8(sp)
    800016b8:	6b02                	ld	s6,0(sp)
    800016ba:	6121                	addi	sp,sp,64
    800016bc:	8082                	ret
    800016be:	8526                	mv	a0,s1
    800016c0:	fffff097          	auipc	ra,0xfffff
    800016c4:	3a0080e7          	jalr	928(ra) # 80000a60 <kfree>
    800016c8:	864e                	mv	a2,s3
    800016ca:	85ca                	mv	a1,s2
    800016cc:	8556                	mv	a0,s5
    800016ce:	00000097          	auipc	ra,0x0
    800016d2:	f1a080e7          	jalr	-230(ra) # 800015e8 <uvmdealloc>
    800016d6:	4501                	li	a0,0
    800016d8:	bfc9                	j	800016aa <uvmalloc+0x7a>
    800016da:	852e                	mv	a0,a1
    800016dc:	8082                	ret
    800016de:	8532                	mv	a0,a2
    800016e0:	b7e9                	j	800016aa <uvmalloc+0x7a>

00000000800016e2 <freewalk>:
    800016e2:	7179                	addi	sp,sp,-48
    800016e4:	f406                	sd	ra,40(sp)
    800016e6:	f022                	sd	s0,32(sp)
    800016e8:	ec26                	sd	s1,24(sp)
    800016ea:	e84a                	sd	s2,16(sp)
    800016ec:	e44e                	sd	s3,8(sp)
    800016ee:	e052                	sd	s4,0(sp)
    800016f0:	1800                	addi	s0,sp,48
    800016f2:	8a2a                	mv	s4,a0
    800016f4:	84aa                	mv	s1,a0
    800016f6:	6905                	lui	s2,0x1
    800016f8:	992a                	add	s2,s2,a0
    800016fa:	4985                	li	s3,1
    800016fc:	a821                	j	80001714 <freewalk+0x32>
    800016fe:	8129                	srli	a0,a0,0xa
    80001700:	0532                	slli	a0,a0,0xc
    80001702:	00000097          	auipc	ra,0x0
    80001706:	fe0080e7          	jalr	-32(ra) # 800016e2 <freewalk>
    8000170a:	0004b023          	sd	zero,0(s1)
    8000170e:	04a1                	addi	s1,s1,8
    80001710:	03248163          	beq	s1,s2,80001732 <freewalk+0x50>
    80001714:	6088                	ld	a0,0(s1)
    80001716:	00f57793          	andi	a5,a0,15
    8000171a:	ff3782e3          	beq	a5,s3,800016fe <freewalk+0x1c>
    8000171e:	8905                	andi	a0,a0,1
    80001720:	d57d                	beqz	a0,8000170e <freewalk+0x2c>
    80001722:	00008517          	auipc	a0,0x8
    80001726:	ab650513          	addi	a0,a0,-1354 # 800091d8 <digits+0x198>
    8000172a:	fffff097          	auipc	ra,0xfffff
    8000172e:	e1a080e7          	jalr	-486(ra) # 80000544 <panic>
    80001732:	8552                	mv	a0,s4
    80001734:	fffff097          	auipc	ra,0xfffff
    80001738:	32c080e7          	jalr	812(ra) # 80000a60 <kfree>
    8000173c:	70a2                	ld	ra,40(sp)
    8000173e:	7402                	ld	s0,32(sp)
    80001740:	64e2                	ld	s1,24(sp)
    80001742:	6942                	ld	s2,16(sp)
    80001744:	69a2                	ld	s3,8(sp)
    80001746:	6a02                	ld	s4,0(sp)
    80001748:	6145                	addi	sp,sp,48
    8000174a:	8082                	ret

000000008000174c <uvmfree>:
    8000174c:	1101                	addi	sp,sp,-32
    8000174e:	ec06                	sd	ra,24(sp)
    80001750:	e822                	sd	s0,16(sp)
    80001752:	e426                	sd	s1,8(sp)
    80001754:	1000                	addi	s0,sp,32
    80001756:	84aa                	mv	s1,a0
    80001758:	e999                	bnez	a1,8000176e <uvmfree+0x22>
    8000175a:	8526                	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	f86080e7          	jalr	-122(ra) # 800016e2 <freewalk>
    80001764:	60e2                	ld	ra,24(sp)
    80001766:	6442                	ld	s0,16(sp)
    80001768:	64a2                	ld	s1,8(sp)
    8000176a:	6105                	addi	sp,sp,32
    8000176c:	8082                	ret
    8000176e:	6605                	lui	a2,0x1
    80001770:	167d                	addi	a2,a2,-1
    80001772:	962e                	add	a2,a2,a1
    80001774:	4685                	li	a3,1
    80001776:	8231                	srli	a2,a2,0xc
    80001778:	4581                	li	a1,0
    8000177a:	00000097          	auipc	ra,0x0
    8000177e:	d0a080e7          	jalr	-758(ra) # 80001484 <uvmunmap>
    80001782:	bfe1                	j	8000175a <uvmfree+0xe>

0000000080001784 <uvmcopy>:
    80001784:	715d                	addi	sp,sp,-80
    80001786:	e486                	sd	ra,72(sp)
    80001788:	e0a2                	sd	s0,64(sp)
    8000178a:	fc26                	sd	s1,56(sp)
    8000178c:	f84a                	sd	s2,48(sp)
    8000178e:	f44e                	sd	s3,40(sp)
    80001790:	f052                	sd	s4,32(sp)
    80001792:	ec56                	sd	s5,24(sp)
    80001794:	e85a                	sd	s6,16(sp)
    80001796:	e45e                	sd	s7,8(sp)
    80001798:	0880                	addi	s0,sp,80
    8000179a:	c261                	beqz	a2,8000185a <uvmcopy+0xd6>
    8000179c:	8aaa                	mv	s5,a0
    8000179e:	8a2e                	mv	s4,a1
    800017a0:	89b2                	mv	s3,a2
    800017a2:	4481                	li	s1,0
    800017a4:	7b7d                	lui	s6,0xfffff
    800017a6:	002b5b13          	srli	s6,s6,0x2
    800017aa:	a0a1                	j	800017f2 <uvmcopy+0x6e>
    800017ac:	00008517          	auipc	a0,0x8
    800017b0:	a3c50513          	addi	a0,a0,-1476 # 800091e8 <digits+0x1a8>
    800017b4:	fffff097          	auipc	ra,0xfffff
    800017b8:	d90080e7          	jalr	-624(ra) # 80000544 <panic>
    800017bc:	00008517          	auipc	a0,0x8
    800017c0:	a4c50513          	addi	a0,a0,-1460 # 80009208 <digits+0x1c8>
    800017c4:	fffff097          	auipc	ra,0xfffff
    800017c8:	d80080e7          	jalr	-640(ra) # 80000544 <panic>
    800017cc:	86ca                	mv	a3,s2
    800017ce:	6605                	lui	a2,0x1
    800017d0:	85a6                	mv	a1,s1
    800017d2:	8552                	mv	a0,s4
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	aea080e7          	jalr	-1302(ra) # 800012be <mappages>
    800017dc:	8baa                	mv	s7,a0
    800017de:	e921                	bnez	a0,8000182e <uvmcopy+0xaa>
    800017e0:	854a                	mv	a0,s2
    800017e2:	fffff097          	auipc	ra,0xfffff
    800017e6:	3aa080e7          	jalr	938(ra) # 80000b8c <inc_page_ref>
    800017ea:	6785                	lui	a5,0x1
    800017ec:	94be                	add	s1,s1,a5
    800017ee:	0534fa63          	bgeu	s1,s3,80001842 <uvmcopy+0xbe>
    800017f2:	4601                	li	a2,0
    800017f4:	85a6                	mv	a1,s1
    800017f6:	8556                	mv	a0,s5
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	9de080e7          	jalr	-1570(ra) # 800011d6 <walk>
    80001800:	d555                	beqz	a0,800017ac <uvmcopy+0x28>
    80001802:	611c                	ld	a5,0(a0)
    80001804:	0017f713          	andi	a4,a5,1
    80001808:	db55                	beqz	a4,800017bc <uvmcopy+0x38>
    8000180a:	00a7d913          	srli	s2,a5,0xa
    8000180e:	0932                	slli	s2,s2,0xc
    80001810:	0007869b          	sext.w	a3,a5
    80001814:	3ff7f713          	andi	a4,a5,1023
    80001818:	8a91                	andi	a3,a3,4
    8000181a:	dacd                	beqz	a3,800017cc <uvmcopy+0x48>
    8000181c:	fdb77693          	andi	a3,a4,-37
    80001820:	0206e713          	ori	a4,a3,32
    80001824:	0167f7b3          	and	a5,a5,s6
    80001828:	8fd9                	or	a5,a5,a4
    8000182a:	e11c                	sd	a5,0(a0)
    8000182c:	b745                	j	800017cc <uvmcopy+0x48>
    8000182e:	4685                	li	a3,1
    80001830:	00c4d613          	srli	a2,s1,0xc
    80001834:	4581                	li	a1,0
    80001836:	8552                	mv	a0,s4
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	c4c080e7          	jalr	-948(ra) # 80001484 <uvmunmap>
    80001840:	5bfd                	li	s7,-1
    80001842:	855e                	mv	a0,s7
    80001844:	60a6                	ld	ra,72(sp)
    80001846:	6406                	ld	s0,64(sp)
    80001848:	74e2                	ld	s1,56(sp)
    8000184a:	7942                	ld	s2,48(sp)
    8000184c:	79a2                	ld	s3,40(sp)
    8000184e:	7a02                	ld	s4,32(sp)
    80001850:	6ae2                	ld	s5,24(sp)
    80001852:	6b42                	ld	s6,16(sp)
    80001854:	6ba2                	ld	s7,8(sp)
    80001856:	6161                	addi	sp,sp,80
    80001858:	8082                	ret
    8000185a:	4b81                	li	s7,0
    8000185c:	b7dd                	j	80001842 <uvmcopy+0xbe>

000000008000185e <uvmclear>:
    8000185e:	1141                	addi	sp,sp,-16
    80001860:	e406                	sd	ra,8(sp)
    80001862:	e022                	sd	s0,0(sp)
    80001864:	0800                	addi	s0,sp,16
    80001866:	4601                	li	a2,0
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	96e080e7          	jalr	-1682(ra) # 800011d6 <walk>
    80001870:	c901                	beqz	a0,80001880 <uvmclear+0x22>
    80001872:	611c                	ld	a5,0(a0)
    80001874:	9bbd                	andi	a5,a5,-17
    80001876:	e11c                	sd	a5,0(a0)
    80001878:	60a2                	ld	ra,8(sp)
    8000187a:	6402                	ld	s0,0(sp)
    8000187c:	0141                	addi	sp,sp,16
    8000187e:	8082                	ret
    80001880:	00008517          	auipc	a0,0x8
    80001884:	9a850513          	addi	a0,a0,-1624 # 80009228 <digits+0x1e8>
    80001888:	fffff097          	auipc	ra,0xfffff
    8000188c:	cbc080e7          	jalr	-836(ra) # 80000544 <panic>

0000000080001890 <copyout>:
    80001890:	c2d5                	beqz	a3,80001934 <copyout+0xa4>
    80001892:	711d                	addi	sp,sp,-96
    80001894:	ec86                	sd	ra,88(sp)
    80001896:	e8a2                	sd	s0,80(sp)
    80001898:	e4a6                	sd	s1,72(sp)
    8000189a:	e0ca                	sd	s2,64(sp)
    8000189c:	fc4e                	sd	s3,56(sp)
    8000189e:	f852                	sd	s4,48(sp)
    800018a0:	f456                	sd	s5,40(sp)
    800018a2:	f05a                	sd	s6,32(sp)
    800018a4:	ec5e                	sd	s7,24(sp)
    800018a6:	e862                	sd	s8,16(sp)
    800018a8:	e466                	sd	s9,8(sp)
    800018aa:	1080                	addi	s0,sp,96
    800018ac:	8baa                	mv	s7,a0
    800018ae:	89ae                	mv	s3,a1
    800018b0:	8b32                	mv	s6,a2
    800018b2:	8ab6                	mv	s5,a3
    800018b4:	7cfd                	lui	s9,0xfffff
    800018b6:	6c05                	lui	s8,0x1
    800018b8:	a081                	j	800018f8 <copyout+0x68>
    800018ba:	85de                	mv	a1,s7
    800018bc:	854a                	mv	a0,s2
    800018be:	00002097          	auipc	ra,0x2
    800018c2:	a7a080e7          	jalr	-1414(ra) # 80003338 <page_fault_handler>
    800018c6:	85ca                	mv	a1,s2
    800018c8:	855e                	mv	a0,s7
    800018ca:	00000097          	auipc	ra,0x0
    800018ce:	9b2080e7          	jalr	-1614(ra) # 8000127c <walkaddr>
    800018d2:	8a2a                	mv	s4,a0
    800018d4:	a0b9                	j	80001922 <copyout+0x92>
    800018d6:	41298533          	sub	a0,s3,s2
    800018da:	0004861b          	sext.w	a2,s1
    800018de:	85da                	mv	a1,s6
    800018e0:	9552                	add	a0,a0,s4
    800018e2:	fffff097          	auipc	ra,0xfffff
    800018e6:	668080e7          	jalr	1640(ra) # 80000f4a <memmove>
    800018ea:	409a8ab3          	sub	s5,s5,s1
    800018ee:	9b26                	add	s6,s6,s1
    800018f0:	018909b3          	add	s3,s2,s8
    800018f4:	020a8e63          	beqz	s5,80001930 <copyout+0xa0>
    800018f8:	0199f933          	and	s2,s3,s9
    800018fc:	85ca                	mv	a1,s2
    800018fe:	855e                	mv	a0,s7
    80001900:	00000097          	auipc	ra,0x0
    80001904:	97c080e7          	jalr	-1668(ra) # 8000127c <walkaddr>
    80001908:	8a2a                	mv	s4,a0
    8000190a:	c51d                	beqz	a0,80001938 <copyout+0xa8>
    8000190c:	4601                	li	a2,0
    8000190e:	85ca                	mv	a1,s2
    80001910:	855e                	mv	a0,s7
    80001912:	00000097          	auipc	ra,0x0
    80001916:	8c4080e7          	jalr	-1852(ra) # 800011d6 <walk>
    8000191a:	611c                	ld	a5,0(a0)
    8000191c:	0207f793          	andi	a5,a5,32
    80001920:	ffc9                	bnez	a5,800018ba <copyout+0x2a>
    80001922:	413904b3          	sub	s1,s2,s3
    80001926:	94e2                	add	s1,s1,s8
    80001928:	fa9af7e3          	bgeu	s5,s1,800018d6 <copyout+0x46>
    8000192c:	84d6                	mv	s1,s5
    8000192e:	b765                	j	800018d6 <copyout+0x46>
    80001930:	4501                	li	a0,0
    80001932:	a021                	j	8000193a <copyout+0xaa>
    80001934:	4501                	li	a0,0
    80001936:	8082                	ret
    80001938:	557d                	li	a0,-1
    8000193a:	60e6                	ld	ra,88(sp)
    8000193c:	6446                	ld	s0,80(sp)
    8000193e:	64a6                	ld	s1,72(sp)
    80001940:	6906                	ld	s2,64(sp)
    80001942:	79e2                	ld	s3,56(sp)
    80001944:	7a42                	ld	s4,48(sp)
    80001946:	7aa2                	ld	s5,40(sp)
    80001948:	7b02                	ld	s6,32(sp)
    8000194a:	6be2                	ld	s7,24(sp)
    8000194c:	6c42                	ld	s8,16(sp)
    8000194e:	6ca2                	ld	s9,8(sp)
    80001950:	6125                	addi	sp,sp,96
    80001952:	8082                	ret

0000000080001954 <copyin>:
    80001954:	c6bd                	beqz	a3,800019c2 <copyin+0x6e>
    80001956:	715d                	addi	sp,sp,-80
    80001958:	e486                	sd	ra,72(sp)
    8000195a:	e0a2                	sd	s0,64(sp)
    8000195c:	fc26                	sd	s1,56(sp)
    8000195e:	f84a                	sd	s2,48(sp)
    80001960:	f44e                	sd	s3,40(sp)
    80001962:	f052                	sd	s4,32(sp)
    80001964:	ec56                	sd	s5,24(sp)
    80001966:	e85a                	sd	s6,16(sp)
    80001968:	e45e                	sd	s7,8(sp)
    8000196a:	e062                	sd	s8,0(sp)
    8000196c:	0880                	addi	s0,sp,80
    8000196e:	8b2a                	mv	s6,a0
    80001970:	8a2e                	mv	s4,a1
    80001972:	8c32                	mv	s8,a2
    80001974:	89b6                	mv	s3,a3
    80001976:	7bfd                	lui	s7,0xfffff
    80001978:	6a85                	lui	s5,0x1
    8000197a:	a015                	j	8000199e <copyin+0x4a>
    8000197c:	9562                	add	a0,a0,s8
    8000197e:	0004861b          	sext.w	a2,s1
    80001982:	412505b3          	sub	a1,a0,s2
    80001986:	8552                	mv	a0,s4
    80001988:	fffff097          	auipc	ra,0xfffff
    8000198c:	5c2080e7          	jalr	1474(ra) # 80000f4a <memmove>
    80001990:	409989b3          	sub	s3,s3,s1
    80001994:	9a26                	add	s4,s4,s1
    80001996:	01590c33          	add	s8,s2,s5
    8000199a:	02098263          	beqz	s3,800019be <copyin+0x6a>
    8000199e:	017c7933          	and	s2,s8,s7
    800019a2:	85ca                	mv	a1,s2
    800019a4:	855a                	mv	a0,s6
    800019a6:	00000097          	auipc	ra,0x0
    800019aa:	8d6080e7          	jalr	-1834(ra) # 8000127c <walkaddr>
    800019ae:	cd01                	beqz	a0,800019c6 <copyin+0x72>
    800019b0:	418904b3          	sub	s1,s2,s8
    800019b4:	94d6                	add	s1,s1,s5
    800019b6:	fc99f3e3          	bgeu	s3,s1,8000197c <copyin+0x28>
    800019ba:	84ce                	mv	s1,s3
    800019bc:	b7c1                	j	8000197c <copyin+0x28>
    800019be:	4501                	li	a0,0
    800019c0:	a021                	j	800019c8 <copyin+0x74>
    800019c2:	4501                	li	a0,0
    800019c4:	8082                	ret
    800019c6:	557d                	li	a0,-1
    800019c8:	60a6                	ld	ra,72(sp)
    800019ca:	6406                	ld	s0,64(sp)
    800019cc:	74e2                	ld	s1,56(sp)
    800019ce:	7942                	ld	s2,48(sp)
    800019d0:	79a2                	ld	s3,40(sp)
    800019d2:	7a02                	ld	s4,32(sp)
    800019d4:	6ae2                	ld	s5,24(sp)
    800019d6:	6b42                	ld	s6,16(sp)
    800019d8:	6ba2                	ld	s7,8(sp)
    800019da:	6c02                	ld	s8,0(sp)
    800019dc:	6161                	addi	sp,sp,80
    800019de:	8082                	ret

00000000800019e0 <copyinstr>:
    800019e0:	c6c5                	beqz	a3,80001a88 <copyinstr+0xa8>
    800019e2:	715d                	addi	sp,sp,-80
    800019e4:	e486                	sd	ra,72(sp)
    800019e6:	e0a2                	sd	s0,64(sp)
    800019e8:	fc26                	sd	s1,56(sp)
    800019ea:	f84a                	sd	s2,48(sp)
    800019ec:	f44e                	sd	s3,40(sp)
    800019ee:	f052                	sd	s4,32(sp)
    800019f0:	ec56                	sd	s5,24(sp)
    800019f2:	e85a                	sd	s6,16(sp)
    800019f4:	e45e                	sd	s7,8(sp)
    800019f6:	0880                	addi	s0,sp,80
    800019f8:	8a2a                	mv	s4,a0
    800019fa:	8b2e                	mv	s6,a1
    800019fc:	8bb2                	mv	s7,a2
    800019fe:	84b6                	mv	s1,a3
    80001a00:	7afd                	lui	s5,0xfffff
    80001a02:	6985                	lui	s3,0x1
    80001a04:	a035                	j	80001a30 <copyinstr+0x50>
    80001a06:	00078023          	sb	zero,0(a5) # 1000 <_entry-0x7ffff000>
    80001a0a:	4785                	li	a5,1
    80001a0c:	0017b793          	seqz	a5,a5
    80001a10:	40f00533          	neg	a0,a5
    80001a14:	60a6                	ld	ra,72(sp)
    80001a16:	6406                	ld	s0,64(sp)
    80001a18:	74e2                	ld	s1,56(sp)
    80001a1a:	7942                	ld	s2,48(sp)
    80001a1c:	79a2                	ld	s3,40(sp)
    80001a1e:	7a02                	ld	s4,32(sp)
    80001a20:	6ae2                	ld	s5,24(sp)
    80001a22:	6b42                	ld	s6,16(sp)
    80001a24:	6ba2                	ld	s7,8(sp)
    80001a26:	6161                	addi	sp,sp,80
    80001a28:	8082                	ret
    80001a2a:	01390bb3          	add	s7,s2,s3
    80001a2e:	c8a9                	beqz	s1,80001a80 <copyinstr+0xa0>
    80001a30:	015bf933          	and	s2,s7,s5
    80001a34:	85ca                	mv	a1,s2
    80001a36:	8552                	mv	a0,s4
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	844080e7          	jalr	-1980(ra) # 8000127c <walkaddr>
    80001a40:	c131                	beqz	a0,80001a84 <copyinstr+0xa4>
    80001a42:	41790833          	sub	a6,s2,s7
    80001a46:	984e                	add	a6,a6,s3
    80001a48:	0104f363          	bgeu	s1,a6,80001a4e <copyinstr+0x6e>
    80001a4c:	8826                	mv	a6,s1
    80001a4e:	955e                	add	a0,a0,s7
    80001a50:	41250533          	sub	a0,a0,s2
    80001a54:	fc080be3          	beqz	a6,80001a2a <copyinstr+0x4a>
    80001a58:	985a                	add	a6,a6,s6
    80001a5a:	87da                	mv	a5,s6
    80001a5c:	41650633          	sub	a2,a0,s6
    80001a60:	14fd                	addi	s1,s1,-1
    80001a62:	9b26                	add	s6,s6,s1
    80001a64:	00f60733          	add	a4,a2,a5
    80001a68:	00074703          	lbu	a4,0(a4)
    80001a6c:	df49                	beqz	a4,80001a06 <copyinstr+0x26>
    80001a6e:	00e78023          	sb	a4,0(a5)
    80001a72:	40fb04b3          	sub	s1,s6,a5
    80001a76:	0785                	addi	a5,a5,1
    80001a78:	ff0796e3          	bne	a5,a6,80001a64 <copyinstr+0x84>
    80001a7c:	8b42                	mv	s6,a6
    80001a7e:	b775                	j	80001a2a <copyinstr+0x4a>
    80001a80:	4781                	li	a5,0
    80001a82:	b769                	j	80001a0c <copyinstr+0x2c>
    80001a84:	557d                	li	a0,-1
    80001a86:	b779                	j	80001a14 <copyinstr+0x34>
    80001a88:	4781                	li	a5,0
    80001a8a:	0017b793          	seqz	a5,a5
    80001a8e:	40f00533          	neg	a0,a5
    80001a92:	8082                	ret

0000000080001a94 <sgenrand>:
    80001a94:	1141                	addi	sp,sp,-16
    80001a96:	e422                	sd	s0,8(sp)
    80001a98:	0800                	addi	s0,sp,16
    80001a9a:	00239717          	auipc	a4,0x239
    80001a9e:	e9670713          	addi	a4,a4,-362 # 8023a930 <mt>
    80001aa2:	1502                	slli	a0,a0,0x20
    80001aa4:	9101                	srli	a0,a0,0x20
    80001aa6:	e308                	sd	a0,0(a4)
    80001aa8:	0023a597          	auipc	a1,0x23a
    80001aac:	20058593          	addi	a1,a1,512 # 8023bca8 <mt+0x1378>
    80001ab0:	6645                	lui	a2,0x11
    80001ab2:	dcd60613          	addi	a2,a2,-563 # 10dcd <_entry-0x7ffef233>
    80001ab6:	56fd                	li	a3,-1
    80001ab8:	9281                	srli	a3,a3,0x20
    80001aba:	631c                	ld	a5,0(a4)
    80001abc:	02c787b3          	mul	a5,a5,a2
    80001ac0:	8ff5                	and	a5,a5,a3
    80001ac2:	e71c                	sd	a5,8(a4)
    80001ac4:	0721                	addi	a4,a4,8
    80001ac6:	feb71ae3          	bne	a4,a1,80001aba <sgenrand+0x26>
    80001aca:	27000793          	li	a5,624
    80001ace:	00008717          	auipc	a4,0x8
    80001ad2:	0af72d23          	sw	a5,186(a4) # 80009b88 <mti>
    80001ad6:	6422                	ld	s0,8(sp)
    80001ad8:	0141                	addi	sp,sp,16
    80001ada:	8082                	ret

0000000080001adc <genrand>:
    80001adc:	1141                	addi	sp,sp,-16
    80001ade:	e406                	sd	ra,8(sp)
    80001ae0:	e022                	sd	s0,0(sp)
    80001ae2:	0800                	addi	s0,sp,16
    80001ae4:	00008797          	auipc	a5,0x8
    80001ae8:	0a47a783          	lw	a5,164(a5) # 80009b88 <mti>
    80001aec:	26f00713          	li	a4,623
    80001af0:	0ef75963          	bge	a4,a5,80001be2 <genrand+0x106>
    80001af4:	27100713          	li	a4,625
    80001af8:	12e78f63          	beq	a5,a4,80001c36 <genrand+0x15a>
    80001afc:	00239817          	auipc	a6,0x239
    80001b00:	e3480813          	addi	a6,a6,-460 # 8023a930 <mt>
    80001b04:	00239e17          	auipc	t3,0x239
    80001b08:	544e0e13          	addi	t3,t3,1348 # 8023b048 <mt+0x718>
    80001b0c:	8742                	mv	a4,a6
    80001b0e:	4885                	li	a7,1
    80001b10:	08fe                	slli	a7,a7,0x1f
    80001b12:	80000537          	lui	a0,0x80000
    80001b16:	fff54513          	not	a0,a0
    80001b1a:	6585                	lui	a1,0x1
    80001b1c:	c6858593          	addi	a1,a1,-920 # c68 <_entry-0x7ffff398>
    80001b20:	00008317          	auipc	t1,0x8
    80001b24:	83030313          	addi	t1,t1,-2000 # 80009350 <mag01.1622>
    80001b28:	631c                	ld	a5,0(a4)
    80001b2a:	0117f7b3          	and	a5,a5,a7
    80001b2e:	6714                	ld	a3,8(a4)
    80001b30:	8ee9                	and	a3,a3,a0
    80001b32:	8fd5                	or	a5,a5,a3
    80001b34:	00b70633          	add	a2,a4,a1
    80001b38:	0017d693          	srli	a3,a5,0x1
    80001b3c:	6210                	ld	a2,0(a2)
    80001b3e:	8eb1                	xor	a3,a3,a2
    80001b40:	8b85                	andi	a5,a5,1
    80001b42:	078e                	slli	a5,a5,0x3
    80001b44:	979a                	add	a5,a5,t1
    80001b46:	639c                	ld	a5,0(a5)
    80001b48:	8fb5                	xor	a5,a5,a3
    80001b4a:	e31c                	sd	a5,0(a4)
    80001b4c:	0721                	addi	a4,a4,8
    80001b4e:	fdc71de3          	bne	a4,t3,80001b28 <genrand+0x4c>
    80001b52:	6605                	lui	a2,0x1
    80001b54:	c6060613          	addi	a2,a2,-928 # c60 <_entry-0x7ffff3a0>
    80001b58:	9642                	add	a2,a2,a6
    80001b5a:	4505                	li	a0,1
    80001b5c:	057e                	slli	a0,a0,0x1f
    80001b5e:	800005b7          	lui	a1,0x80000
    80001b62:	fff5c593          	not	a1,a1
    80001b66:	00007897          	auipc	a7,0x7
    80001b6a:	7ea88893          	addi	a7,a7,2026 # 80009350 <mag01.1622>
    80001b6e:	71883783          	ld	a5,1816(a6)
    80001b72:	8fe9                	and	a5,a5,a0
    80001b74:	72083703          	ld	a4,1824(a6)
    80001b78:	8f6d                	and	a4,a4,a1
    80001b7a:	8fd9                	or	a5,a5,a4
    80001b7c:	0017d713          	srli	a4,a5,0x1
    80001b80:	00083683          	ld	a3,0(a6)
    80001b84:	8f35                	xor	a4,a4,a3
    80001b86:	8b85                	andi	a5,a5,1
    80001b88:	078e                	slli	a5,a5,0x3
    80001b8a:	97c6                	add	a5,a5,a7
    80001b8c:	639c                	ld	a5,0(a5)
    80001b8e:	8fb9                	xor	a5,a5,a4
    80001b90:	70f83c23          	sd	a5,1816(a6)
    80001b94:	0821                	addi	a6,a6,8
    80001b96:	fcc81ce3          	bne	a6,a2,80001b6e <genrand+0x92>
    80001b9a:	0023a697          	auipc	a3,0x23a
    80001b9e:	d9668693          	addi	a3,a3,-618 # 8023b930 <mt+0x1000>
    80001ba2:	3786b783          	ld	a5,888(a3)
    80001ba6:	4705                	li	a4,1
    80001ba8:	077e                	slli	a4,a4,0x1f
    80001baa:	8ff9                	and	a5,a5,a4
    80001bac:	00239717          	auipc	a4,0x239
    80001bb0:	d8473703          	ld	a4,-636(a4) # 8023a930 <mt>
    80001bb4:	1706                	slli	a4,a4,0x21
    80001bb6:	9305                	srli	a4,a4,0x21
    80001bb8:	8fd9                	or	a5,a5,a4
    80001bba:	0017d713          	srli	a4,a5,0x1
    80001bbe:	c606b603          	ld	a2,-928(a3)
    80001bc2:	8f31                	xor	a4,a4,a2
    80001bc4:	8b85                	andi	a5,a5,1
    80001bc6:	078e                	slli	a5,a5,0x3
    80001bc8:	00007617          	auipc	a2,0x7
    80001bcc:	78860613          	addi	a2,a2,1928 # 80009350 <mag01.1622>
    80001bd0:	97b2                	add	a5,a5,a2
    80001bd2:	639c                	ld	a5,0(a5)
    80001bd4:	8fb9                	xor	a5,a5,a4
    80001bd6:	36f6bc23          	sd	a5,888(a3)
    80001bda:	00008797          	auipc	a5,0x8
    80001bde:	fa07a723          	sw	zero,-82(a5) # 80009b88 <mti>
    80001be2:	00008717          	auipc	a4,0x8
    80001be6:	fa670713          	addi	a4,a4,-90 # 80009b88 <mti>
    80001bea:	431c                	lw	a5,0(a4)
    80001bec:	0017869b          	addiw	a3,a5,1
    80001bf0:	c314                	sw	a3,0(a4)
    80001bf2:	078e                	slli	a5,a5,0x3
    80001bf4:	00239717          	auipc	a4,0x239
    80001bf8:	d3c70713          	addi	a4,a4,-708 # 8023a930 <mt>
    80001bfc:	97ba                	add	a5,a5,a4
    80001bfe:	6398                	ld	a4,0(a5)
    80001c00:	00b75793          	srli	a5,a4,0xb
    80001c04:	8f3d                	xor	a4,a4,a5
    80001c06:	013a67b7          	lui	a5,0x13a6
    80001c0a:	8ad78793          	addi	a5,a5,-1875 # 13a58ad <_entry-0x7ec5a753>
    80001c0e:	8ff9                	and	a5,a5,a4
    80001c10:	079e                	slli	a5,a5,0x7
    80001c12:	8fb9                	xor	a5,a5,a4
    80001c14:	00f79713          	slli	a4,a5,0xf
    80001c18:	077e36b7          	lui	a3,0x77e3
    80001c1c:	0696                	slli	a3,a3,0x5
    80001c1e:	8f75                	and	a4,a4,a3
    80001c20:	8fb9                	xor	a5,a5,a4
    80001c22:	0127d513          	srli	a0,a5,0x12
    80001c26:	8fa9                	xor	a5,a5,a0
    80001c28:	02179513          	slli	a0,a5,0x21
    80001c2c:	9105                	srli	a0,a0,0x21
    80001c2e:	60a2                	ld	ra,8(sp)
    80001c30:	6402                	ld	s0,0(sp)
    80001c32:	0141                	addi	sp,sp,16
    80001c34:	8082                	ret
    80001c36:	6505                	lui	a0,0x1
    80001c38:	10550513          	addi	a0,a0,261 # 1105 <_entry-0x7fffeefb>
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	e58080e7          	jalr	-424(ra) # 80001a94 <sgenrand>
    80001c44:	bd65                	j	80001afc <genrand+0x20>

0000000080001c46 <random_at_most>:
    80001c46:	1101                	addi	sp,sp,-32
    80001c48:	ec06                	sd	ra,24(sp)
    80001c4a:	e822                	sd	s0,16(sp)
    80001c4c:	e426                	sd	s1,8(sp)
    80001c4e:	e04a                	sd	s2,0(sp)
    80001c50:	1000                	addi	s0,sp,32
    80001c52:	0505                	addi	a0,a0,1
    80001c54:	4485                	li	s1,1
    80001c56:	04fe                	slli	s1,s1,0x1f
    80001c58:	02a4d933          	divu	s2,s1,a0
    80001c5c:	02a4f533          	remu	a0,s1,a0
    80001c60:	4485                	li	s1,1
    80001c62:	04fe                	slli	s1,s1,0x1f
    80001c64:	8c89                	sub	s1,s1,a0
    80001c66:	00000097          	auipc	ra,0x0
    80001c6a:	e76080e7          	jalr	-394(ra) # 80001adc <genrand>
    80001c6e:	fe957ce3          	bgeu	a0,s1,80001c66 <random_at_most+0x20>
    80001c72:	03255533          	divu	a0,a0,s2
    80001c76:	60e2                	ld	ra,24(sp)
    80001c78:	6442                	ld	s0,16(sp)
    80001c7a:	64a2                	ld	s1,8(sp)
    80001c7c:	6902                	ld	s2,0(sp)
    80001c7e:	6105                	addi	sp,sp,32
    80001c80:	8082                	ret

0000000080001c82 <proc_mapstacks>:
    80001c82:	7139                	addi	sp,sp,-64
    80001c84:	fc06                	sd	ra,56(sp)
    80001c86:	f822                	sd	s0,48(sp)
    80001c88:	f426                	sd	s1,40(sp)
    80001c8a:	f04a                	sd	s2,32(sp)
    80001c8c:	ec4e                	sd	s3,24(sp)
    80001c8e:	e852                	sd	s4,16(sp)
    80001c90:	e456                	sd	s5,8(sp)
    80001c92:	e05a                	sd	s6,0(sp)
    80001c94:	0080                	addi	s0,sp,64
    80001c96:	89aa                	mv	s3,a0
    80001c98:	00231497          	auipc	s1,0x231
    80001c9c:	09848493          	addi	s1,s1,152 # 80232d30 <proc>
    80001ca0:	8b26                	mv	s6,s1
    80001ca2:	00007a97          	auipc	s5,0x7
    80001ca6:	35ea8a93          	addi	s5,s5,862 # 80009000 <etext>
    80001caa:	04000937          	lui	s2,0x4000
    80001cae:	197d                	addi	s2,s2,-1
    80001cb0:	0932                	slli	s2,s2,0xc
    80001cb2:	00239a17          	auipc	s4,0x239
    80001cb6:	c7ea0a13          	addi	s4,s4,-898 # 8023a930 <mt>
    80001cba:	fffff097          	auipc	ra,0xfffff
    80001cbe:	fdc080e7          	jalr	-36(ra) # 80000c96 <kalloc>
    80001cc2:	862a                	mv	a2,a0
    80001cc4:	c131                	beqz	a0,80001d08 <proc_mapstacks+0x86>
    80001cc6:	416485b3          	sub	a1,s1,s6
    80001cca:	8591                	srai	a1,a1,0x4
    80001ccc:	000ab783          	ld	a5,0(s5)
    80001cd0:	02f585b3          	mul	a1,a1,a5
    80001cd4:	2585                	addiw	a1,a1,1
    80001cd6:	00d5959b          	slliw	a1,a1,0xd
    80001cda:	4719                	li	a4,6
    80001cdc:	6685                	lui	a3,0x1
    80001cde:	40b905b3          	sub	a1,s2,a1
    80001ce2:	854e                	mv	a0,s3
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	67a080e7          	jalr	1658(ra) # 8000135e <kvmmap>
    80001cec:	1f048493          	addi	s1,s1,496
    80001cf0:	fd4495e3          	bne	s1,s4,80001cba <proc_mapstacks+0x38>
    80001cf4:	70e2                	ld	ra,56(sp)
    80001cf6:	7442                	ld	s0,48(sp)
    80001cf8:	74a2                	ld	s1,40(sp)
    80001cfa:	7902                	ld	s2,32(sp)
    80001cfc:	69e2                	ld	s3,24(sp)
    80001cfe:	6a42                	ld	s4,16(sp)
    80001d00:	6aa2                	ld	s5,8(sp)
    80001d02:	6b02                	ld	s6,0(sp)
    80001d04:	6121                	addi	sp,sp,64
    80001d06:	8082                	ret
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	53050513          	addi	a0,a0,1328 # 80009238 <digits+0x1f8>
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	834080e7          	jalr	-1996(ra) # 80000544 <panic>

0000000080001d18 <procinit>:
    80001d18:	7139                	addi	sp,sp,-64
    80001d1a:	fc06                	sd	ra,56(sp)
    80001d1c:	f822                	sd	s0,48(sp)
    80001d1e:	f426                	sd	s1,40(sp)
    80001d20:	f04a                	sd	s2,32(sp)
    80001d22:	ec4e                	sd	s3,24(sp)
    80001d24:	e852                	sd	s4,16(sp)
    80001d26:	e456                	sd	s5,8(sp)
    80001d28:	e05a                	sd	s6,0(sp)
    80001d2a:	0080                	addi	s0,sp,64
    80001d2c:	00007597          	auipc	a1,0x7
    80001d30:	51458593          	addi	a1,a1,1300 # 80009240 <digits+0x200>
    80001d34:	00230517          	auipc	a0,0x230
    80001d38:	15450513          	addi	a0,a0,340 # 80231e88 <pid_lock>
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	022080e7          	jalr	34(ra) # 80000d5e <initlock>
    80001d44:	00007597          	auipc	a1,0x7
    80001d48:	50458593          	addi	a1,a1,1284 # 80009248 <digits+0x208>
    80001d4c:	00230517          	auipc	a0,0x230
    80001d50:	15450513          	addi	a0,a0,340 # 80231ea0 <wait_lock>
    80001d54:	fffff097          	auipc	ra,0xfffff
    80001d58:	00a080e7          	jalr	10(ra) # 80000d5e <initlock>
    80001d5c:	00231497          	auipc	s1,0x231
    80001d60:	fd448493          	addi	s1,s1,-44 # 80232d30 <proc>
    80001d64:	00007b17          	auipc	s6,0x7
    80001d68:	4f4b0b13          	addi	s6,s6,1268 # 80009258 <digits+0x218>
    80001d6c:	8aa6                	mv	s5,s1
    80001d6e:	00007a17          	auipc	s4,0x7
    80001d72:	292a0a13          	addi	s4,s4,658 # 80009000 <etext>
    80001d76:	04000937          	lui	s2,0x4000
    80001d7a:	197d                	addi	s2,s2,-1
    80001d7c:	0932                	slli	s2,s2,0xc
    80001d7e:	00239997          	auipc	s3,0x239
    80001d82:	bb298993          	addi	s3,s3,-1102 # 8023a930 <mt>
    80001d86:	85da                	mv	a1,s6
    80001d88:	8526                	mv	a0,s1
    80001d8a:	fffff097          	auipc	ra,0xfffff
    80001d8e:	fd4080e7          	jalr	-44(ra) # 80000d5e <initlock>
    80001d92:	415487b3          	sub	a5,s1,s5
    80001d96:	8791                	srai	a5,a5,0x4
    80001d98:	000a3703          	ld	a4,0(s4)
    80001d9c:	02e787b3          	mul	a5,a5,a4
    80001da0:	2785                	addiw	a5,a5,1
    80001da2:	00d7979b          	slliw	a5,a5,0xd
    80001da6:	40f907b3          	sub	a5,s2,a5
    80001daa:	e0bc                	sd	a5,64(s1)
    80001dac:	1f048493          	addi	s1,s1,496
    80001db0:	fd349be3          	bne	s1,s3,80001d86 <procinit+0x6e>
    80001db4:	00230797          	auipc	a5,0x230
    80001db8:	50478793          	addi	a5,a5,1284 # 802322b8 <mlfq>
    80001dbc:	00231717          	auipc	a4,0x231
    80001dc0:	f7470713          	addi	a4,a4,-140 # 80232d30 <proc>
    80001dc4:	0007a023          	sw	zero,0(a5)
    80001dc8:	2007a823          	sw	zero,528(a5)
    80001dcc:	0007a223          	sw	zero,4(a5)
    80001dd0:	21878793          	addi	a5,a5,536
    80001dd4:	fee798e3          	bne	a5,a4,80001dc4 <procinit+0xac>
    80001dd8:	70e2                	ld	ra,56(sp)
    80001dda:	7442                	ld	s0,48(sp)
    80001ddc:	74a2                	ld	s1,40(sp)
    80001dde:	7902                	ld	s2,32(sp)
    80001de0:	69e2                	ld	s3,24(sp)
    80001de2:	6a42                	ld	s4,16(sp)
    80001de4:	6aa2                	ld	s5,8(sp)
    80001de6:	6b02                	ld	s6,0(sp)
    80001de8:	6121                	addi	sp,sp,64
    80001dea:	8082                	ret

0000000080001dec <cpuid>:
    80001dec:	1141                	addi	sp,sp,-16
    80001dee:	e422                	sd	s0,8(sp)
    80001df0:	0800                	addi	s0,sp,16
    80001df2:	8512                	mv	a0,tp
    80001df4:	2501                	sext.w	a0,a0
    80001df6:	6422                	ld	s0,8(sp)
    80001df8:	0141                	addi	sp,sp,16
    80001dfa:	8082                	ret

0000000080001dfc <mycpu>:
    80001dfc:	1141                	addi	sp,sp,-16
    80001dfe:	e422                	sd	s0,8(sp)
    80001e00:	0800                	addi	s0,sp,16
    80001e02:	8792                	mv	a5,tp
    80001e04:	2781                	sext.w	a5,a5
    80001e06:	079e                	slli	a5,a5,0x7
    80001e08:	00230517          	auipc	a0,0x230
    80001e0c:	0b050513          	addi	a0,a0,176 # 80231eb8 <cpus>
    80001e10:	953e                	add	a0,a0,a5
    80001e12:	6422                	ld	s0,8(sp)
    80001e14:	0141                	addi	sp,sp,16
    80001e16:	8082                	ret

0000000080001e18 <myproc>:
    80001e18:	1101                	addi	sp,sp,-32
    80001e1a:	ec06                	sd	ra,24(sp)
    80001e1c:	e822                	sd	s0,16(sp)
    80001e1e:	e426                	sd	s1,8(sp)
    80001e20:	1000                	addi	s0,sp,32
    80001e22:	fffff097          	auipc	ra,0xfffff
    80001e26:	f80080e7          	jalr	-128(ra) # 80000da2 <push_off>
    80001e2a:	8792                	mv	a5,tp
    80001e2c:	2781                	sext.w	a5,a5
    80001e2e:	079e                	slli	a5,a5,0x7
    80001e30:	00230717          	auipc	a4,0x230
    80001e34:	05870713          	addi	a4,a4,88 # 80231e88 <pid_lock>
    80001e38:	97ba                	add	a5,a5,a4
    80001e3a:	7b84                	ld	s1,48(a5)
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	006080e7          	jalr	6(ra) # 80000e42 <pop_off>
    80001e44:	8526                	mv	a0,s1
    80001e46:	60e2                	ld	ra,24(sp)
    80001e48:	6442                	ld	s0,16(sp)
    80001e4a:	64a2                	ld	s1,8(sp)
    80001e4c:	6105                	addi	sp,sp,32
    80001e4e:	8082                	ret

0000000080001e50 <forkret>:
    80001e50:	1141                	addi	sp,sp,-16
    80001e52:	e406                	sd	ra,8(sp)
    80001e54:	e022                	sd	s0,0(sp)
    80001e56:	0800                	addi	s0,sp,16
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	fc0080e7          	jalr	-64(ra) # 80001e18 <myproc>
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	042080e7          	jalr	66(ra) # 80000ea2 <release>
    80001e68:	00008797          	auipc	a5,0x8
    80001e6c:	d187a783          	lw	a5,-744(a5) # 80009b80 <first.1806>
    80001e70:	eb89                	bnez	a5,80001e82 <forkret+0x32>
    80001e72:	00001097          	auipc	ra,0x1
    80001e76:	212080e7          	jalr	530(ra) # 80003084 <usertrapret>
    80001e7a:	60a2                	ld	ra,8(sp)
    80001e7c:	6402                	ld	s0,0(sp)
    80001e7e:	0141                	addi	sp,sp,16
    80001e80:	8082                	ret
    80001e82:	00008797          	auipc	a5,0x8
    80001e86:	ce07af23          	sw	zero,-770(a5) # 80009b80 <first.1806>
    80001e8a:	4505                	li	a0,1
    80001e8c:	00002097          	auipc	ra,0x2
    80001e90:	464080e7          	jalr	1124(ra) # 800042f0 <fsinit>
    80001e94:	bff9                	j	80001e72 <forkret+0x22>

0000000080001e96 <allocpid>:
    80001e96:	1101                	addi	sp,sp,-32
    80001e98:	ec06                	sd	ra,24(sp)
    80001e9a:	e822                	sd	s0,16(sp)
    80001e9c:	e426                	sd	s1,8(sp)
    80001e9e:	e04a                	sd	s2,0(sp)
    80001ea0:	1000                	addi	s0,sp,32
    80001ea2:	00230917          	auipc	s2,0x230
    80001ea6:	fe690913          	addi	s2,s2,-26 # 80231e88 <pid_lock>
    80001eaa:	854a                	mv	a0,s2
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	f42080e7          	jalr	-190(ra) # 80000dee <acquire>
    80001eb4:	00008797          	auipc	a5,0x8
    80001eb8:	cd078793          	addi	a5,a5,-816 # 80009b84 <nextpid>
    80001ebc:	4384                	lw	s1,0(a5)
    80001ebe:	0014871b          	addiw	a4,s1,1
    80001ec2:	c398                	sw	a4,0(a5)
    80001ec4:	854a                	mv	a0,s2
    80001ec6:	fffff097          	auipc	ra,0xfffff
    80001eca:	fdc080e7          	jalr	-36(ra) # 80000ea2 <release>
    80001ece:	8526                	mv	a0,s1
    80001ed0:	60e2                	ld	ra,24(sp)
    80001ed2:	6442                	ld	s0,16(sp)
    80001ed4:	64a2                	ld	s1,8(sp)
    80001ed6:	6902                	ld	s2,0(sp)
    80001ed8:	6105                	addi	sp,sp,32
    80001eda:	8082                	ret

0000000080001edc <proc_pagetable>:
    80001edc:	1101                	addi	sp,sp,-32
    80001ede:	ec06                	sd	ra,24(sp)
    80001ee0:	e822                	sd	s0,16(sp)
    80001ee2:	e426                	sd	s1,8(sp)
    80001ee4:	e04a                	sd	s2,0(sp)
    80001ee6:	1000                	addi	s0,sp,32
    80001ee8:	892a                	mv	s2,a0
    80001eea:	fffff097          	auipc	ra,0xfffff
    80001eee:	65e080e7          	jalr	1630(ra) # 80001548 <uvmcreate>
    80001ef2:	84aa                	mv	s1,a0
    80001ef4:	c121                	beqz	a0,80001f34 <proc_pagetable+0x58>
    80001ef6:	4729                	li	a4,10
    80001ef8:	00006697          	auipc	a3,0x6
    80001efc:	10868693          	addi	a3,a3,264 # 80008000 <_trampoline>
    80001f00:	6605                	lui	a2,0x1
    80001f02:	040005b7          	lui	a1,0x4000
    80001f06:	15fd                	addi	a1,a1,-1
    80001f08:	05b2                	slli	a1,a1,0xc
    80001f0a:	fffff097          	auipc	ra,0xfffff
    80001f0e:	3b4080e7          	jalr	948(ra) # 800012be <mappages>
    80001f12:	02054863          	bltz	a0,80001f42 <proc_pagetable+0x66>
    80001f16:	4719                	li	a4,6
    80001f18:	05893683          	ld	a3,88(s2)
    80001f1c:	6605                	lui	a2,0x1
    80001f1e:	020005b7          	lui	a1,0x2000
    80001f22:	15fd                	addi	a1,a1,-1
    80001f24:	05b6                	slli	a1,a1,0xd
    80001f26:	8526                	mv	a0,s1
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	396080e7          	jalr	918(ra) # 800012be <mappages>
    80001f30:	02054163          	bltz	a0,80001f52 <proc_pagetable+0x76>
    80001f34:	8526                	mv	a0,s1
    80001f36:	60e2                	ld	ra,24(sp)
    80001f38:	6442                	ld	s0,16(sp)
    80001f3a:	64a2                	ld	s1,8(sp)
    80001f3c:	6902                	ld	s2,0(sp)
    80001f3e:	6105                	addi	sp,sp,32
    80001f40:	8082                	ret
    80001f42:	4581                	li	a1,0
    80001f44:	8526                	mv	a0,s1
    80001f46:	00000097          	auipc	ra,0x0
    80001f4a:	806080e7          	jalr	-2042(ra) # 8000174c <uvmfree>
    80001f4e:	4481                	li	s1,0
    80001f50:	b7d5                	j	80001f34 <proc_pagetable+0x58>
    80001f52:	4681                	li	a3,0
    80001f54:	4605                	li	a2,1
    80001f56:	040005b7          	lui	a1,0x4000
    80001f5a:	15fd                	addi	a1,a1,-1
    80001f5c:	05b2                	slli	a1,a1,0xc
    80001f5e:	8526                	mv	a0,s1
    80001f60:	fffff097          	auipc	ra,0xfffff
    80001f64:	524080e7          	jalr	1316(ra) # 80001484 <uvmunmap>
    80001f68:	4581                	li	a1,0
    80001f6a:	8526                	mv	a0,s1
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	7e0080e7          	jalr	2016(ra) # 8000174c <uvmfree>
    80001f74:	4481                	li	s1,0
    80001f76:	bf7d                	j	80001f34 <proc_pagetable+0x58>

0000000080001f78 <proc_freepagetable>:
    80001f78:	1101                	addi	sp,sp,-32
    80001f7a:	ec06                	sd	ra,24(sp)
    80001f7c:	e822                	sd	s0,16(sp)
    80001f7e:	e426                	sd	s1,8(sp)
    80001f80:	e04a                	sd	s2,0(sp)
    80001f82:	1000                	addi	s0,sp,32
    80001f84:	84aa                	mv	s1,a0
    80001f86:	892e                	mv	s2,a1
    80001f88:	4681                	li	a3,0
    80001f8a:	4605                	li	a2,1
    80001f8c:	040005b7          	lui	a1,0x4000
    80001f90:	15fd                	addi	a1,a1,-1
    80001f92:	05b2                	slli	a1,a1,0xc
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	4f0080e7          	jalr	1264(ra) # 80001484 <uvmunmap>
    80001f9c:	4681                	li	a3,0
    80001f9e:	4605                	li	a2,1
    80001fa0:	020005b7          	lui	a1,0x2000
    80001fa4:	15fd                	addi	a1,a1,-1
    80001fa6:	05b6                	slli	a1,a1,0xd
    80001fa8:	8526                	mv	a0,s1
    80001faa:	fffff097          	auipc	ra,0xfffff
    80001fae:	4da080e7          	jalr	1242(ra) # 80001484 <uvmunmap>
    80001fb2:	85ca                	mv	a1,s2
    80001fb4:	8526                	mv	a0,s1
    80001fb6:	fffff097          	auipc	ra,0xfffff
    80001fba:	796080e7          	jalr	1942(ra) # 8000174c <uvmfree>
    80001fbe:	60e2                	ld	ra,24(sp)
    80001fc0:	6442                	ld	s0,16(sp)
    80001fc2:	64a2                	ld	s1,8(sp)
    80001fc4:	6902                	ld	s2,0(sp)
    80001fc6:	6105                	addi	sp,sp,32
    80001fc8:	8082                	ret

0000000080001fca <freeproc>:
    80001fca:	1101                	addi	sp,sp,-32
    80001fcc:	ec06                	sd	ra,24(sp)
    80001fce:	e822                	sd	s0,16(sp)
    80001fd0:	e426                	sd	s1,8(sp)
    80001fd2:	1000                	addi	s0,sp,32
    80001fd4:	84aa                	mv	s1,a0
    80001fd6:	6d28                	ld	a0,88(a0)
    80001fd8:	c509                	beqz	a0,80001fe2 <freeproc+0x18>
    80001fda:	fffff097          	auipc	ra,0xfffff
    80001fde:	a86080e7          	jalr	-1402(ra) # 80000a60 <kfree>
    80001fe2:	0404bc23          	sd	zero,88(s1)
    80001fe6:	68a8                	ld	a0,80(s1)
    80001fe8:	c511                	beqz	a0,80001ff4 <freeproc+0x2a>
    80001fea:	64ac                	ld	a1,72(s1)
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	f8c080e7          	jalr	-116(ra) # 80001f78 <proc_freepagetable>
    80001ff4:	0404b823          	sd	zero,80(s1)
    80001ff8:	0404b423          	sd	zero,72(s1)
    80001ffc:	0204a823          	sw	zero,48(s1)
    80002000:	0204bc23          	sd	zero,56(s1)
    80002004:	14048c23          	sb	zero,344(s1)
    80002008:	0204b023          	sd	zero,32(s1)
    8000200c:	0204a423          	sw	zero,40(s1)
    80002010:	0204a623          	sw	zero,44(s1)
    80002014:	0004ac23          	sw	zero,24(s1)
    80002018:	1a04ae23          	sw	zero,444(s1)
    8000201c:	60e2                	ld	ra,24(sp)
    8000201e:	6442                	ld	s0,16(sp)
    80002020:	64a2                	ld	s1,8(sp)
    80002022:	6105                	addi	sp,sp,32
    80002024:	8082                	ret

0000000080002026 <allocproc>:
    80002026:	7179                	addi	sp,sp,-48
    80002028:	f406                	sd	ra,40(sp)
    8000202a:	f022                	sd	s0,32(sp)
    8000202c:	ec26                	sd	s1,24(sp)
    8000202e:	e84a                	sd	s2,16(sp)
    80002030:	e44e                	sd	s3,8(sp)
    80002032:	1800                	addi	s0,sp,48
    80002034:	00231497          	auipc	s1,0x231
    80002038:	cfc48493          	addi	s1,s1,-772 # 80232d30 <proc>
    8000203c:	00239917          	auipc	s2,0x239
    80002040:	8f490913          	addi	s2,s2,-1804 # 8023a930 <mt>
    80002044:	8526                	mv	a0,s1
    80002046:	fffff097          	auipc	ra,0xfffff
    8000204a:	da8080e7          	jalr	-600(ra) # 80000dee <acquire>
    8000204e:	4c9c                	lw	a5,24(s1)
    80002050:	cf81                	beqz	a5,80002068 <allocproc+0x42>
    80002052:	8526                	mv	a0,s1
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	e4e080e7          	jalr	-434(ra) # 80000ea2 <release>
    8000205c:	1f048493          	addi	s1,s1,496
    80002060:	ff2492e3          	bne	s1,s2,80002044 <allocproc+0x1e>
    80002064:	4481                	li	s1,0
    80002066:	a865                	j	8000211e <allocproc+0xf8>
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	e2e080e7          	jalr	-466(ra) # 80001e96 <allocpid>
    80002070:	d888                	sw	a0,48(s1)
    80002072:	4785                	li	a5,1
    80002074:	cc9c                	sw	a5,24(s1)
    80002076:	fffff097          	auipc	ra,0xfffff
    8000207a:	c20080e7          	jalr	-992(ra) # 80000c96 <kalloc>
    8000207e:	892a                	mv	s2,a0
    80002080:	eca8                	sd	a0,88(s1)
    80002082:	c555                	beqz	a0,8000212e <allocproc+0x108>
    80002084:	8526                	mv	a0,s1
    80002086:	00000097          	auipc	ra,0x0
    8000208a:	e56080e7          	jalr	-426(ra) # 80001edc <proc_pagetable>
    8000208e:	892a                	mv	s2,a0
    80002090:	e8a8                	sd	a0,80(s1)
    80002092:	c955                	beqz	a0,80002146 <allocproc+0x120>
    80002094:	00008917          	auipc	s2,0x8
    80002098:	b7090913          	addi	s2,s2,-1168 # 80009c04 <ticks>
    8000209c:	00092783          	lw	a5,0(s2)
    800020a0:	18f4a823          	sw	a5,400(s1)
    800020a4:	1804ac23          	sw	zero,408(s1)
    800020a8:	1a04a623          	sw	zero,428(s1)
    800020ac:	1804aa23          	sw	zero,404(s1)
    800020b0:	03c00793          	li	a5,60
    800020b4:	1af4a223          	sw	a5,420(s1)
    800020b8:	1804a623          	sw	zero,396(s1)
    800020bc:	1a04a423          	sw	zero,424(s1)
    800020c0:	1604a423          	sw	zero,360(s1)
    800020c4:	4985                	li	s3,1
    800020c6:	1b34ae23          	sw	s3,444(s1)
    800020ca:	1c04a023          	sw	zero,448(s1)
    800020ce:	07000613          	li	a2,112
    800020d2:	4581                	li	a1,0
    800020d4:	06048513          	addi	a0,s1,96
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	e12080e7          	jalr	-494(ra) # 80000eea <memset>
    800020e0:	00000797          	auipc	a5,0x0
    800020e4:	d7078793          	addi	a5,a5,-656 # 80001e50 <forkret>
    800020e8:	f0bc                	sd	a5,96(s1)
    800020ea:	60bc                	ld	a5,64(s1)
    800020ec:	6705                	lui	a4,0x1
    800020ee:	97ba                	add	a5,a5,a4
    800020f0:	f4bc                	sd	a5,104(s1)
    800020f2:	1c04a223          	sw	zero,452(s1)
    800020f6:	1c04a423          	sw	zero,456(s1)
    800020fa:	1d34a623          	sw	s3,460(s1)
    800020fe:	1c04a823          	sw	zero,464(s1)
    80002102:	00092783          	lw	a5,0(s2)
    80002106:	1cf4aa23          	sw	a5,468(s1)
    8000210a:	1c04ac23          	sw	zero,472(s1)
    8000210e:	1c04ae23          	sw	zero,476(s1)
    80002112:	1e04a023          	sw	zero,480(s1)
    80002116:	1e04a223          	sw	zero,484(s1)
    8000211a:	1e04a423          	sw	zero,488(s1)
    8000211e:	8526                	mv	a0,s1
    80002120:	70a2                	ld	ra,40(sp)
    80002122:	7402                	ld	s0,32(sp)
    80002124:	64e2                	ld	s1,24(sp)
    80002126:	6942                	ld	s2,16(sp)
    80002128:	69a2                	ld	s3,8(sp)
    8000212a:	6145                	addi	sp,sp,48
    8000212c:	8082                	ret
    8000212e:	8526                	mv	a0,s1
    80002130:	00000097          	auipc	ra,0x0
    80002134:	e9a080e7          	jalr	-358(ra) # 80001fca <freeproc>
    80002138:	8526                	mv	a0,s1
    8000213a:	fffff097          	auipc	ra,0xfffff
    8000213e:	d68080e7          	jalr	-664(ra) # 80000ea2 <release>
    80002142:	84ca                	mv	s1,s2
    80002144:	bfe9                	j	8000211e <allocproc+0xf8>
    80002146:	8526                	mv	a0,s1
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	e82080e7          	jalr	-382(ra) # 80001fca <freeproc>
    80002150:	8526                	mv	a0,s1
    80002152:	fffff097          	auipc	ra,0xfffff
    80002156:	d50080e7          	jalr	-688(ra) # 80000ea2 <release>
    8000215a:	84ca                	mv	s1,s2
    8000215c:	b7c9                	j	8000211e <allocproc+0xf8>

000000008000215e <userinit>:
    8000215e:	1101                	addi	sp,sp,-32
    80002160:	ec06                	sd	ra,24(sp)
    80002162:	e822                	sd	s0,16(sp)
    80002164:	e426                	sd	s1,8(sp)
    80002166:	1000                	addi	s0,sp,32
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	ebe080e7          	jalr	-322(ra) # 80002026 <allocproc>
    80002170:	84aa                	mv	s1,a0
    80002172:	00008797          	auipc	a5,0x8
    80002176:	a8a7b323          	sd	a0,-1402(a5) # 80009bf8 <initproc>
    8000217a:	03400613          	li	a2,52
    8000217e:	00008597          	auipc	a1,0x8
    80002182:	a1258593          	addi	a1,a1,-1518 # 80009b90 <initcode>
    80002186:	6928                	ld	a0,80(a0)
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	3ee080e7          	jalr	1006(ra) # 80001576 <uvmfirst>
    80002190:	6785                	lui	a5,0x1
    80002192:	e4bc                	sd	a5,72(s1)
    80002194:	6cb8                	ld	a4,88(s1)
    80002196:	00073c23          	sd	zero,24(a4) # 1018 <_entry-0x7fffefe8>
    8000219a:	6cb8                	ld	a4,88(s1)
    8000219c:	fb1c                	sd	a5,48(a4)
    8000219e:	4641                	li	a2,16
    800021a0:	00007597          	auipc	a1,0x7
    800021a4:	0c058593          	addi	a1,a1,192 # 80009260 <digits+0x220>
    800021a8:	15848513          	addi	a0,s1,344
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	e90080e7          	jalr	-368(ra) # 8000103c <safestrcpy>
    800021b4:	00007517          	auipc	a0,0x7
    800021b8:	0bc50513          	addi	a0,a0,188 # 80009270 <digits+0x230>
    800021bc:	00003097          	auipc	ra,0x3
    800021c0:	b56080e7          	jalr	-1194(ra) # 80004d12 <namei>
    800021c4:	14a4b823          	sd	a0,336(s1)
    800021c8:	478d                	li	a5,3
    800021ca:	cc9c                	sw	a5,24(s1)
    800021cc:	8526                	mv	a0,s1
    800021ce:	fffff097          	auipc	ra,0xfffff
    800021d2:	cd4080e7          	jalr	-812(ra) # 80000ea2 <release>
    800021d6:	60e2                	ld	ra,24(sp)
    800021d8:	6442                	ld	s0,16(sp)
    800021da:	64a2                	ld	s1,8(sp)
    800021dc:	6105                	addi	sp,sp,32
    800021de:	8082                	ret

00000000800021e0 <growproc>:
    800021e0:	1101                	addi	sp,sp,-32
    800021e2:	ec06                	sd	ra,24(sp)
    800021e4:	e822                	sd	s0,16(sp)
    800021e6:	e426                	sd	s1,8(sp)
    800021e8:	e04a                	sd	s2,0(sp)
    800021ea:	1000                	addi	s0,sp,32
    800021ec:	892a                	mv	s2,a0
    800021ee:	00000097          	auipc	ra,0x0
    800021f2:	c2a080e7          	jalr	-982(ra) # 80001e18 <myproc>
    800021f6:	84aa                	mv	s1,a0
    800021f8:	652c                	ld	a1,72(a0)
    800021fa:	01204c63          	bgtz	s2,80002212 <growproc+0x32>
    800021fe:	02094663          	bltz	s2,8000222a <growproc+0x4a>
    80002202:	e4ac                	sd	a1,72(s1)
    80002204:	4501                	li	a0,0
    80002206:	60e2                	ld	ra,24(sp)
    80002208:	6442                	ld	s0,16(sp)
    8000220a:	64a2                	ld	s1,8(sp)
    8000220c:	6902                	ld	s2,0(sp)
    8000220e:	6105                	addi	sp,sp,32
    80002210:	8082                	ret
    80002212:	4691                	li	a3,4
    80002214:	00b90633          	add	a2,s2,a1
    80002218:	6928                	ld	a0,80(a0)
    8000221a:	fffff097          	auipc	ra,0xfffff
    8000221e:	416080e7          	jalr	1046(ra) # 80001630 <uvmalloc>
    80002222:	85aa                	mv	a1,a0
    80002224:	fd79                	bnez	a0,80002202 <growproc+0x22>
    80002226:	557d                	li	a0,-1
    80002228:	bff9                	j	80002206 <growproc+0x26>
    8000222a:	00b90633          	add	a2,s2,a1
    8000222e:	6928                	ld	a0,80(a0)
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	3b8080e7          	jalr	952(ra) # 800015e8 <uvmdealloc>
    80002238:	85aa                	mv	a1,a0
    8000223a:	b7e1                	j	80002202 <growproc+0x22>

000000008000223c <fork>:
    8000223c:	7179                	addi	sp,sp,-48
    8000223e:	f406                	sd	ra,40(sp)
    80002240:	f022                	sd	s0,32(sp)
    80002242:	ec26                	sd	s1,24(sp)
    80002244:	e84a                	sd	s2,16(sp)
    80002246:	e44e                	sd	s3,8(sp)
    80002248:	e052                	sd	s4,0(sp)
    8000224a:	1800                	addi	s0,sp,48
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	bcc080e7          	jalr	-1076(ra) # 80001e18 <myproc>
    80002254:	892a                	mv	s2,a0
    80002256:	00000097          	auipc	ra,0x0
    8000225a:	dd0080e7          	jalr	-560(ra) # 80002026 <allocproc>
    8000225e:	12050c63          	beqz	a0,80002396 <fork+0x15a>
    80002262:	89aa                	mv	s3,a0
    80002264:	19c92783          	lw	a5,412(s2)
    80002268:	18f52e23          	sw	a5,412(a0)
    8000226c:	04893603          	ld	a2,72(s2)
    80002270:	692c                	ld	a1,80(a0)
    80002272:	05093503          	ld	a0,80(s2)
    80002276:	fffff097          	auipc	ra,0xfffff
    8000227a:	50e080e7          	jalr	1294(ra) # 80001784 <uvmcopy>
    8000227e:	04054663          	bltz	a0,800022ca <fork+0x8e>
    80002282:	04893783          	ld	a5,72(s2)
    80002286:	04f9b423          	sd	a5,72(s3)
    8000228a:	05893683          	ld	a3,88(s2)
    8000228e:	87b6                	mv	a5,a3
    80002290:	0589b703          	ld	a4,88(s3)
    80002294:	12068693          	addi	a3,a3,288
    80002298:	0007b803          	ld	a6,0(a5) # 1000 <_entry-0x7ffff000>
    8000229c:	6788                	ld	a0,8(a5)
    8000229e:	6b8c                	ld	a1,16(a5)
    800022a0:	6f90                	ld	a2,24(a5)
    800022a2:	01073023          	sd	a6,0(a4)
    800022a6:	e708                	sd	a0,8(a4)
    800022a8:	eb0c                	sd	a1,16(a4)
    800022aa:	ef10                	sd	a2,24(a4)
    800022ac:	02078793          	addi	a5,a5,32
    800022b0:	02070713          	addi	a4,a4,32
    800022b4:	fed792e3          	bne	a5,a3,80002298 <fork+0x5c>
    800022b8:	0589b783          	ld	a5,88(s3)
    800022bc:	0607b823          	sd	zero,112(a5)
    800022c0:	0d000493          	li	s1,208
    800022c4:	15000a13          	li	s4,336
    800022c8:	a03d                	j	800022f6 <fork+0xba>
    800022ca:	854e                	mv	a0,s3
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	cfe080e7          	jalr	-770(ra) # 80001fca <freeproc>
    800022d4:	854e                	mv	a0,s3
    800022d6:	fffff097          	auipc	ra,0xfffff
    800022da:	bcc080e7          	jalr	-1076(ra) # 80000ea2 <release>
    800022de:	5a7d                	li	s4,-1
    800022e0:	a055                	j	80002384 <fork+0x148>
    800022e2:	00003097          	auipc	ra,0x3
    800022e6:	0c6080e7          	jalr	198(ra) # 800053a8 <filedup>
    800022ea:	009987b3          	add	a5,s3,s1
    800022ee:	e388                	sd	a0,0(a5)
    800022f0:	04a1                	addi	s1,s1,8
    800022f2:	01448763          	beq	s1,s4,80002300 <fork+0xc4>
    800022f6:	009907b3          	add	a5,s2,s1
    800022fa:	6388                	ld	a0,0(a5)
    800022fc:	f17d                	bnez	a0,800022e2 <fork+0xa6>
    800022fe:	bfcd                	j	800022f0 <fork+0xb4>
    80002300:	15093503          	ld	a0,336(s2)
    80002304:	00002097          	auipc	ra,0x2
    80002308:	22a080e7          	jalr	554(ra) # 8000452e <idup>
    8000230c:	14a9b823          	sd	a0,336(s3)
    80002310:	4641                	li	a2,16
    80002312:	15890593          	addi	a1,s2,344
    80002316:	15898513          	addi	a0,s3,344
    8000231a:	fffff097          	auipc	ra,0xfffff
    8000231e:	d22080e7          	jalr	-734(ra) # 8000103c <safestrcpy>
    80002322:	0309aa03          	lw	s4,48(s3)
    80002326:	854e                	mv	a0,s3
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	b7a080e7          	jalr	-1158(ra) # 80000ea2 <release>
    80002330:	00230497          	auipc	s1,0x230
    80002334:	b7048493          	addi	s1,s1,-1168 # 80231ea0 <wait_lock>
    80002338:	8526                	mv	a0,s1
    8000233a:	fffff097          	auipc	ra,0xfffff
    8000233e:	ab4080e7          	jalr	-1356(ra) # 80000dee <acquire>
    80002342:	0329bc23          	sd	s2,56(s3)
    80002346:	1c092783          	lw	a5,448(s2)
    8000234a:	1cf9a023          	sw	a5,448(s3)
    8000234e:	00008717          	auipc	a4,0x8
    80002352:	8b270713          	addi	a4,a4,-1870 # 80009c00 <totaltickets>
    80002356:	1bc9a783          	lw	a5,444(s3)
    8000235a:	4314                	lw	a3,0(a4)
    8000235c:	9fb5                	addw	a5,a5,a3
    8000235e:	c31c                	sw	a5,0(a4)
    80002360:	8526                	mv	a0,s1
    80002362:	fffff097          	auipc	ra,0xfffff
    80002366:	b40080e7          	jalr	-1216(ra) # 80000ea2 <release>
    8000236a:	854e                	mv	a0,s3
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	a82080e7          	jalr	-1406(ra) # 80000dee <acquire>
    80002374:	478d                	li	a5,3
    80002376:	00f9ac23          	sw	a5,24(s3)
    8000237a:	854e                	mv	a0,s3
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	b26080e7          	jalr	-1242(ra) # 80000ea2 <release>
    80002384:	8552                	mv	a0,s4
    80002386:	70a2                	ld	ra,40(sp)
    80002388:	7402                	ld	s0,32(sp)
    8000238a:	64e2                	ld	s1,24(sp)
    8000238c:	6942                	ld	s2,16(sp)
    8000238e:	69a2                	ld	s3,8(sp)
    80002390:	6a02                	ld	s4,0(sp)
    80002392:	6145                	addi	sp,sp,48
    80002394:	8082                	ret
    80002396:	5a7d                	li	s4,-1
    80002398:	b7f5                	j	80002384 <fork+0x148>

000000008000239a <set_proc_tckts>:
    8000239a:	1101                	addi	sp,sp,-32
    8000239c:	ec06                	sd	ra,24(sp)
    8000239e:	e822                	sd	s0,16(sp)
    800023a0:	e426                	sd	s1,8(sp)
    800023a2:	1000                	addi	s0,sp,32
    800023a4:	84aa                	mv	s1,a0
    800023a6:	00231517          	auipc	a0,0x231
    800023aa:	98a50513          	addi	a0,a0,-1654 # 80232d30 <proc>
    800023ae:	fffff097          	auipc	ra,0xfffff
    800023b2:	a40080e7          	jalr	-1472(ra) # 80000dee <acquire>
    800023b6:	00008717          	auipc	a4,0x8
    800023ba:	84a70713          	addi	a4,a4,-1974 # 80009c00 <totaltickets>
    800023be:	00231517          	auipc	a0,0x231
    800023c2:	97250513          	addi	a0,a0,-1678 # 80232d30 <proc>
    800023c6:	431c                	lw	a5,0(a4)
    800023c8:	1bc52683          	lw	a3,444(a0)
    800023cc:	9f95                	subw	a5,a5,a3
    800023ce:	1a952e23          	sw	s1,444(a0)
    800023d2:	9fa5                	addw	a5,a5,s1
    800023d4:	c31c                	sw	a5,0(a4)
    800023d6:	fffff097          	auipc	ra,0xfffff
    800023da:	acc080e7          	jalr	-1332(ra) # 80000ea2 <release>
    800023de:	60e2                	ld	ra,24(sp)
    800023e0:	6442                	ld	s0,16(sp)
    800023e2:	64a2                	ld	s1,8(sp)
    800023e4:	6105                	addi	sp,sp,32
    800023e6:	8082                	ret

00000000800023e8 <sched>:
    800023e8:	7179                	addi	sp,sp,-48
    800023ea:	f406                	sd	ra,40(sp)
    800023ec:	f022                	sd	s0,32(sp)
    800023ee:	ec26                	sd	s1,24(sp)
    800023f0:	e84a                	sd	s2,16(sp)
    800023f2:	e44e                	sd	s3,8(sp)
    800023f4:	1800                	addi	s0,sp,48
    800023f6:	00000097          	auipc	ra,0x0
    800023fa:	a22080e7          	jalr	-1502(ra) # 80001e18 <myproc>
    800023fe:	84aa                	mv	s1,a0
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	974080e7          	jalr	-1676(ra) # 80000d74 <holding>
    80002408:	c93d                	beqz	a0,8000247e <sched+0x96>
    8000240a:	8792                	mv	a5,tp
    8000240c:	2781                	sext.w	a5,a5
    8000240e:	079e                	slli	a5,a5,0x7
    80002410:	00230717          	auipc	a4,0x230
    80002414:	a7870713          	addi	a4,a4,-1416 # 80231e88 <pid_lock>
    80002418:	97ba                	add	a5,a5,a4
    8000241a:	0a87a703          	lw	a4,168(a5)
    8000241e:	4785                	li	a5,1
    80002420:	06f71763          	bne	a4,a5,8000248e <sched+0xa6>
    80002424:	4c98                	lw	a4,24(s1)
    80002426:	4791                	li	a5,4
    80002428:	06f70b63          	beq	a4,a5,8000249e <sched+0xb6>
    8000242c:	100027f3          	csrr	a5,sstatus
    80002430:	8b89                	andi	a5,a5,2
    80002432:	efb5                	bnez	a5,800024ae <sched+0xc6>
    80002434:	8792                	mv	a5,tp
    80002436:	00230917          	auipc	s2,0x230
    8000243a:	a5290913          	addi	s2,s2,-1454 # 80231e88 <pid_lock>
    8000243e:	2781                	sext.w	a5,a5
    80002440:	079e                	slli	a5,a5,0x7
    80002442:	97ca                	add	a5,a5,s2
    80002444:	0ac7a983          	lw	s3,172(a5)
    80002448:	8792                	mv	a5,tp
    8000244a:	2781                	sext.w	a5,a5
    8000244c:	079e                	slli	a5,a5,0x7
    8000244e:	00230597          	auipc	a1,0x230
    80002452:	a7258593          	addi	a1,a1,-1422 # 80231ec0 <cpus+0x8>
    80002456:	95be                	add	a1,a1,a5
    80002458:	06048513          	addi	a0,s1,96
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	b7e080e7          	jalr	-1154(ra) # 80002fda <swtch>
    80002464:	8792                	mv	a5,tp
    80002466:	2781                	sext.w	a5,a5
    80002468:	079e                	slli	a5,a5,0x7
    8000246a:	97ca                	add	a5,a5,s2
    8000246c:	0b37a623          	sw	s3,172(a5)
    80002470:	70a2                	ld	ra,40(sp)
    80002472:	7402                	ld	s0,32(sp)
    80002474:	64e2                	ld	s1,24(sp)
    80002476:	6942                	ld	s2,16(sp)
    80002478:	69a2                	ld	s3,8(sp)
    8000247a:	6145                	addi	sp,sp,48
    8000247c:	8082                	ret
    8000247e:	00007517          	auipc	a0,0x7
    80002482:	dfa50513          	addi	a0,a0,-518 # 80009278 <digits+0x238>
    80002486:	ffffe097          	auipc	ra,0xffffe
    8000248a:	0be080e7          	jalr	190(ra) # 80000544 <panic>
    8000248e:	00007517          	auipc	a0,0x7
    80002492:	dfa50513          	addi	a0,a0,-518 # 80009288 <digits+0x248>
    80002496:	ffffe097          	auipc	ra,0xffffe
    8000249a:	0ae080e7          	jalr	174(ra) # 80000544 <panic>
    8000249e:	00007517          	auipc	a0,0x7
    800024a2:	dfa50513          	addi	a0,a0,-518 # 80009298 <digits+0x258>
    800024a6:	ffffe097          	auipc	ra,0xffffe
    800024aa:	09e080e7          	jalr	158(ra) # 80000544 <panic>
    800024ae:	00007517          	auipc	a0,0x7
    800024b2:	dfa50513          	addi	a0,a0,-518 # 800092a8 <digits+0x268>
    800024b6:	ffffe097          	auipc	ra,0xffffe
    800024ba:	08e080e7          	jalr	142(ra) # 80000544 <panic>

00000000800024be <yield>:
    800024be:	1101                	addi	sp,sp,-32
    800024c0:	ec06                	sd	ra,24(sp)
    800024c2:	e822                	sd	s0,16(sp)
    800024c4:	e426                	sd	s1,8(sp)
    800024c6:	1000                	addi	s0,sp,32
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	950080e7          	jalr	-1712(ra) # 80001e18 <myproc>
    800024d0:	84aa                	mv	s1,a0
    800024d2:	fffff097          	auipc	ra,0xfffff
    800024d6:	91c080e7          	jalr	-1764(ra) # 80000dee <acquire>
    800024da:	478d                	li	a5,3
    800024dc:	cc9c                	sw	a5,24(s1)
    800024de:	00000097          	auipc	ra,0x0
    800024e2:	f0a080e7          	jalr	-246(ra) # 800023e8 <sched>
    800024e6:	8526                	mv	a0,s1
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	9ba080e7          	jalr	-1606(ra) # 80000ea2 <release>
    800024f0:	60e2                	ld	ra,24(sp)
    800024f2:	6442                	ld	s0,16(sp)
    800024f4:	64a2                	ld	s1,8(sp)
    800024f6:	6105                	addi	sp,sp,32
    800024f8:	8082                	ret

00000000800024fa <sleep>:
    800024fa:	7179                	addi	sp,sp,-48
    800024fc:	f406                	sd	ra,40(sp)
    800024fe:	f022                	sd	s0,32(sp)
    80002500:	ec26                	sd	s1,24(sp)
    80002502:	e84a                	sd	s2,16(sp)
    80002504:	e44e                	sd	s3,8(sp)
    80002506:	1800                	addi	s0,sp,48
    80002508:	89aa                	mv	s3,a0
    8000250a:	892e                	mv	s2,a1
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	90c080e7          	jalr	-1780(ra) # 80001e18 <myproc>
    80002514:	84aa                	mv	s1,a0
    80002516:	fffff097          	auipc	ra,0xfffff
    8000251a:	8d8080e7          	jalr	-1832(ra) # 80000dee <acquire>
    8000251e:	854a                	mv	a0,s2
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	982080e7          	jalr	-1662(ra) # 80000ea2 <release>
    80002528:	0334b023          	sd	s3,32(s1)
    8000252c:	4789                	li	a5,2
    8000252e:	cc9c                	sw	a5,24(s1)
    80002530:	00007717          	auipc	a4,0x7
    80002534:	6d070713          	addi	a4,a4,1744 # 80009c00 <totaltickets>
    80002538:	431c                	lw	a5,0(a4)
    8000253a:	1bc4a683          	lw	a3,444(s1)
    8000253e:	9f95                	subw	a5,a5,a3
    80002540:	c31c                	sw	a5,0(a4)
    80002542:	00000097          	auipc	ra,0x0
    80002546:	ea6080e7          	jalr	-346(ra) # 800023e8 <sched>
    8000254a:	0204b023          	sd	zero,32(s1)
    8000254e:	8526                	mv	a0,s1
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	952080e7          	jalr	-1710(ra) # 80000ea2 <release>
    80002558:	854a                	mv	a0,s2
    8000255a:	fffff097          	auipc	ra,0xfffff
    8000255e:	894080e7          	jalr	-1900(ra) # 80000dee <acquire>
    80002562:	70a2                	ld	ra,40(sp)
    80002564:	7402                	ld	s0,32(sp)
    80002566:	64e2                	ld	s1,24(sp)
    80002568:	6942                	ld	s2,16(sp)
    8000256a:	69a2                	ld	s3,8(sp)
    8000256c:	6145                	addi	sp,sp,48
    8000256e:	8082                	ret

0000000080002570 <wakeup>:
    80002570:	7139                	addi	sp,sp,-64
    80002572:	fc06                	sd	ra,56(sp)
    80002574:	f822                	sd	s0,48(sp)
    80002576:	f426                	sd	s1,40(sp)
    80002578:	f04a                	sd	s2,32(sp)
    8000257a:	ec4e                	sd	s3,24(sp)
    8000257c:	e852                	sd	s4,16(sp)
    8000257e:	e456                	sd	s5,8(sp)
    80002580:	0080                	addi	s0,sp,64
    80002582:	8a2a                	mv	s4,a0
    80002584:	00230497          	auipc	s1,0x230
    80002588:	7ac48493          	addi	s1,s1,1964 # 80232d30 <proc>
    8000258c:	4989                	li	s3,2
    8000258e:	4a8d                	li	s5,3
    80002590:	00238917          	auipc	s2,0x238
    80002594:	3a090913          	addi	s2,s2,928 # 8023a930 <mt>
    80002598:	a821                	j	800025b0 <wakeup+0x40>
    8000259a:	0154ac23          	sw	s5,24(s1)
    8000259e:	8526                	mv	a0,s1
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	902080e7          	jalr	-1790(ra) # 80000ea2 <release>
    800025a8:	1f048493          	addi	s1,s1,496
    800025ac:	03248463          	beq	s1,s2,800025d4 <wakeup+0x64>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	868080e7          	jalr	-1944(ra) # 80001e18 <myproc>
    800025b8:	fea488e3          	beq	s1,a0,800025a8 <wakeup+0x38>
    800025bc:	8526                	mv	a0,s1
    800025be:	fffff097          	auipc	ra,0xfffff
    800025c2:	830080e7          	jalr	-2000(ra) # 80000dee <acquire>
    800025c6:	4c9c                	lw	a5,24(s1)
    800025c8:	fd379be3          	bne	a5,s3,8000259e <wakeup+0x2e>
    800025cc:	709c                	ld	a5,32(s1)
    800025ce:	fd4798e3          	bne	a5,s4,8000259e <wakeup+0x2e>
    800025d2:	b7e1                	j	8000259a <wakeup+0x2a>
    800025d4:	70e2                	ld	ra,56(sp)
    800025d6:	7442                	ld	s0,48(sp)
    800025d8:	74a2                	ld	s1,40(sp)
    800025da:	7902                	ld	s2,32(sp)
    800025dc:	69e2                	ld	s3,24(sp)
    800025de:	6a42                	ld	s4,16(sp)
    800025e0:	6aa2                	ld	s5,8(sp)
    800025e2:	6121                	addi	sp,sp,64
    800025e4:	8082                	ret

00000000800025e6 <reparent>:
    800025e6:	7179                	addi	sp,sp,-48
    800025e8:	f406                	sd	ra,40(sp)
    800025ea:	f022                	sd	s0,32(sp)
    800025ec:	ec26                	sd	s1,24(sp)
    800025ee:	e84a                	sd	s2,16(sp)
    800025f0:	e44e                	sd	s3,8(sp)
    800025f2:	e052                	sd	s4,0(sp)
    800025f4:	1800                	addi	s0,sp,48
    800025f6:	892a                	mv	s2,a0
    800025f8:	00230497          	auipc	s1,0x230
    800025fc:	73848493          	addi	s1,s1,1848 # 80232d30 <proc>
    80002600:	00007a17          	auipc	s4,0x7
    80002604:	5f8a0a13          	addi	s4,s4,1528 # 80009bf8 <initproc>
    80002608:	00238997          	auipc	s3,0x238
    8000260c:	32898993          	addi	s3,s3,808 # 8023a930 <mt>
    80002610:	a029                	j	8000261a <reparent+0x34>
    80002612:	1f048493          	addi	s1,s1,496
    80002616:	01348d63          	beq	s1,s3,80002630 <reparent+0x4a>
    8000261a:	7c9c                	ld	a5,56(s1)
    8000261c:	ff279be3          	bne	a5,s2,80002612 <reparent+0x2c>
    80002620:	000a3503          	ld	a0,0(s4)
    80002624:	fc88                	sd	a0,56(s1)
    80002626:	00000097          	auipc	ra,0x0
    8000262a:	f4a080e7          	jalr	-182(ra) # 80002570 <wakeup>
    8000262e:	b7d5                	j	80002612 <reparent+0x2c>
    80002630:	70a2                	ld	ra,40(sp)
    80002632:	7402                	ld	s0,32(sp)
    80002634:	64e2                	ld	s1,24(sp)
    80002636:	6942                	ld	s2,16(sp)
    80002638:	69a2                	ld	s3,8(sp)
    8000263a:	6a02                	ld	s4,0(sp)
    8000263c:	6145                	addi	sp,sp,48
    8000263e:	8082                	ret

0000000080002640 <exit>:
    80002640:	7179                	addi	sp,sp,-48
    80002642:	f406                	sd	ra,40(sp)
    80002644:	f022                	sd	s0,32(sp)
    80002646:	ec26                	sd	s1,24(sp)
    80002648:	e84a                	sd	s2,16(sp)
    8000264a:	e44e                	sd	s3,8(sp)
    8000264c:	e052                	sd	s4,0(sp)
    8000264e:	1800                	addi	s0,sp,48
    80002650:	8a2a                	mv	s4,a0
    80002652:	fffff097          	auipc	ra,0xfffff
    80002656:	7c6080e7          	jalr	1990(ra) # 80001e18 <myproc>
    8000265a:	89aa                	mv	s3,a0
    8000265c:	00007797          	auipc	a5,0x7
    80002660:	59c7b783          	ld	a5,1436(a5) # 80009bf8 <initproc>
    80002664:	0d050493          	addi	s1,a0,208
    80002668:	15050913          	addi	s2,a0,336
    8000266c:	02a79363          	bne	a5,a0,80002692 <exit+0x52>
    80002670:	00007517          	auipc	a0,0x7
    80002674:	c5050513          	addi	a0,a0,-944 # 800092c0 <digits+0x280>
    80002678:	ffffe097          	auipc	ra,0xffffe
    8000267c:	ecc080e7          	jalr	-308(ra) # 80000544 <panic>
    80002680:	00003097          	auipc	ra,0x3
    80002684:	d7a080e7          	jalr	-646(ra) # 800053fa <fileclose>
    80002688:	0004b023          	sd	zero,0(s1)
    8000268c:	04a1                	addi	s1,s1,8
    8000268e:	01248563          	beq	s1,s2,80002698 <exit+0x58>
    80002692:	6088                	ld	a0,0(s1)
    80002694:	f575                	bnez	a0,80002680 <exit+0x40>
    80002696:	bfdd                	j	8000268c <exit+0x4c>
    80002698:	00003097          	auipc	ra,0x3
    8000269c:	896080e7          	jalr	-1898(ra) # 80004f2e <begin_op>
    800026a0:	1509b503          	ld	a0,336(s3)
    800026a4:	00002097          	auipc	ra,0x2
    800026a8:	082080e7          	jalr	130(ra) # 80004726 <iput>
    800026ac:	00003097          	auipc	ra,0x3
    800026b0:	902080e7          	jalr	-1790(ra) # 80004fae <end_op>
    800026b4:	1409b823          	sd	zero,336(s3)
    800026b8:	0022f497          	auipc	s1,0x22f
    800026bc:	7e848493          	addi	s1,s1,2024 # 80231ea0 <wait_lock>
    800026c0:	8526                	mv	a0,s1
    800026c2:	ffffe097          	auipc	ra,0xffffe
    800026c6:	72c080e7          	jalr	1836(ra) # 80000dee <acquire>
    800026ca:	854e                	mv	a0,s3
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	f1a080e7          	jalr	-230(ra) # 800025e6 <reparent>
    800026d4:	0389b503          	ld	a0,56(s3)
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	e98080e7          	jalr	-360(ra) # 80002570 <wakeup>
    800026e0:	854e                	mv	a0,s3
    800026e2:	ffffe097          	auipc	ra,0xffffe
    800026e6:	70c080e7          	jalr	1804(ra) # 80000dee <acquire>
    800026ea:	00007717          	auipc	a4,0x7
    800026ee:	51670713          	addi	a4,a4,1302 # 80009c00 <totaltickets>
    800026f2:	431c                	lw	a5,0(a4)
    800026f4:	1bc9a683          	lw	a3,444(s3)
    800026f8:	9f95                	subw	a5,a5,a3
    800026fa:	c31c                	sw	a5,0(a4)
    800026fc:	1a09ae23          	sw	zero,444(s3)
    80002700:	0349a623          	sw	s4,44(s3)
    80002704:	4795                	li	a5,5
    80002706:	00f9ac23          	sw	a5,24(s3)
    8000270a:	00007797          	auipc	a5,0x7
    8000270e:	4fa7a783          	lw	a5,1274(a5) # 80009c04 <ticks>
    80002712:	18f9aa23          	sw	a5,404(s3)
    80002716:	8526                	mv	a0,s1
    80002718:	ffffe097          	auipc	ra,0xffffe
    8000271c:	78a080e7          	jalr	1930(ra) # 80000ea2 <release>
    80002720:	00000097          	auipc	ra,0x0
    80002724:	cc8080e7          	jalr	-824(ra) # 800023e8 <sched>
    80002728:	00007517          	auipc	a0,0x7
    8000272c:	ba850513          	addi	a0,a0,-1112 # 800092d0 <digits+0x290>
    80002730:	ffffe097          	auipc	ra,0xffffe
    80002734:	e14080e7          	jalr	-492(ra) # 80000544 <panic>

0000000080002738 <kill>:
    80002738:	7179                	addi	sp,sp,-48
    8000273a:	f406                	sd	ra,40(sp)
    8000273c:	f022                	sd	s0,32(sp)
    8000273e:	ec26                	sd	s1,24(sp)
    80002740:	e84a                	sd	s2,16(sp)
    80002742:	e44e                	sd	s3,8(sp)
    80002744:	1800                	addi	s0,sp,48
    80002746:	892a                	mv	s2,a0
    80002748:	00230497          	auipc	s1,0x230
    8000274c:	5e848493          	addi	s1,s1,1512 # 80232d30 <proc>
    80002750:	00238997          	auipc	s3,0x238
    80002754:	1e098993          	addi	s3,s3,480 # 8023a930 <mt>
    80002758:	8526                	mv	a0,s1
    8000275a:	ffffe097          	auipc	ra,0xffffe
    8000275e:	694080e7          	jalr	1684(ra) # 80000dee <acquire>
    80002762:	589c                	lw	a5,48(s1)
    80002764:	01278d63          	beq	a5,s2,8000277e <kill+0x46>
    80002768:	8526                	mv	a0,s1
    8000276a:	ffffe097          	auipc	ra,0xffffe
    8000276e:	738080e7          	jalr	1848(ra) # 80000ea2 <release>
    80002772:	1f048493          	addi	s1,s1,496
    80002776:	ff3491e3          	bne	s1,s3,80002758 <kill+0x20>
    8000277a:	557d                	li	a0,-1
    8000277c:	a829                	j	80002796 <kill+0x5e>
    8000277e:	4785                	li	a5,1
    80002780:	d49c                	sw	a5,40(s1)
    80002782:	4c98                	lw	a4,24(s1)
    80002784:	4789                	li	a5,2
    80002786:	00f70f63          	beq	a4,a5,800027a4 <kill+0x6c>
    8000278a:	8526                	mv	a0,s1
    8000278c:	ffffe097          	auipc	ra,0xffffe
    80002790:	716080e7          	jalr	1814(ra) # 80000ea2 <release>
    80002794:	4501                	li	a0,0
    80002796:	70a2                	ld	ra,40(sp)
    80002798:	7402                	ld	s0,32(sp)
    8000279a:	64e2                	ld	s1,24(sp)
    8000279c:	6942                	ld	s2,16(sp)
    8000279e:	69a2                	ld	s3,8(sp)
    800027a0:	6145                	addi	sp,sp,48
    800027a2:	8082                	ret
    800027a4:	478d                	li	a5,3
    800027a6:	cc9c                	sw	a5,24(s1)
    800027a8:	b7cd                	j	8000278a <kill+0x52>

00000000800027aa <setkilled>:
    800027aa:	1101                	addi	sp,sp,-32
    800027ac:	ec06                	sd	ra,24(sp)
    800027ae:	e822                	sd	s0,16(sp)
    800027b0:	e426                	sd	s1,8(sp)
    800027b2:	1000                	addi	s0,sp,32
    800027b4:	84aa                	mv	s1,a0
    800027b6:	ffffe097          	auipc	ra,0xffffe
    800027ba:	638080e7          	jalr	1592(ra) # 80000dee <acquire>
    800027be:	4785                	li	a5,1
    800027c0:	d49c                	sw	a5,40(s1)
    800027c2:	8526                	mv	a0,s1
    800027c4:	ffffe097          	auipc	ra,0xffffe
    800027c8:	6de080e7          	jalr	1758(ra) # 80000ea2 <release>
    800027cc:	60e2                	ld	ra,24(sp)
    800027ce:	6442                	ld	s0,16(sp)
    800027d0:	64a2                	ld	s1,8(sp)
    800027d2:	6105                	addi	sp,sp,32
    800027d4:	8082                	ret

00000000800027d6 <killed>:
    800027d6:	1101                	addi	sp,sp,-32
    800027d8:	ec06                	sd	ra,24(sp)
    800027da:	e822                	sd	s0,16(sp)
    800027dc:	e426                	sd	s1,8(sp)
    800027de:	e04a                	sd	s2,0(sp)
    800027e0:	1000                	addi	s0,sp,32
    800027e2:	84aa                	mv	s1,a0
    800027e4:	ffffe097          	auipc	ra,0xffffe
    800027e8:	60a080e7          	jalr	1546(ra) # 80000dee <acquire>
    800027ec:	0284a903          	lw	s2,40(s1)
    800027f0:	8526                	mv	a0,s1
    800027f2:	ffffe097          	auipc	ra,0xffffe
    800027f6:	6b0080e7          	jalr	1712(ra) # 80000ea2 <release>
    800027fa:	854a                	mv	a0,s2
    800027fc:	60e2                	ld	ra,24(sp)
    800027fe:	6442                	ld	s0,16(sp)
    80002800:	64a2                	ld	s1,8(sp)
    80002802:	6902                	ld	s2,0(sp)
    80002804:	6105                	addi	sp,sp,32
    80002806:	8082                	ret

0000000080002808 <wait>:
    80002808:	715d                	addi	sp,sp,-80
    8000280a:	e486                	sd	ra,72(sp)
    8000280c:	e0a2                	sd	s0,64(sp)
    8000280e:	fc26                	sd	s1,56(sp)
    80002810:	f84a                	sd	s2,48(sp)
    80002812:	f44e                	sd	s3,40(sp)
    80002814:	f052                	sd	s4,32(sp)
    80002816:	ec56                	sd	s5,24(sp)
    80002818:	e85a                	sd	s6,16(sp)
    8000281a:	e45e                	sd	s7,8(sp)
    8000281c:	e062                	sd	s8,0(sp)
    8000281e:	0880                	addi	s0,sp,80
    80002820:	8b2a                	mv	s6,a0
    80002822:	fffff097          	auipc	ra,0xfffff
    80002826:	5f6080e7          	jalr	1526(ra) # 80001e18 <myproc>
    8000282a:	892a                	mv	s2,a0
    8000282c:	0022f517          	auipc	a0,0x22f
    80002830:	67450513          	addi	a0,a0,1652 # 80231ea0 <wait_lock>
    80002834:	ffffe097          	auipc	ra,0xffffe
    80002838:	5ba080e7          	jalr	1466(ra) # 80000dee <acquire>
    8000283c:	4b81                	li	s7,0
    8000283e:	4a15                	li	s4,5
    80002840:	00238997          	auipc	s3,0x238
    80002844:	0f098993          	addi	s3,s3,240 # 8023a930 <mt>
    80002848:	4a85                	li	s5,1
    8000284a:	0022fc17          	auipc	s8,0x22f
    8000284e:	656c0c13          	addi	s8,s8,1622 # 80231ea0 <wait_lock>
    80002852:	875e                	mv	a4,s7
    80002854:	00230497          	auipc	s1,0x230
    80002858:	4dc48493          	addi	s1,s1,1244 # 80232d30 <proc>
    8000285c:	a0bd                	j	800028ca <wait+0xc2>
    8000285e:	0304a983          	lw	s3,48(s1)
    80002862:	000b0e63          	beqz	s6,8000287e <wait+0x76>
    80002866:	4691                	li	a3,4
    80002868:	02c48613          	addi	a2,s1,44
    8000286c:	85da                	mv	a1,s6
    8000286e:	05093503          	ld	a0,80(s2)
    80002872:	fffff097          	auipc	ra,0xfffff
    80002876:	01e080e7          	jalr	30(ra) # 80001890 <copyout>
    8000287a:	02054563          	bltz	a0,800028a4 <wait+0x9c>
    8000287e:	8526                	mv	a0,s1
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	74a080e7          	jalr	1866(ra) # 80001fca <freeproc>
    80002888:	8526                	mv	a0,s1
    8000288a:	ffffe097          	auipc	ra,0xffffe
    8000288e:	618080e7          	jalr	1560(ra) # 80000ea2 <release>
    80002892:	0022f517          	auipc	a0,0x22f
    80002896:	60e50513          	addi	a0,a0,1550 # 80231ea0 <wait_lock>
    8000289a:	ffffe097          	auipc	ra,0xffffe
    8000289e:	608080e7          	jalr	1544(ra) # 80000ea2 <release>
    800028a2:	a0b5                	j	8000290e <wait+0x106>
    800028a4:	8526                	mv	a0,s1
    800028a6:	ffffe097          	auipc	ra,0xffffe
    800028aa:	5fc080e7          	jalr	1532(ra) # 80000ea2 <release>
    800028ae:	0022f517          	auipc	a0,0x22f
    800028b2:	5f250513          	addi	a0,a0,1522 # 80231ea0 <wait_lock>
    800028b6:	ffffe097          	auipc	ra,0xffffe
    800028ba:	5ec080e7          	jalr	1516(ra) # 80000ea2 <release>
    800028be:	59fd                	li	s3,-1
    800028c0:	a0b9                	j	8000290e <wait+0x106>
    800028c2:	1f048493          	addi	s1,s1,496
    800028c6:	03348463          	beq	s1,s3,800028ee <wait+0xe6>
    800028ca:	7c9c                	ld	a5,56(s1)
    800028cc:	ff279be3          	bne	a5,s2,800028c2 <wait+0xba>
    800028d0:	8526                	mv	a0,s1
    800028d2:	ffffe097          	auipc	ra,0xffffe
    800028d6:	51c080e7          	jalr	1308(ra) # 80000dee <acquire>
    800028da:	4c9c                	lw	a5,24(s1)
    800028dc:	f94781e3          	beq	a5,s4,8000285e <wait+0x56>
    800028e0:	8526                	mv	a0,s1
    800028e2:	ffffe097          	auipc	ra,0xffffe
    800028e6:	5c0080e7          	jalr	1472(ra) # 80000ea2 <release>
    800028ea:	8756                	mv	a4,s5
    800028ec:	bfd9                	j	800028c2 <wait+0xba>
    800028ee:	c719                	beqz	a4,800028fc <wait+0xf4>
    800028f0:	854a                	mv	a0,s2
    800028f2:	00000097          	auipc	ra,0x0
    800028f6:	ee4080e7          	jalr	-284(ra) # 800027d6 <killed>
    800028fa:	c51d                	beqz	a0,80002928 <wait+0x120>
    800028fc:	0022f517          	auipc	a0,0x22f
    80002900:	5a450513          	addi	a0,a0,1444 # 80231ea0 <wait_lock>
    80002904:	ffffe097          	auipc	ra,0xffffe
    80002908:	59e080e7          	jalr	1438(ra) # 80000ea2 <release>
    8000290c:	59fd                	li	s3,-1
    8000290e:	854e                	mv	a0,s3
    80002910:	60a6                	ld	ra,72(sp)
    80002912:	6406                	ld	s0,64(sp)
    80002914:	74e2                	ld	s1,56(sp)
    80002916:	7942                	ld	s2,48(sp)
    80002918:	79a2                	ld	s3,40(sp)
    8000291a:	7a02                	ld	s4,32(sp)
    8000291c:	6ae2                	ld	s5,24(sp)
    8000291e:	6b42                	ld	s6,16(sp)
    80002920:	6ba2                	ld	s7,8(sp)
    80002922:	6c02                	ld	s8,0(sp)
    80002924:	6161                	addi	sp,sp,80
    80002926:	8082                	ret
    80002928:	85e2                	mv	a1,s8
    8000292a:	854a                	mv	a0,s2
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	bce080e7          	jalr	-1074(ra) # 800024fa <sleep>
    80002934:	bf39                	j	80002852 <wait+0x4a>

0000000080002936 <either_copyout>:
    80002936:	7179                	addi	sp,sp,-48
    80002938:	f406                	sd	ra,40(sp)
    8000293a:	f022                	sd	s0,32(sp)
    8000293c:	ec26                	sd	s1,24(sp)
    8000293e:	e84a                	sd	s2,16(sp)
    80002940:	e44e                	sd	s3,8(sp)
    80002942:	e052                	sd	s4,0(sp)
    80002944:	1800                	addi	s0,sp,48
    80002946:	84aa                	mv	s1,a0
    80002948:	892e                	mv	s2,a1
    8000294a:	89b2                	mv	s3,a2
    8000294c:	8a36                	mv	s4,a3
    8000294e:	fffff097          	auipc	ra,0xfffff
    80002952:	4ca080e7          	jalr	1226(ra) # 80001e18 <myproc>
    80002956:	c08d                	beqz	s1,80002978 <either_copyout+0x42>
    80002958:	86d2                	mv	a3,s4
    8000295a:	864e                	mv	a2,s3
    8000295c:	85ca                	mv	a1,s2
    8000295e:	6928                	ld	a0,80(a0)
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	f30080e7          	jalr	-208(ra) # 80001890 <copyout>
    80002968:	70a2                	ld	ra,40(sp)
    8000296a:	7402                	ld	s0,32(sp)
    8000296c:	64e2                	ld	s1,24(sp)
    8000296e:	6942                	ld	s2,16(sp)
    80002970:	69a2                	ld	s3,8(sp)
    80002972:	6a02                	ld	s4,0(sp)
    80002974:	6145                	addi	sp,sp,48
    80002976:	8082                	ret
    80002978:	000a061b          	sext.w	a2,s4
    8000297c:	85ce                	mv	a1,s3
    8000297e:	854a                	mv	a0,s2
    80002980:	ffffe097          	auipc	ra,0xffffe
    80002984:	5ca080e7          	jalr	1482(ra) # 80000f4a <memmove>
    80002988:	8526                	mv	a0,s1
    8000298a:	bff9                	j	80002968 <either_copyout+0x32>

000000008000298c <either_copyin>:
    8000298c:	7179                	addi	sp,sp,-48
    8000298e:	f406                	sd	ra,40(sp)
    80002990:	f022                	sd	s0,32(sp)
    80002992:	ec26                	sd	s1,24(sp)
    80002994:	e84a                	sd	s2,16(sp)
    80002996:	e44e                	sd	s3,8(sp)
    80002998:	e052                	sd	s4,0(sp)
    8000299a:	1800                	addi	s0,sp,48
    8000299c:	892a                	mv	s2,a0
    8000299e:	84ae                	mv	s1,a1
    800029a0:	89b2                	mv	s3,a2
    800029a2:	8a36                	mv	s4,a3
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	474080e7          	jalr	1140(ra) # 80001e18 <myproc>
    800029ac:	c08d                	beqz	s1,800029ce <either_copyin+0x42>
    800029ae:	86d2                	mv	a3,s4
    800029b0:	864e                	mv	a2,s3
    800029b2:	85ca                	mv	a1,s2
    800029b4:	6928                	ld	a0,80(a0)
    800029b6:	fffff097          	auipc	ra,0xfffff
    800029ba:	f9e080e7          	jalr	-98(ra) # 80001954 <copyin>
    800029be:	70a2                	ld	ra,40(sp)
    800029c0:	7402                	ld	s0,32(sp)
    800029c2:	64e2                	ld	s1,24(sp)
    800029c4:	6942                	ld	s2,16(sp)
    800029c6:	69a2                	ld	s3,8(sp)
    800029c8:	6a02                	ld	s4,0(sp)
    800029ca:	6145                	addi	sp,sp,48
    800029cc:	8082                	ret
    800029ce:	000a061b          	sext.w	a2,s4
    800029d2:	85ce                	mv	a1,s3
    800029d4:	854a                	mv	a0,s2
    800029d6:	ffffe097          	auipc	ra,0xffffe
    800029da:	574080e7          	jalr	1396(ra) # 80000f4a <memmove>
    800029de:	8526                	mv	a0,s1
    800029e0:	bff9                	j	800029be <either_copyin+0x32>

00000000800029e2 <procdump>:
    800029e2:	715d                	addi	sp,sp,-80
    800029e4:	e486                	sd	ra,72(sp)
    800029e6:	e0a2                	sd	s0,64(sp)
    800029e8:	fc26                	sd	s1,56(sp)
    800029ea:	f84a                	sd	s2,48(sp)
    800029ec:	f44e                	sd	s3,40(sp)
    800029ee:	f052                	sd	s4,32(sp)
    800029f0:	ec56                	sd	s5,24(sp)
    800029f2:	e85a                	sd	s6,16(sp)
    800029f4:	e45e                	sd	s7,8(sp)
    800029f6:	0880                	addi	s0,sp,80
    800029f8:	00006517          	auipc	a0,0x6
    800029fc:	73050513          	addi	a0,a0,1840 # 80009128 <digits+0xe8>
    80002a00:	ffffe097          	auipc	ra,0xffffe
    80002a04:	b8e080e7          	jalr	-1138(ra) # 8000058e <printf>
    80002a08:	00230497          	auipc	s1,0x230
    80002a0c:	48048493          	addi	s1,s1,1152 # 80232e88 <proc+0x158>
    80002a10:	00238917          	auipc	s2,0x238
    80002a14:	07890913          	addi	s2,s2,120 # 8023aa88 <mt+0x158>
    80002a18:	4b15                	li	s6,5
    80002a1a:	00007997          	auipc	s3,0x7
    80002a1e:	8c698993          	addi	s3,s3,-1850 # 800092e0 <digits+0x2a0>
    80002a22:	00007a97          	auipc	s5,0x7
    80002a26:	8c6a8a93          	addi	s5,s5,-1850 # 800092e8 <digits+0x2a8>
    80002a2a:	00006a17          	auipc	s4,0x6
    80002a2e:	6fea0a13          	addi	s4,s4,1790 # 80009128 <digits+0xe8>
    80002a32:	00007b97          	auipc	s7,0x7
    80002a36:	91eb8b93          	addi	s7,s7,-1762 # 80009350 <mag01.1622>
    80002a3a:	a00d                	j	80002a5c <procdump+0x7a>
    80002a3c:	ed86a583          	lw	a1,-296(a3)
    80002a40:	8556                	mv	a0,s5
    80002a42:	ffffe097          	auipc	ra,0xffffe
    80002a46:	b4c080e7          	jalr	-1204(ra) # 8000058e <printf>
    80002a4a:	8552                	mv	a0,s4
    80002a4c:	ffffe097          	auipc	ra,0xffffe
    80002a50:	b42080e7          	jalr	-1214(ra) # 8000058e <printf>
    80002a54:	1f048493          	addi	s1,s1,496
    80002a58:	03248163          	beq	s1,s2,80002a7a <procdump+0x98>
    80002a5c:	86a6                	mv	a3,s1
    80002a5e:	ec04a783          	lw	a5,-320(s1)
    80002a62:	dbed                	beqz	a5,80002a54 <procdump+0x72>
    80002a64:	864e                	mv	a2,s3
    80002a66:	fcfb6be3          	bltu	s6,a5,80002a3c <procdump+0x5a>
    80002a6a:	1782                	slli	a5,a5,0x20
    80002a6c:	9381                	srli	a5,a5,0x20
    80002a6e:	078e                	slli	a5,a5,0x3
    80002a70:	97de                	add	a5,a5,s7
    80002a72:	6b90                	ld	a2,16(a5)
    80002a74:	f661                	bnez	a2,80002a3c <procdump+0x5a>
    80002a76:	864e                	mv	a2,s3
    80002a78:	b7d1                	j	80002a3c <procdump+0x5a>
    80002a7a:	60a6                	ld	ra,72(sp)
    80002a7c:	6406                	ld	s0,64(sp)
    80002a7e:	74e2                	ld	s1,56(sp)
    80002a80:	7942                	ld	s2,48(sp)
    80002a82:	79a2                	ld	s3,40(sp)
    80002a84:	7a02                	ld	s4,32(sp)
    80002a86:	6ae2                	ld	s5,24(sp)
    80002a88:	6b42                	ld	s6,16(sp)
    80002a8a:	6ba2                	ld	s7,8(sp)
    80002a8c:	6161                	addi	sp,sp,80
    80002a8e:	8082                	ret

0000000080002a90 <set_priority>:
    80002a90:	7179                	addi	sp,sp,-48
    80002a92:	f406                	sd	ra,40(sp)
    80002a94:	f022                	sd	s0,32(sp)
    80002a96:	ec26                	sd	s1,24(sp)
    80002a98:	e84a                	sd	s2,16(sp)
    80002a9a:	e44e                	sd	s3,8(sp)
    80002a9c:	e052                	sd	s4,0(sp)
    80002a9e:	1800                	addi	s0,sp,48
    80002aa0:	8a2a                	mv	s4,a0
    80002aa2:	892e                	mv	s2,a1
    80002aa4:	00230497          	auipc	s1,0x230
    80002aa8:	28c48493          	addi	s1,s1,652 # 80232d30 <proc>
    80002aac:	00238997          	auipc	s3,0x238
    80002ab0:	e8498993          	addi	s3,s3,-380 # 8023a930 <mt>
    80002ab4:	8526                	mv	a0,s1
    80002ab6:	ffffe097          	auipc	ra,0xffffe
    80002aba:	338080e7          	jalr	824(ra) # 80000dee <acquire>
    80002abe:	589c                	lw	a5,48(s1)
    80002ac0:	01278d63          	beq	a5,s2,80002ada <set_priority+0x4a>
    80002ac4:	8526                	mv	a0,s1
    80002ac6:	ffffe097          	auipc	ra,0xffffe
    80002aca:	3dc080e7          	jalr	988(ra) # 80000ea2 <release>
    80002ace:	1f048493          	addi	s1,s1,496
    80002ad2:	ff3491e3          	bne	s1,s3,80002ab4 <set_priority+0x24>
    80002ad6:	597d                	li	s2,-1
    80002ad8:	a005                	j	80002af8 <set_priority+0x68>
    80002ada:	1a44a903          	lw	s2,420(s1)
    80002ade:	1b44a223          	sw	s4,420(s1)
    80002ae2:	1a04a623          	sw	zero,428(s1)
    80002ae6:	1a04a423          	sw	zero,424(s1)
    80002aea:	8526                	mv	a0,s1
    80002aec:	ffffe097          	auipc	ra,0xffffe
    80002af0:	3b6080e7          	jalr	950(ra) # 80000ea2 <release>
    80002af4:	012a4b63          	blt	s4,s2,80002b0a <set_priority+0x7a>
    80002af8:	854a                	mv	a0,s2
    80002afa:	70a2                	ld	ra,40(sp)
    80002afc:	7402                	ld	s0,32(sp)
    80002afe:	64e2                	ld	s1,24(sp)
    80002b00:	6942                	ld	s2,16(sp)
    80002b02:	69a2                	ld	s3,8(sp)
    80002b04:	6a02                	ld	s4,0(sp)
    80002b06:	6145                	addi	sp,sp,48
    80002b08:	8082                	ret
    80002b0a:	00000097          	auipc	ra,0x0
    80002b0e:	9b4080e7          	jalr	-1612(ra) # 800024be <yield>
    80002b12:	b7dd                	j	80002af8 <set_priority+0x68>

0000000080002b14 <waitx>:
    80002b14:	711d                	addi	sp,sp,-96
    80002b16:	ec86                	sd	ra,88(sp)
    80002b18:	e8a2                	sd	s0,80(sp)
    80002b1a:	e4a6                	sd	s1,72(sp)
    80002b1c:	e0ca                	sd	s2,64(sp)
    80002b1e:	fc4e                	sd	s3,56(sp)
    80002b20:	f852                	sd	s4,48(sp)
    80002b22:	f456                	sd	s5,40(sp)
    80002b24:	f05a                	sd	s6,32(sp)
    80002b26:	ec5e                	sd	s7,24(sp)
    80002b28:	e862                	sd	s8,16(sp)
    80002b2a:	e466                	sd	s9,8(sp)
    80002b2c:	e06a                	sd	s10,0(sp)
    80002b2e:	1080                	addi	s0,sp,96
    80002b30:	8b2a                	mv	s6,a0
    80002b32:	8c2e                	mv	s8,a1
    80002b34:	8bb2                	mv	s7,a2
    80002b36:	fffff097          	auipc	ra,0xfffff
    80002b3a:	2e2080e7          	jalr	738(ra) # 80001e18 <myproc>
    80002b3e:	892a                	mv	s2,a0
    80002b40:	0022f517          	auipc	a0,0x22f
    80002b44:	36050513          	addi	a0,a0,864 # 80231ea0 <wait_lock>
    80002b48:	ffffe097          	auipc	ra,0xffffe
    80002b4c:	2a6080e7          	jalr	678(ra) # 80000dee <acquire>
    80002b50:	4c81                	li	s9,0
    80002b52:	4a15                	li	s4,5
    80002b54:	00238997          	auipc	s3,0x238
    80002b58:	ddc98993          	addi	s3,s3,-548 # 8023a930 <mt>
    80002b5c:	4a85                	li	s5,1
    80002b5e:	0022fd17          	auipc	s10,0x22f
    80002b62:	342d0d13          	addi	s10,s10,834 # 80231ea0 <wait_lock>
    80002b66:	8766                	mv	a4,s9
    80002b68:	00230497          	auipc	s1,0x230
    80002b6c:	1c848493          	addi	s1,s1,456 # 80232d30 <proc>
    80002b70:	a059                	j	80002bf6 <waitx+0xe2>
    80002b72:	0304a983          	lw	s3,48(s1)
    80002b76:	18c4a703          	lw	a4,396(s1)
    80002b7a:	00ec2023          	sw	a4,0(s8)
    80002b7e:	1904a783          	lw	a5,400(s1)
    80002b82:	9f3d                	addw	a4,a4,a5
    80002b84:	1944a783          	lw	a5,404(s1)
    80002b88:	9f99                	subw	a5,a5,a4
    80002b8a:	00fba023          	sw	a5,0(s7)
    80002b8e:	000b0e63          	beqz	s6,80002baa <waitx+0x96>
    80002b92:	4691                	li	a3,4
    80002b94:	02c48613          	addi	a2,s1,44
    80002b98:	85da                	mv	a1,s6
    80002b9a:	05093503          	ld	a0,80(s2)
    80002b9e:	fffff097          	auipc	ra,0xfffff
    80002ba2:	cf2080e7          	jalr	-782(ra) # 80001890 <copyout>
    80002ba6:	02054563          	bltz	a0,80002bd0 <waitx+0xbc>
    80002baa:	8526                	mv	a0,s1
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	41e080e7          	jalr	1054(ra) # 80001fca <freeproc>
    80002bb4:	8526                	mv	a0,s1
    80002bb6:	ffffe097          	auipc	ra,0xffffe
    80002bba:	2ec080e7          	jalr	748(ra) # 80000ea2 <release>
    80002bbe:	0022f517          	auipc	a0,0x22f
    80002bc2:	2e250513          	addi	a0,a0,738 # 80231ea0 <wait_lock>
    80002bc6:	ffffe097          	auipc	ra,0xffffe
    80002bca:	2dc080e7          	jalr	732(ra) # 80000ea2 <release>
    80002bce:	a09d                	j	80002c34 <waitx+0x120>
    80002bd0:	8526                	mv	a0,s1
    80002bd2:	ffffe097          	auipc	ra,0xffffe
    80002bd6:	2d0080e7          	jalr	720(ra) # 80000ea2 <release>
    80002bda:	0022f517          	auipc	a0,0x22f
    80002bde:	2c650513          	addi	a0,a0,710 # 80231ea0 <wait_lock>
    80002be2:	ffffe097          	auipc	ra,0xffffe
    80002be6:	2c0080e7          	jalr	704(ra) # 80000ea2 <release>
    80002bea:	59fd                	li	s3,-1
    80002bec:	a0a1                	j	80002c34 <waitx+0x120>
    80002bee:	1f048493          	addi	s1,s1,496
    80002bf2:	03348463          	beq	s1,s3,80002c1a <waitx+0x106>
    80002bf6:	7c9c                	ld	a5,56(s1)
    80002bf8:	ff279be3          	bne	a5,s2,80002bee <waitx+0xda>
    80002bfc:	8526                	mv	a0,s1
    80002bfe:	ffffe097          	auipc	ra,0xffffe
    80002c02:	1f0080e7          	jalr	496(ra) # 80000dee <acquire>
    80002c06:	4c9c                	lw	a5,24(s1)
    80002c08:	f74785e3          	beq	a5,s4,80002b72 <waitx+0x5e>
    80002c0c:	8526                	mv	a0,s1
    80002c0e:	ffffe097          	auipc	ra,0xffffe
    80002c12:	294080e7          	jalr	660(ra) # 80000ea2 <release>
    80002c16:	8756                	mv	a4,s5
    80002c18:	bfd9                	j	80002bee <waitx+0xda>
    80002c1a:	c701                	beqz	a4,80002c22 <waitx+0x10e>
    80002c1c:	02892783          	lw	a5,40(s2)
    80002c20:	cb8d                	beqz	a5,80002c52 <waitx+0x13e>
    80002c22:	0022f517          	auipc	a0,0x22f
    80002c26:	27e50513          	addi	a0,a0,638 # 80231ea0 <wait_lock>
    80002c2a:	ffffe097          	auipc	ra,0xffffe
    80002c2e:	278080e7          	jalr	632(ra) # 80000ea2 <release>
    80002c32:	59fd                	li	s3,-1
    80002c34:	854e                	mv	a0,s3
    80002c36:	60e6                	ld	ra,88(sp)
    80002c38:	6446                	ld	s0,80(sp)
    80002c3a:	64a6                	ld	s1,72(sp)
    80002c3c:	6906                	ld	s2,64(sp)
    80002c3e:	79e2                	ld	s3,56(sp)
    80002c40:	7a42                	ld	s4,48(sp)
    80002c42:	7aa2                	ld	s5,40(sp)
    80002c44:	7b02                	ld	s6,32(sp)
    80002c46:	6be2                	ld	s7,24(sp)
    80002c48:	6c42                	ld	s8,16(sp)
    80002c4a:	6ca2                	ld	s9,8(sp)
    80002c4c:	6d02                	ld	s10,0(sp)
    80002c4e:	6125                	addi	sp,sp,96
    80002c50:	8082                	ret
    80002c52:	85ea                	mv	a1,s10
    80002c54:	854a                	mv	a0,s2
    80002c56:	00000097          	auipc	ra,0x0
    80002c5a:	8a4080e7          	jalr	-1884(ra) # 800024fa <sleep>
    80002c5e:	b721                	j	80002b66 <waitx+0x52>

0000000080002c60 <updateTime>:
    80002c60:	7179                	addi	sp,sp,-48
    80002c62:	f406                	sd	ra,40(sp)
    80002c64:	f022                	sd	s0,32(sp)
    80002c66:	ec26                	sd	s1,24(sp)
    80002c68:	e84a                	sd	s2,16(sp)
    80002c6a:	e44e                	sd	s3,8(sp)
    80002c6c:	e052                	sd	s4,0(sp)
    80002c6e:	1800                	addi	s0,sp,48
    80002c70:	00230497          	auipc	s1,0x230
    80002c74:	0c048493          	addi	s1,s1,192 # 80232d30 <proc>
    80002c78:	4991                	li	s3,4
    80002c7a:	4a09                	li	s4,2
    80002c7c:	00238917          	auipc	s2,0x238
    80002c80:	cb490913          	addi	s2,s2,-844 # 8023a930 <mt>
    80002c84:	a091                	j	80002cc8 <updateTime+0x68>
    80002c86:	1ac4a783          	lw	a5,428(s1)
    80002c8a:	2785                	addiw	a5,a5,1
    80002c8c:	1af4a623          	sw	a5,428(s1)
    80002c90:	18c4a783          	lw	a5,396(s1)
    80002c94:	2785                	addiw	a5,a5,1
    80002c96:	18f4a623          	sw	a5,396(s1)
    80002c9a:	1b84a783          	lw	a5,440(s1)
    80002c9e:	078a                	slli	a5,a5,0x2
    80002ca0:	97a6                	add	a5,a5,s1
    80002ca2:	1d87a703          	lw	a4,472(a5)
    80002ca6:	2705                	addiw	a4,a4,1
    80002ca8:	1ce7ac23          	sw	a4,472(a5)
    80002cac:	1cc4a783          	lw	a5,460(s1)
    80002cb0:	37fd                	addiw	a5,a5,-1
    80002cb2:	1cf4a623          	sw	a5,460(s1)
    80002cb6:	8526                	mv	a0,s1
    80002cb8:	ffffe097          	auipc	ra,0xffffe
    80002cbc:	1ea080e7          	jalr	490(ra) # 80000ea2 <release>
    80002cc0:	1f048493          	addi	s1,s1,496
    80002cc4:	03248263          	beq	s1,s2,80002ce8 <updateTime+0x88>
    80002cc8:	8526                	mv	a0,s1
    80002cca:	ffffe097          	auipc	ra,0xffffe
    80002cce:	124080e7          	jalr	292(ra) # 80000dee <acquire>
    80002cd2:	4c9c                	lw	a5,24(s1)
    80002cd4:	fb3789e3          	beq	a5,s3,80002c86 <updateTime+0x26>
    80002cd8:	fd479fe3          	bne	a5,s4,80002cb6 <updateTime+0x56>
    80002cdc:	1a84a783          	lw	a5,424(s1)
    80002ce0:	2785                	addiw	a5,a5,1
    80002ce2:	1af4a423          	sw	a5,424(s1)
    80002ce6:	bfc1                	j	80002cb6 <updateTime+0x56>
    80002ce8:	70a2                	ld	ra,40(sp)
    80002cea:	7402                	ld	s0,32(sp)
    80002cec:	64e2                	ld	s1,24(sp)
    80002cee:	6942                	ld	s2,16(sp)
    80002cf0:	69a2                	ld	s3,8(sp)
    80002cf2:	6a02                	ld	s4,0(sp)
    80002cf4:	6145                	addi	sp,sp,48
    80002cf6:	8082                	ret

0000000080002cf8 <top>:
    80002cf8:	1141                	addi	sp,sp,-16
    80002cfa:	e422                	sd	s0,8(sp)
    80002cfc:	0800                	addi	s0,sp,16
    80002cfe:	411c                	lw	a5,0(a0)
    80002d00:	4158                	lw	a4,4(a0)
    80002d02:	00f70863          	beq	a4,a5,80002d12 <top+0x1a>
    80002d06:	078e                	slli	a5,a5,0x3
    80002d08:	953e                	add	a0,a0,a5
    80002d0a:	6508                	ld	a0,8(a0)
    80002d0c:	6422                	ld	s0,8(sp)
    80002d0e:	0141                	addi	sp,sp,16
    80002d10:	8082                	ret
    80002d12:	4501                	li	a0,0
    80002d14:	bfe5                	j	80002d0c <top+0x14>

0000000080002d16 <qpush>:
    80002d16:	21052783          	lw	a5,528(a0)
    80002d1a:	04000713          	li	a4,64
    80002d1e:	02e78363          	beq	a5,a4,80002d44 <qpush+0x2e>
    80002d22:	2785                	addiw	a5,a5,1
    80002d24:	20f52823          	sw	a5,528(a0)
    80002d28:	415c                	lw	a5,4(a0)
    80002d2a:	0017871b          	addiw	a4,a5,1
    80002d2e:	0007069b          	sext.w	a3,a4
    80002d32:	c158                	sw	a4,4(a0)
    80002d34:	078e                	slli	a5,a5,0x3
    80002d36:	97aa                	add	a5,a5,a0
    80002d38:	e78c                	sd	a1,8(a5)
    80002d3a:	04100793          	li	a5,65
    80002d3e:	00f68f63          	beq	a3,a5,80002d5c <qpush+0x46>
    80002d42:	8082                	ret
    80002d44:	1141                	addi	sp,sp,-16
    80002d46:	e406                	sd	ra,8(sp)
    80002d48:	e022                	sd	s0,0(sp)
    80002d4a:	0800                	addi	s0,sp,16
    80002d4c:	00006517          	auipc	a0,0x6
    80002d50:	5ac50513          	addi	a0,a0,1452 # 800092f8 <digits+0x2b8>
    80002d54:	ffffd097          	auipc	ra,0xffffd
    80002d58:	7f0080e7          	jalr	2032(ra) # 80000544 <panic>
    80002d5c:	00052223          	sw	zero,4(a0)
    80002d60:	b7cd                	j	80002d42 <qpush+0x2c>

0000000080002d62 <qpop>:
    80002d62:	21052783          	lw	a5,528(a0)
    80002d66:	cf91                	beqz	a5,80002d82 <qpop+0x20>
    80002d68:	37fd                	addiw	a5,a5,-1
    80002d6a:	20f52823          	sw	a5,528(a0)
    80002d6e:	411c                	lw	a5,0(a0)
    80002d70:	2785                	addiw	a5,a5,1
    80002d72:	0007869b          	sext.w	a3,a5
    80002d76:	04100713          	li	a4,65
    80002d7a:	02e68063          	beq	a3,a4,80002d9a <qpop+0x38>
    80002d7e:	c11c                	sw	a5,0(a0)
    80002d80:	8082                	ret
    80002d82:	1141                	addi	sp,sp,-16
    80002d84:	e406                	sd	ra,8(sp)
    80002d86:	e022                	sd	s0,0(sp)
    80002d88:	0800                	addi	s0,sp,16
    80002d8a:	00006517          	auipc	a0,0x6
    80002d8e:	58650513          	addi	a0,a0,1414 # 80009310 <digits+0x2d0>
    80002d92:	ffffd097          	auipc	ra,0xffffd
    80002d96:	7b2080e7          	jalr	1970(ra) # 80000544 <panic>
    80002d9a:	00052023          	sw	zero,0(a0)
    80002d9e:	8082                	ret

0000000080002da0 <qrm>:
    80002da0:	1141                	addi	sp,sp,-16
    80002da2:	e422                	sd	s0,8(sp)
    80002da4:	0800                	addi	s0,sp,16
    80002da6:	411c                	lw	a5,0(a0)
    80002da8:	00452803          	lw	a6,4(a0)
    80002dac:	03078d63          	beq	a5,a6,80002de6 <qrm+0x46>
    80002db0:	04100893          	li	a7,65
    80002db4:	a031                	j	80002dc0 <qrm+0x20>
    80002db6:	2785                	addiw	a5,a5,1
    80002db8:	0317e7bb          	remw	a5,a5,a7
    80002dbc:	03078563          	beq	a5,a6,80002de6 <qrm+0x46>
    80002dc0:	00379713          	slli	a4,a5,0x3
    80002dc4:	972a                	add	a4,a4,a0
    80002dc6:	6710                	ld	a2,8(a4)
    80002dc8:	5a14                	lw	a3,48(a2)
    80002dca:	feb696e3          	bne	a3,a1,80002db6 <qrm+0x16>
    80002dce:	0017869b          	addiw	a3,a5,1
    80002dd2:	0316e6bb          	remw	a3,a3,a7
    80002dd6:	068e                	slli	a3,a3,0x3
    80002dd8:	96aa                	add	a3,a3,a0
    80002dda:	0086b303          	ld	t1,8(a3)
    80002dde:	00673423          	sd	t1,8(a4)
    80002de2:	e690                	sd	a2,8(a3)
    80002de4:	bfc9                	j	80002db6 <qrm+0x16>
    80002de6:	21052783          	lw	a5,528(a0)
    80002dea:	37fd                	addiw	a5,a5,-1
    80002dec:	20f52823          	sw	a5,528(a0)
    80002df0:	387d                	addiw	a6,a6,-1
    80002df2:	02081793          	slli	a5,a6,0x20
    80002df6:	0007c763          	bltz	a5,80002e04 <qrm+0x64>
    80002dfa:	01052223          	sw	a6,4(a0)
    80002dfe:	6422                	ld	s0,8(sp)
    80002e00:	0141                	addi	sp,sp,16
    80002e02:	8082                	ret
    80002e04:	04000793          	li	a5,64
    80002e08:	c15c                	sw	a5,4(a0)
    80002e0a:	bfd5                	j	80002dfe <qrm+0x5e>

0000000080002e0c <scheduler>:
    80002e0c:	7119                	addi	sp,sp,-128
    80002e0e:	fc86                	sd	ra,120(sp)
    80002e10:	f8a2                	sd	s0,112(sp)
    80002e12:	f4a6                	sd	s1,104(sp)
    80002e14:	f0ca                	sd	s2,96(sp)
    80002e16:	ecce                	sd	s3,88(sp)
    80002e18:	e8d2                	sd	s4,80(sp)
    80002e1a:	e4d6                	sd	s5,72(sp)
    80002e1c:	e0da                	sd	s6,64(sp)
    80002e1e:	fc5e                	sd	s7,56(sp)
    80002e20:	f862                	sd	s8,48(sp)
    80002e22:	f466                	sd	s9,40(sp)
    80002e24:	f06a                	sd	s10,32(sp)
    80002e26:	ec6e                	sd	s11,24(sp)
    80002e28:	0100                	addi	s0,sp,128
    80002e2a:	8792                	mv	a5,tp
    80002e2c:	2781                	sext.w	a5,a5
    80002e2e:	00779693          	slli	a3,a5,0x7
    80002e32:	0022f717          	auipc	a4,0x22f
    80002e36:	05670713          	addi	a4,a4,86 # 80231e88 <pid_lock>
    80002e3a:	9736                	add	a4,a4,a3
    80002e3c:	02073823          	sd	zero,48(a4)
    80002e40:	0022f717          	auipc	a4,0x22f
    80002e44:	08070713          	addi	a4,a4,128 # 80231ec0 <cpus+0x8>
    80002e48:	9736                	add	a4,a4,a3
    80002e4a:	f8e43423          	sd	a4,-120(s0)
    80002e4e:	00007b17          	auipc	s6,0x7
    80002e52:	db6b0b13          	addi	s6,s6,-586 # 80009c04 <ticks>
    80002e56:	0022fc97          	auipc	s9,0x22f
    80002e5a:	462c8c93          	addi	s9,s9,1122 # 802322b8 <mlfq>
    80002e5e:	0022fd97          	auipc	s11,0x22f
    80002e62:	02ad8d93          	addi	s11,s11,42 # 80231e88 <pid_lock>
    80002e66:	9db6                	add	s11,s11,a3
    80002e68:	a201                	j	80002f68 <scheduler+0x15c>
    80002e6a:	1c44a503          	lw	a0,452(s1)
    80002e6e:	03850533          	mul	a0,a0,s8
    80002e72:	588c                	lw	a1,48(s1)
    80002e74:	9566                	add	a0,a0,s9
    80002e76:	00000097          	auipc	ra,0x0
    80002e7a:	f2a080e7          	jalr	-214(ra) # 80002da0 <qrm>
    80002e7e:	1c04a423          	sw	zero,456(s1)
    80002e82:	a02d                	j	80002eac <scheduler+0xa0>
    80002e84:	1f048493          	addi	s1,s1,496
    80002e88:	03348963          	beq	s1,s3,80002eba <scheduler+0xae>
    80002e8c:	4c9c                	lw	a5,24(s1)
    80002e8e:	ff279be3          	bne	a5,s2,80002e84 <scheduler+0x78>
    80002e92:	000b2703          	lw	a4,0(s6)
    80002e96:	1d44a783          	lw	a5,468(s1)
    80002e9a:	40f707bb          	subw	a5,a4,a5
    80002e9e:	fefa73e3          	bgeu	s4,a5,80002e84 <scheduler+0x78>
    80002ea2:	1ce4aa23          	sw	a4,468(s1)
    80002ea6:	1c84a783          	lw	a5,456(s1)
    80002eaa:	f3e1                	bnez	a5,80002e6a <scheduler+0x5e>
    80002eac:	1c44a783          	lw	a5,452(s1)
    80002eb0:	dbf1                	beqz	a5,80002e84 <scheduler+0x78>
    80002eb2:	37fd                	addiw	a5,a5,-1
    80002eb4:	1cf4a223          	sw	a5,452(s1)
    80002eb8:	b7f1                	j	80002e84 <scheduler+0x78>
    80002eba:	00230497          	auipc	s1,0x230
    80002ebe:	e7648493          	addi	s1,s1,-394 # 80232d30 <proc>
    80002ec2:	4a05                	li	s4,1
    80002ec4:	a035                	j	80002ef0 <scheduler+0xe4>
    80002ec6:	1c44a503          	lw	a0,452(s1)
    80002eca:	03850533          	mul	a0,a0,s8
    80002ece:	85a6                	mv	a1,s1
    80002ed0:	9566                	add	a0,a0,s9
    80002ed2:	00000097          	auipc	ra,0x0
    80002ed6:	e44080e7          	jalr	-444(ra) # 80002d16 <qpush>
    80002eda:	1d44a423          	sw	s4,456(s1)
    80002ede:	8526                	mv	a0,s1
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	fc2080e7          	jalr	-62(ra) # 80000ea2 <release>
    80002ee8:	1f048493          	addi	s1,s1,496
    80002eec:	01348e63          	beq	s1,s3,80002f08 <scheduler+0xfc>
    80002ef0:	8526                	mv	a0,s1
    80002ef2:	ffffe097          	auipc	ra,0xffffe
    80002ef6:	efc080e7          	jalr	-260(ra) # 80000dee <acquire>
    80002efa:	4c9c                	lw	a5,24(s1)
    80002efc:	ff2791e3          	bne	a5,s2,80002ede <scheduler+0xd2>
    80002f00:	1c84a783          	lw	a5,456(s1)
    80002f04:	ffe9                	bnez	a5,80002ede <scheduler+0xd2>
    80002f06:	b7c1                	j	80002ec6 <scheduler+0xba>
    80002f08:	0022fb97          	auipc	s7,0x22f
    80002f0c:	3b0b8b93          	addi	s7,s7,944 # 802322b8 <mlfq>
    80002f10:	00230d17          	auipc	s10,0x230
    80002f14:	e20d0d13          	addi	s10,s10,-480 # 80232d30 <proc>
    80002f18:	a041                	j	80002f98 <scheduler+0x18c>
    80002f1a:	000b2783          	lw	a5,0(s6)
    80002f1e:	1cf4aa23          	sw	a5,468(s1)
    80002f22:	1c44a703          	lw	a4,452(s1)
    80002f26:	4785                	li	a5,1
    80002f28:	00e797bb          	sllw	a5,a5,a4
    80002f2c:	1cf4a623          	sw	a5,460(s1)
    80002f30:	1d04a783          	lw	a5,464(s1)
    80002f34:	2785                	addiw	a5,a5,1
    80002f36:	1cf4a823          	sw	a5,464(s1)
    80002f3a:	4791                	li	a5,4
    80002f3c:	cc9c                	sw	a5,24(s1)
    80002f3e:	029db823          	sd	s1,48(s11)
    80002f42:	06048593          	addi	a1,s1,96
    80002f46:	f8843503          	ld	a0,-120(s0)
    80002f4a:	00000097          	auipc	ra,0x0
    80002f4e:	090080e7          	jalr	144(ra) # 80002fda <swtch>
    80002f52:	000b2783          	lw	a5,0(s6)
    80002f56:	1cf4aa23          	sw	a5,468(s1)
    80002f5a:	020db823          	sd	zero,48(s11)
    80002f5e:	8526                	mv	a0,s1
    80002f60:	ffffe097          	auipc	ra,0xffffe
    80002f64:	f42080e7          	jalr	-190(ra) # 80000ea2 <release>
    80002f68:	490d                	li	s2,3
    80002f6a:	21800c13          	li	s8,536
    80002f6e:	00238997          	auipc	s3,0x238
    80002f72:	9c298993          	addi	s3,s3,-1598 # 8023a930 <mt>
    80002f76:	100027f3          	csrr	a5,sstatus
    80002f7a:	0027e793          	ori	a5,a5,2
    80002f7e:	10079073          	csrw	sstatus,a5
    80002f82:	00230497          	auipc	s1,0x230
    80002f86:	dae48493          	addi	s1,s1,-594 # 80232d30 <proc>
    80002f8a:	03f00a13          	li	s4,63
    80002f8e:	bdfd                	j	80002e8c <scheduler+0x80>
    80002f90:	218b8b93          	addi	s7,s7,536
    80002f94:	ffab81e3          	beq	s7,s10,80002f76 <scheduler+0x16a>
    80002f98:	8a5e                	mv	s4,s7
    80002f9a:	210ba783          	lw	a5,528(s7)
    80002f9e:	dbed                	beqz	a5,80002f90 <scheduler+0x184>
    80002fa0:	8552                	mv	a0,s4
    80002fa2:	00000097          	auipc	ra,0x0
    80002fa6:	d56080e7          	jalr	-682(ra) # 80002cf8 <top>
    80002faa:	84aa                	mv	s1,a0
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	e42080e7          	jalr	-446(ra) # 80000dee <acquire>
    80002fb4:	8552                	mv	a0,s4
    80002fb6:	00000097          	auipc	ra,0x0
    80002fba:	dac080e7          	jalr	-596(ra) # 80002d62 <qpop>
    80002fbe:	1c04a423          	sw	zero,456(s1)
    80002fc2:	4c9c                	lw	a5,24(s1)
    80002fc4:	f5278be3          	beq	a5,s2,80002f1a <scheduler+0x10e>
    80002fc8:	8526                	mv	a0,s1
    80002fca:	ffffe097          	auipc	ra,0xffffe
    80002fce:	ed8080e7          	jalr	-296(ra) # 80000ea2 <release>
    80002fd2:	210a2783          	lw	a5,528(s4)
    80002fd6:	f7e9                	bnez	a5,80002fa0 <scheduler+0x194>
    80002fd8:	bf65                	j	80002f90 <scheduler+0x184>

0000000080002fda <swtch>:
    80002fda:	00153023          	sd	ra,0(a0)
    80002fde:	00253423          	sd	sp,8(a0)
    80002fe2:	e900                	sd	s0,16(a0)
    80002fe4:	ed04                	sd	s1,24(a0)
    80002fe6:	03253023          	sd	s2,32(a0)
    80002fea:	03353423          	sd	s3,40(a0)
    80002fee:	03453823          	sd	s4,48(a0)
    80002ff2:	03553c23          	sd	s5,56(a0)
    80002ff6:	05653023          	sd	s6,64(a0)
    80002ffa:	05753423          	sd	s7,72(a0)
    80002ffe:	05853823          	sd	s8,80(a0)
    80003002:	05953c23          	sd	s9,88(a0)
    80003006:	07a53023          	sd	s10,96(a0)
    8000300a:	07b53423          	sd	s11,104(a0)
    8000300e:	0005b083          	ld	ra,0(a1)
    80003012:	0085b103          	ld	sp,8(a1)
    80003016:	6980                	ld	s0,16(a1)
    80003018:	6d84                	ld	s1,24(a1)
    8000301a:	0205b903          	ld	s2,32(a1)
    8000301e:	0285b983          	ld	s3,40(a1)
    80003022:	0305ba03          	ld	s4,48(a1)
    80003026:	0385ba83          	ld	s5,56(a1)
    8000302a:	0405bb03          	ld	s6,64(a1)
    8000302e:	0485bb83          	ld	s7,72(a1)
    80003032:	0505bc03          	ld	s8,80(a1)
    80003036:	0585bc83          	ld	s9,88(a1)
    8000303a:	0605bd03          	ld	s10,96(a1)
    8000303e:	0685bd83          	ld	s11,104(a1)
    80003042:	8082                	ret

0000000080003044 <trapinit>:
    80003044:	1141                	addi	sp,sp,-16
    80003046:	e406                	sd	ra,8(sp)
    80003048:	e022                	sd	s0,0(sp)
    8000304a:	0800                	addi	s0,sp,16
    8000304c:	00006597          	auipc	a1,0x6
    80003050:	34458593          	addi	a1,a1,836 # 80009390 <states.1850+0x30>
    80003054:	00239517          	auipc	a0,0x239
    80003058:	c5c50513          	addi	a0,a0,-932 # 8023bcb0 <tickslock>
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	d02080e7          	jalr	-766(ra) # 80000d5e <initlock>
    80003064:	60a2                	ld	ra,8(sp)
    80003066:	6402                	ld	s0,0(sp)
    80003068:	0141                	addi	sp,sp,16
    8000306a:	8082                	ret

000000008000306c <trapinithart>:
    8000306c:	1141                	addi	sp,sp,-16
    8000306e:	e422                	sd	s0,8(sp)
    80003070:	0800                	addi	s0,sp,16
    80003072:	00004797          	auipc	a5,0x4
    80003076:	9ce78793          	addi	a5,a5,-1586 # 80006a40 <kernelvec>
    8000307a:	10579073          	csrw	stvec,a5
    8000307e:	6422                	ld	s0,8(sp)
    80003080:	0141                	addi	sp,sp,16
    80003082:	8082                	ret

0000000080003084 <usertrapret>:
    80003084:	1141                	addi	sp,sp,-16
    80003086:	e406                	sd	ra,8(sp)
    80003088:	e022                	sd	s0,0(sp)
    8000308a:	0800                	addi	s0,sp,16
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	d8c080e7          	jalr	-628(ra) # 80001e18 <myproc>
    80003094:	100027f3          	csrr	a5,sstatus
    80003098:	9bf5                	andi	a5,a5,-3
    8000309a:	10079073          	csrw	sstatus,a5
    8000309e:	00005617          	auipc	a2,0x5
    800030a2:	f6260613          	addi	a2,a2,-158 # 80008000 <_trampoline>
    800030a6:	00005697          	auipc	a3,0x5
    800030aa:	f5a68693          	addi	a3,a3,-166 # 80008000 <_trampoline>
    800030ae:	8e91                	sub	a3,a3,a2
    800030b0:	040007b7          	lui	a5,0x4000
    800030b4:	17fd                	addi	a5,a5,-1
    800030b6:	07b2                	slli	a5,a5,0xc
    800030b8:	96be                	add	a3,a3,a5
    800030ba:	10569073          	csrw	stvec,a3
    800030be:	6d38                	ld	a4,88(a0)
    800030c0:	180026f3          	csrr	a3,satp
    800030c4:	e314                	sd	a3,0(a4)
    800030c6:	6d38                	ld	a4,88(a0)
    800030c8:	6134                	ld	a3,64(a0)
    800030ca:	6585                	lui	a1,0x1
    800030cc:	96ae                	add	a3,a3,a1
    800030ce:	e714                	sd	a3,8(a4)
    800030d0:	6d38                	ld	a4,88(a0)
    800030d2:	00000697          	auipc	a3,0x0
    800030d6:	32668693          	addi	a3,a3,806 # 800033f8 <usertrap>
    800030da:	eb14                	sd	a3,16(a4)
    800030dc:	6d38                	ld	a4,88(a0)
    800030de:	8692                	mv	a3,tp
    800030e0:	f314                	sd	a3,32(a4)
    800030e2:	100026f3          	csrr	a3,sstatus
    800030e6:	eff6f693          	andi	a3,a3,-257
    800030ea:	0206e693          	ori	a3,a3,32
    800030ee:	10069073          	csrw	sstatus,a3
    800030f2:	6d38                	ld	a4,88(a0)
    800030f4:	6f18                	ld	a4,24(a4)
    800030f6:	14171073          	csrw	sepc,a4
    800030fa:	6928                	ld	a0,80(a0)
    800030fc:	8131                	srli	a0,a0,0xc
    800030fe:	00005717          	auipc	a4,0x5
    80003102:	f9e70713          	addi	a4,a4,-98 # 8000809c <userret>
    80003106:	8f11                	sub	a4,a4,a2
    80003108:	97ba                	add	a5,a5,a4
    8000310a:	577d                	li	a4,-1
    8000310c:	177e                	slli	a4,a4,0x3f
    8000310e:	8d59                	or	a0,a0,a4
    80003110:	9782                	jalr	a5
    80003112:	60a2                	ld	ra,8(sp)
    80003114:	6402                	ld	s0,0(sp)
    80003116:	0141                	addi	sp,sp,16
    80003118:	8082                	ret

000000008000311a <clockintr>:
    8000311a:	1101                	addi	sp,sp,-32
    8000311c:	ec06                	sd	ra,24(sp)
    8000311e:	e822                	sd	s0,16(sp)
    80003120:	e426                	sd	s1,8(sp)
    80003122:	e04a                	sd	s2,0(sp)
    80003124:	1000                	addi	s0,sp,32
    80003126:	00239917          	auipc	s2,0x239
    8000312a:	b8a90913          	addi	s2,s2,-1142 # 8023bcb0 <tickslock>
    8000312e:	854a                	mv	a0,s2
    80003130:	ffffe097          	auipc	ra,0xffffe
    80003134:	cbe080e7          	jalr	-834(ra) # 80000dee <acquire>
    80003138:	00007497          	auipc	s1,0x7
    8000313c:	acc48493          	addi	s1,s1,-1332 # 80009c04 <ticks>
    80003140:	409c                	lw	a5,0(s1)
    80003142:	2785                	addiw	a5,a5,1
    80003144:	c09c                	sw	a5,0(s1)
    80003146:	00000097          	auipc	ra,0x0
    8000314a:	b1a080e7          	jalr	-1254(ra) # 80002c60 <updateTime>
    8000314e:	8526                	mv	a0,s1
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	420080e7          	jalr	1056(ra) # 80002570 <wakeup>
    80003158:	854a                	mv	a0,s2
    8000315a:	ffffe097          	auipc	ra,0xffffe
    8000315e:	d48080e7          	jalr	-696(ra) # 80000ea2 <release>
    80003162:	60e2                	ld	ra,24(sp)
    80003164:	6442                	ld	s0,16(sp)
    80003166:	64a2                	ld	s1,8(sp)
    80003168:	6902                	ld	s2,0(sp)
    8000316a:	6105                	addi	sp,sp,32
    8000316c:	8082                	ret

000000008000316e <devintr>:
    8000316e:	1101                	addi	sp,sp,-32
    80003170:	ec06                	sd	ra,24(sp)
    80003172:	e822                	sd	s0,16(sp)
    80003174:	e426                	sd	s1,8(sp)
    80003176:	1000                	addi	s0,sp,32
    80003178:	14202773          	csrr	a4,scause
    8000317c:	00074d63          	bltz	a4,80003196 <devintr+0x28>
    80003180:	57fd                	li	a5,-1
    80003182:	17fe                	slli	a5,a5,0x3f
    80003184:	0785                	addi	a5,a5,1
    80003186:	4501                	li	a0,0
    80003188:	06f70363          	beq	a4,a5,800031ee <devintr+0x80>
    8000318c:	60e2                	ld	ra,24(sp)
    8000318e:	6442                	ld	s0,16(sp)
    80003190:	64a2                	ld	s1,8(sp)
    80003192:	6105                	addi	sp,sp,32
    80003194:	8082                	ret
    80003196:	0ff77793          	andi	a5,a4,255
    8000319a:	46a5                	li	a3,9
    8000319c:	fed792e3          	bne	a5,a3,80003180 <devintr+0x12>
    800031a0:	00004097          	auipc	ra,0x4
    800031a4:	9a8080e7          	jalr	-1624(ra) # 80006b48 <plic_claim>
    800031a8:	84aa                	mv	s1,a0
    800031aa:	47a9                	li	a5,10
    800031ac:	02f50763          	beq	a0,a5,800031da <devintr+0x6c>
    800031b0:	4785                	li	a5,1
    800031b2:	02f50963          	beq	a0,a5,800031e4 <devintr+0x76>
    800031b6:	4505                	li	a0,1
    800031b8:	d8f1                	beqz	s1,8000318c <devintr+0x1e>
    800031ba:	85a6                	mv	a1,s1
    800031bc:	00006517          	auipc	a0,0x6
    800031c0:	1dc50513          	addi	a0,a0,476 # 80009398 <states.1850+0x38>
    800031c4:	ffffd097          	auipc	ra,0xffffd
    800031c8:	3ca080e7          	jalr	970(ra) # 8000058e <printf>
    800031cc:	8526                	mv	a0,s1
    800031ce:	00004097          	auipc	ra,0x4
    800031d2:	99e080e7          	jalr	-1634(ra) # 80006b6c <plic_complete>
    800031d6:	4505                	li	a0,1
    800031d8:	bf55                	j	8000318c <devintr+0x1e>
    800031da:	ffffd097          	auipc	ra,0xffffd
    800031de:	7d4080e7          	jalr	2004(ra) # 800009ae <uartintr>
    800031e2:	b7ed                	j	800031cc <devintr+0x5e>
    800031e4:	00004097          	auipc	ra,0x4
    800031e8:	eb2080e7          	jalr	-334(ra) # 80007096 <virtio_disk_intr>
    800031ec:	b7c5                	j	800031cc <devintr+0x5e>
    800031ee:	fffff097          	auipc	ra,0xfffff
    800031f2:	bfe080e7          	jalr	-1026(ra) # 80001dec <cpuid>
    800031f6:	c901                	beqz	a0,80003206 <devintr+0x98>
    800031f8:	144027f3          	csrr	a5,sip
    800031fc:	9bf5                	andi	a5,a5,-3
    800031fe:	14479073          	csrw	sip,a5
    80003202:	4509                	li	a0,2
    80003204:	b761                	j	8000318c <devintr+0x1e>
    80003206:	00000097          	auipc	ra,0x0
    8000320a:	f14080e7          	jalr	-236(ra) # 8000311a <clockintr>
    8000320e:	b7ed                	j	800031f8 <devintr+0x8a>

0000000080003210 <kerneltrap>:
    80003210:	7139                	addi	sp,sp,-64
    80003212:	fc06                	sd	ra,56(sp)
    80003214:	f822                	sd	s0,48(sp)
    80003216:	f426                	sd	s1,40(sp)
    80003218:	f04a                	sd	s2,32(sp)
    8000321a:	ec4e                	sd	s3,24(sp)
    8000321c:	e852                	sd	s4,16(sp)
    8000321e:	e456                	sd	s5,8(sp)
    80003220:	0080                	addi	s0,sp,64
    80003222:	14102973          	csrr	s2,sepc
    80003226:	100024f3          	csrr	s1,sstatus
    8000322a:	142029f3          	csrr	s3,scause
    8000322e:	1004f793          	andi	a5,s1,256
    80003232:	cb95                	beqz	a5,80003266 <kerneltrap+0x56>
    80003234:	100027f3          	csrr	a5,sstatus
    80003238:	8b89                	andi	a5,a5,2
    8000323a:	ef95                	bnez	a5,80003276 <kerneltrap+0x66>
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	f32080e7          	jalr	-206(ra) # 8000316e <devintr>
    80003244:	c129                	beqz	a0,80003286 <kerneltrap+0x76>
    80003246:	4789                	li	a5,2
    80003248:	06f50c63          	beq	a0,a5,800032c0 <kerneltrap+0xb0>
    8000324c:	14191073          	csrw	sepc,s2
    80003250:	10049073          	csrw	sstatus,s1
    80003254:	70e2                	ld	ra,56(sp)
    80003256:	7442                	ld	s0,48(sp)
    80003258:	74a2                	ld	s1,40(sp)
    8000325a:	7902                	ld	s2,32(sp)
    8000325c:	69e2                	ld	s3,24(sp)
    8000325e:	6a42                	ld	s4,16(sp)
    80003260:	6aa2                	ld	s5,8(sp)
    80003262:	6121                	addi	sp,sp,64
    80003264:	8082                	ret
    80003266:	00006517          	auipc	a0,0x6
    8000326a:	15250513          	addi	a0,a0,338 # 800093b8 <states.1850+0x58>
    8000326e:	ffffd097          	auipc	ra,0xffffd
    80003272:	2d6080e7          	jalr	726(ra) # 80000544 <panic>
    80003276:	00006517          	auipc	a0,0x6
    8000327a:	16a50513          	addi	a0,a0,362 # 800093e0 <states.1850+0x80>
    8000327e:	ffffd097          	auipc	ra,0xffffd
    80003282:	2c6080e7          	jalr	710(ra) # 80000544 <panic>
    80003286:	85ce                	mv	a1,s3
    80003288:	00006517          	auipc	a0,0x6
    8000328c:	17850513          	addi	a0,a0,376 # 80009400 <states.1850+0xa0>
    80003290:	ffffd097          	auipc	ra,0xffffd
    80003294:	2fe080e7          	jalr	766(ra) # 8000058e <printf>
    80003298:	141025f3          	csrr	a1,sepc
    8000329c:	14302673          	csrr	a2,stval
    800032a0:	00006517          	auipc	a0,0x6
    800032a4:	17050513          	addi	a0,a0,368 # 80009410 <states.1850+0xb0>
    800032a8:	ffffd097          	auipc	ra,0xffffd
    800032ac:	2e6080e7          	jalr	742(ra) # 8000058e <printf>
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	17850513          	addi	a0,a0,376 # 80009428 <states.1850+0xc8>
    800032b8:	ffffd097          	auipc	ra,0xffffd
    800032bc:	28c080e7          	jalr	652(ra) # 80000544 <panic>
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	b58080e7          	jalr	-1192(ra) # 80001e18 <myproc>
    800032c8:	d151                	beqz	a0,8000324c <kerneltrap+0x3c>
    800032ca:	fffff097          	auipc	ra,0xfffff
    800032ce:	b4e080e7          	jalr	-1202(ra) # 80001e18 <myproc>
    800032d2:	4d18                	lw	a4,24(a0)
    800032d4:	4791                	li	a5,4
    800032d6:	f6f71be3          	bne	a4,a5,8000324c <kerneltrap+0x3c>
    800032da:	fffff097          	auipc	ra,0xfffff
    800032de:	b3e080e7          	jalr	-1218(ra) # 80001e18 <myproc>
    800032e2:	8aaa                	mv	s5,a0
    800032e4:	1cc52783          	lw	a5,460(a0)
    800032e8:	00f05c63          	blez	a5,80003300 <kerneltrap+0xf0>
    800032ec:	1c4aa783          	lw	a5,452(s5)
    800032f0:	f4f05ee3          	blez	a5,8000324c <kerneltrap+0x3c>
    800032f4:	0022fa17          	auipc	s4,0x22f
    800032f8:	1d4a0a13          	addi	s4,s4,468 # 802324c8 <mlfq+0x210>
    800032fc:	4981                	li	s3,0
    800032fe:	a02d                	j	80003328 <kerneltrap+0x118>
    80003300:	1c452783          	lw	a5,452(a0)
    80003304:	4711                	li	a4,4
    80003306:	00e78563          	beq	a5,a4,80003310 <kerneltrap+0x100>
    8000330a:	2785                	addiw	a5,a5,1
    8000330c:	1cf52223          	sw	a5,452(a0)
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	1ae080e7          	jalr	430(ra) # 800024be <yield>
    80003318:	bfd1                	j	800032ec <kerneltrap+0xdc>
    8000331a:	2985                	addiw	s3,s3,1
    8000331c:	218a0a13          	addi	s4,s4,536
    80003320:	1c4aa783          	lw	a5,452(s5)
    80003324:	f2f9d4e3          	bge	s3,a5,8000324c <kerneltrap+0x3c>
    80003328:	000a2783          	lw	a5,0(s4)
    8000332c:	d7fd                	beqz	a5,8000331a <kerneltrap+0x10a>
    8000332e:	fffff097          	auipc	ra,0xfffff
    80003332:	190080e7          	jalr	400(ra) # 800024be <yield>
    80003336:	b7d5                	j	8000331a <kerneltrap+0x10a>

0000000080003338 <page_fault_handler>:
    80003338:	7179                	addi	sp,sp,-48
    8000333a:	f406                	sd	ra,40(sp)
    8000333c:	f022                	sd	s0,32(sp)
    8000333e:	ec26                	sd	s1,24(sp)
    80003340:	e84a                	sd	s2,16(sp)
    80003342:	e44e                	sd	s3,8(sp)
    80003344:	e052                	sd	s4,0(sp)
    80003346:	1800                	addi	s0,sp,48
    80003348:	84aa                	mv	s1,a0
    8000334a:	892e                	mv	s2,a1
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	acc080e7          	jalr	-1332(ra) # 80001e18 <myproc>
    80003354:	57fd                	li	a5,-1
    80003356:	83e9                	srli	a5,a5,0x1a
    80003358:	0897e663          	bltu	a5,s1,800033e4 <page_fault_handler+0xac>
    8000335c:	6d3c                	ld	a5,88(a0)
    8000335e:	7b94                	ld	a3,48(a5)
    80003360:	77fd                	lui	a5,0xfffff
    80003362:	8ff5                	and	a5,a5,a3
    80003364:	0097e663          	bltu	a5,s1,80003370 <page_fault_handler+0x38>
    80003368:	6705                	lui	a4,0x1
    8000336a:	9726                	add	a4,a4,s1
    8000336c:	06f77e63          	bgeu	a4,a5,800033e8 <page_fault_handler+0xb0>
    80003370:	4601                	li	a2,0
    80003372:	75fd                	lui	a1,0xfffff
    80003374:	8de5                	and	a1,a1,s1
    80003376:	854a                	mv	a0,s2
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	e5e080e7          	jalr	-418(ra) # 800011d6 <walk>
    80003380:	892a                	mv	s2,a0
    80003382:	c52d                	beqz	a0,800033ec <page_fault_handler+0xb4>
    80003384:	611c                	ld	a5,0(a0)
    80003386:	00a7d993          	srli	s3,a5,0xa
    8000338a:	09b2                	slli	s3,s3,0xc
    8000338c:	06098263          	beqz	s3,800033f0 <page_fault_handler+0xb8>
    80003390:	2781                	sext.w	a5,a5
    80003392:	0207f713          	andi	a4,a5,32
    80003396:	4501                	li	a0,0
    80003398:	eb09                	bnez	a4,800033aa <page_fault_handler+0x72>
    8000339a:	70a2                	ld	ra,40(sp)
    8000339c:	7402                	ld	s0,32(sp)
    8000339e:	64e2                	ld	s1,24(sp)
    800033a0:	6942                	ld	s2,16(sp)
    800033a2:	69a2                	ld	s3,8(sp)
    800033a4:	6a02                	ld	s4,0(sp)
    800033a6:	6145                	addi	sp,sp,48
    800033a8:	8082                	ret
    800033aa:	3df7f793          	andi	a5,a5,991
    800033ae:	0047e493          	ori	s1,a5,4
    800033b2:	ffffe097          	auipc	ra,0xffffe
    800033b6:	8e4080e7          	jalr	-1820(ra) # 80000c96 <kalloc>
    800033ba:	8a2a                	mv	s4,a0
    800033bc:	cd05                	beqz	a0,800033f4 <page_fault_handler+0xbc>
    800033be:	6605                	lui	a2,0x1
    800033c0:	85ce                	mv	a1,s3
    800033c2:	ffffe097          	auipc	ra,0xffffe
    800033c6:	b88080e7          	jalr	-1144(ra) # 80000f4a <memmove>
    800033ca:	00ca5793          	srli	a5,s4,0xc
    800033ce:	07aa                	slli	a5,a5,0xa
    800033d0:	8fc5                	or	a5,a5,s1
    800033d2:	00f93023          	sd	a5,0(s2)
    800033d6:	854e                	mv	a0,s3
    800033d8:	ffffd097          	auipc	ra,0xffffd
    800033dc:	688080e7          	jalr	1672(ra) # 80000a60 <kfree>
    800033e0:	4501                	li	a0,0
    800033e2:	bf65                	j	8000339a <page_fault_handler+0x62>
    800033e4:	5579                	li	a0,-2
    800033e6:	bf55                	j	8000339a <page_fault_handler+0x62>
    800033e8:	5579                	li	a0,-2
    800033ea:	bf45                	j	8000339a <page_fault_handler+0x62>
    800033ec:	557d                	li	a0,-1
    800033ee:	b775                	j	8000339a <page_fault_handler+0x62>
    800033f0:	557d                	li	a0,-1
    800033f2:	b765                	j	8000339a <page_fault_handler+0x62>
    800033f4:	557d                	li	a0,-1
    800033f6:	b755                	j	8000339a <page_fault_handler+0x62>

00000000800033f8 <usertrap>:
    800033f8:	7179                	addi	sp,sp,-48
    800033fa:	f406                	sd	ra,40(sp)
    800033fc:	f022                	sd	s0,32(sp)
    800033fe:	ec26                	sd	s1,24(sp)
    80003400:	e84a                	sd	s2,16(sp)
    80003402:	e44e                	sd	s3,8(sp)
    80003404:	1800                	addi	s0,sp,48
    80003406:	100027f3          	csrr	a5,sstatus
    8000340a:	1007f793          	andi	a5,a5,256
    8000340e:	efb1                	bnez	a5,8000346a <usertrap+0x72>
    80003410:	00003797          	auipc	a5,0x3
    80003414:	63078793          	addi	a5,a5,1584 # 80006a40 <kernelvec>
    80003418:	10579073          	csrw	stvec,a5
    8000341c:	fffff097          	auipc	ra,0xfffff
    80003420:	9fc080e7          	jalr	-1540(ra) # 80001e18 <myproc>
    80003424:	84aa                	mv	s1,a0
    80003426:	6d3c                	ld	a5,88(a0)
    80003428:	14102773          	csrr	a4,sepc
    8000342c:	ef98                	sd	a4,24(a5)
    8000342e:	14202773          	csrr	a4,scause
    80003432:	47a1                	li	a5,8
    80003434:	04f70363          	beq	a4,a5,8000347a <usertrap+0x82>
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	d36080e7          	jalr	-714(ra) # 8000316e <devintr>
    80003440:	892a                	mv	s2,a0
    80003442:	c579                	beqz	a0,80003510 <usertrap+0x118>
    80003444:	4789                	li	a5,2
    80003446:	04f51e63          	bne	a0,a5,800034a2 <usertrap+0xaa>
    8000344a:	1784a783          	lw	a5,376(s1)
    8000344e:	c3c9                	beqz	a5,800034d0 <usertrap+0xd8>
    80003450:	8526                	mv	a0,s1
    80003452:	fffff097          	auipc	ra,0xfffff
    80003456:	384080e7          	jalr	900(ra) # 800027d6 <killed>
    8000345a:	12050d63          	beqz	a0,80003594 <usertrap+0x19c>
    8000345e:	557d                	li	a0,-1
    80003460:	fffff097          	auipc	ra,0xfffff
    80003464:	1e0080e7          	jalr	480(ra) # 80002640 <exit>
    80003468:	a235                	j	80003594 <usertrap+0x19c>
    8000346a:	00006517          	auipc	a0,0x6
    8000346e:	fce50513          	addi	a0,a0,-50 # 80009438 <states.1850+0xd8>
    80003472:	ffffd097          	auipc	ra,0xffffd
    80003476:	0d2080e7          	jalr	210(ra) # 80000544 <panic>
    8000347a:	fffff097          	auipc	ra,0xfffff
    8000347e:	35c080e7          	jalr	860(ra) # 800027d6 <killed>
    80003482:	e129                	bnez	a0,800034c4 <usertrap+0xcc>
    80003484:	6cb8                	ld	a4,88(s1)
    80003486:	6f1c                	ld	a5,24(a4)
    80003488:	0791                	addi	a5,a5,4
    8000348a:	ef1c                	sd	a5,24(a4)
    8000348c:	100027f3          	csrr	a5,sstatus
    80003490:	0027e793          	ori	a5,a5,2
    80003494:	10079073          	csrw	sstatus,a5
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	2f6080e7          	jalr	758(ra) # 8000378e <syscall>
    800034a0:	4901                	li	s2,0
    800034a2:	8526                	mv	a0,s1
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	332080e7          	jalr	818(ra) # 800027d6 <killed>
    800034ac:	ed61                	bnez	a0,80003584 <usertrap+0x18c>
    800034ae:	00000097          	auipc	ra,0x0
    800034b2:	bd6080e7          	jalr	-1066(ra) # 80003084 <usertrapret>
    800034b6:	70a2                	ld	ra,40(sp)
    800034b8:	7402                	ld	s0,32(sp)
    800034ba:	64e2                	ld	s1,24(sp)
    800034bc:	6942                	ld	s2,16(sp)
    800034be:	69a2                	ld	s3,8(sp)
    800034c0:	6145                	addi	sp,sp,48
    800034c2:	8082                	ret
    800034c4:	557d                	li	a0,-1
    800034c6:	fffff097          	auipc	ra,0xfffff
    800034ca:	17a080e7          	jalr	378(ra) # 80002640 <exit>
    800034ce:	bf5d                	j	80003484 <usertrap+0x8c>
    800034d0:	ffffd097          	auipc	ra,0xffffd
    800034d4:	7c6080e7          	jalr	1990(ra) # 80000c96 <kalloc>
    800034d8:	892a                	mv	s2,a0
    800034da:	6605                	lui	a2,0x1
    800034dc:	6cac                	ld	a1,88(s1)
    800034de:	ffffe097          	auipc	ra,0xffffe
    800034e2:	a6c080e7          	jalr	-1428(ra) # 80000f4a <memmove>
    800034e6:	1684a783          	lw	a5,360(s1)
    800034ea:	2785                	addiw	a5,a5,1
    800034ec:	0007871b          	sext.w	a4,a5
    800034f0:	16f4a423          	sw	a5,360(s1)
    800034f4:	1724b823          	sd	s2,368(s1)
    800034f8:	1884a783          	lw	a5,392(s1)
    800034fc:	f4e79ae3          	bne	a5,a4,80003450 <usertrap+0x58>
    80003500:	4785                	li	a5,1
    80003502:	16f4ac23          	sw	a5,376(s1)
    80003506:	6cbc                	ld	a5,88(s1)
    80003508:	1804b703          	ld	a4,384(s1)
    8000350c:	ef98                	sd	a4,24(a5)
    8000350e:	b789                	j	80003450 <usertrap+0x58>
    80003510:	14202773          	csrr	a4,scause
    80003514:	47b5                	li	a5,13
    80003516:	00f70763          	beq	a4,a5,80003524 <usertrap+0x12c>
    8000351a:	14202773          	csrr	a4,scause
    8000351e:	47bd                	li	a5,15
    80003520:	02f71563          	bne	a4,a5,8000354a <usertrap+0x152>
    80003524:	14302573          	csrr	a0,stval
    80003528:	68ac                	ld	a1,80(s1)
    8000352a:	00000097          	auipc	ra,0x0
    8000352e:	e0e080e7          	jalr	-498(ra) # 80003338 <page_fault_handler>
    80003532:	57f9                	li	a5,-2
    80003534:	00f50863          	beq	a0,a5,80003544 <usertrap+0x14c>
    80003538:	57fd                	li	a5,-1
    8000353a:	f6f514e3          	bne	a0,a5,800034a2 <usertrap+0xaa>
    8000353e:	4785                	li	a5,1
    80003540:	d49c                	sw	a5,40(s1)
    80003542:	b785                	j	800034a2 <usertrap+0xaa>
    80003544:	4785                	li	a5,1
    80003546:	d49c                	sw	a5,40(s1)
    80003548:	bfa9                	j	800034a2 <usertrap+0xaa>
    8000354a:	142025f3          	csrr	a1,scause
    8000354e:	5890                	lw	a2,48(s1)
    80003550:	00006517          	auipc	a0,0x6
    80003554:	f0850513          	addi	a0,a0,-248 # 80009458 <states.1850+0xf8>
    80003558:	ffffd097          	auipc	ra,0xffffd
    8000355c:	036080e7          	jalr	54(ra) # 8000058e <printf>
    80003560:	141025f3          	csrr	a1,sepc
    80003564:	14302673          	csrr	a2,stval
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	f2050513          	addi	a0,a0,-224 # 80009488 <states.1850+0x128>
    80003570:	ffffd097          	auipc	ra,0xffffd
    80003574:	01e080e7          	jalr	30(ra) # 8000058e <printf>
    80003578:	8526                	mv	a0,s1
    8000357a:	fffff097          	auipc	ra,0xfffff
    8000357e:	230080e7          	jalr	560(ra) # 800027aa <setkilled>
    80003582:	b705                	j	800034a2 <usertrap+0xaa>
    80003584:	557d                	li	a0,-1
    80003586:	fffff097          	auipc	ra,0xfffff
    8000358a:	0ba080e7          	jalr	186(ra) # 80002640 <exit>
    8000358e:	4789                	li	a5,2
    80003590:	f0f91fe3          	bne	s2,a5,800034ae <usertrap+0xb6>
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	884080e7          	jalr	-1916(ra) # 80001e18 <myproc>
    8000359c:	d909                	beqz	a0,800034ae <usertrap+0xb6>
    8000359e:	fffff097          	auipc	ra,0xfffff
    800035a2:	87a080e7          	jalr	-1926(ra) # 80001e18 <myproc>
    800035a6:	4d18                	lw	a4,24(a0)
    800035a8:	4791                	li	a5,4
    800035aa:	f0f712e3          	bne	a4,a5,800034ae <usertrap+0xb6>
    800035ae:	fffff097          	auipc	ra,0xfffff
    800035b2:	86a080e7          	jalr	-1942(ra) # 80001e18 <myproc>
    800035b6:	89aa                	mv	s3,a0
    800035b8:	1cc52783          	lw	a5,460(a0)
    800035bc:	00f05c63          	blez	a5,800035d4 <usertrap+0x1dc>
    800035c0:	1c49a783          	lw	a5,452(s3)
    800035c4:	eef055e3          	blez	a5,800034ae <usertrap+0xb6>
    800035c8:	0022f917          	auipc	s2,0x22f
    800035cc:	f0090913          	addi	s2,s2,-256 # 802324c8 <mlfq+0x210>
    800035d0:	4481                	li	s1,0
    800035d2:	a80d                	j	80003604 <usertrap+0x20c>
    800035d4:	1c452783          	lw	a5,452(a0)
    800035d8:	4711                	li	a4,4
    800035da:	00e78563          	beq	a5,a4,800035e4 <usertrap+0x1ec>
    800035de:	2785                	addiw	a5,a5,1
    800035e0:	1cf52223          	sw	a5,452(a0)
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	eda080e7          	jalr	-294(ra) # 800024be <yield>
    800035ec:	bfd1                	j	800035c0 <usertrap+0x1c8>
    800035ee:	fffff097          	auipc	ra,0xfffff
    800035f2:	ed0080e7          	jalr	-304(ra) # 800024be <yield>
    800035f6:	2485                	addiw	s1,s1,1
    800035f8:	21890913          	addi	s2,s2,536
    800035fc:	1c49a783          	lw	a5,452(s3)
    80003600:	eaf4d7e3          	bge	s1,a5,800034ae <usertrap+0xb6>
    80003604:	00092783          	lw	a5,0(s2)
    80003608:	d7fd                	beqz	a5,800035f6 <usertrap+0x1fe>
    8000360a:	b7d5                	j	800035ee <usertrap+0x1f6>

000000008000360c <argraw>:
    8000360c:	1101                	addi	sp,sp,-32
    8000360e:	ec06                	sd	ra,24(sp)
    80003610:	e822                	sd	s0,16(sp)
    80003612:	e426                	sd	s1,8(sp)
    80003614:	1000                	addi	s0,sp,32
    80003616:	84aa                	mv	s1,a0
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	800080e7          	jalr	-2048(ra) # 80001e18 <myproc>
    80003620:	4795                	li	a5,5
    80003622:	0497e163          	bltu	a5,s1,80003664 <argraw+0x58>
    80003626:	048a                	slli	s1,s1,0x2
    80003628:	00006717          	auipc	a4,0x6
    8000362c:	fd070713          	addi	a4,a4,-48 # 800095f8 <states.1850+0x298>
    80003630:	94ba                	add	s1,s1,a4
    80003632:	409c                	lw	a5,0(s1)
    80003634:	97ba                	add	a5,a5,a4
    80003636:	8782                	jr	a5
    80003638:	6d3c                	ld	a5,88(a0)
    8000363a:	7ba8                	ld	a0,112(a5)
    8000363c:	60e2                	ld	ra,24(sp)
    8000363e:	6442                	ld	s0,16(sp)
    80003640:	64a2                	ld	s1,8(sp)
    80003642:	6105                	addi	sp,sp,32
    80003644:	8082                	ret
    80003646:	6d3c                	ld	a5,88(a0)
    80003648:	7fa8                	ld	a0,120(a5)
    8000364a:	bfcd                	j	8000363c <argraw+0x30>
    8000364c:	6d3c                	ld	a5,88(a0)
    8000364e:	63c8                	ld	a0,128(a5)
    80003650:	b7f5                	j	8000363c <argraw+0x30>
    80003652:	6d3c                	ld	a5,88(a0)
    80003654:	67c8                	ld	a0,136(a5)
    80003656:	b7dd                	j	8000363c <argraw+0x30>
    80003658:	6d3c                	ld	a5,88(a0)
    8000365a:	6bc8                	ld	a0,144(a5)
    8000365c:	b7c5                	j	8000363c <argraw+0x30>
    8000365e:	6d3c                	ld	a5,88(a0)
    80003660:	6fc8                	ld	a0,152(a5)
    80003662:	bfe9                	j	8000363c <argraw+0x30>
    80003664:	00006517          	auipc	a0,0x6
    80003668:	e4450513          	addi	a0,a0,-444 # 800094a8 <states.1850+0x148>
    8000366c:	ffffd097          	auipc	ra,0xffffd
    80003670:	ed8080e7          	jalr	-296(ra) # 80000544 <panic>

0000000080003674 <fetchaddr>:
    80003674:	1101                	addi	sp,sp,-32
    80003676:	ec06                	sd	ra,24(sp)
    80003678:	e822                	sd	s0,16(sp)
    8000367a:	e426                	sd	s1,8(sp)
    8000367c:	e04a                	sd	s2,0(sp)
    8000367e:	1000                	addi	s0,sp,32
    80003680:	84aa                	mv	s1,a0
    80003682:	892e                	mv	s2,a1
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	794080e7          	jalr	1940(ra) # 80001e18 <myproc>
    8000368c:	653c                	ld	a5,72(a0)
    8000368e:	02f4f863          	bgeu	s1,a5,800036be <fetchaddr+0x4a>
    80003692:	00848713          	addi	a4,s1,8
    80003696:	02e7e663          	bltu	a5,a4,800036c2 <fetchaddr+0x4e>
    8000369a:	46a1                	li	a3,8
    8000369c:	8626                	mv	a2,s1
    8000369e:	85ca                	mv	a1,s2
    800036a0:	6928                	ld	a0,80(a0)
    800036a2:	ffffe097          	auipc	ra,0xffffe
    800036a6:	2b2080e7          	jalr	690(ra) # 80001954 <copyin>
    800036aa:	00a03533          	snez	a0,a0
    800036ae:	40a00533          	neg	a0,a0
    800036b2:	60e2                	ld	ra,24(sp)
    800036b4:	6442                	ld	s0,16(sp)
    800036b6:	64a2                	ld	s1,8(sp)
    800036b8:	6902                	ld	s2,0(sp)
    800036ba:	6105                	addi	sp,sp,32
    800036bc:	8082                	ret
    800036be:	557d                	li	a0,-1
    800036c0:	bfcd                	j	800036b2 <fetchaddr+0x3e>
    800036c2:	557d                	li	a0,-1
    800036c4:	b7fd                	j	800036b2 <fetchaddr+0x3e>

00000000800036c6 <fetchstr>:
    800036c6:	7179                	addi	sp,sp,-48
    800036c8:	f406                	sd	ra,40(sp)
    800036ca:	f022                	sd	s0,32(sp)
    800036cc:	ec26                	sd	s1,24(sp)
    800036ce:	e84a                	sd	s2,16(sp)
    800036d0:	e44e                	sd	s3,8(sp)
    800036d2:	1800                	addi	s0,sp,48
    800036d4:	892a                	mv	s2,a0
    800036d6:	84ae                	mv	s1,a1
    800036d8:	89b2                	mv	s3,a2
    800036da:	ffffe097          	auipc	ra,0xffffe
    800036de:	73e080e7          	jalr	1854(ra) # 80001e18 <myproc>
    800036e2:	86ce                	mv	a3,s3
    800036e4:	864a                	mv	a2,s2
    800036e6:	85a6                	mv	a1,s1
    800036e8:	6928                	ld	a0,80(a0)
    800036ea:	ffffe097          	auipc	ra,0xffffe
    800036ee:	2f6080e7          	jalr	758(ra) # 800019e0 <copyinstr>
    800036f2:	00054e63          	bltz	a0,8000370e <fetchstr+0x48>
    800036f6:	8526                	mv	a0,s1
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	976080e7          	jalr	-1674(ra) # 8000106e <strlen>
    80003700:	70a2                	ld	ra,40(sp)
    80003702:	7402                	ld	s0,32(sp)
    80003704:	64e2                	ld	s1,24(sp)
    80003706:	6942                	ld	s2,16(sp)
    80003708:	69a2                	ld	s3,8(sp)
    8000370a:	6145                	addi	sp,sp,48
    8000370c:	8082                	ret
    8000370e:	557d                	li	a0,-1
    80003710:	bfc5                	j	80003700 <fetchstr+0x3a>

0000000080003712 <argint>:
    80003712:	1101                	addi	sp,sp,-32
    80003714:	ec06                	sd	ra,24(sp)
    80003716:	e822                	sd	s0,16(sp)
    80003718:	e426                	sd	s1,8(sp)
    8000371a:	1000                	addi	s0,sp,32
    8000371c:	84ae                	mv	s1,a1
    8000371e:	00000097          	auipc	ra,0x0
    80003722:	eee080e7          	jalr	-274(ra) # 8000360c <argraw>
    80003726:	c088                	sw	a0,0(s1)
    80003728:	4501                	li	a0,0
    8000372a:	60e2                	ld	ra,24(sp)
    8000372c:	6442                	ld	s0,16(sp)
    8000372e:	64a2                	ld	s1,8(sp)
    80003730:	6105                	addi	sp,sp,32
    80003732:	8082                	ret

0000000080003734 <argaddr>:
    80003734:	1101                	addi	sp,sp,-32
    80003736:	ec06                	sd	ra,24(sp)
    80003738:	e822                	sd	s0,16(sp)
    8000373a:	e426                	sd	s1,8(sp)
    8000373c:	1000                	addi	s0,sp,32
    8000373e:	84ae                	mv	s1,a1
    80003740:	00000097          	auipc	ra,0x0
    80003744:	ecc080e7          	jalr	-308(ra) # 8000360c <argraw>
    80003748:	e088                	sd	a0,0(s1)
    8000374a:	4501                	li	a0,0
    8000374c:	60e2                	ld	ra,24(sp)
    8000374e:	6442                	ld	s0,16(sp)
    80003750:	64a2                	ld	s1,8(sp)
    80003752:	6105                	addi	sp,sp,32
    80003754:	8082                	ret

0000000080003756 <argstr>:
    80003756:	7179                	addi	sp,sp,-48
    80003758:	f406                	sd	ra,40(sp)
    8000375a:	f022                	sd	s0,32(sp)
    8000375c:	ec26                	sd	s1,24(sp)
    8000375e:	e84a                	sd	s2,16(sp)
    80003760:	1800                	addi	s0,sp,48
    80003762:	84ae                	mv	s1,a1
    80003764:	8932                	mv	s2,a2
    80003766:	fd840593          	addi	a1,s0,-40
    8000376a:	00000097          	auipc	ra,0x0
    8000376e:	fca080e7          	jalr	-54(ra) # 80003734 <argaddr>
    80003772:	864a                	mv	a2,s2
    80003774:	85a6                	mv	a1,s1
    80003776:	fd843503          	ld	a0,-40(s0)
    8000377a:	00000097          	auipc	ra,0x0
    8000377e:	f4c080e7          	jalr	-180(ra) # 800036c6 <fetchstr>
    80003782:	70a2                	ld	ra,40(sp)
    80003784:	7402                	ld	s0,32(sp)
    80003786:	64e2                	ld	s1,24(sp)
    80003788:	6942                	ld	s2,16(sp)
    8000378a:	6145                	addi	sp,sp,48
    8000378c:	8082                	ret

000000008000378e <syscall>:
    8000378e:	715d                	addi	sp,sp,-80
    80003790:	e486                	sd	ra,72(sp)
    80003792:	e0a2                	sd	s0,64(sp)
    80003794:	fc26                	sd	s1,56(sp)
    80003796:	f84a                	sd	s2,48(sp)
    80003798:	f44e                	sd	s3,40(sp)
    8000379a:	f052                	sd	s4,32(sp)
    8000379c:	ec56                	sd	s5,24(sp)
    8000379e:	e85a                	sd	s6,16(sp)
    800037a0:	e45e                	sd	s7,8(sp)
    800037a2:	0880                	addi	s0,sp,80
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	674080e7          	jalr	1652(ra) # 80001e18 <myproc>
    800037ac:	8a2a                	mv	s4,a0
    800037ae:	6d3c                	ld	a5,88(a0)
    800037b0:	0a87bb03          	ld	s6,168(a5)
    800037b4:	000b0b9b          	sext.w	s7,s6
    800037b8:	002b9713          	slli	a4,s7,0x2
    800037bc:	00006797          	auipc	a5,0x6
    800037c0:	e5478793          	addi	a5,a5,-428 # 80009610 <syscallnum>
    800037c4:	97ba                	add	a5,a5,a4
    800037c6:	0007a983          	lw	s3,0(a5)
    800037ca:	00299793          	slli	a5,s3,0x2
    800037ce:	07bd                	addi	a5,a5,15
    800037d0:	9bc1                	andi	a5,a5,-16
    800037d2:	40f10133          	sub	sp,sp,a5
    800037d6:	8a8a                	mv	s5,sp
    800037d8:	01305f63          	blez	s3,800037f6 <syscall+0x68>
    800037dc:	8956                	mv	s2,s5
    800037de:	4481                	li	s1,0
    800037e0:	8526                	mv	a0,s1
    800037e2:	00000097          	auipc	ra,0x0
    800037e6:	e2a080e7          	jalr	-470(ra) # 8000360c <argraw>
    800037ea:	00a92023          	sw	a0,0(s2)
    800037ee:	2485                	addiw	s1,s1,1
    800037f0:	0911                	addi	s2,s2,4
    800037f2:	fe9997e3          	bne	s3,s1,800037e0 <syscall+0x52>
    800037f6:	3b7d                	addiw	s6,s6,-1
    800037f8:	47e9                	li	a5,26
    800037fa:	0b67e963          	bltu	a5,s6,800038ac <syscall+0x11e>
    800037fe:	003b9713          	slli	a4,s7,0x3
    80003802:	00006797          	auipc	a5,0x6
    80003806:	e0e78793          	addi	a5,a5,-498 # 80009610 <syscallnum>
    8000380a:	97ba                	add	a5,a5,a4
    8000380c:	7bbc                	ld	a5,112(a5)
    8000380e:	cfd9                	beqz	a5,800038ac <syscall+0x11e>
    80003810:	058a3483          	ld	s1,88(s4)
    80003814:	9782                	jalr	a5
    80003816:	f8a8                	sd	a0,112(s1)
    80003818:	4785                	li	a5,1
    8000381a:	017797bb          	sllw	a5,a5,s7
    8000381e:	19ca2703          	lw	a4,412(s4)
    80003822:	8ff9                	and	a5,a5,a4
    80003824:	2781                	sext.w	a5,a5
    80003826:	c7c5                	beqz	a5,800038ce <syscall+0x140>
    80003828:	0b8e                	slli	s7,s7,0x3
    8000382a:	00006797          	auipc	a5,0x6
    8000382e:	de678793          	addi	a5,a5,-538 # 80009610 <syscallnum>
    80003832:	9bbe                	add	s7,s7,a5
    80003834:	150bb603          	ld	a2,336(s7)
    80003838:	030a2583          	lw	a1,48(s4)
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	c7450513          	addi	a0,a0,-908 # 800094b0 <states.1850+0x150>
    80003844:	ffffd097          	auipc	ra,0xffffd
    80003848:	d4a080e7          	jalr	-694(ra) # 8000058e <printf>
    8000384c:	05305163          	blez	s3,8000388e <syscall+0x100>
    80003850:	84d6                	mv	s1,s5
    80003852:	4901                	li	s2,0
    80003854:	00006a97          	auipc	s5,0x6
    80003858:	c74a8a93          	addi	s5,s5,-908 # 800094c8 <states.1850+0x168>
    8000385c:	fff98a1b          	addiw	s4,s3,-1
    80003860:	00006b17          	auipc	s6,0x6
    80003864:	c70b0b13          	addi	s6,s6,-912 # 800094d0 <states.1850+0x170>
    80003868:	a029                	j	80003872 <syscall+0xe4>
    8000386a:	2905                	addiw	s2,s2,1
    8000386c:	0491                	addi	s1,s1,4
    8000386e:	03298063          	beq	s3,s2,8000388e <syscall+0x100>
    80003872:	408c                	lw	a1,0(s1)
    80003874:	8556                	mv	a0,s5
    80003876:	ffffd097          	auipc	ra,0xffffd
    8000387a:	d18080e7          	jalr	-744(ra) # 8000058e <printf>
    8000387e:	ff2a06e3          	beq	s4,s2,8000386a <syscall+0xdc>
    80003882:	855a                	mv	a0,s6
    80003884:	ffffd097          	auipc	ra,0xffffd
    80003888:	d0a080e7          	jalr	-758(ra) # 8000058e <printf>
    8000388c:	bff9                	j	8000386a <syscall+0xdc>
    8000388e:	4501                	li	a0,0
    80003890:	00000097          	auipc	ra,0x0
    80003894:	d7c080e7          	jalr	-644(ra) # 8000360c <argraw>
    80003898:	85aa                	mv	a1,a0
    8000389a:	00006517          	auipc	a0,0x6
    8000389e:	c3e50513          	addi	a0,a0,-962 # 800094d8 <states.1850+0x178>
    800038a2:	ffffd097          	auipc	ra,0xffffd
    800038a6:	cec080e7          	jalr	-788(ra) # 8000058e <printf>
    800038aa:	a015                	j	800038ce <syscall+0x140>
    800038ac:	058a3783          	ld	a5,88(s4)
    800038b0:	577d                	li	a4,-1
    800038b2:	fbb8                	sd	a4,112(a5)
    800038b4:	86de                	mv	a3,s7
    800038b6:	158a0613          	addi	a2,s4,344
    800038ba:	030a2583          	lw	a1,48(s4)
    800038be:	00006517          	auipc	a0,0x6
    800038c2:	c2a50513          	addi	a0,a0,-982 # 800094e8 <states.1850+0x188>
    800038c6:	ffffd097          	auipc	ra,0xffffd
    800038ca:	cc8080e7          	jalr	-824(ra) # 8000058e <printf>
    800038ce:	fb040113          	addi	sp,s0,-80
    800038d2:	60a6                	ld	ra,72(sp)
    800038d4:	6406                	ld	s0,64(sp)
    800038d6:	74e2                	ld	s1,56(sp)
    800038d8:	7942                	ld	s2,48(sp)
    800038da:	79a2                	ld	s3,40(sp)
    800038dc:	7a02                	ld	s4,32(sp)
    800038de:	6ae2                	ld	s5,24(sp)
    800038e0:	6b42                	ld	s6,16(sp)
    800038e2:	6ba2                	ld	s7,8(sp)
    800038e4:	6161                	addi	sp,sp,80
    800038e6:	8082                	ret

00000000800038e8 <sys_exit>:
    800038e8:	1101                	addi	sp,sp,-32
    800038ea:	ec06                	sd	ra,24(sp)
    800038ec:	e822                	sd	s0,16(sp)
    800038ee:	1000                	addi	s0,sp,32
    800038f0:	fec40593          	addi	a1,s0,-20
    800038f4:	4501                	li	a0,0
    800038f6:	00000097          	auipc	ra,0x0
    800038fa:	e1c080e7          	jalr	-484(ra) # 80003712 <argint>
    800038fe:	fec42503          	lw	a0,-20(s0)
    80003902:	fffff097          	auipc	ra,0xfffff
    80003906:	d3e080e7          	jalr	-706(ra) # 80002640 <exit>
    8000390a:	4501                	li	a0,0
    8000390c:	60e2                	ld	ra,24(sp)
    8000390e:	6442                	ld	s0,16(sp)
    80003910:	6105                	addi	sp,sp,32
    80003912:	8082                	ret

0000000080003914 <sys_getpid>:
    80003914:	1141                	addi	sp,sp,-16
    80003916:	e406                	sd	ra,8(sp)
    80003918:	e022                	sd	s0,0(sp)
    8000391a:	0800                	addi	s0,sp,16
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	4fc080e7          	jalr	1276(ra) # 80001e18 <myproc>
    80003924:	5908                	lw	a0,48(a0)
    80003926:	60a2                	ld	ra,8(sp)
    80003928:	6402                	ld	s0,0(sp)
    8000392a:	0141                	addi	sp,sp,16
    8000392c:	8082                	ret

000000008000392e <sys_fork>:
    8000392e:	1141                	addi	sp,sp,-16
    80003930:	e406                	sd	ra,8(sp)
    80003932:	e022                	sd	s0,0(sp)
    80003934:	0800                	addi	s0,sp,16
    80003936:	fffff097          	auipc	ra,0xfffff
    8000393a:	906080e7          	jalr	-1786(ra) # 8000223c <fork>
    8000393e:	60a2                	ld	ra,8(sp)
    80003940:	6402                	ld	s0,0(sp)
    80003942:	0141                	addi	sp,sp,16
    80003944:	8082                	ret

0000000080003946 <sys_wait>:
    80003946:	1101                	addi	sp,sp,-32
    80003948:	ec06                	sd	ra,24(sp)
    8000394a:	e822                	sd	s0,16(sp)
    8000394c:	1000                	addi	s0,sp,32
    8000394e:	fe840593          	addi	a1,s0,-24
    80003952:	4501                	li	a0,0
    80003954:	00000097          	auipc	ra,0x0
    80003958:	de0080e7          	jalr	-544(ra) # 80003734 <argaddr>
    8000395c:	fe843503          	ld	a0,-24(s0)
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	ea8080e7          	jalr	-344(ra) # 80002808 <wait>
    80003968:	60e2                	ld	ra,24(sp)
    8000396a:	6442                	ld	s0,16(sp)
    8000396c:	6105                	addi	sp,sp,32
    8000396e:	8082                	ret

0000000080003970 <sys_waitx>:
    80003970:	7139                	addi	sp,sp,-64
    80003972:	fc06                	sd	ra,56(sp)
    80003974:	f822                	sd	s0,48(sp)
    80003976:	f426                	sd	s1,40(sp)
    80003978:	f04a                	sd	s2,32(sp)
    8000397a:	0080                	addi	s0,sp,64
    8000397c:	fd840593          	addi	a1,s0,-40
    80003980:	4501                	li	a0,0
    80003982:	00000097          	auipc	ra,0x0
    80003986:	db2080e7          	jalr	-590(ra) # 80003734 <argaddr>
    8000398a:	fd040593          	addi	a1,s0,-48
    8000398e:	4505                	li	a0,1
    80003990:	00000097          	auipc	ra,0x0
    80003994:	da4080e7          	jalr	-604(ra) # 80003734 <argaddr>
    80003998:	fc840593          	addi	a1,s0,-56
    8000399c:	4509                	li	a0,2
    8000399e:	00000097          	auipc	ra,0x0
    800039a2:	d96080e7          	jalr	-618(ra) # 80003734 <argaddr>
    800039a6:	fc040613          	addi	a2,s0,-64
    800039aa:	fc440593          	addi	a1,s0,-60
    800039ae:	fd843503          	ld	a0,-40(s0)
    800039b2:	fffff097          	auipc	ra,0xfffff
    800039b6:	162080e7          	jalr	354(ra) # 80002b14 <waitx>
    800039ba:	892a                	mv	s2,a0
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	45c080e7          	jalr	1116(ra) # 80001e18 <myproc>
    800039c4:	84aa                	mv	s1,a0
    800039c6:	4691                	li	a3,4
    800039c8:	fc440613          	addi	a2,s0,-60
    800039cc:	fd043583          	ld	a1,-48(s0)
    800039d0:	6928                	ld	a0,80(a0)
    800039d2:	ffffe097          	auipc	ra,0xffffe
    800039d6:	ebe080e7          	jalr	-322(ra) # 80001890 <copyout>
    800039da:	57fd                	li	a5,-1
    800039dc:	00054f63          	bltz	a0,800039fa <sys_waitx+0x8a>
    800039e0:	4691                	li	a3,4
    800039e2:	fc040613          	addi	a2,s0,-64
    800039e6:	fc843583          	ld	a1,-56(s0)
    800039ea:	68a8                	ld	a0,80(s1)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	ea4080e7          	jalr	-348(ra) # 80001890 <copyout>
    800039f4:	00054a63          	bltz	a0,80003a08 <sys_waitx+0x98>
    800039f8:	87ca                	mv	a5,s2
    800039fa:	853e                	mv	a0,a5
    800039fc:	70e2                	ld	ra,56(sp)
    800039fe:	7442                	ld	s0,48(sp)
    80003a00:	74a2                	ld	s1,40(sp)
    80003a02:	7902                	ld	s2,32(sp)
    80003a04:	6121                	addi	sp,sp,64
    80003a06:	8082                	ret
    80003a08:	57fd                	li	a5,-1
    80003a0a:	bfc5                	j	800039fa <sys_waitx+0x8a>

0000000080003a0c <sys_sbrk>:
    80003a0c:	7179                	addi	sp,sp,-48
    80003a0e:	f406                	sd	ra,40(sp)
    80003a10:	f022                	sd	s0,32(sp)
    80003a12:	ec26                	sd	s1,24(sp)
    80003a14:	1800                	addi	s0,sp,48
    80003a16:	fdc40593          	addi	a1,s0,-36
    80003a1a:	4501                	li	a0,0
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	cf6080e7          	jalr	-778(ra) # 80003712 <argint>
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	3f4080e7          	jalr	1012(ra) # 80001e18 <myproc>
    80003a2c:	6524                	ld	s1,72(a0)
    80003a2e:	fdc42503          	lw	a0,-36(s0)
    80003a32:	ffffe097          	auipc	ra,0xffffe
    80003a36:	7ae080e7          	jalr	1966(ra) # 800021e0 <growproc>
    80003a3a:	00054863          	bltz	a0,80003a4a <sys_sbrk+0x3e>
    80003a3e:	8526                	mv	a0,s1
    80003a40:	70a2                	ld	ra,40(sp)
    80003a42:	7402                	ld	s0,32(sp)
    80003a44:	64e2                	ld	s1,24(sp)
    80003a46:	6145                	addi	sp,sp,48
    80003a48:	8082                	ret
    80003a4a:	54fd                	li	s1,-1
    80003a4c:	bfcd                	j	80003a3e <sys_sbrk+0x32>

0000000080003a4e <sys_sleep>:
    80003a4e:	7139                	addi	sp,sp,-64
    80003a50:	fc06                	sd	ra,56(sp)
    80003a52:	f822                	sd	s0,48(sp)
    80003a54:	f426                	sd	s1,40(sp)
    80003a56:	f04a                	sd	s2,32(sp)
    80003a58:	ec4e                	sd	s3,24(sp)
    80003a5a:	0080                	addi	s0,sp,64
    80003a5c:	fcc40593          	addi	a1,s0,-52
    80003a60:	4501                	li	a0,0
    80003a62:	00000097          	auipc	ra,0x0
    80003a66:	cb0080e7          	jalr	-848(ra) # 80003712 <argint>
    80003a6a:	00238517          	auipc	a0,0x238
    80003a6e:	24650513          	addi	a0,a0,582 # 8023bcb0 <tickslock>
    80003a72:	ffffd097          	auipc	ra,0xffffd
    80003a76:	37c080e7          	jalr	892(ra) # 80000dee <acquire>
    80003a7a:	00006917          	auipc	s2,0x6
    80003a7e:	18a92903          	lw	s2,394(s2) # 80009c04 <ticks>
    80003a82:	fcc42783          	lw	a5,-52(s0)
    80003a86:	cf9d                	beqz	a5,80003ac4 <sys_sleep+0x76>
    80003a88:	00238997          	auipc	s3,0x238
    80003a8c:	22898993          	addi	s3,s3,552 # 8023bcb0 <tickslock>
    80003a90:	00006497          	auipc	s1,0x6
    80003a94:	17448493          	addi	s1,s1,372 # 80009c04 <ticks>
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	380080e7          	jalr	896(ra) # 80001e18 <myproc>
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	d36080e7          	jalr	-714(ra) # 800027d6 <killed>
    80003aa8:	ed15                	bnez	a0,80003ae4 <sys_sleep+0x96>
    80003aaa:	85ce                	mv	a1,s3
    80003aac:	8526                	mv	a0,s1
    80003aae:	fffff097          	auipc	ra,0xfffff
    80003ab2:	a4c080e7          	jalr	-1460(ra) # 800024fa <sleep>
    80003ab6:	409c                	lw	a5,0(s1)
    80003ab8:	412787bb          	subw	a5,a5,s2
    80003abc:	fcc42703          	lw	a4,-52(s0)
    80003ac0:	fce7ece3          	bltu	a5,a4,80003a98 <sys_sleep+0x4a>
    80003ac4:	00238517          	auipc	a0,0x238
    80003ac8:	1ec50513          	addi	a0,a0,492 # 8023bcb0 <tickslock>
    80003acc:	ffffd097          	auipc	ra,0xffffd
    80003ad0:	3d6080e7          	jalr	982(ra) # 80000ea2 <release>
    80003ad4:	4501                	li	a0,0
    80003ad6:	70e2                	ld	ra,56(sp)
    80003ad8:	7442                	ld	s0,48(sp)
    80003ada:	74a2                	ld	s1,40(sp)
    80003adc:	7902                	ld	s2,32(sp)
    80003ade:	69e2                	ld	s3,24(sp)
    80003ae0:	6121                	addi	sp,sp,64
    80003ae2:	8082                	ret
    80003ae4:	00238517          	auipc	a0,0x238
    80003ae8:	1cc50513          	addi	a0,a0,460 # 8023bcb0 <tickslock>
    80003aec:	ffffd097          	auipc	ra,0xffffd
    80003af0:	3b6080e7          	jalr	950(ra) # 80000ea2 <release>
    80003af4:	557d                	li	a0,-1
    80003af6:	b7c5                	j	80003ad6 <sys_sleep+0x88>

0000000080003af8 <sys_kill>:
    80003af8:	1101                	addi	sp,sp,-32
    80003afa:	ec06                	sd	ra,24(sp)
    80003afc:	e822                	sd	s0,16(sp)
    80003afe:	1000                	addi	s0,sp,32
    80003b00:	fec40593          	addi	a1,s0,-20
    80003b04:	4501                	li	a0,0
    80003b06:	00000097          	auipc	ra,0x0
    80003b0a:	c0c080e7          	jalr	-1012(ra) # 80003712 <argint>
    80003b0e:	fec42503          	lw	a0,-20(s0)
    80003b12:	fffff097          	auipc	ra,0xfffff
    80003b16:	c26080e7          	jalr	-986(ra) # 80002738 <kill>
    80003b1a:	60e2                	ld	ra,24(sp)
    80003b1c:	6442                	ld	s0,16(sp)
    80003b1e:	6105                	addi	sp,sp,32
    80003b20:	8082                	ret

0000000080003b22 <sys_uptime>:
    80003b22:	1101                	addi	sp,sp,-32
    80003b24:	ec06                	sd	ra,24(sp)
    80003b26:	e822                	sd	s0,16(sp)
    80003b28:	e426                	sd	s1,8(sp)
    80003b2a:	1000                	addi	s0,sp,32
    80003b2c:	00238517          	auipc	a0,0x238
    80003b30:	18450513          	addi	a0,a0,388 # 8023bcb0 <tickslock>
    80003b34:	ffffd097          	auipc	ra,0xffffd
    80003b38:	2ba080e7          	jalr	698(ra) # 80000dee <acquire>
    80003b3c:	00006497          	auipc	s1,0x6
    80003b40:	0c84a483          	lw	s1,200(s1) # 80009c04 <ticks>
    80003b44:	00238517          	auipc	a0,0x238
    80003b48:	16c50513          	addi	a0,a0,364 # 8023bcb0 <tickslock>
    80003b4c:	ffffd097          	auipc	ra,0xffffd
    80003b50:	356080e7          	jalr	854(ra) # 80000ea2 <release>
    80003b54:	02049513          	slli	a0,s1,0x20
    80003b58:	9101                	srli	a0,a0,0x20
    80003b5a:	60e2                	ld	ra,24(sp)
    80003b5c:	6442                	ld	s0,16(sp)
    80003b5e:	64a2                	ld	s1,8(sp)
    80003b60:	6105                	addi	sp,sp,32
    80003b62:	8082                	ret

0000000080003b64 <sys_trace>:
    80003b64:	7179                	addi	sp,sp,-48
    80003b66:	f406                	sd	ra,40(sp)
    80003b68:	f022                	sd	s0,32(sp)
    80003b6a:	ec26                	sd	s1,24(sp)
    80003b6c:	1800                	addi	s0,sp,48
    80003b6e:	ffffe097          	auipc	ra,0xffffe
    80003b72:	2aa080e7          	jalr	682(ra) # 80001e18 <myproc>
    80003b76:	84aa                	mv	s1,a0
    80003b78:	fdc40593          	addi	a1,s0,-36
    80003b7c:	4501                	li	a0,0
    80003b7e:	00000097          	auipc	ra,0x0
    80003b82:	b94080e7          	jalr	-1132(ra) # 80003712 <argint>
    80003b86:	57fd                	li	a5,-1
    80003b88:	00054763          	bltz	a0,80003b96 <sys_trace+0x32>
    80003b8c:	fdc42783          	lw	a5,-36(s0)
    80003b90:	18f4ae23          	sw	a5,412(s1)
    80003b94:	4781                	li	a5,0
    80003b96:	853e                	mv	a0,a5
    80003b98:	70a2                	ld	ra,40(sp)
    80003b9a:	7402                	ld	s0,32(sp)
    80003b9c:	64e2                	ld	s1,24(sp)
    80003b9e:	6145                	addi	sp,sp,48
    80003ba0:	8082                	ret

0000000080003ba2 <sys_set_priority>:
    80003ba2:	1101                	addi	sp,sp,-32
    80003ba4:	ec06                	sd	ra,24(sp)
    80003ba6:	e822                	sd	s0,16(sp)
    80003ba8:	1000                	addi	s0,sp,32
    80003baa:	fe840593          	addi	a1,s0,-24
    80003bae:	4501                	li	a0,0
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	b62080e7          	jalr	-1182(ra) # 80003712 <argint>
    80003bb8:	57fd                	li	a5,-1
    80003bba:	02054563          	bltz	a0,80003be4 <sys_set_priority+0x42>
    80003bbe:	fec40593          	addi	a1,s0,-20
    80003bc2:	4505                	li	a0,1
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	b4e080e7          	jalr	-1202(ra) # 80003712 <argint>
    80003bcc:	57fd                	li	a5,-1
    80003bce:	00054b63          	bltz	a0,80003be4 <sys_set_priority+0x42>
    80003bd2:	fec42583          	lw	a1,-20(s0)
    80003bd6:	fe842503          	lw	a0,-24(s0)
    80003bda:	fffff097          	auipc	ra,0xfffff
    80003bde:	eb6080e7          	jalr	-330(ra) # 80002a90 <set_priority>
    80003be2:	87aa                	mv	a5,a0
    80003be4:	853e                	mv	a0,a5
    80003be6:	60e2                	ld	ra,24(sp)
    80003be8:	6442                	ld	s0,16(sp)
    80003bea:	6105                	addi	sp,sp,32
    80003bec:	8082                	ret

0000000080003bee <sys_sigalarm>:
    80003bee:	1101                	addi	sp,sp,-32
    80003bf0:	ec06                	sd	ra,24(sp)
    80003bf2:	e822                	sd	s0,16(sp)
    80003bf4:	1000                	addi	s0,sp,32
    80003bf6:	fe440593          	addi	a1,s0,-28
    80003bfa:	4501                	li	a0,0
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	b16080e7          	jalr	-1258(ra) # 80003712 <argint>
    80003c04:	fe442783          	lw	a5,-28(s0)
    80003c08:	557d                	li	a0,-1
    80003c0a:	0207ca63          	bltz	a5,80003c3e <sys_sigalarm+0x50>
    80003c0e:	fe840593          	addi	a1,s0,-24
    80003c12:	4505                	li	a0,1
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	b20080e7          	jalr	-1248(ra) # 80003734 <argaddr>
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	1fc080e7          	jalr	508(ra) # 80001e18 <myproc>
    80003c24:	fe442783          	lw	a5,-28(s0)
    80003c28:	18f52423          	sw	a5,392(a0)
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	1ec080e7          	jalr	492(ra) # 80001e18 <myproc>
    80003c34:	fe843783          	ld	a5,-24(s0)
    80003c38:	18f53023          	sd	a5,384(a0)
    80003c3c:	4501                	li	a0,0
    80003c3e:	60e2                	ld	ra,24(sp)
    80003c40:	6442                	ld	s0,16(sp)
    80003c42:	6105                	addi	sp,sp,32
    80003c44:	8082                	ret

0000000080003c46 <sys_sigreturn>:
    80003c46:	1101                	addi	sp,sp,-32
    80003c48:	ec06                	sd	ra,24(sp)
    80003c4a:	e822                	sd	s0,16(sp)
    80003c4c:	e426                	sd	s1,8(sp)
    80003c4e:	1000                	addi	s0,sp,32
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	1c8080e7          	jalr	456(ra) # 80001e18 <myproc>
    80003c58:	84aa                	mv	s1,a0
    80003c5a:	6605                	lui	a2,0x1
    80003c5c:	17053583          	ld	a1,368(a0)
    80003c60:	6d28                	ld	a0,88(a0)
    80003c62:	ffffd097          	auipc	ra,0xffffd
    80003c66:	2e8080e7          	jalr	744(ra) # 80000f4a <memmove>
    80003c6a:	1704b503          	ld	a0,368(s1)
    80003c6e:	ffffd097          	auipc	ra,0xffffd
    80003c72:	df2080e7          	jalr	-526(ra) # 80000a60 <kfree>
    80003c76:	1604b823          	sd	zero,368(s1)
    80003c7a:	1604ac23          	sw	zero,376(s1)
    80003c7e:	1604a423          	sw	zero,360(s1)
    80003c82:	6cbc                	ld	a5,88(s1)
    80003c84:	7ba8                	ld	a0,112(a5)
    80003c86:	60e2                	ld	ra,24(sp)
    80003c88:	6442                	ld	s0,16(sp)
    80003c8a:	64a2                	ld	s1,8(sp)
    80003c8c:	6105                	addi	sp,sp,32
    80003c8e:	8082                	ret

0000000080003c90 <sys_settickets>:
    80003c90:	1101                	addi	sp,sp,-32
    80003c92:	ec06                	sd	ra,24(sp)
    80003c94:	e822                	sd	s0,16(sp)
    80003c96:	1000                	addi	s0,sp,32
    80003c98:	fec40593          	addi	a1,s0,-20
    80003c9c:	4501                	li	a0,0
    80003c9e:	00000097          	auipc	ra,0x0
    80003ca2:	a74080e7          	jalr	-1420(ra) # 80003712 <argint>
    80003ca6:	fec42503          	lw	a0,-20(s0)
    80003caa:	00a05b63          	blez	a0,80003cc0 <sys_settickets+0x30>
    80003cae:	ffffe097          	auipc	ra,0xffffe
    80003cb2:	6ec080e7          	jalr	1772(ra) # 8000239a <set_proc_tckts>
    80003cb6:	4501                	li	a0,0
    80003cb8:	60e2                	ld	ra,24(sp)
    80003cba:	6442                	ld	s0,16(sp)
    80003cbc:	6105                	addi	sp,sp,32
    80003cbe:	8082                	ret
    80003cc0:	557d                	li	a0,-1
    80003cc2:	bfdd                	j	80003cb8 <sys_settickets+0x28>

0000000080003cc4 <binit>:
    80003cc4:	7179                	addi	sp,sp,-48
    80003cc6:	f406                	sd	ra,40(sp)
    80003cc8:	f022                	sd	s0,32(sp)
    80003cca:	ec26                	sd	s1,24(sp)
    80003ccc:	e84a                	sd	s2,16(sp)
    80003cce:	e44e                	sd	s3,8(sp)
    80003cd0:	e052                	sd	s4,0(sp)
    80003cd2:	1800                	addi	s0,sp,48
    80003cd4:	00006597          	auipc	a1,0x6
    80003cd8:	b6c58593          	addi	a1,a1,-1172 # 80009840 <syscall_names+0xe0>
    80003cdc:	00238517          	auipc	a0,0x238
    80003ce0:	fec50513          	addi	a0,a0,-20 # 8023bcc8 <bcache>
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	07a080e7          	jalr	122(ra) # 80000d5e <initlock>
    80003cec:	00240797          	auipc	a5,0x240
    80003cf0:	fdc78793          	addi	a5,a5,-36 # 80243cc8 <bcache+0x8000>
    80003cf4:	00240717          	auipc	a4,0x240
    80003cf8:	23c70713          	addi	a4,a4,572 # 80243f30 <bcache+0x8268>
    80003cfc:	2ae7b823          	sd	a4,688(a5)
    80003d00:	2ae7bc23          	sd	a4,696(a5)
    80003d04:	00238497          	auipc	s1,0x238
    80003d08:	fdc48493          	addi	s1,s1,-36 # 8023bce0 <bcache+0x18>
    80003d0c:	893e                	mv	s2,a5
    80003d0e:	89ba                	mv	s3,a4
    80003d10:	00006a17          	auipc	s4,0x6
    80003d14:	b38a0a13          	addi	s4,s4,-1224 # 80009848 <syscall_names+0xe8>
    80003d18:	2b893783          	ld	a5,696(s2)
    80003d1c:	e8bc                	sd	a5,80(s1)
    80003d1e:	0534b423          	sd	s3,72(s1)
    80003d22:	85d2                	mv	a1,s4
    80003d24:	01048513          	addi	a0,s1,16
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	4c4080e7          	jalr	1220(ra) # 800051ec <initsleeplock>
    80003d30:	2b893783          	ld	a5,696(s2)
    80003d34:	e7a4                	sd	s1,72(a5)
    80003d36:	2a993c23          	sd	s1,696(s2)
    80003d3a:	45848493          	addi	s1,s1,1112
    80003d3e:	fd349de3          	bne	s1,s3,80003d18 <binit+0x54>
    80003d42:	70a2                	ld	ra,40(sp)
    80003d44:	7402                	ld	s0,32(sp)
    80003d46:	64e2                	ld	s1,24(sp)
    80003d48:	6942                	ld	s2,16(sp)
    80003d4a:	69a2                	ld	s3,8(sp)
    80003d4c:	6a02                	ld	s4,0(sp)
    80003d4e:	6145                	addi	sp,sp,48
    80003d50:	8082                	ret

0000000080003d52 <bread>:
    80003d52:	7179                	addi	sp,sp,-48
    80003d54:	f406                	sd	ra,40(sp)
    80003d56:	f022                	sd	s0,32(sp)
    80003d58:	ec26                	sd	s1,24(sp)
    80003d5a:	e84a                	sd	s2,16(sp)
    80003d5c:	e44e                	sd	s3,8(sp)
    80003d5e:	1800                	addi	s0,sp,48
    80003d60:	89aa                	mv	s3,a0
    80003d62:	892e                	mv	s2,a1
    80003d64:	00238517          	auipc	a0,0x238
    80003d68:	f6450513          	addi	a0,a0,-156 # 8023bcc8 <bcache>
    80003d6c:	ffffd097          	auipc	ra,0xffffd
    80003d70:	082080e7          	jalr	130(ra) # 80000dee <acquire>
    80003d74:	00240497          	auipc	s1,0x240
    80003d78:	20c4b483          	ld	s1,524(s1) # 80243f80 <bcache+0x82b8>
    80003d7c:	00240797          	auipc	a5,0x240
    80003d80:	1b478793          	addi	a5,a5,436 # 80243f30 <bcache+0x8268>
    80003d84:	02f48f63          	beq	s1,a5,80003dc2 <bread+0x70>
    80003d88:	873e                	mv	a4,a5
    80003d8a:	a021                	j	80003d92 <bread+0x40>
    80003d8c:	68a4                	ld	s1,80(s1)
    80003d8e:	02e48a63          	beq	s1,a4,80003dc2 <bread+0x70>
    80003d92:	449c                	lw	a5,8(s1)
    80003d94:	ff379ce3          	bne	a5,s3,80003d8c <bread+0x3a>
    80003d98:	44dc                	lw	a5,12(s1)
    80003d9a:	ff2799e3          	bne	a5,s2,80003d8c <bread+0x3a>
    80003d9e:	40bc                	lw	a5,64(s1)
    80003da0:	2785                	addiw	a5,a5,1
    80003da2:	c0bc                	sw	a5,64(s1)
    80003da4:	00238517          	auipc	a0,0x238
    80003da8:	f2450513          	addi	a0,a0,-220 # 8023bcc8 <bcache>
    80003dac:	ffffd097          	auipc	ra,0xffffd
    80003db0:	0f6080e7          	jalr	246(ra) # 80000ea2 <release>
    80003db4:	01048513          	addi	a0,s1,16
    80003db8:	00001097          	auipc	ra,0x1
    80003dbc:	46e080e7          	jalr	1134(ra) # 80005226 <acquiresleep>
    80003dc0:	a8b9                	j	80003e1e <bread+0xcc>
    80003dc2:	00240497          	auipc	s1,0x240
    80003dc6:	1b64b483          	ld	s1,438(s1) # 80243f78 <bcache+0x82b0>
    80003dca:	00240797          	auipc	a5,0x240
    80003dce:	16678793          	addi	a5,a5,358 # 80243f30 <bcache+0x8268>
    80003dd2:	00f48863          	beq	s1,a5,80003de2 <bread+0x90>
    80003dd6:	873e                	mv	a4,a5
    80003dd8:	40bc                	lw	a5,64(s1)
    80003dda:	cf81                	beqz	a5,80003df2 <bread+0xa0>
    80003ddc:	64a4                	ld	s1,72(s1)
    80003dde:	fee49de3          	bne	s1,a4,80003dd8 <bread+0x86>
    80003de2:	00006517          	auipc	a0,0x6
    80003de6:	a6e50513          	addi	a0,a0,-1426 # 80009850 <syscall_names+0xf0>
    80003dea:	ffffc097          	auipc	ra,0xffffc
    80003dee:	75a080e7          	jalr	1882(ra) # 80000544 <panic>
    80003df2:	0134a423          	sw	s3,8(s1)
    80003df6:	0124a623          	sw	s2,12(s1)
    80003dfa:	0004a023          	sw	zero,0(s1)
    80003dfe:	4785                	li	a5,1
    80003e00:	c0bc                	sw	a5,64(s1)
    80003e02:	00238517          	auipc	a0,0x238
    80003e06:	ec650513          	addi	a0,a0,-314 # 8023bcc8 <bcache>
    80003e0a:	ffffd097          	auipc	ra,0xffffd
    80003e0e:	098080e7          	jalr	152(ra) # 80000ea2 <release>
    80003e12:	01048513          	addi	a0,s1,16
    80003e16:	00001097          	auipc	ra,0x1
    80003e1a:	410080e7          	jalr	1040(ra) # 80005226 <acquiresleep>
    80003e1e:	409c                	lw	a5,0(s1)
    80003e20:	cb89                	beqz	a5,80003e32 <bread+0xe0>
    80003e22:	8526                	mv	a0,s1
    80003e24:	70a2                	ld	ra,40(sp)
    80003e26:	7402                	ld	s0,32(sp)
    80003e28:	64e2                	ld	s1,24(sp)
    80003e2a:	6942                	ld	s2,16(sp)
    80003e2c:	69a2                	ld	s3,8(sp)
    80003e2e:	6145                	addi	sp,sp,48
    80003e30:	8082                	ret
    80003e32:	4581                	li	a1,0
    80003e34:	8526                	mv	a0,s1
    80003e36:	00003097          	auipc	ra,0x3
    80003e3a:	fd2080e7          	jalr	-46(ra) # 80006e08 <virtio_disk_rw>
    80003e3e:	4785                	li	a5,1
    80003e40:	c09c                	sw	a5,0(s1)
    80003e42:	b7c5                	j	80003e22 <bread+0xd0>

0000000080003e44 <bwrite>:
    80003e44:	1101                	addi	sp,sp,-32
    80003e46:	ec06                	sd	ra,24(sp)
    80003e48:	e822                	sd	s0,16(sp)
    80003e4a:	e426                	sd	s1,8(sp)
    80003e4c:	1000                	addi	s0,sp,32
    80003e4e:	84aa                	mv	s1,a0
    80003e50:	0541                	addi	a0,a0,16
    80003e52:	00001097          	auipc	ra,0x1
    80003e56:	46e080e7          	jalr	1134(ra) # 800052c0 <holdingsleep>
    80003e5a:	cd01                	beqz	a0,80003e72 <bwrite+0x2e>
    80003e5c:	4585                	li	a1,1
    80003e5e:	8526                	mv	a0,s1
    80003e60:	00003097          	auipc	ra,0x3
    80003e64:	fa8080e7          	jalr	-88(ra) # 80006e08 <virtio_disk_rw>
    80003e68:	60e2                	ld	ra,24(sp)
    80003e6a:	6442                	ld	s0,16(sp)
    80003e6c:	64a2                	ld	s1,8(sp)
    80003e6e:	6105                	addi	sp,sp,32
    80003e70:	8082                	ret
    80003e72:	00006517          	auipc	a0,0x6
    80003e76:	9f650513          	addi	a0,a0,-1546 # 80009868 <syscall_names+0x108>
    80003e7a:	ffffc097          	auipc	ra,0xffffc
    80003e7e:	6ca080e7          	jalr	1738(ra) # 80000544 <panic>

0000000080003e82 <brelse>:
    80003e82:	1101                	addi	sp,sp,-32
    80003e84:	ec06                	sd	ra,24(sp)
    80003e86:	e822                	sd	s0,16(sp)
    80003e88:	e426                	sd	s1,8(sp)
    80003e8a:	e04a                	sd	s2,0(sp)
    80003e8c:	1000                	addi	s0,sp,32
    80003e8e:	84aa                	mv	s1,a0
    80003e90:	01050913          	addi	s2,a0,16
    80003e94:	854a                	mv	a0,s2
    80003e96:	00001097          	auipc	ra,0x1
    80003e9a:	42a080e7          	jalr	1066(ra) # 800052c0 <holdingsleep>
    80003e9e:	c92d                	beqz	a0,80003f10 <brelse+0x8e>
    80003ea0:	854a                	mv	a0,s2
    80003ea2:	00001097          	auipc	ra,0x1
    80003ea6:	3da080e7          	jalr	986(ra) # 8000527c <releasesleep>
    80003eaa:	00238517          	auipc	a0,0x238
    80003eae:	e1e50513          	addi	a0,a0,-482 # 8023bcc8 <bcache>
    80003eb2:	ffffd097          	auipc	ra,0xffffd
    80003eb6:	f3c080e7          	jalr	-196(ra) # 80000dee <acquire>
    80003eba:	40bc                	lw	a5,64(s1)
    80003ebc:	37fd                	addiw	a5,a5,-1
    80003ebe:	0007871b          	sext.w	a4,a5
    80003ec2:	c0bc                	sw	a5,64(s1)
    80003ec4:	eb05                	bnez	a4,80003ef4 <brelse+0x72>
    80003ec6:	68bc                	ld	a5,80(s1)
    80003ec8:	64b8                	ld	a4,72(s1)
    80003eca:	e7b8                	sd	a4,72(a5)
    80003ecc:	64bc                	ld	a5,72(s1)
    80003ece:	68b8                	ld	a4,80(s1)
    80003ed0:	ebb8                	sd	a4,80(a5)
    80003ed2:	00240797          	auipc	a5,0x240
    80003ed6:	df678793          	addi	a5,a5,-522 # 80243cc8 <bcache+0x8000>
    80003eda:	2b87b703          	ld	a4,696(a5)
    80003ede:	e8b8                	sd	a4,80(s1)
    80003ee0:	00240717          	auipc	a4,0x240
    80003ee4:	05070713          	addi	a4,a4,80 # 80243f30 <bcache+0x8268>
    80003ee8:	e4b8                	sd	a4,72(s1)
    80003eea:	2b87b703          	ld	a4,696(a5)
    80003eee:	e724                	sd	s1,72(a4)
    80003ef0:	2a97bc23          	sd	s1,696(a5)
    80003ef4:	00238517          	auipc	a0,0x238
    80003ef8:	dd450513          	addi	a0,a0,-556 # 8023bcc8 <bcache>
    80003efc:	ffffd097          	auipc	ra,0xffffd
    80003f00:	fa6080e7          	jalr	-90(ra) # 80000ea2 <release>
    80003f04:	60e2                	ld	ra,24(sp)
    80003f06:	6442                	ld	s0,16(sp)
    80003f08:	64a2                	ld	s1,8(sp)
    80003f0a:	6902                	ld	s2,0(sp)
    80003f0c:	6105                	addi	sp,sp,32
    80003f0e:	8082                	ret
    80003f10:	00006517          	auipc	a0,0x6
    80003f14:	96050513          	addi	a0,a0,-1696 # 80009870 <syscall_names+0x110>
    80003f18:	ffffc097          	auipc	ra,0xffffc
    80003f1c:	62c080e7          	jalr	1580(ra) # 80000544 <panic>

0000000080003f20 <bpin>:
    80003f20:	1101                	addi	sp,sp,-32
    80003f22:	ec06                	sd	ra,24(sp)
    80003f24:	e822                	sd	s0,16(sp)
    80003f26:	e426                	sd	s1,8(sp)
    80003f28:	1000                	addi	s0,sp,32
    80003f2a:	84aa                	mv	s1,a0
    80003f2c:	00238517          	auipc	a0,0x238
    80003f30:	d9c50513          	addi	a0,a0,-612 # 8023bcc8 <bcache>
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	eba080e7          	jalr	-326(ra) # 80000dee <acquire>
    80003f3c:	40bc                	lw	a5,64(s1)
    80003f3e:	2785                	addiw	a5,a5,1
    80003f40:	c0bc                	sw	a5,64(s1)
    80003f42:	00238517          	auipc	a0,0x238
    80003f46:	d8650513          	addi	a0,a0,-634 # 8023bcc8 <bcache>
    80003f4a:	ffffd097          	auipc	ra,0xffffd
    80003f4e:	f58080e7          	jalr	-168(ra) # 80000ea2 <release>
    80003f52:	60e2                	ld	ra,24(sp)
    80003f54:	6442                	ld	s0,16(sp)
    80003f56:	64a2                	ld	s1,8(sp)
    80003f58:	6105                	addi	sp,sp,32
    80003f5a:	8082                	ret

0000000080003f5c <bunpin>:
    80003f5c:	1101                	addi	sp,sp,-32
    80003f5e:	ec06                	sd	ra,24(sp)
    80003f60:	e822                	sd	s0,16(sp)
    80003f62:	e426                	sd	s1,8(sp)
    80003f64:	1000                	addi	s0,sp,32
    80003f66:	84aa                	mv	s1,a0
    80003f68:	00238517          	auipc	a0,0x238
    80003f6c:	d6050513          	addi	a0,a0,-672 # 8023bcc8 <bcache>
    80003f70:	ffffd097          	auipc	ra,0xffffd
    80003f74:	e7e080e7          	jalr	-386(ra) # 80000dee <acquire>
    80003f78:	40bc                	lw	a5,64(s1)
    80003f7a:	37fd                	addiw	a5,a5,-1
    80003f7c:	c0bc                	sw	a5,64(s1)
    80003f7e:	00238517          	auipc	a0,0x238
    80003f82:	d4a50513          	addi	a0,a0,-694 # 8023bcc8 <bcache>
    80003f86:	ffffd097          	auipc	ra,0xffffd
    80003f8a:	f1c080e7          	jalr	-228(ra) # 80000ea2 <release>
    80003f8e:	60e2                	ld	ra,24(sp)
    80003f90:	6442                	ld	s0,16(sp)
    80003f92:	64a2                	ld	s1,8(sp)
    80003f94:	6105                	addi	sp,sp,32
    80003f96:	8082                	ret

0000000080003f98 <bfree>:
    80003f98:	1101                	addi	sp,sp,-32
    80003f9a:	ec06                	sd	ra,24(sp)
    80003f9c:	e822                	sd	s0,16(sp)
    80003f9e:	e426                	sd	s1,8(sp)
    80003fa0:	e04a                	sd	s2,0(sp)
    80003fa2:	1000                	addi	s0,sp,32
    80003fa4:	84ae                	mv	s1,a1
    80003fa6:	00d5d59b          	srliw	a1,a1,0xd
    80003faa:	00240797          	auipc	a5,0x240
    80003fae:	3fa7a783          	lw	a5,1018(a5) # 802443a4 <sb+0x1c>
    80003fb2:	9dbd                	addw	a1,a1,a5
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	d9e080e7          	jalr	-610(ra) # 80003d52 <bread>
    80003fbc:	0074f713          	andi	a4,s1,7
    80003fc0:	4785                	li	a5,1
    80003fc2:	00e797bb          	sllw	a5,a5,a4
    80003fc6:	14ce                	slli	s1,s1,0x33
    80003fc8:	90d9                	srli	s1,s1,0x36
    80003fca:	00950733          	add	a4,a0,s1
    80003fce:	05874703          	lbu	a4,88(a4)
    80003fd2:	00e7f6b3          	and	a3,a5,a4
    80003fd6:	c69d                	beqz	a3,80004004 <bfree+0x6c>
    80003fd8:	892a                	mv	s2,a0
    80003fda:	94aa                	add	s1,s1,a0
    80003fdc:	fff7c793          	not	a5,a5
    80003fe0:	8ff9                	and	a5,a5,a4
    80003fe2:	04f48c23          	sb	a5,88(s1)
    80003fe6:	00001097          	auipc	ra,0x1
    80003fea:	120080e7          	jalr	288(ra) # 80005106 <log_write>
    80003fee:	854a                	mv	a0,s2
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	e92080e7          	jalr	-366(ra) # 80003e82 <brelse>
    80003ff8:	60e2                	ld	ra,24(sp)
    80003ffa:	6442                	ld	s0,16(sp)
    80003ffc:	64a2                	ld	s1,8(sp)
    80003ffe:	6902                	ld	s2,0(sp)
    80004000:	6105                	addi	sp,sp,32
    80004002:	8082                	ret
    80004004:	00006517          	auipc	a0,0x6
    80004008:	87450513          	addi	a0,a0,-1932 # 80009878 <syscall_names+0x118>
    8000400c:	ffffc097          	auipc	ra,0xffffc
    80004010:	538080e7          	jalr	1336(ra) # 80000544 <panic>

0000000080004014 <balloc>:
    80004014:	711d                	addi	sp,sp,-96
    80004016:	ec86                	sd	ra,88(sp)
    80004018:	e8a2                	sd	s0,80(sp)
    8000401a:	e4a6                	sd	s1,72(sp)
    8000401c:	e0ca                	sd	s2,64(sp)
    8000401e:	fc4e                	sd	s3,56(sp)
    80004020:	f852                	sd	s4,48(sp)
    80004022:	f456                	sd	s5,40(sp)
    80004024:	f05a                	sd	s6,32(sp)
    80004026:	ec5e                	sd	s7,24(sp)
    80004028:	e862                	sd	s8,16(sp)
    8000402a:	e466                	sd	s9,8(sp)
    8000402c:	1080                	addi	s0,sp,96
    8000402e:	00240797          	auipc	a5,0x240
    80004032:	35e7a783          	lw	a5,862(a5) # 8024438c <sb+0x4>
    80004036:	10078163          	beqz	a5,80004138 <balloc+0x124>
    8000403a:	8baa                	mv	s7,a0
    8000403c:	4a81                	li	s5,0
    8000403e:	00240b17          	auipc	s6,0x240
    80004042:	34ab0b13          	addi	s6,s6,842 # 80244388 <sb>
    80004046:	4c01                	li	s8,0
    80004048:	4985                	li	s3,1
    8000404a:	6a09                	lui	s4,0x2
    8000404c:	6c89                	lui	s9,0x2
    8000404e:	a061                	j	800040d6 <balloc+0xc2>
    80004050:	974a                	add	a4,a4,s2
    80004052:	8fd5                	or	a5,a5,a3
    80004054:	04f70c23          	sb	a5,88(a4)
    80004058:	854a                	mv	a0,s2
    8000405a:	00001097          	auipc	ra,0x1
    8000405e:	0ac080e7          	jalr	172(ra) # 80005106 <log_write>
    80004062:	854a                	mv	a0,s2
    80004064:	00000097          	auipc	ra,0x0
    80004068:	e1e080e7          	jalr	-482(ra) # 80003e82 <brelse>
    8000406c:	85a6                	mv	a1,s1
    8000406e:	855e                	mv	a0,s7
    80004070:	00000097          	auipc	ra,0x0
    80004074:	ce2080e7          	jalr	-798(ra) # 80003d52 <bread>
    80004078:	892a                	mv	s2,a0
    8000407a:	40000613          	li	a2,1024
    8000407e:	4581                	li	a1,0
    80004080:	05850513          	addi	a0,a0,88
    80004084:	ffffd097          	auipc	ra,0xffffd
    80004088:	e66080e7          	jalr	-410(ra) # 80000eea <memset>
    8000408c:	854a                	mv	a0,s2
    8000408e:	00001097          	auipc	ra,0x1
    80004092:	078080e7          	jalr	120(ra) # 80005106 <log_write>
    80004096:	854a                	mv	a0,s2
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	dea080e7          	jalr	-534(ra) # 80003e82 <brelse>
    800040a0:	8526                	mv	a0,s1
    800040a2:	60e6                	ld	ra,88(sp)
    800040a4:	6446                	ld	s0,80(sp)
    800040a6:	64a6                	ld	s1,72(sp)
    800040a8:	6906                	ld	s2,64(sp)
    800040aa:	79e2                	ld	s3,56(sp)
    800040ac:	7a42                	ld	s4,48(sp)
    800040ae:	7aa2                	ld	s5,40(sp)
    800040b0:	7b02                	ld	s6,32(sp)
    800040b2:	6be2                	ld	s7,24(sp)
    800040b4:	6c42                	ld	s8,16(sp)
    800040b6:	6ca2                	ld	s9,8(sp)
    800040b8:	6125                	addi	sp,sp,96
    800040ba:	8082                	ret
    800040bc:	854a                	mv	a0,s2
    800040be:	00000097          	auipc	ra,0x0
    800040c2:	dc4080e7          	jalr	-572(ra) # 80003e82 <brelse>
    800040c6:	015c87bb          	addw	a5,s9,s5
    800040ca:	00078a9b          	sext.w	s5,a5
    800040ce:	004b2703          	lw	a4,4(s6)
    800040d2:	06eaf363          	bgeu	s5,a4,80004138 <balloc+0x124>
    800040d6:	41fad79b          	sraiw	a5,s5,0x1f
    800040da:	0137d79b          	srliw	a5,a5,0x13
    800040de:	015787bb          	addw	a5,a5,s5
    800040e2:	40d7d79b          	sraiw	a5,a5,0xd
    800040e6:	01cb2583          	lw	a1,28(s6)
    800040ea:	9dbd                	addw	a1,a1,a5
    800040ec:	855e                	mv	a0,s7
    800040ee:	00000097          	auipc	ra,0x0
    800040f2:	c64080e7          	jalr	-924(ra) # 80003d52 <bread>
    800040f6:	892a                	mv	s2,a0
    800040f8:	004b2503          	lw	a0,4(s6)
    800040fc:	000a849b          	sext.w	s1,s5
    80004100:	8662                	mv	a2,s8
    80004102:	faa4fde3          	bgeu	s1,a0,800040bc <balloc+0xa8>
    80004106:	41f6579b          	sraiw	a5,a2,0x1f
    8000410a:	01d7d69b          	srliw	a3,a5,0x1d
    8000410e:	00c6873b          	addw	a4,a3,a2
    80004112:	00777793          	andi	a5,a4,7
    80004116:	9f95                	subw	a5,a5,a3
    80004118:	00f997bb          	sllw	a5,s3,a5
    8000411c:	4037571b          	sraiw	a4,a4,0x3
    80004120:	00e906b3          	add	a3,s2,a4
    80004124:	0586c683          	lbu	a3,88(a3)
    80004128:	00d7f5b3          	and	a1,a5,a3
    8000412c:	d195                	beqz	a1,80004050 <balloc+0x3c>
    8000412e:	2605                	addiw	a2,a2,1
    80004130:	2485                	addiw	s1,s1,1
    80004132:	fd4618e3          	bne	a2,s4,80004102 <balloc+0xee>
    80004136:	b759                	j	800040bc <balloc+0xa8>
    80004138:	00005517          	auipc	a0,0x5
    8000413c:	75850513          	addi	a0,a0,1880 # 80009890 <syscall_names+0x130>
    80004140:	ffffc097          	auipc	ra,0xffffc
    80004144:	44e080e7          	jalr	1102(ra) # 8000058e <printf>
    80004148:	4481                	li	s1,0
    8000414a:	bf99                	j	800040a0 <balloc+0x8c>

000000008000414c <bmap>:
    8000414c:	7179                	addi	sp,sp,-48
    8000414e:	f406                	sd	ra,40(sp)
    80004150:	f022                	sd	s0,32(sp)
    80004152:	ec26                	sd	s1,24(sp)
    80004154:	e84a                	sd	s2,16(sp)
    80004156:	e44e                	sd	s3,8(sp)
    80004158:	e052                	sd	s4,0(sp)
    8000415a:	1800                	addi	s0,sp,48
    8000415c:	89aa                	mv	s3,a0
    8000415e:	47ad                	li	a5,11
    80004160:	02b7e763          	bltu	a5,a1,8000418e <bmap+0x42>
    80004164:	02059493          	slli	s1,a1,0x20
    80004168:	9081                	srli	s1,s1,0x20
    8000416a:	048a                	slli	s1,s1,0x2
    8000416c:	94aa                	add	s1,s1,a0
    8000416e:	0504a903          	lw	s2,80(s1)
    80004172:	06091e63          	bnez	s2,800041ee <bmap+0xa2>
    80004176:	4108                	lw	a0,0(a0)
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	e9c080e7          	jalr	-356(ra) # 80004014 <balloc>
    80004180:	0005091b          	sext.w	s2,a0
    80004184:	06090563          	beqz	s2,800041ee <bmap+0xa2>
    80004188:	0524a823          	sw	s2,80(s1)
    8000418c:	a08d                	j	800041ee <bmap+0xa2>
    8000418e:	ff45849b          	addiw	s1,a1,-12
    80004192:	0004871b          	sext.w	a4,s1
    80004196:	0ff00793          	li	a5,255
    8000419a:	08e7e563          	bltu	a5,a4,80004224 <bmap+0xd8>
    8000419e:	08052903          	lw	s2,128(a0)
    800041a2:	00091d63          	bnez	s2,800041bc <bmap+0x70>
    800041a6:	4108                	lw	a0,0(a0)
    800041a8:	00000097          	auipc	ra,0x0
    800041ac:	e6c080e7          	jalr	-404(ra) # 80004014 <balloc>
    800041b0:	0005091b          	sext.w	s2,a0
    800041b4:	02090d63          	beqz	s2,800041ee <bmap+0xa2>
    800041b8:	0929a023          	sw	s2,128(s3)
    800041bc:	85ca                	mv	a1,s2
    800041be:	0009a503          	lw	a0,0(s3)
    800041c2:	00000097          	auipc	ra,0x0
    800041c6:	b90080e7          	jalr	-1136(ra) # 80003d52 <bread>
    800041ca:	8a2a                	mv	s4,a0
    800041cc:	05850793          	addi	a5,a0,88
    800041d0:	02049593          	slli	a1,s1,0x20
    800041d4:	9181                	srli	a1,a1,0x20
    800041d6:	058a                	slli	a1,a1,0x2
    800041d8:	00b784b3          	add	s1,a5,a1
    800041dc:	0004a903          	lw	s2,0(s1)
    800041e0:	02090063          	beqz	s2,80004200 <bmap+0xb4>
    800041e4:	8552                	mv	a0,s4
    800041e6:	00000097          	auipc	ra,0x0
    800041ea:	c9c080e7          	jalr	-868(ra) # 80003e82 <brelse>
    800041ee:	854a                	mv	a0,s2
    800041f0:	70a2                	ld	ra,40(sp)
    800041f2:	7402                	ld	s0,32(sp)
    800041f4:	64e2                	ld	s1,24(sp)
    800041f6:	6942                	ld	s2,16(sp)
    800041f8:	69a2                	ld	s3,8(sp)
    800041fa:	6a02                	ld	s4,0(sp)
    800041fc:	6145                	addi	sp,sp,48
    800041fe:	8082                	ret
    80004200:	0009a503          	lw	a0,0(s3)
    80004204:	00000097          	auipc	ra,0x0
    80004208:	e10080e7          	jalr	-496(ra) # 80004014 <balloc>
    8000420c:	0005091b          	sext.w	s2,a0
    80004210:	fc090ae3          	beqz	s2,800041e4 <bmap+0x98>
    80004214:	0124a023          	sw	s2,0(s1)
    80004218:	8552                	mv	a0,s4
    8000421a:	00001097          	auipc	ra,0x1
    8000421e:	eec080e7          	jalr	-276(ra) # 80005106 <log_write>
    80004222:	b7c9                	j	800041e4 <bmap+0x98>
    80004224:	00005517          	auipc	a0,0x5
    80004228:	68450513          	addi	a0,a0,1668 # 800098a8 <syscall_names+0x148>
    8000422c:	ffffc097          	auipc	ra,0xffffc
    80004230:	318080e7          	jalr	792(ra) # 80000544 <panic>

0000000080004234 <iget>:
    80004234:	7179                	addi	sp,sp,-48
    80004236:	f406                	sd	ra,40(sp)
    80004238:	f022                	sd	s0,32(sp)
    8000423a:	ec26                	sd	s1,24(sp)
    8000423c:	e84a                	sd	s2,16(sp)
    8000423e:	e44e                	sd	s3,8(sp)
    80004240:	e052                	sd	s4,0(sp)
    80004242:	1800                	addi	s0,sp,48
    80004244:	89aa                	mv	s3,a0
    80004246:	8a2e                	mv	s4,a1
    80004248:	00240517          	auipc	a0,0x240
    8000424c:	16050513          	addi	a0,a0,352 # 802443a8 <itable>
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	b9e080e7          	jalr	-1122(ra) # 80000dee <acquire>
    80004258:	4901                	li	s2,0
    8000425a:	00240497          	auipc	s1,0x240
    8000425e:	16648493          	addi	s1,s1,358 # 802443c0 <itable+0x18>
    80004262:	00242697          	auipc	a3,0x242
    80004266:	bee68693          	addi	a3,a3,-1042 # 80245e50 <log>
    8000426a:	a039                	j	80004278 <iget+0x44>
    8000426c:	02090b63          	beqz	s2,800042a2 <iget+0x6e>
    80004270:	08848493          	addi	s1,s1,136
    80004274:	02d48a63          	beq	s1,a3,800042a8 <iget+0x74>
    80004278:	449c                	lw	a5,8(s1)
    8000427a:	fef059e3          	blez	a5,8000426c <iget+0x38>
    8000427e:	4098                	lw	a4,0(s1)
    80004280:	ff3716e3          	bne	a4,s3,8000426c <iget+0x38>
    80004284:	40d8                	lw	a4,4(s1)
    80004286:	ff4713e3          	bne	a4,s4,8000426c <iget+0x38>
    8000428a:	2785                	addiw	a5,a5,1
    8000428c:	c49c                	sw	a5,8(s1)
    8000428e:	00240517          	auipc	a0,0x240
    80004292:	11a50513          	addi	a0,a0,282 # 802443a8 <itable>
    80004296:	ffffd097          	auipc	ra,0xffffd
    8000429a:	c0c080e7          	jalr	-1012(ra) # 80000ea2 <release>
    8000429e:	8926                	mv	s2,s1
    800042a0:	a03d                	j	800042ce <iget+0x9a>
    800042a2:	f7f9                	bnez	a5,80004270 <iget+0x3c>
    800042a4:	8926                	mv	s2,s1
    800042a6:	b7e9                	j	80004270 <iget+0x3c>
    800042a8:	02090c63          	beqz	s2,800042e0 <iget+0xac>
    800042ac:	01392023          	sw	s3,0(s2)
    800042b0:	01492223          	sw	s4,4(s2)
    800042b4:	4785                	li	a5,1
    800042b6:	00f92423          	sw	a5,8(s2)
    800042ba:	04092023          	sw	zero,64(s2)
    800042be:	00240517          	auipc	a0,0x240
    800042c2:	0ea50513          	addi	a0,a0,234 # 802443a8 <itable>
    800042c6:	ffffd097          	auipc	ra,0xffffd
    800042ca:	bdc080e7          	jalr	-1060(ra) # 80000ea2 <release>
    800042ce:	854a                	mv	a0,s2
    800042d0:	70a2                	ld	ra,40(sp)
    800042d2:	7402                	ld	s0,32(sp)
    800042d4:	64e2                	ld	s1,24(sp)
    800042d6:	6942                	ld	s2,16(sp)
    800042d8:	69a2                	ld	s3,8(sp)
    800042da:	6a02                	ld	s4,0(sp)
    800042dc:	6145                	addi	sp,sp,48
    800042de:	8082                	ret
    800042e0:	00005517          	auipc	a0,0x5
    800042e4:	5e050513          	addi	a0,a0,1504 # 800098c0 <syscall_names+0x160>
    800042e8:	ffffc097          	auipc	ra,0xffffc
    800042ec:	25c080e7          	jalr	604(ra) # 80000544 <panic>

00000000800042f0 <fsinit>:
    800042f0:	7179                	addi	sp,sp,-48
    800042f2:	f406                	sd	ra,40(sp)
    800042f4:	f022                	sd	s0,32(sp)
    800042f6:	ec26                	sd	s1,24(sp)
    800042f8:	e84a                	sd	s2,16(sp)
    800042fa:	e44e                	sd	s3,8(sp)
    800042fc:	1800                	addi	s0,sp,48
    800042fe:	892a                	mv	s2,a0
    80004300:	4585                	li	a1,1
    80004302:	00000097          	auipc	ra,0x0
    80004306:	a50080e7          	jalr	-1456(ra) # 80003d52 <bread>
    8000430a:	84aa                	mv	s1,a0
    8000430c:	00240997          	auipc	s3,0x240
    80004310:	07c98993          	addi	s3,s3,124 # 80244388 <sb>
    80004314:	02000613          	li	a2,32
    80004318:	05850593          	addi	a1,a0,88
    8000431c:	854e                	mv	a0,s3
    8000431e:	ffffd097          	auipc	ra,0xffffd
    80004322:	c2c080e7          	jalr	-980(ra) # 80000f4a <memmove>
    80004326:	8526                	mv	a0,s1
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	b5a080e7          	jalr	-1190(ra) # 80003e82 <brelse>
    80004330:	0009a703          	lw	a4,0(s3)
    80004334:	102037b7          	lui	a5,0x10203
    80004338:	04078793          	addi	a5,a5,64 # 10203040 <_entry-0x6fdfcfc0>
    8000433c:	02f71263          	bne	a4,a5,80004360 <fsinit+0x70>
    80004340:	00240597          	auipc	a1,0x240
    80004344:	04858593          	addi	a1,a1,72 # 80244388 <sb>
    80004348:	854a                	mv	a0,s2
    8000434a:	00001097          	auipc	ra,0x1
    8000434e:	b40080e7          	jalr	-1216(ra) # 80004e8a <initlog>
    80004352:	70a2                	ld	ra,40(sp)
    80004354:	7402                	ld	s0,32(sp)
    80004356:	64e2                	ld	s1,24(sp)
    80004358:	6942                	ld	s2,16(sp)
    8000435a:	69a2                	ld	s3,8(sp)
    8000435c:	6145                	addi	sp,sp,48
    8000435e:	8082                	ret
    80004360:	00005517          	auipc	a0,0x5
    80004364:	57050513          	addi	a0,a0,1392 # 800098d0 <syscall_names+0x170>
    80004368:	ffffc097          	auipc	ra,0xffffc
    8000436c:	1dc080e7          	jalr	476(ra) # 80000544 <panic>

0000000080004370 <iinit>:
    80004370:	7179                	addi	sp,sp,-48
    80004372:	f406                	sd	ra,40(sp)
    80004374:	f022                	sd	s0,32(sp)
    80004376:	ec26                	sd	s1,24(sp)
    80004378:	e84a                	sd	s2,16(sp)
    8000437a:	e44e                	sd	s3,8(sp)
    8000437c:	1800                	addi	s0,sp,48
    8000437e:	00005597          	auipc	a1,0x5
    80004382:	56a58593          	addi	a1,a1,1386 # 800098e8 <syscall_names+0x188>
    80004386:	00240517          	auipc	a0,0x240
    8000438a:	02250513          	addi	a0,a0,34 # 802443a8 <itable>
    8000438e:	ffffd097          	auipc	ra,0xffffd
    80004392:	9d0080e7          	jalr	-1584(ra) # 80000d5e <initlock>
    80004396:	00240497          	auipc	s1,0x240
    8000439a:	03a48493          	addi	s1,s1,58 # 802443d0 <itable+0x28>
    8000439e:	00242997          	auipc	s3,0x242
    800043a2:	ac298993          	addi	s3,s3,-1342 # 80245e60 <log+0x10>
    800043a6:	00005917          	auipc	s2,0x5
    800043aa:	54a90913          	addi	s2,s2,1354 # 800098f0 <syscall_names+0x190>
    800043ae:	85ca                	mv	a1,s2
    800043b0:	8526                	mv	a0,s1
    800043b2:	00001097          	auipc	ra,0x1
    800043b6:	e3a080e7          	jalr	-454(ra) # 800051ec <initsleeplock>
    800043ba:	08848493          	addi	s1,s1,136
    800043be:	ff3498e3          	bne	s1,s3,800043ae <iinit+0x3e>
    800043c2:	70a2                	ld	ra,40(sp)
    800043c4:	7402                	ld	s0,32(sp)
    800043c6:	64e2                	ld	s1,24(sp)
    800043c8:	6942                	ld	s2,16(sp)
    800043ca:	69a2                	ld	s3,8(sp)
    800043cc:	6145                	addi	sp,sp,48
    800043ce:	8082                	ret

00000000800043d0 <ialloc>:
    800043d0:	715d                	addi	sp,sp,-80
    800043d2:	e486                	sd	ra,72(sp)
    800043d4:	e0a2                	sd	s0,64(sp)
    800043d6:	fc26                	sd	s1,56(sp)
    800043d8:	f84a                	sd	s2,48(sp)
    800043da:	f44e                	sd	s3,40(sp)
    800043dc:	f052                	sd	s4,32(sp)
    800043de:	ec56                	sd	s5,24(sp)
    800043e0:	e85a                	sd	s6,16(sp)
    800043e2:	e45e                	sd	s7,8(sp)
    800043e4:	0880                	addi	s0,sp,80
    800043e6:	00240717          	auipc	a4,0x240
    800043ea:	fae72703          	lw	a4,-82(a4) # 80244394 <sb+0xc>
    800043ee:	4785                	li	a5,1
    800043f0:	04e7fa63          	bgeu	a5,a4,80004444 <ialloc+0x74>
    800043f4:	8aaa                	mv	s5,a0
    800043f6:	8bae                	mv	s7,a1
    800043f8:	4485                	li	s1,1
    800043fa:	00240a17          	auipc	s4,0x240
    800043fe:	f8ea0a13          	addi	s4,s4,-114 # 80244388 <sb>
    80004402:	00048b1b          	sext.w	s6,s1
    80004406:	0044d593          	srli	a1,s1,0x4
    8000440a:	018a2783          	lw	a5,24(s4)
    8000440e:	9dbd                	addw	a1,a1,a5
    80004410:	8556                	mv	a0,s5
    80004412:	00000097          	auipc	ra,0x0
    80004416:	940080e7          	jalr	-1728(ra) # 80003d52 <bread>
    8000441a:	892a                	mv	s2,a0
    8000441c:	05850993          	addi	s3,a0,88
    80004420:	00f4f793          	andi	a5,s1,15
    80004424:	079a                	slli	a5,a5,0x6
    80004426:	99be                	add	s3,s3,a5
    80004428:	00099783          	lh	a5,0(s3)
    8000442c:	c3a1                	beqz	a5,8000446c <ialloc+0x9c>
    8000442e:	00000097          	auipc	ra,0x0
    80004432:	a54080e7          	jalr	-1452(ra) # 80003e82 <brelse>
    80004436:	0485                	addi	s1,s1,1
    80004438:	00ca2703          	lw	a4,12(s4)
    8000443c:	0004879b          	sext.w	a5,s1
    80004440:	fce7e1e3          	bltu	a5,a4,80004402 <ialloc+0x32>
    80004444:	00005517          	auipc	a0,0x5
    80004448:	4b450513          	addi	a0,a0,1204 # 800098f8 <syscall_names+0x198>
    8000444c:	ffffc097          	auipc	ra,0xffffc
    80004450:	142080e7          	jalr	322(ra) # 8000058e <printf>
    80004454:	4501                	li	a0,0
    80004456:	60a6                	ld	ra,72(sp)
    80004458:	6406                	ld	s0,64(sp)
    8000445a:	74e2                	ld	s1,56(sp)
    8000445c:	7942                	ld	s2,48(sp)
    8000445e:	79a2                	ld	s3,40(sp)
    80004460:	7a02                	ld	s4,32(sp)
    80004462:	6ae2                	ld	s5,24(sp)
    80004464:	6b42                	ld	s6,16(sp)
    80004466:	6ba2                	ld	s7,8(sp)
    80004468:	6161                	addi	sp,sp,80
    8000446a:	8082                	ret
    8000446c:	04000613          	li	a2,64
    80004470:	4581                	li	a1,0
    80004472:	854e                	mv	a0,s3
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	a76080e7          	jalr	-1418(ra) # 80000eea <memset>
    8000447c:	01799023          	sh	s7,0(s3)
    80004480:	854a                	mv	a0,s2
    80004482:	00001097          	auipc	ra,0x1
    80004486:	c84080e7          	jalr	-892(ra) # 80005106 <log_write>
    8000448a:	854a                	mv	a0,s2
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	9f6080e7          	jalr	-1546(ra) # 80003e82 <brelse>
    80004494:	85da                	mv	a1,s6
    80004496:	8556                	mv	a0,s5
    80004498:	00000097          	auipc	ra,0x0
    8000449c:	d9c080e7          	jalr	-612(ra) # 80004234 <iget>
    800044a0:	bf5d                	j	80004456 <ialloc+0x86>

00000000800044a2 <iupdate>:
    800044a2:	1101                	addi	sp,sp,-32
    800044a4:	ec06                	sd	ra,24(sp)
    800044a6:	e822                	sd	s0,16(sp)
    800044a8:	e426                	sd	s1,8(sp)
    800044aa:	e04a                	sd	s2,0(sp)
    800044ac:	1000                	addi	s0,sp,32
    800044ae:	84aa                	mv	s1,a0
    800044b0:	415c                	lw	a5,4(a0)
    800044b2:	0047d79b          	srliw	a5,a5,0x4
    800044b6:	00240597          	auipc	a1,0x240
    800044ba:	eea5a583          	lw	a1,-278(a1) # 802443a0 <sb+0x18>
    800044be:	9dbd                	addw	a1,a1,a5
    800044c0:	4108                	lw	a0,0(a0)
    800044c2:	00000097          	auipc	ra,0x0
    800044c6:	890080e7          	jalr	-1904(ra) # 80003d52 <bread>
    800044ca:	892a                	mv	s2,a0
    800044cc:	05850793          	addi	a5,a0,88
    800044d0:	40c8                	lw	a0,4(s1)
    800044d2:	893d                	andi	a0,a0,15
    800044d4:	051a                	slli	a0,a0,0x6
    800044d6:	953e                	add	a0,a0,a5
    800044d8:	04449703          	lh	a4,68(s1)
    800044dc:	00e51023          	sh	a4,0(a0)
    800044e0:	04649703          	lh	a4,70(s1)
    800044e4:	00e51123          	sh	a4,2(a0)
    800044e8:	04849703          	lh	a4,72(s1)
    800044ec:	00e51223          	sh	a4,4(a0)
    800044f0:	04a49703          	lh	a4,74(s1)
    800044f4:	00e51323          	sh	a4,6(a0)
    800044f8:	44f8                	lw	a4,76(s1)
    800044fa:	c518                	sw	a4,8(a0)
    800044fc:	03400613          	li	a2,52
    80004500:	05048593          	addi	a1,s1,80
    80004504:	0531                	addi	a0,a0,12
    80004506:	ffffd097          	auipc	ra,0xffffd
    8000450a:	a44080e7          	jalr	-1468(ra) # 80000f4a <memmove>
    8000450e:	854a                	mv	a0,s2
    80004510:	00001097          	auipc	ra,0x1
    80004514:	bf6080e7          	jalr	-1034(ra) # 80005106 <log_write>
    80004518:	854a                	mv	a0,s2
    8000451a:	00000097          	auipc	ra,0x0
    8000451e:	968080e7          	jalr	-1688(ra) # 80003e82 <brelse>
    80004522:	60e2                	ld	ra,24(sp)
    80004524:	6442                	ld	s0,16(sp)
    80004526:	64a2                	ld	s1,8(sp)
    80004528:	6902                	ld	s2,0(sp)
    8000452a:	6105                	addi	sp,sp,32
    8000452c:	8082                	ret

000000008000452e <idup>:
    8000452e:	1101                	addi	sp,sp,-32
    80004530:	ec06                	sd	ra,24(sp)
    80004532:	e822                	sd	s0,16(sp)
    80004534:	e426                	sd	s1,8(sp)
    80004536:	1000                	addi	s0,sp,32
    80004538:	84aa                	mv	s1,a0
    8000453a:	00240517          	auipc	a0,0x240
    8000453e:	e6e50513          	addi	a0,a0,-402 # 802443a8 <itable>
    80004542:	ffffd097          	auipc	ra,0xffffd
    80004546:	8ac080e7          	jalr	-1876(ra) # 80000dee <acquire>
    8000454a:	449c                	lw	a5,8(s1)
    8000454c:	2785                	addiw	a5,a5,1
    8000454e:	c49c                	sw	a5,8(s1)
    80004550:	00240517          	auipc	a0,0x240
    80004554:	e5850513          	addi	a0,a0,-424 # 802443a8 <itable>
    80004558:	ffffd097          	auipc	ra,0xffffd
    8000455c:	94a080e7          	jalr	-1718(ra) # 80000ea2 <release>
    80004560:	8526                	mv	a0,s1
    80004562:	60e2                	ld	ra,24(sp)
    80004564:	6442                	ld	s0,16(sp)
    80004566:	64a2                	ld	s1,8(sp)
    80004568:	6105                	addi	sp,sp,32
    8000456a:	8082                	ret

000000008000456c <ilock>:
    8000456c:	1101                	addi	sp,sp,-32
    8000456e:	ec06                	sd	ra,24(sp)
    80004570:	e822                	sd	s0,16(sp)
    80004572:	e426                	sd	s1,8(sp)
    80004574:	e04a                	sd	s2,0(sp)
    80004576:	1000                	addi	s0,sp,32
    80004578:	c115                	beqz	a0,8000459c <ilock+0x30>
    8000457a:	84aa                	mv	s1,a0
    8000457c:	451c                	lw	a5,8(a0)
    8000457e:	00f05f63          	blez	a5,8000459c <ilock+0x30>
    80004582:	0541                	addi	a0,a0,16
    80004584:	00001097          	auipc	ra,0x1
    80004588:	ca2080e7          	jalr	-862(ra) # 80005226 <acquiresleep>
    8000458c:	40bc                	lw	a5,64(s1)
    8000458e:	cf99                	beqz	a5,800045ac <ilock+0x40>
    80004590:	60e2                	ld	ra,24(sp)
    80004592:	6442                	ld	s0,16(sp)
    80004594:	64a2                	ld	s1,8(sp)
    80004596:	6902                	ld	s2,0(sp)
    80004598:	6105                	addi	sp,sp,32
    8000459a:	8082                	ret
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	37450513          	addi	a0,a0,884 # 80009910 <syscall_names+0x1b0>
    800045a4:	ffffc097          	auipc	ra,0xffffc
    800045a8:	fa0080e7          	jalr	-96(ra) # 80000544 <panic>
    800045ac:	40dc                	lw	a5,4(s1)
    800045ae:	0047d79b          	srliw	a5,a5,0x4
    800045b2:	00240597          	auipc	a1,0x240
    800045b6:	dee5a583          	lw	a1,-530(a1) # 802443a0 <sb+0x18>
    800045ba:	9dbd                	addw	a1,a1,a5
    800045bc:	4088                	lw	a0,0(s1)
    800045be:	fffff097          	auipc	ra,0xfffff
    800045c2:	794080e7          	jalr	1940(ra) # 80003d52 <bread>
    800045c6:	892a                	mv	s2,a0
    800045c8:	05850593          	addi	a1,a0,88
    800045cc:	40dc                	lw	a5,4(s1)
    800045ce:	8bbd                	andi	a5,a5,15
    800045d0:	079a                	slli	a5,a5,0x6
    800045d2:	95be                	add	a1,a1,a5
    800045d4:	00059783          	lh	a5,0(a1)
    800045d8:	04f49223          	sh	a5,68(s1)
    800045dc:	00259783          	lh	a5,2(a1)
    800045e0:	04f49323          	sh	a5,70(s1)
    800045e4:	00459783          	lh	a5,4(a1)
    800045e8:	04f49423          	sh	a5,72(s1)
    800045ec:	00659783          	lh	a5,6(a1)
    800045f0:	04f49523          	sh	a5,74(s1)
    800045f4:	459c                	lw	a5,8(a1)
    800045f6:	c4fc                	sw	a5,76(s1)
    800045f8:	03400613          	li	a2,52
    800045fc:	05b1                	addi	a1,a1,12
    800045fe:	05048513          	addi	a0,s1,80
    80004602:	ffffd097          	auipc	ra,0xffffd
    80004606:	948080e7          	jalr	-1720(ra) # 80000f4a <memmove>
    8000460a:	854a                	mv	a0,s2
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	876080e7          	jalr	-1930(ra) # 80003e82 <brelse>
    80004614:	4785                	li	a5,1
    80004616:	c0bc                	sw	a5,64(s1)
    80004618:	04449783          	lh	a5,68(s1)
    8000461c:	fbb5                	bnez	a5,80004590 <ilock+0x24>
    8000461e:	00005517          	auipc	a0,0x5
    80004622:	2fa50513          	addi	a0,a0,762 # 80009918 <syscall_names+0x1b8>
    80004626:	ffffc097          	auipc	ra,0xffffc
    8000462a:	f1e080e7          	jalr	-226(ra) # 80000544 <panic>

000000008000462e <iunlock>:
    8000462e:	1101                	addi	sp,sp,-32
    80004630:	ec06                	sd	ra,24(sp)
    80004632:	e822                	sd	s0,16(sp)
    80004634:	e426                	sd	s1,8(sp)
    80004636:	e04a                	sd	s2,0(sp)
    80004638:	1000                	addi	s0,sp,32
    8000463a:	c905                	beqz	a0,8000466a <iunlock+0x3c>
    8000463c:	84aa                	mv	s1,a0
    8000463e:	01050913          	addi	s2,a0,16
    80004642:	854a                	mv	a0,s2
    80004644:	00001097          	auipc	ra,0x1
    80004648:	c7c080e7          	jalr	-900(ra) # 800052c0 <holdingsleep>
    8000464c:	cd19                	beqz	a0,8000466a <iunlock+0x3c>
    8000464e:	449c                	lw	a5,8(s1)
    80004650:	00f05d63          	blez	a5,8000466a <iunlock+0x3c>
    80004654:	854a                	mv	a0,s2
    80004656:	00001097          	auipc	ra,0x1
    8000465a:	c26080e7          	jalr	-986(ra) # 8000527c <releasesleep>
    8000465e:	60e2                	ld	ra,24(sp)
    80004660:	6442                	ld	s0,16(sp)
    80004662:	64a2                	ld	s1,8(sp)
    80004664:	6902                	ld	s2,0(sp)
    80004666:	6105                	addi	sp,sp,32
    80004668:	8082                	ret
    8000466a:	00005517          	auipc	a0,0x5
    8000466e:	2be50513          	addi	a0,a0,702 # 80009928 <syscall_names+0x1c8>
    80004672:	ffffc097          	auipc	ra,0xffffc
    80004676:	ed2080e7          	jalr	-302(ra) # 80000544 <panic>

000000008000467a <itrunc>:
    8000467a:	7179                	addi	sp,sp,-48
    8000467c:	f406                	sd	ra,40(sp)
    8000467e:	f022                	sd	s0,32(sp)
    80004680:	ec26                	sd	s1,24(sp)
    80004682:	e84a                	sd	s2,16(sp)
    80004684:	e44e                	sd	s3,8(sp)
    80004686:	e052                	sd	s4,0(sp)
    80004688:	1800                	addi	s0,sp,48
    8000468a:	89aa                	mv	s3,a0
    8000468c:	05050493          	addi	s1,a0,80
    80004690:	08050913          	addi	s2,a0,128
    80004694:	a021                	j	8000469c <itrunc+0x22>
    80004696:	0491                	addi	s1,s1,4
    80004698:	01248d63          	beq	s1,s2,800046b2 <itrunc+0x38>
    8000469c:	408c                	lw	a1,0(s1)
    8000469e:	dde5                	beqz	a1,80004696 <itrunc+0x1c>
    800046a0:	0009a503          	lw	a0,0(s3)
    800046a4:	00000097          	auipc	ra,0x0
    800046a8:	8f4080e7          	jalr	-1804(ra) # 80003f98 <bfree>
    800046ac:	0004a023          	sw	zero,0(s1)
    800046b0:	b7dd                	j	80004696 <itrunc+0x1c>
    800046b2:	0809a583          	lw	a1,128(s3)
    800046b6:	e185                	bnez	a1,800046d6 <itrunc+0x5c>
    800046b8:	0409a623          	sw	zero,76(s3)
    800046bc:	854e                	mv	a0,s3
    800046be:	00000097          	auipc	ra,0x0
    800046c2:	de4080e7          	jalr	-540(ra) # 800044a2 <iupdate>
    800046c6:	70a2                	ld	ra,40(sp)
    800046c8:	7402                	ld	s0,32(sp)
    800046ca:	64e2                	ld	s1,24(sp)
    800046cc:	6942                	ld	s2,16(sp)
    800046ce:	69a2                	ld	s3,8(sp)
    800046d0:	6a02                	ld	s4,0(sp)
    800046d2:	6145                	addi	sp,sp,48
    800046d4:	8082                	ret
    800046d6:	0009a503          	lw	a0,0(s3)
    800046da:	fffff097          	auipc	ra,0xfffff
    800046de:	678080e7          	jalr	1656(ra) # 80003d52 <bread>
    800046e2:	8a2a                	mv	s4,a0
    800046e4:	05850493          	addi	s1,a0,88
    800046e8:	45850913          	addi	s2,a0,1112
    800046ec:	a811                	j	80004700 <itrunc+0x86>
    800046ee:	0009a503          	lw	a0,0(s3)
    800046f2:	00000097          	auipc	ra,0x0
    800046f6:	8a6080e7          	jalr	-1882(ra) # 80003f98 <bfree>
    800046fa:	0491                	addi	s1,s1,4
    800046fc:	01248563          	beq	s1,s2,80004706 <itrunc+0x8c>
    80004700:	408c                	lw	a1,0(s1)
    80004702:	dde5                	beqz	a1,800046fa <itrunc+0x80>
    80004704:	b7ed                	j	800046ee <itrunc+0x74>
    80004706:	8552                	mv	a0,s4
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	77a080e7          	jalr	1914(ra) # 80003e82 <brelse>
    80004710:	0809a583          	lw	a1,128(s3)
    80004714:	0009a503          	lw	a0,0(s3)
    80004718:	00000097          	auipc	ra,0x0
    8000471c:	880080e7          	jalr	-1920(ra) # 80003f98 <bfree>
    80004720:	0809a023          	sw	zero,128(s3)
    80004724:	bf51                	j	800046b8 <itrunc+0x3e>

0000000080004726 <iput>:
    80004726:	1101                	addi	sp,sp,-32
    80004728:	ec06                	sd	ra,24(sp)
    8000472a:	e822                	sd	s0,16(sp)
    8000472c:	e426                	sd	s1,8(sp)
    8000472e:	e04a                	sd	s2,0(sp)
    80004730:	1000                	addi	s0,sp,32
    80004732:	84aa                	mv	s1,a0
    80004734:	00240517          	auipc	a0,0x240
    80004738:	c7450513          	addi	a0,a0,-908 # 802443a8 <itable>
    8000473c:	ffffc097          	auipc	ra,0xffffc
    80004740:	6b2080e7          	jalr	1714(ra) # 80000dee <acquire>
    80004744:	4498                	lw	a4,8(s1)
    80004746:	4785                	li	a5,1
    80004748:	02f70363          	beq	a4,a5,8000476e <iput+0x48>
    8000474c:	449c                	lw	a5,8(s1)
    8000474e:	37fd                	addiw	a5,a5,-1
    80004750:	c49c                	sw	a5,8(s1)
    80004752:	00240517          	auipc	a0,0x240
    80004756:	c5650513          	addi	a0,a0,-938 # 802443a8 <itable>
    8000475a:	ffffc097          	auipc	ra,0xffffc
    8000475e:	748080e7          	jalr	1864(ra) # 80000ea2 <release>
    80004762:	60e2                	ld	ra,24(sp)
    80004764:	6442                	ld	s0,16(sp)
    80004766:	64a2                	ld	s1,8(sp)
    80004768:	6902                	ld	s2,0(sp)
    8000476a:	6105                	addi	sp,sp,32
    8000476c:	8082                	ret
    8000476e:	40bc                	lw	a5,64(s1)
    80004770:	dff1                	beqz	a5,8000474c <iput+0x26>
    80004772:	04a49783          	lh	a5,74(s1)
    80004776:	fbf9                	bnez	a5,8000474c <iput+0x26>
    80004778:	01048913          	addi	s2,s1,16
    8000477c:	854a                	mv	a0,s2
    8000477e:	00001097          	auipc	ra,0x1
    80004782:	aa8080e7          	jalr	-1368(ra) # 80005226 <acquiresleep>
    80004786:	00240517          	auipc	a0,0x240
    8000478a:	c2250513          	addi	a0,a0,-990 # 802443a8 <itable>
    8000478e:	ffffc097          	auipc	ra,0xffffc
    80004792:	714080e7          	jalr	1812(ra) # 80000ea2 <release>
    80004796:	8526                	mv	a0,s1
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	ee2080e7          	jalr	-286(ra) # 8000467a <itrunc>
    800047a0:	04049223          	sh	zero,68(s1)
    800047a4:	8526                	mv	a0,s1
    800047a6:	00000097          	auipc	ra,0x0
    800047aa:	cfc080e7          	jalr	-772(ra) # 800044a2 <iupdate>
    800047ae:	0404a023          	sw	zero,64(s1)
    800047b2:	854a                	mv	a0,s2
    800047b4:	00001097          	auipc	ra,0x1
    800047b8:	ac8080e7          	jalr	-1336(ra) # 8000527c <releasesleep>
    800047bc:	00240517          	auipc	a0,0x240
    800047c0:	bec50513          	addi	a0,a0,-1044 # 802443a8 <itable>
    800047c4:	ffffc097          	auipc	ra,0xffffc
    800047c8:	62a080e7          	jalr	1578(ra) # 80000dee <acquire>
    800047cc:	b741                	j	8000474c <iput+0x26>

00000000800047ce <iunlockput>:
    800047ce:	1101                	addi	sp,sp,-32
    800047d0:	ec06                	sd	ra,24(sp)
    800047d2:	e822                	sd	s0,16(sp)
    800047d4:	e426                	sd	s1,8(sp)
    800047d6:	1000                	addi	s0,sp,32
    800047d8:	84aa                	mv	s1,a0
    800047da:	00000097          	auipc	ra,0x0
    800047de:	e54080e7          	jalr	-428(ra) # 8000462e <iunlock>
    800047e2:	8526                	mv	a0,s1
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	f42080e7          	jalr	-190(ra) # 80004726 <iput>
    800047ec:	60e2                	ld	ra,24(sp)
    800047ee:	6442                	ld	s0,16(sp)
    800047f0:	64a2                	ld	s1,8(sp)
    800047f2:	6105                	addi	sp,sp,32
    800047f4:	8082                	ret

00000000800047f6 <stati>:
    800047f6:	1141                	addi	sp,sp,-16
    800047f8:	e422                	sd	s0,8(sp)
    800047fa:	0800                	addi	s0,sp,16
    800047fc:	411c                	lw	a5,0(a0)
    800047fe:	c19c                	sw	a5,0(a1)
    80004800:	415c                	lw	a5,4(a0)
    80004802:	c1dc                	sw	a5,4(a1)
    80004804:	04451783          	lh	a5,68(a0)
    80004808:	00f59423          	sh	a5,8(a1)
    8000480c:	04a51783          	lh	a5,74(a0)
    80004810:	00f59523          	sh	a5,10(a1)
    80004814:	04c56783          	lwu	a5,76(a0)
    80004818:	e99c                	sd	a5,16(a1)
    8000481a:	6422                	ld	s0,8(sp)
    8000481c:	0141                	addi	sp,sp,16
    8000481e:	8082                	ret

0000000080004820 <readi>:
    80004820:	457c                	lw	a5,76(a0)
    80004822:	0ed7e963          	bltu	a5,a3,80004914 <readi+0xf4>
    80004826:	7159                	addi	sp,sp,-112
    80004828:	f486                	sd	ra,104(sp)
    8000482a:	f0a2                	sd	s0,96(sp)
    8000482c:	eca6                	sd	s1,88(sp)
    8000482e:	e8ca                	sd	s2,80(sp)
    80004830:	e4ce                	sd	s3,72(sp)
    80004832:	e0d2                	sd	s4,64(sp)
    80004834:	fc56                	sd	s5,56(sp)
    80004836:	f85a                	sd	s6,48(sp)
    80004838:	f45e                	sd	s7,40(sp)
    8000483a:	f062                	sd	s8,32(sp)
    8000483c:	ec66                	sd	s9,24(sp)
    8000483e:	e86a                	sd	s10,16(sp)
    80004840:	e46e                	sd	s11,8(sp)
    80004842:	1880                	addi	s0,sp,112
    80004844:	8b2a                	mv	s6,a0
    80004846:	8bae                	mv	s7,a1
    80004848:	8a32                	mv	s4,a2
    8000484a:	84b6                	mv	s1,a3
    8000484c:	8aba                	mv	s5,a4
    8000484e:	9f35                	addw	a4,a4,a3
    80004850:	4501                	li	a0,0
    80004852:	0ad76063          	bltu	a4,a3,800048f2 <readi+0xd2>
    80004856:	00e7f463          	bgeu	a5,a4,8000485e <readi+0x3e>
    8000485a:	40d78abb          	subw	s5,a5,a3
    8000485e:	0a0a8963          	beqz	s5,80004910 <readi+0xf0>
    80004862:	4981                	li	s3,0
    80004864:	40000c93          	li	s9,1024
    80004868:	5c7d                	li	s8,-1
    8000486a:	a82d                	j	800048a4 <readi+0x84>
    8000486c:	020d1d93          	slli	s11,s10,0x20
    80004870:	020ddd93          	srli	s11,s11,0x20
    80004874:	05890613          	addi	a2,s2,88
    80004878:	86ee                	mv	a3,s11
    8000487a:	963a                	add	a2,a2,a4
    8000487c:	85d2                	mv	a1,s4
    8000487e:	855e                	mv	a0,s7
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	0b6080e7          	jalr	182(ra) # 80002936 <either_copyout>
    80004888:	05850d63          	beq	a0,s8,800048e2 <readi+0xc2>
    8000488c:	854a                	mv	a0,s2
    8000488e:	fffff097          	auipc	ra,0xfffff
    80004892:	5f4080e7          	jalr	1524(ra) # 80003e82 <brelse>
    80004896:	013d09bb          	addw	s3,s10,s3
    8000489a:	009d04bb          	addw	s1,s10,s1
    8000489e:	9a6e                	add	s4,s4,s11
    800048a0:	0559f763          	bgeu	s3,s5,800048ee <readi+0xce>
    800048a4:	00a4d59b          	srliw	a1,s1,0xa
    800048a8:	855a                	mv	a0,s6
    800048aa:	00000097          	auipc	ra,0x0
    800048ae:	8a2080e7          	jalr	-1886(ra) # 8000414c <bmap>
    800048b2:	0005059b          	sext.w	a1,a0
    800048b6:	cd85                	beqz	a1,800048ee <readi+0xce>
    800048b8:	000b2503          	lw	a0,0(s6)
    800048bc:	fffff097          	auipc	ra,0xfffff
    800048c0:	496080e7          	jalr	1174(ra) # 80003d52 <bread>
    800048c4:	892a                	mv	s2,a0
    800048c6:	3ff4f713          	andi	a4,s1,1023
    800048ca:	40ec87bb          	subw	a5,s9,a4
    800048ce:	413a86bb          	subw	a3,s5,s3
    800048d2:	8d3e                	mv	s10,a5
    800048d4:	2781                	sext.w	a5,a5
    800048d6:	0006861b          	sext.w	a2,a3
    800048da:	f8f679e3          	bgeu	a2,a5,8000486c <readi+0x4c>
    800048de:	8d36                	mv	s10,a3
    800048e0:	b771                	j	8000486c <readi+0x4c>
    800048e2:	854a                	mv	a0,s2
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	59e080e7          	jalr	1438(ra) # 80003e82 <brelse>
    800048ec:	59fd                	li	s3,-1
    800048ee:	0009851b          	sext.w	a0,s3
    800048f2:	70a6                	ld	ra,104(sp)
    800048f4:	7406                	ld	s0,96(sp)
    800048f6:	64e6                	ld	s1,88(sp)
    800048f8:	6946                	ld	s2,80(sp)
    800048fa:	69a6                	ld	s3,72(sp)
    800048fc:	6a06                	ld	s4,64(sp)
    800048fe:	7ae2                	ld	s5,56(sp)
    80004900:	7b42                	ld	s6,48(sp)
    80004902:	7ba2                	ld	s7,40(sp)
    80004904:	7c02                	ld	s8,32(sp)
    80004906:	6ce2                	ld	s9,24(sp)
    80004908:	6d42                	ld	s10,16(sp)
    8000490a:	6da2                	ld	s11,8(sp)
    8000490c:	6165                	addi	sp,sp,112
    8000490e:	8082                	ret
    80004910:	89d6                	mv	s3,s5
    80004912:	bff1                	j	800048ee <readi+0xce>
    80004914:	4501                	li	a0,0
    80004916:	8082                	ret

0000000080004918 <writei>:
    80004918:	457c                	lw	a5,76(a0)
    8000491a:	10d7e863          	bltu	a5,a3,80004a2a <writei+0x112>
    8000491e:	7159                	addi	sp,sp,-112
    80004920:	f486                	sd	ra,104(sp)
    80004922:	f0a2                	sd	s0,96(sp)
    80004924:	eca6                	sd	s1,88(sp)
    80004926:	e8ca                	sd	s2,80(sp)
    80004928:	e4ce                	sd	s3,72(sp)
    8000492a:	e0d2                	sd	s4,64(sp)
    8000492c:	fc56                	sd	s5,56(sp)
    8000492e:	f85a                	sd	s6,48(sp)
    80004930:	f45e                	sd	s7,40(sp)
    80004932:	f062                	sd	s8,32(sp)
    80004934:	ec66                	sd	s9,24(sp)
    80004936:	e86a                	sd	s10,16(sp)
    80004938:	e46e                	sd	s11,8(sp)
    8000493a:	1880                	addi	s0,sp,112
    8000493c:	8aaa                	mv	s5,a0
    8000493e:	8bae                	mv	s7,a1
    80004940:	8a32                	mv	s4,a2
    80004942:	8936                	mv	s2,a3
    80004944:	8b3a                	mv	s6,a4
    80004946:	00e687bb          	addw	a5,a3,a4
    8000494a:	0ed7e263          	bltu	a5,a3,80004a2e <writei+0x116>
    8000494e:	00043737          	lui	a4,0x43
    80004952:	0ef76063          	bltu	a4,a5,80004a32 <writei+0x11a>
    80004956:	0c0b0863          	beqz	s6,80004a26 <writei+0x10e>
    8000495a:	4981                	li	s3,0
    8000495c:	40000c93          	li	s9,1024
    80004960:	5c7d                	li	s8,-1
    80004962:	a091                	j	800049a6 <writei+0x8e>
    80004964:	020d1d93          	slli	s11,s10,0x20
    80004968:	020ddd93          	srli	s11,s11,0x20
    8000496c:	05848513          	addi	a0,s1,88
    80004970:	86ee                	mv	a3,s11
    80004972:	8652                	mv	a2,s4
    80004974:	85de                	mv	a1,s7
    80004976:	953a                	add	a0,a0,a4
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	014080e7          	jalr	20(ra) # 8000298c <either_copyin>
    80004980:	07850263          	beq	a0,s8,800049e4 <writei+0xcc>
    80004984:	8526                	mv	a0,s1
    80004986:	00000097          	auipc	ra,0x0
    8000498a:	780080e7          	jalr	1920(ra) # 80005106 <log_write>
    8000498e:	8526                	mv	a0,s1
    80004990:	fffff097          	auipc	ra,0xfffff
    80004994:	4f2080e7          	jalr	1266(ra) # 80003e82 <brelse>
    80004998:	013d09bb          	addw	s3,s10,s3
    8000499c:	012d093b          	addw	s2,s10,s2
    800049a0:	9a6e                	add	s4,s4,s11
    800049a2:	0569f663          	bgeu	s3,s6,800049ee <writei+0xd6>
    800049a6:	00a9559b          	srliw	a1,s2,0xa
    800049aa:	8556                	mv	a0,s5
    800049ac:	fffff097          	auipc	ra,0xfffff
    800049b0:	7a0080e7          	jalr	1952(ra) # 8000414c <bmap>
    800049b4:	0005059b          	sext.w	a1,a0
    800049b8:	c99d                	beqz	a1,800049ee <writei+0xd6>
    800049ba:	000aa503          	lw	a0,0(s5)
    800049be:	fffff097          	auipc	ra,0xfffff
    800049c2:	394080e7          	jalr	916(ra) # 80003d52 <bread>
    800049c6:	84aa                	mv	s1,a0
    800049c8:	3ff97713          	andi	a4,s2,1023
    800049cc:	40ec87bb          	subw	a5,s9,a4
    800049d0:	413b06bb          	subw	a3,s6,s3
    800049d4:	8d3e                	mv	s10,a5
    800049d6:	2781                	sext.w	a5,a5
    800049d8:	0006861b          	sext.w	a2,a3
    800049dc:	f8f674e3          	bgeu	a2,a5,80004964 <writei+0x4c>
    800049e0:	8d36                	mv	s10,a3
    800049e2:	b749                	j	80004964 <writei+0x4c>
    800049e4:	8526                	mv	a0,s1
    800049e6:	fffff097          	auipc	ra,0xfffff
    800049ea:	49c080e7          	jalr	1180(ra) # 80003e82 <brelse>
    800049ee:	04caa783          	lw	a5,76(s5)
    800049f2:	0127f463          	bgeu	a5,s2,800049fa <writei+0xe2>
    800049f6:	052aa623          	sw	s2,76(s5)
    800049fa:	8556                	mv	a0,s5
    800049fc:	00000097          	auipc	ra,0x0
    80004a00:	aa6080e7          	jalr	-1370(ra) # 800044a2 <iupdate>
    80004a04:	0009851b          	sext.w	a0,s3
    80004a08:	70a6                	ld	ra,104(sp)
    80004a0a:	7406                	ld	s0,96(sp)
    80004a0c:	64e6                	ld	s1,88(sp)
    80004a0e:	6946                	ld	s2,80(sp)
    80004a10:	69a6                	ld	s3,72(sp)
    80004a12:	6a06                	ld	s4,64(sp)
    80004a14:	7ae2                	ld	s5,56(sp)
    80004a16:	7b42                	ld	s6,48(sp)
    80004a18:	7ba2                	ld	s7,40(sp)
    80004a1a:	7c02                	ld	s8,32(sp)
    80004a1c:	6ce2                	ld	s9,24(sp)
    80004a1e:	6d42                	ld	s10,16(sp)
    80004a20:	6da2                	ld	s11,8(sp)
    80004a22:	6165                	addi	sp,sp,112
    80004a24:	8082                	ret
    80004a26:	89da                	mv	s3,s6
    80004a28:	bfc9                	j	800049fa <writei+0xe2>
    80004a2a:	557d                	li	a0,-1
    80004a2c:	8082                	ret
    80004a2e:	557d                	li	a0,-1
    80004a30:	bfe1                	j	80004a08 <writei+0xf0>
    80004a32:	557d                	li	a0,-1
    80004a34:	bfd1                	j	80004a08 <writei+0xf0>

0000000080004a36 <namecmp>:
    80004a36:	1141                	addi	sp,sp,-16
    80004a38:	e406                	sd	ra,8(sp)
    80004a3a:	e022                	sd	s0,0(sp)
    80004a3c:	0800                	addi	s0,sp,16
    80004a3e:	4639                	li	a2,14
    80004a40:	ffffc097          	auipc	ra,0xffffc
    80004a44:	582080e7          	jalr	1410(ra) # 80000fc2 <strncmp>
    80004a48:	60a2                	ld	ra,8(sp)
    80004a4a:	6402                	ld	s0,0(sp)
    80004a4c:	0141                	addi	sp,sp,16
    80004a4e:	8082                	ret

0000000080004a50 <dirlookup>:
    80004a50:	7139                	addi	sp,sp,-64
    80004a52:	fc06                	sd	ra,56(sp)
    80004a54:	f822                	sd	s0,48(sp)
    80004a56:	f426                	sd	s1,40(sp)
    80004a58:	f04a                	sd	s2,32(sp)
    80004a5a:	ec4e                	sd	s3,24(sp)
    80004a5c:	e852                	sd	s4,16(sp)
    80004a5e:	0080                	addi	s0,sp,64
    80004a60:	04451703          	lh	a4,68(a0)
    80004a64:	4785                	li	a5,1
    80004a66:	00f71a63          	bne	a4,a5,80004a7a <dirlookup+0x2a>
    80004a6a:	892a                	mv	s2,a0
    80004a6c:	89ae                	mv	s3,a1
    80004a6e:	8a32                	mv	s4,a2
    80004a70:	457c                	lw	a5,76(a0)
    80004a72:	4481                	li	s1,0
    80004a74:	4501                	li	a0,0
    80004a76:	e79d                	bnez	a5,80004aa4 <dirlookup+0x54>
    80004a78:	a8a5                	j	80004af0 <dirlookup+0xa0>
    80004a7a:	00005517          	auipc	a0,0x5
    80004a7e:	eb650513          	addi	a0,a0,-330 # 80009930 <syscall_names+0x1d0>
    80004a82:	ffffc097          	auipc	ra,0xffffc
    80004a86:	ac2080e7          	jalr	-1342(ra) # 80000544 <panic>
    80004a8a:	00005517          	auipc	a0,0x5
    80004a8e:	ebe50513          	addi	a0,a0,-322 # 80009948 <syscall_names+0x1e8>
    80004a92:	ffffc097          	auipc	ra,0xffffc
    80004a96:	ab2080e7          	jalr	-1358(ra) # 80000544 <panic>
    80004a9a:	24c1                	addiw	s1,s1,16
    80004a9c:	04c92783          	lw	a5,76(s2)
    80004aa0:	04f4f763          	bgeu	s1,a5,80004aee <dirlookup+0x9e>
    80004aa4:	4741                	li	a4,16
    80004aa6:	86a6                	mv	a3,s1
    80004aa8:	fc040613          	addi	a2,s0,-64
    80004aac:	4581                	li	a1,0
    80004aae:	854a                	mv	a0,s2
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	d70080e7          	jalr	-656(ra) # 80004820 <readi>
    80004ab8:	47c1                	li	a5,16
    80004aba:	fcf518e3          	bne	a0,a5,80004a8a <dirlookup+0x3a>
    80004abe:	fc045783          	lhu	a5,-64(s0)
    80004ac2:	dfe1                	beqz	a5,80004a9a <dirlookup+0x4a>
    80004ac4:	fc240593          	addi	a1,s0,-62
    80004ac8:	854e                	mv	a0,s3
    80004aca:	00000097          	auipc	ra,0x0
    80004ace:	f6c080e7          	jalr	-148(ra) # 80004a36 <namecmp>
    80004ad2:	f561                	bnez	a0,80004a9a <dirlookup+0x4a>
    80004ad4:	000a0463          	beqz	s4,80004adc <dirlookup+0x8c>
    80004ad8:	009a2023          	sw	s1,0(s4)
    80004adc:	fc045583          	lhu	a1,-64(s0)
    80004ae0:	00092503          	lw	a0,0(s2)
    80004ae4:	fffff097          	auipc	ra,0xfffff
    80004ae8:	750080e7          	jalr	1872(ra) # 80004234 <iget>
    80004aec:	a011                	j	80004af0 <dirlookup+0xa0>
    80004aee:	4501                	li	a0,0
    80004af0:	70e2                	ld	ra,56(sp)
    80004af2:	7442                	ld	s0,48(sp)
    80004af4:	74a2                	ld	s1,40(sp)
    80004af6:	7902                	ld	s2,32(sp)
    80004af8:	69e2                	ld	s3,24(sp)
    80004afa:	6a42                	ld	s4,16(sp)
    80004afc:	6121                	addi	sp,sp,64
    80004afe:	8082                	ret

0000000080004b00 <namex>:
    80004b00:	711d                	addi	sp,sp,-96
    80004b02:	ec86                	sd	ra,88(sp)
    80004b04:	e8a2                	sd	s0,80(sp)
    80004b06:	e4a6                	sd	s1,72(sp)
    80004b08:	e0ca                	sd	s2,64(sp)
    80004b0a:	fc4e                	sd	s3,56(sp)
    80004b0c:	f852                	sd	s4,48(sp)
    80004b0e:	f456                	sd	s5,40(sp)
    80004b10:	f05a                	sd	s6,32(sp)
    80004b12:	ec5e                	sd	s7,24(sp)
    80004b14:	e862                	sd	s8,16(sp)
    80004b16:	e466                	sd	s9,8(sp)
    80004b18:	1080                	addi	s0,sp,96
    80004b1a:	84aa                	mv	s1,a0
    80004b1c:	8b2e                	mv	s6,a1
    80004b1e:	8ab2                	mv	s5,a2
    80004b20:	00054703          	lbu	a4,0(a0)
    80004b24:	02f00793          	li	a5,47
    80004b28:	02f70363          	beq	a4,a5,80004b4e <namex+0x4e>
    80004b2c:	ffffd097          	auipc	ra,0xffffd
    80004b30:	2ec080e7          	jalr	748(ra) # 80001e18 <myproc>
    80004b34:	15053503          	ld	a0,336(a0)
    80004b38:	00000097          	auipc	ra,0x0
    80004b3c:	9f6080e7          	jalr	-1546(ra) # 8000452e <idup>
    80004b40:	89aa                	mv	s3,a0
    80004b42:	02f00913          	li	s2,47
    80004b46:	4b81                	li	s7,0
    80004b48:	4cb5                	li	s9,13
    80004b4a:	4c05                	li	s8,1
    80004b4c:	a865                	j	80004c04 <namex+0x104>
    80004b4e:	4585                	li	a1,1
    80004b50:	4505                	li	a0,1
    80004b52:	fffff097          	auipc	ra,0xfffff
    80004b56:	6e2080e7          	jalr	1762(ra) # 80004234 <iget>
    80004b5a:	89aa                	mv	s3,a0
    80004b5c:	b7dd                	j	80004b42 <namex+0x42>
    80004b5e:	854e                	mv	a0,s3
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	c6e080e7          	jalr	-914(ra) # 800047ce <iunlockput>
    80004b68:	4981                	li	s3,0
    80004b6a:	854e                	mv	a0,s3
    80004b6c:	60e6                	ld	ra,88(sp)
    80004b6e:	6446                	ld	s0,80(sp)
    80004b70:	64a6                	ld	s1,72(sp)
    80004b72:	6906                	ld	s2,64(sp)
    80004b74:	79e2                	ld	s3,56(sp)
    80004b76:	7a42                	ld	s4,48(sp)
    80004b78:	7aa2                	ld	s5,40(sp)
    80004b7a:	7b02                	ld	s6,32(sp)
    80004b7c:	6be2                	ld	s7,24(sp)
    80004b7e:	6c42                	ld	s8,16(sp)
    80004b80:	6ca2                	ld	s9,8(sp)
    80004b82:	6125                	addi	sp,sp,96
    80004b84:	8082                	ret
    80004b86:	854e                	mv	a0,s3
    80004b88:	00000097          	auipc	ra,0x0
    80004b8c:	aa6080e7          	jalr	-1370(ra) # 8000462e <iunlock>
    80004b90:	bfe9                	j	80004b6a <namex+0x6a>
    80004b92:	854e                	mv	a0,s3
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	c3a080e7          	jalr	-966(ra) # 800047ce <iunlockput>
    80004b9c:	89d2                	mv	s3,s4
    80004b9e:	b7f1                	j	80004b6a <namex+0x6a>
    80004ba0:	40b48633          	sub	a2,s1,a1
    80004ba4:	00060a1b          	sext.w	s4,a2
    80004ba8:	094cd463          	bge	s9,s4,80004c30 <namex+0x130>
    80004bac:	4639                	li	a2,14
    80004bae:	8556                	mv	a0,s5
    80004bb0:	ffffc097          	auipc	ra,0xffffc
    80004bb4:	39a080e7          	jalr	922(ra) # 80000f4a <memmove>
    80004bb8:	0004c783          	lbu	a5,0(s1)
    80004bbc:	01279763          	bne	a5,s2,80004bca <namex+0xca>
    80004bc0:	0485                	addi	s1,s1,1
    80004bc2:	0004c783          	lbu	a5,0(s1)
    80004bc6:	ff278de3          	beq	a5,s2,80004bc0 <namex+0xc0>
    80004bca:	854e                	mv	a0,s3
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	9a0080e7          	jalr	-1632(ra) # 8000456c <ilock>
    80004bd4:	04499783          	lh	a5,68(s3)
    80004bd8:	f98793e3          	bne	a5,s8,80004b5e <namex+0x5e>
    80004bdc:	000b0563          	beqz	s6,80004be6 <namex+0xe6>
    80004be0:	0004c783          	lbu	a5,0(s1)
    80004be4:	d3cd                	beqz	a5,80004b86 <namex+0x86>
    80004be6:	865e                	mv	a2,s7
    80004be8:	85d6                	mv	a1,s5
    80004bea:	854e                	mv	a0,s3
    80004bec:	00000097          	auipc	ra,0x0
    80004bf0:	e64080e7          	jalr	-412(ra) # 80004a50 <dirlookup>
    80004bf4:	8a2a                	mv	s4,a0
    80004bf6:	dd51                	beqz	a0,80004b92 <namex+0x92>
    80004bf8:	854e                	mv	a0,s3
    80004bfa:	00000097          	auipc	ra,0x0
    80004bfe:	bd4080e7          	jalr	-1068(ra) # 800047ce <iunlockput>
    80004c02:	89d2                	mv	s3,s4
    80004c04:	0004c783          	lbu	a5,0(s1)
    80004c08:	05279763          	bne	a5,s2,80004c56 <namex+0x156>
    80004c0c:	0485                	addi	s1,s1,1
    80004c0e:	0004c783          	lbu	a5,0(s1)
    80004c12:	ff278de3          	beq	a5,s2,80004c0c <namex+0x10c>
    80004c16:	c79d                	beqz	a5,80004c44 <namex+0x144>
    80004c18:	85a6                	mv	a1,s1
    80004c1a:	8a5e                	mv	s4,s7
    80004c1c:	865e                	mv	a2,s7
    80004c1e:	01278963          	beq	a5,s2,80004c30 <namex+0x130>
    80004c22:	dfbd                	beqz	a5,80004ba0 <namex+0xa0>
    80004c24:	0485                	addi	s1,s1,1
    80004c26:	0004c783          	lbu	a5,0(s1)
    80004c2a:	ff279ce3          	bne	a5,s2,80004c22 <namex+0x122>
    80004c2e:	bf8d                	j	80004ba0 <namex+0xa0>
    80004c30:	2601                	sext.w	a2,a2
    80004c32:	8556                	mv	a0,s5
    80004c34:	ffffc097          	auipc	ra,0xffffc
    80004c38:	316080e7          	jalr	790(ra) # 80000f4a <memmove>
    80004c3c:	9a56                	add	s4,s4,s5
    80004c3e:	000a0023          	sb	zero,0(s4)
    80004c42:	bf9d                	j	80004bb8 <namex+0xb8>
    80004c44:	f20b03e3          	beqz	s6,80004b6a <namex+0x6a>
    80004c48:	854e                	mv	a0,s3
    80004c4a:	00000097          	auipc	ra,0x0
    80004c4e:	adc080e7          	jalr	-1316(ra) # 80004726 <iput>
    80004c52:	4981                	li	s3,0
    80004c54:	bf19                	j	80004b6a <namex+0x6a>
    80004c56:	d7fd                	beqz	a5,80004c44 <namex+0x144>
    80004c58:	0004c783          	lbu	a5,0(s1)
    80004c5c:	85a6                	mv	a1,s1
    80004c5e:	b7d1                	j	80004c22 <namex+0x122>

0000000080004c60 <dirlink>:
    80004c60:	7139                	addi	sp,sp,-64
    80004c62:	fc06                	sd	ra,56(sp)
    80004c64:	f822                	sd	s0,48(sp)
    80004c66:	f426                	sd	s1,40(sp)
    80004c68:	f04a                	sd	s2,32(sp)
    80004c6a:	ec4e                	sd	s3,24(sp)
    80004c6c:	e852                	sd	s4,16(sp)
    80004c6e:	0080                	addi	s0,sp,64
    80004c70:	892a                	mv	s2,a0
    80004c72:	8a2e                	mv	s4,a1
    80004c74:	89b2                	mv	s3,a2
    80004c76:	4601                	li	a2,0
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	dd8080e7          	jalr	-552(ra) # 80004a50 <dirlookup>
    80004c80:	e93d                	bnez	a0,80004cf6 <dirlink+0x96>
    80004c82:	04c92483          	lw	s1,76(s2)
    80004c86:	c49d                	beqz	s1,80004cb4 <dirlink+0x54>
    80004c88:	4481                	li	s1,0
    80004c8a:	4741                	li	a4,16
    80004c8c:	86a6                	mv	a3,s1
    80004c8e:	fc040613          	addi	a2,s0,-64
    80004c92:	4581                	li	a1,0
    80004c94:	854a                	mv	a0,s2
    80004c96:	00000097          	auipc	ra,0x0
    80004c9a:	b8a080e7          	jalr	-1142(ra) # 80004820 <readi>
    80004c9e:	47c1                	li	a5,16
    80004ca0:	06f51163          	bne	a0,a5,80004d02 <dirlink+0xa2>
    80004ca4:	fc045783          	lhu	a5,-64(s0)
    80004ca8:	c791                	beqz	a5,80004cb4 <dirlink+0x54>
    80004caa:	24c1                	addiw	s1,s1,16
    80004cac:	04c92783          	lw	a5,76(s2)
    80004cb0:	fcf4ede3          	bltu	s1,a5,80004c8a <dirlink+0x2a>
    80004cb4:	4639                	li	a2,14
    80004cb6:	85d2                	mv	a1,s4
    80004cb8:	fc240513          	addi	a0,s0,-62
    80004cbc:	ffffc097          	auipc	ra,0xffffc
    80004cc0:	342080e7          	jalr	834(ra) # 80000ffe <strncpy>
    80004cc4:	fd341023          	sh	s3,-64(s0)
    80004cc8:	4741                	li	a4,16
    80004cca:	86a6                	mv	a3,s1
    80004ccc:	fc040613          	addi	a2,s0,-64
    80004cd0:	4581                	li	a1,0
    80004cd2:	854a                	mv	a0,s2
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	c44080e7          	jalr	-956(ra) # 80004918 <writei>
    80004cdc:	1541                	addi	a0,a0,-16
    80004cde:	00a03533          	snez	a0,a0
    80004ce2:	40a00533          	neg	a0,a0
    80004ce6:	70e2                	ld	ra,56(sp)
    80004ce8:	7442                	ld	s0,48(sp)
    80004cea:	74a2                	ld	s1,40(sp)
    80004cec:	7902                	ld	s2,32(sp)
    80004cee:	69e2                	ld	s3,24(sp)
    80004cf0:	6a42                	ld	s4,16(sp)
    80004cf2:	6121                	addi	sp,sp,64
    80004cf4:	8082                	ret
    80004cf6:	00000097          	auipc	ra,0x0
    80004cfa:	a30080e7          	jalr	-1488(ra) # 80004726 <iput>
    80004cfe:	557d                	li	a0,-1
    80004d00:	b7dd                	j	80004ce6 <dirlink+0x86>
    80004d02:	00005517          	auipc	a0,0x5
    80004d06:	c5650513          	addi	a0,a0,-938 # 80009958 <syscall_names+0x1f8>
    80004d0a:	ffffc097          	auipc	ra,0xffffc
    80004d0e:	83a080e7          	jalr	-1990(ra) # 80000544 <panic>

0000000080004d12 <namei>:
    80004d12:	1101                	addi	sp,sp,-32
    80004d14:	ec06                	sd	ra,24(sp)
    80004d16:	e822                	sd	s0,16(sp)
    80004d18:	1000                	addi	s0,sp,32
    80004d1a:	fe040613          	addi	a2,s0,-32
    80004d1e:	4581                	li	a1,0
    80004d20:	00000097          	auipc	ra,0x0
    80004d24:	de0080e7          	jalr	-544(ra) # 80004b00 <namex>
    80004d28:	60e2                	ld	ra,24(sp)
    80004d2a:	6442                	ld	s0,16(sp)
    80004d2c:	6105                	addi	sp,sp,32
    80004d2e:	8082                	ret

0000000080004d30 <nameiparent>:
    80004d30:	1141                	addi	sp,sp,-16
    80004d32:	e406                	sd	ra,8(sp)
    80004d34:	e022                	sd	s0,0(sp)
    80004d36:	0800                	addi	s0,sp,16
    80004d38:	862e                	mv	a2,a1
    80004d3a:	4585                	li	a1,1
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	dc4080e7          	jalr	-572(ra) # 80004b00 <namex>
    80004d44:	60a2                	ld	ra,8(sp)
    80004d46:	6402                	ld	s0,0(sp)
    80004d48:	0141                	addi	sp,sp,16
    80004d4a:	8082                	ret

0000000080004d4c <write_head>:
    80004d4c:	1101                	addi	sp,sp,-32
    80004d4e:	ec06                	sd	ra,24(sp)
    80004d50:	e822                	sd	s0,16(sp)
    80004d52:	e426                	sd	s1,8(sp)
    80004d54:	e04a                	sd	s2,0(sp)
    80004d56:	1000                	addi	s0,sp,32
    80004d58:	00241917          	auipc	s2,0x241
    80004d5c:	0f890913          	addi	s2,s2,248 # 80245e50 <log>
    80004d60:	01892583          	lw	a1,24(s2)
    80004d64:	02892503          	lw	a0,40(s2)
    80004d68:	fffff097          	auipc	ra,0xfffff
    80004d6c:	fea080e7          	jalr	-22(ra) # 80003d52 <bread>
    80004d70:	84aa                	mv	s1,a0
    80004d72:	02c92683          	lw	a3,44(s2)
    80004d76:	cd34                	sw	a3,88(a0)
    80004d78:	02d05763          	blez	a3,80004da6 <write_head+0x5a>
    80004d7c:	00241797          	auipc	a5,0x241
    80004d80:	10478793          	addi	a5,a5,260 # 80245e80 <log+0x30>
    80004d84:	05c50713          	addi	a4,a0,92
    80004d88:	36fd                	addiw	a3,a3,-1
    80004d8a:	1682                	slli	a3,a3,0x20
    80004d8c:	9281                	srli	a3,a3,0x20
    80004d8e:	068a                	slli	a3,a3,0x2
    80004d90:	00241617          	auipc	a2,0x241
    80004d94:	0f460613          	addi	a2,a2,244 # 80245e84 <log+0x34>
    80004d98:	96b2                	add	a3,a3,a2
    80004d9a:	4390                	lw	a2,0(a5)
    80004d9c:	c310                	sw	a2,0(a4)
    80004d9e:	0791                	addi	a5,a5,4
    80004da0:	0711                	addi	a4,a4,4
    80004da2:	fed79ce3          	bne	a5,a3,80004d9a <write_head+0x4e>
    80004da6:	8526                	mv	a0,s1
    80004da8:	fffff097          	auipc	ra,0xfffff
    80004dac:	09c080e7          	jalr	156(ra) # 80003e44 <bwrite>
    80004db0:	8526                	mv	a0,s1
    80004db2:	fffff097          	auipc	ra,0xfffff
    80004db6:	0d0080e7          	jalr	208(ra) # 80003e82 <brelse>
    80004dba:	60e2                	ld	ra,24(sp)
    80004dbc:	6442                	ld	s0,16(sp)
    80004dbe:	64a2                	ld	s1,8(sp)
    80004dc0:	6902                	ld	s2,0(sp)
    80004dc2:	6105                	addi	sp,sp,32
    80004dc4:	8082                	ret

0000000080004dc6 <install_trans>:
    80004dc6:	00241797          	auipc	a5,0x241
    80004dca:	0b67a783          	lw	a5,182(a5) # 80245e7c <log+0x2c>
    80004dce:	0af05d63          	blez	a5,80004e88 <install_trans+0xc2>
    80004dd2:	7139                	addi	sp,sp,-64
    80004dd4:	fc06                	sd	ra,56(sp)
    80004dd6:	f822                	sd	s0,48(sp)
    80004dd8:	f426                	sd	s1,40(sp)
    80004dda:	f04a                	sd	s2,32(sp)
    80004ddc:	ec4e                	sd	s3,24(sp)
    80004dde:	e852                	sd	s4,16(sp)
    80004de0:	e456                	sd	s5,8(sp)
    80004de2:	e05a                	sd	s6,0(sp)
    80004de4:	0080                	addi	s0,sp,64
    80004de6:	8b2a                	mv	s6,a0
    80004de8:	00241a97          	auipc	s5,0x241
    80004dec:	098a8a93          	addi	s5,s5,152 # 80245e80 <log+0x30>
    80004df0:	4a01                	li	s4,0
    80004df2:	00241997          	auipc	s3,0x241
    80004df6:	05e98993          	addi	s3,s3,94 # 80245e50 <log>
    80004dfa:	a035                	j	80004e26 <install_trans+0x60>
    80004dfc:	8526                	mv	a0,s1
    80004dfe:	fffff097          	auipc	ra,0xfffff
    80004e02:	15e080e7          	jalr	350(ra) # 80003f5c <bunpin>
    80004e06:	854a                	mv	a0,s2
    80004e08:	fffff097          	auipc	ra,0xfffff
    80004e0c:	07a080e7          	jalr	122(ra) # 80003e82 <brelse>
    80004e10:	8526                	mv	a0,s1
    80004e12:	fffff097          	auipc	ra,0xfffff
    80004e16:	070080e7          	jalr	112(ra) # 80003e82 <brelse>
    80004e1a:	2a05                	addiw	s4,s4,1
    80004e1c:	0a91                	addi	s5,s5,4
    80004e1e:	02c9a783          	lw	a5,44(s3)
    80004e22:	04fa5963          	bge	s4,a5,80004e74 <install_trans+0xae>
    80004e26:	0189a583          	lw	a1,24(s3)
    80004e2a:	014585bb          	addw	a1,a1,s4
    80004e2e:	2585                	addiw	a1,a1,1
    80004e30:	0289a503          	lw	a0,40(s3)
    80004e34:	fffff097          	auipc	ra,0xfffff
    80004e38:	f1e080e7          	jalr	-226(ra) # 80003d52 <bread>
    80004e3c:	892a                	mv	s2,a0
    80004e3e:	000aa583          	lw	a1,0(s5)
    80004e42:	0289a503          	lw	a0,40(s3)
    80004e46:	fffff097          	auipc	ra,0xfffff
    80004e4a:	f0c080e7          	jalr	-244(ra) # 80003d52 <bread>
    80004e4e:	84aa                	mv	s1,a0
    80004e50:	40000613          	li	a2,1024
    80004e54:	05890593          	addi	a1,s2,88
    80004e58:	05850513          	addi	a0,a0,88
    80004e5c:	ffffc097          	auipc	ra,0xffffc
    80004e60:	0ee080e7          	jalr	238(ra) # 80000f4a <memmove>
    80004e64:	8526                	mv	a0,s1
    80004e66:	fffff097          	auipc	ra,0xfffff
    80004e6a:	fde080e7          	jalr	-34(ra) # 80003e44 <bwrite>
    80004e6e:	f80b1ce3          	bnez	s6,80004e06 <install_trans+0x40>
    80004e72:	b769                	j	80004dfc <install_trans+0x36>
    80004e74:	70e2                	ld	ra,56(sp)
    80004e76:	7442                	ld	s0,48(sp)
    80004e78:	74a2                	ld	s1,40(sp)
    80004e7a:	7902                	ld	s2,32(sp)
    80004e7c:	69e2                	ld	s3,24(sp)
    80004e7e:	6a42                	ld	s4,16(sp)
    80004e80:	6aa2                	ld	s5,8(sp)
    80004e82:	6b02                	ld	s6,0(sp)
    80004e84:	6121                	addi	sp,sp,64
    80004e86:	8082                	ret
    80004e88:	8082                	ret

0000000080004e8a <initlog>:
    80004e8a:	7179                	addi	sp,sp,-48
    80004e8c:	f406                	sd	ra,40(sp)
    80004e8e:	f022                	sd	s0,32(sp)
    80004e90:	ec26                	sd	s1,24(sp)
    80004e92:	e84a                	sd	s2,16(sp)
    80004e94:	e44e                	sd	s3,8(sp)
    80004e96:	1800                	addi	s0,sp,48
    80004e98:	892a                	mv	s2,a0
    80004e9a:	89ae                	mv	s3,a1
    80004e9c:	00241497          	auipc	s1,0x241
    80004ea0:	fb448493          	addi	s1,s1,-76 # 80245e50 <log>
    80004ea4:	00005597          	auipc	a1,0x5
    80004ea8:	ac458593          	addi	a1,a1,-1340 # 80009968 <syscall_names+0x208>
    80004eac:	8526                	mv	a0,s1
    80004eae:	ffffc097          	auipc	ra,0xffffc
    80004eb2:	eb0080e7          	jalr	-336(ra) # 80000d5e <initlock>
    80004eb6:	0149a583          	lw	a1,20(s3)
    80004eba:	cc8c                	sw	a1,24(s1)
    80004ebc:	0109a783          	lw	a5,16(s3)
    80004ec0:	ccdc                	sw	a5,28(s1)
    80004ec2:	0324a423          	sw	s2,40(s1)
    80004ec6:	854a                	mv	a0,s2
    80004ec8:	fffff097          	auipc	ra,0xfffff
    80004ecc:	e8a080e7          	jalr	-374(ra) # 80003d52 <bread>
    80004ed0:	4d3c                	lw	a5,88(a0)
    80004ed2:	d4dc                	sw	a5,44(s1)
    80004ed4:	02f05563          	blez	a5,80004efe <initlog+0x74>
    80004ed8:	05c50713          	addi	a4,a0,92
    80004edc:	00241697          	auipc	a3,0x241
    80004ee0:	fa468693          	addi	a3,a3,-92 # 80245e80 <log+0x30>
    80004ee4:	37fd                	addiw	a5,a5,-1
    80004ee6:	1782                	slli	a5,a5,0x20
    80004ee8:	9381                	srli	a5,a5,0x20
    80004eea:	078a                	slli	a5,a5,0x2
    80004eec:	06050613          	addi	a2,a0,96
    80004ef0:	97b2                	add	a5,a5,a2
    80004ef2:	4310                	lw	a2,0(a4)
    80004ef4:	c290                	sw	a2,0(a3)
    80004ef6:	0711                	addi	a4,a4,4
    80004ef8:	0691                	addi	a3,a3,4
    80004efa:	fef71ce3          	bne	a4,a5,80004ef2 <initlog+0x68>
    80004efe:	fffff097          	auipc	ra,0xfffff
    80004f02:	f84080e7          	jalr	-124(ra) # 80003e82 <brelse>
    80004f06:	4505                	li	a0,1
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	ebe080e7          	jalr	-322(ra) # 80004dc6 <install_trans>
    80004f10:	00241797          	auipc	a5,0x241
    80004f14:	f607a623          	sw	zero,-148(a5) # 80245e7c <log+0x2c>
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	e34080e7          	jalr	-460(ra) # 80004d4c <write_head>
    80004f20:	70a2                	ld	ra,40(sp)
    80004f22:	7402                	ld	s0,32(sp)
    80004f24:	64e2                	ld	s1,24(sp)
    80004f26:	6942                	ld	s2,16(sp)
    80004f28:	69a2                	ld	s3,8(sp)
    80004f2a:	6145                	addi	sp,sp,48
    80004f2c:	8082                	ret

0000000080004f2e <begin_op>:
    80004f2e:	1101                	addi	sp,sp,-32
    80004f30:	ec06                	sd	ra,24(sp)
    80004f32:	e822                	sd	s0,16(sp)
    80004f34:	e426                	sd	s1,8(sp)
    80004f36:	e04a                	sd	s2,0(sp)
    80004f38:	1000                	addi	s0,sp,32
    80004f3a:	00241517          	auipc	a0,0x241
    80004f3e:	f1650513          	addi	a0,a0,-234 # 80245e50 <log>
    80004f42:	ffffc097          	auipc	ra,0xffffc
    80004f46:	eac080e7          	jalr	-340(ra) # 80000dee <acquire>
    80004f4a:	00241497          	auipc	s1,0x241
    80004f4e:	f0648493          	addi	s1,s1,-250 # 80245e50 <log>
    80004f52:	4979                	li	s2,30
    80004f54:	a039                	j	80004f62 <begin_op+0x34>
    80004f56:	85a6                	mv	a1,s1
    80004f58:	8526                	mv	a0,s1
    80004f5a:	ffffd097          	auipc	ra,0xffffd
    80004f5e:	5a0080e7          	jalr	1440(ra) # 800024fa <sleep>
    80004f62:	50dc                	lw	a5,36(s1)
    80004f64:	fbed                	bnez	a5,80004f56 <begin_op+0x28>
    80004f66:	509c                	lw	a5,32(s1)
    80004f68:	0017871b          	addiw	a4,a5,1
    80004f6c:	0007069b          	sext.w	a3,a4
    80004f70:	0027179b          	slliw	a5,a4,0x2
    80004f74:	9fb9                	addw	a5,a5,a4
    80004f76:	0017979b          	slliw	a5,a5,0x1
    80004f7a:	54d8                	lw	a4,44(s1)
    80004f7c:	9fb9                	addw	a5,a5,a4
    80004f7e:	00f95963          	bge	s2,a5,80004f90 <begin_op+0x62>
    80004f82:	85a6                	mv	a1,s1
    80004f84:	8526                	mv	a0,s1
    80004f86:	ffffd097          	auipc	ra,0xffffd
    80004f8a:	574080e7          	jalr	1396(ra) # 800024fa <sleep>
    80004f8e:	bfd1                	j	80004f62 <begin_op+0x34>
    80004f90:	00241517          	auipc	a0,0x241
    80004f94:	ec050513          	addi	a0,a0,-320 # 80245e50 <log>
    80004f98:	d114                	sw	a3,32(a0)
    80004f9a:	ffffc097          	auipc	ra,0xffffc
    80004f9e:	f08080e7          	jalr	-248(ra) # 80000ea2 <release>
    80004fa2:	60e2                	ld	ra,24(sp)
    80004fa4:	6442                	ld	s0,16(sp)
    80004fa6:	64a2                	ld	s1,8(sp)
    80004fa8:	6902                	ld	s2,0(sp)
    80004faa:	6105                	addi	sp,sp,32
    80004fac:	8082                	ret

0000000080004fae <end_op>:
    80004fae:	7139                	addi	sp,sp,-64
    80004fb0:	fc06                	sd	ra,56(sp)
    80004fb2:	f822                	sd	s0,48(sp)
    80004fb4:	f426                	sd	s1,40(sp)
    80004fb6:	f04a                	sd	s2,32(sp)
    80004fb8:	ec4e                	sd	s3,24(sp)
    80004fba:	e852                	sd	s4,16(sp)
    80004fbc:	e456                	sd	s5,8(sp)
    80004fbe:	0080                	addi	s0,sp,64
    80004fc0:	00241497          	auipc	s1,0x241
    80004fc4:	e9048493          	addi	s1,s1,-368 # 80245e50 <log>
    80004fc8:	8526                	mv	a0,s1
    80004fca:	ffffc097          	auipc	ra,0xffffc
    80004fce:	e24080e7          	jalr	-476(ra) # 80000dee <acquire>
    80004fd2:	509c                	lw	a5,32(s1)
    80004fd4:	37fd                	addiw	a5,a5,-1
    80004fd6:	0007891b          	sext.w	s2,a5
    80004fda:	d09c                	sw	a5,32(s1)
    80004fdc:	50dc                	lw	a5,36(s1)
    80004fde:	efb9                	bnez	a5,8000503c <end_op+0x8e>
    80004fe0:	06091663          	bnez	s2,8000504c <end_op+0x9e>
    80004fe4:	00241497          	auipc	s1,0x241
    80004fe8:	e6c48493          	addi	s1,s1,-404 # 80245e50 <log>
    80004fec:	4785                	li	a5,1
    80004fee:	d0dc                	sw	a5,36(s1)
    80004ff0:	8526                	mv	a0,s1
    80004ff2:	ffffc097          	auipc	ra,0xffffc
    80004ff6:	eb0080e7          	jalr	-336(ra) # 80000ea2 <release>
    80004ffa:	54dc                	lw	a5,44(s1)
    80004ffc:	06f04763          	bgtz	a5,8000506a <end_op+0xbc>
    80005000:	00241497          	auipc	s1,0x241
    80005004:	e5048493          	addi	s1,s1,-432 # 80245e50 <log>
    80005008:	8526                	mv	a0,s1
    8000500a:	ffffc097          	auipc	ra,0xffffc
    8000500e:	de4080e7          	jalr	-540(ra) # 80000dee <acquire>
    80005012:	0204a223          	sw	zero,36(s1)
    80005016:	8526                	mv	a0,s1
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	558080e7          	jalr	1368(ra) # 80002570 <wakeup>
    80005020:	8526                	mv	a0,s1
    80005022:	ffffc097          	auipc	ra,0xffffc
    80005026:	e80080e7          	jalr	-384(ra) # 80000ea2 <release>
    8000502a:	70e2                	ld	ra,56(sp)
    8000502c:	7442                	ld	s0,48(sp)
    8000502e:	74a2                	ld	s1,40(sp)
    80005030:	7902                	ld	s2,32(sp)
    80005032:	69e2                	ld	s3,24(sp)
    80005034:	6a42                	ld	s4,16(sp)
    80005036:	6aa2                	ld	s5,8(sp)
    80005038:	6121                	addi	sp,sp,64
    8000503a:	8082                	ret
    8000503c:	00005517          	auipc	a0,0x5
    80005040:	93450513          	addi	a0,a0,-1740 # 80009970 <syscall_names+0x210>
    80005044:	ffffb097          	auipc	ra,0xffffb
    80005048:	500080e7          	jalr	1280(ra) # 80000544 <panic>
    8000504c:	00241497          	auipc	s1,0x241
    80005050:	e0448493          	addi	s1,s1,-508 # 80245e50 <log>
    80005054:	8526                	mv	a0,s1
    80005056:	ffffd097          	auipc	ra,0xffffd
    8000505a:	51a080e7          	jalr	1306(ra) # 80002570 <wakeup>
    8000505e:	8526                	mv	a0,s1
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	e42080e7          	jalr	-446(ra) # 80000ea2 <release>
    80005068:	b7c9                	j	8000502a <end_op+0x7c>
    8000506a:	00241a97          	auipc	s5,0x241
    8000506e:	e16a8a93          	addi	s5,s5,-490 # 80245e80 <log+0x30>
    80005072:	00241a17          	auipc	s4,0x241
    80005076:	ddea0a13          	addi	s4,s4,-546 # 80245e50 <log>
    8000507a:	018a2583          	lw	a1,24(s4)
    8000507e:	012585bb          	addw	a1,a1,s2
    80005082:	2585                	addiw	a1,a1,1
    80005084:	028a2503          	lw	a0,40(s4)
    80005088:	fffff097          	auipc	ra,0xfffff
    8000508c:	cca080e7          	jalr	-822(ra) # 80003d52 <bread>
    80005090:	84aa                	mv	s1,a0
    80005092:	000aa583          	lw	a1,0(s5)
    80005096:	028a2503          	lw	a0,40(s4)
    8000509a:	fffff097          	auipc	ra,0xfffff
    8000509e:	cb8080e7          	jalr	-840(ra) # 80003d52 <bread>
    800050a2:	89aa                	mv	s3,a0
    800050a4:	40000613          	li	a2,1024
    800050a8:	05850593          	addi	a1,a0,88
    800050ac:	05848513          	addi	a0,s1,88
    800050b0:	ffffc097          	auipc	ra,0xffffc
    800050b4:	e9a080e7          	jalr	-358(ra) # 80000f4a <memmove>
    800050b8:	8526                	mv	a0,s1
    800050ba:	fffff097          	auipc	ra,0xfffff
    800050be:	d8a080e7          	jalr	-630(ra) # 80003e44 <bwrite>
    800050c2:	854e                	mv	a0,s3
    800050c4:	fffff097          	auipc	ra,0xfffff
    800050c8:	dbe080e7          	jalr	-578(ra) # 80003e82 <brelse>
    800050cc:	8526                	mv	a0,s1
    800050ce:	fffff097          	auipc	ra,0xfffff
    800050d2:	db4080e7          	jalr	-588(ra) # 80003e82 <brelse>
    800050d6:	2905                	addiw	s2,s2,1
    800050d8:	0a91                	addi	s5,s5,4
    800050da:	02ca2783          	lw	a5,44(s4)
    800050de:	f8f94ee3          	blt	s2,a5,8000507a <end_op+0xcc>
    800050e2:	00000097          	auipc	ra,0x0
    800050e6:	c6a080e7          	jalr	-918(ra) # 80004d4c <write_head>
    800050ea:	4501                	li	a0,0
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	cda080e7          	jalr	-806(ra) # 80004dc6 <install_trans>
    800050f4:	00241797          	auipc	a5,0x241
    800050f8:	d807a423          	sw	zero,-632(a5) # 80245e7c <log+0x2c>
    800050fc:	00000097          	auipc	ra,0x0
    80005100:	c50080e7          	jalr	-944(ra) # 80004d4c <write_head>
    80005104:	bdf5                	j	80005000 <end_op+0x52>

0000000080005106 <log_write>:
    80005106:	1101                	addi	sp,sp,-32
    80005108:	ec06                	sd	ra,24(sp)
    8000510a:	e822                	sd	s0,16(sp)
    8000510c:	e426                	sd	s1,8(sp)
    8000510e:	e04a                	sd	s2,0(sp)
    80005110:	1000                	addi	s0,sp,32
    80005112:	84aa                	mv	s1,a0
    80005114:	00241917          	auipc	s2,0x241
    80005118:	d3c90913          	addi	s2,s2,-708 # 80245e50 <log>
    8000511c:	854a                	mv	a0,s2
    8000511e:	ffffc097          	auipc	ra,0xffffc
    80005122:	cd0080e7          	jalr	-816(ra) # 80000dee <acquire>
    80005126:	02c92603          	lw	a2,44(s2)
    8000512a:	47f5                	li	a5,29
    8000512c:	06c7c563          	blt	a5,a2,80005196 <log_write+0x90>
    80005130:	00241797          	auipc	a5,0x241
    80005134:	d3c7a783          	lw	a5,-708(a5) # 80245e6c <log+0x1c>
    80005138:	37fd                	addiw	a5,a5,-1
    8000513a:	04f65e63          	bge	a2,a5,80005196 <log_write+0x90>
    8000513e:	00241797          	auipc	a5,0x241
    80005142:	d327a783          	lw	a5,-718(a5) # 80245e70 <log+0x20>
    80005146:	06f05063          	blez	a5,800051a6 <log_write+0xa0>
    8000514a:	4781                	li	a5,0
    8000514c:	06c05563          	blez	a2,800051b6 <log_write+0xb0>
    80005150:	44cc                	lw	a1,12(s1)
    80005152:	00241717          	auipc	a4,0x241
    80005156:	d2e70713          	addi	a4,a4,-722 # 80245e80 <log+0x30>
    8000515a:	4781                	li	a5,0
    8000515c:	4314                	lw	a3,0(a4)
    8000515e:	04b68c63          	beq	a3,a1,800051b6 <log_write+0xb0>
    80005162:	2785                	addiw	a5,a5,1
    80005164:	0711                	addi	a4,a4,4
    80005166:	fef61be3          	bne	a2,a5,8000515c <log_write+0x56>
    8000516a:	0621                	addi	a2,a2,8
    8000516c:	060a                	slli	a2,a2,0x2
    8000516e:	00241797          	auipc	a5,0x241
    80005172:	ce278793          	addi	a5,a5,-798 # 80245e50 <log>
    80005176:	963e                	add	a2,a2,a5
    80005178:	44dc                	lw	a5,12(s1)
    8000517a:	ca1c                	sw	a5,16(a2)
    8000517c:	8526                	mv	a0,s1
    8000517e:	fffff097          	auipc	ra,0xfffff
    80005182:	da2080e7          	jalr	-606(ra) # 80003f20 <bpin>
    80005186:	00241717          	auipc	a4,0x241
    8000518a:	cca70713          	addi	a4,a4,-822 # 80245e50 <log>
    8000518e:	575c                	lw	a5,44(a4)
    80005190:	2785                	addiw	a5,a5,1
    80005192:	d75c                	sw	a5,44(a4)
    80005194:	a835                	j	800051d0 <log_write+0xca>
    80005196:	00004517          	auipc	a0,0x4
    8000519a:	7ea50513          	addi	a0,a0,2026 # 80009980 <syscall_names+0x220>
    8000519e:	ffffb097          	auipc	ra,0xffffb
    800051a2:	3a6080e7          	jalr	934(ra) # 80000544 <panic>
    800051a6:	00004517          	auipc	a0,0x4
    800051aa:	7f250513          	addi	a0,a0,2034 # 80009998 <syscall_names+0x238>
    800051ae:	ffffb097          	auipc	ra,0xffffb
    800051b2:	396080e7          	jalr	918(ra) # 80000544 <panic>
    800051b6:	00878713          	addi	a4,a5,8
    800051ba:	00271693          	slli	a3,a4,0x2
    800051be:	00241717          	auipc	a4,0x241
    800051c2:	c9270713          	addi	a4,a4,-878 # 80245e50 <log>
    800051c6:	9736                	add	a4,a4,a3
    800051c8:	44d4                	lw	a3,12(s1)
    800051ca:	cb14                	sw	a3,16(a4)
    800051cc:	faf608e3          	beq	a2,a5,8000517c <log_write+0x76>
    800051d0:	00241517          	auipc	a0,0x241
    800051d4:	c8050513          	addi	a0,a0,-896 # 80245e50 <log>
    800051d8:	ffffc097          	auipc	ra,0xffffc
    800051dc:	cca080e7          	jalr	-822(ra) # 80000ea2 <release>
    800051e0:	60e2                	ld	ra,24(sp)
    800051e2:	6442                	ld	s0,16(sp)
    800051e4:	64a2                	ld	s1,8(sp)
    800051e6:	6902                	ld	s2,0(sp)
    800051e8:	6105                	addi	sp,sp,32
    800051ea:	8082                	ret

00000000800051ec <initsleeplock>:
    800051ec:	1101                	addi	sp,sp,-32
    800051ee:	ec06                	sd	ra,24(sp)
    800051f0:	e822                	sd	s0,16(sp)
    800051f2:	e426                	sd	s1,8(sp)
    800051f4:	e04a                	sd	s2,0(sp)
    800051f6:	1000                	addi	s0,sp,32
    800051f8:	84aa                	mv	s1,a0
    800051fa:	892e                	mv	s2,a1
    800051fc:	00004597          	auipc	a1,0x4
    80005200:	7bc58593          	addi	a1,a1,1980 # 800099b8 <syscall_names+0x258>
    80005204:	0521                	addi	a0,a0,8
    80005206:	ffffc097          	auipc	ra,0xffffc
    8000520a:	b58080e7          	jalr	-1192(ra) # 80000d5e <initlock>
    8000520e:	0324b023          	sd	s2,32(s1)
    80005212:	0004a023          	sw	zero,0(s1)
    80005216:	0204a423          	sw	zero,40(s1)
    8000521a:	60e2                	ld	ra,24(sp)
    8000521c:	6442                	ld	s0,16(sp)
    8000521e:	64a2                	ld	s1,8(sp)
    80005220:	6902                	ld	s2,0(sp)
    80005222:	6105                	addi	sp,sp,32
    80005224:	8082                	ret

0000000080005226 <acquiresleep>:
    80005226:	1101                	addi	sp,sp,-32
    80005228:	ec06                	sd	ra,24(sp)
    8000522a:	e822                	sd	s0,16(sp)
    8000522c:	e426                	sd	s1,8(sp)
    8000522e:	e04a                	sd	s2,0(sp)
    80005230:	1000                	addi	s0,sp,32
    80005232:	84aa                	mv	s1,a0
    80005234:	00850913          	addi	s2,a0,8
    80005238:	854a                	mv	a0,s2
    8000523a:	ffffc097          	auipc	ra,0xffffc
    8000523e:	bb4080e7          	jalr	-1100(ra) # 80000dee <acquire>
    80005242:	409c                	lw	a5,0(s1)
    80005244:	cb89                	beqz	a5,80005256 <acquiresleep+0x30>
    80005246:	85ca                	mv	a1,s2
    80005248:	8526                	mv	a0,s1
    8000524a:	ffffd097          	auipc	ra,0xffffd
    8000524e:	2b0080e7          	jalr	688(ra) # 800024fa <sleep>
    80005252:	409c                	lw	a5,0(s1)
    80005254:	fbed                	bnez	a5,80005246 <acquiresleep+0x20>
    80005256:	4785                	li	a5,1
    80005258:	c09c                	sw	a5,0(s1)
    8000525a:	ffffd097          	auipc	ra,0xffffd
    8000525e:	bbe080e7          	jalr	-1090(ra) # 80001e18 <myproc>
    80005262:	591c                	lw	a5,48(a0)
    80005264:	d49c                	sw	a5,40(s1)
    80005266:	854a                	mv	a0,s2
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	c3a080e7          	jalr	-966(ra) # 80000ea2 <release>
    80005270:	60e2                	ld	ra,24(sp)
    80005272:	6442                	ld	s0,16(sp)
    80005274:	64a2                	ld	s1,8(sp)
    80005276:	6902                	ld	s2,0(sp)
    80005278:	6105                	addi	sp,sp,32
    8000527a:	8082                	ret

000000008000527c <releasesleep>:
    8000527c:	1101                	addi	sp,sp,-32
    8000527e:	ec06                	sd	ra,24(sp)
    80005280:	e822                	sd	s0,16(sp)
    80005282:	e426                	sd	s1,8(sp)
    80005284:	e04a                	sd	s2,0(sp)
    80005286:	1000                	addi	s0,sp,32
    80005288:	84aa                	mv	s1,a0
    8000528a:	00850913          	addi	s2,a0,8
    8000528e:	854a                	mv	a0,s2
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	b5e080e7          	jalr	-1186(ra) # 80000dee <acquire>
    80005298:	0004a023          	sw	zero,0(s1)
    8000529c:	0204a423          	sw	zero,40(s1)
    800052a0:	8526                	mv	a0,s1
    800052a2:	ffffd097          	auipc	ra,0xffffd
    800052a6:	2ce080e7          	jalr	718(ra) # 80002570 <wakeup>
    800052aa:	854a                	mv	a0,s2
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	bf6080e7          	jalr	-1034(ra) # 80000ea2 <release>
    800052b4:	60e2                	ld	ra,24(sp)
    800052b6:	6442                	ld	s0,16(sp)
    800052b8:	64a2                	ld	s1,8(sp)
    800052ba:	6902                	ld	s2,0(sp)
    800052bc:	6105                	addi	sp,sp,32
    800052be:	8082                	ret

00000000800052c0 <holdingsleep>:
    800052c0:	7179                	addi	sp,sp,-48
    800052c2:	f406                	sd	ra,40(sp)
    800052c4:	f022                	sd	s0,32(sp)
    800052c6:	ec26                	sd	s1,24(sp)
    800052c8:	e84a                	sd	s2,16(sp)
    800052ca:	e44e                	sd	s3,8(sp)
    800052cc:	1800                	addi	s0,sp,48
    800052ce:	84aa                	mv	s1,a0
    800052d0:	00850913          	addi	s2,a0,8
    800052d4:	854a                	mv	a0,s2
    800052d6:	ffffc097          	auipc	ra,0xffffc
    800052da:	b18080e7          	jalr	-1256(ra) # 80000dee <acquire>
    800052de:	409c                	lw	a5,0(s1)
    800052e0:	ef99                	bnez	a5,800052fe <holdingsleep+0x3e>
    800052e2:	4481                	li	s1,0
    800052e4:	854a                	mv	a0,s2
    800052e6:	ffffc097          	auipc	ra,0xffffc
    800052ea:	bbc080e7          	jalr	-1092(ra) # 80000ea2 <release>
    800052ee:	8526                	mv	a0,s1
    800052f0:	70a2                	ld	ra,40(sp)
    800052f2:	7402                	ld	s0,32(sp)
    800052f4:	64e2                	ld	s1,24(sp)
    800052f6:	6942                	ld	s2,16(sp)
    800052f8:	69a2                	ld	s3,8(sp)
    800052fa:	6145                	addi	sp,sp,48
    800052fc:	8082                	ret
    800052fe:	0284a983          	lw	s3,40(s1)
    80005302:	ffffd097          	auipc	ra,0xffffd
    80005306:	b16080e7          	jalr	-1258(ra) # 80001e18 <myproc>
    8000530a:	5904                	lw	s1,48(a0)
    8000530c:	413484b3          	sub	s1,s1,s3
    80005310:	0014b493          	seqz	s1,s1
    80005314:	bfc1                	j	800052e4 <holdingsleep+0x24>

0000000080005316 <fileinit>:
    80005316:	1141                	addi	sp,sp,-16
    80005318:	e406                	sd	ra,8(sp)
    8000531a:	e022                	sd	s0,0(sp)
    8000531c:	0800                	addi	s0,sp,16
    8000531e:	00004597          	auipc	a1,0x4
    80005322:	6aa58593          	addi	a1,a1,1706 # 800099c8 <syscall_names+0x268>
    80005326:	00241517          	auipc	a0,0x241
    8000532a:	c7250513          	addi	a0,a0,-910 # 80245f98 <ftable>
    8000532e:	ffffc097          	auipc	ra,0xffffc
    80005332:	a30080e7          	jalr	-1488(ra) # 80000d5e <initlock>
    80005336:	60a2                	ld	ra,8(sp)
    80005338:	6402                	ld	s0,0(sp)
    8000533a:	0141                	addi	sp,sp,16
    8000533c:	8082                	ret

000000008000533e <filealloc>:
    8000533e:	1101                	addi	sp,sp,-32
    80005340:	ec06                	sd	ra,24(sp)
    80005342:	e822                	sd	s0,16(sp)
    80005344:	e426                	sd	s1,8(sp)
    80005346:	1000                	addi	s0,sp,32
    80005348:	00241517          	auipc	a0,0x241
    8000534c:	c5050513          	addi	a0,a0,-944 # 80245f98 <ftable>
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	a9e080e7          	jalr	-1378(ra) # 80000dee <acquire>
    80005358:	00241497          	auipc	s1,0x241
    8000535c:	c5848493          	addi	s1,s1,-936 # 80245fb0 <ftable+0x18>
    80005360:	00242717          	auipc	a4,0x242
    80005364:	bf070713          	addi	a4,a4,-1040 # 80246f50 <disk>
    80005368:	40dc                	lw	a5,4(s1)
    8000536a:	cf99                	beqz	a5,80005388 <filealloc+0x4a>
    8000536c:	02848493          	addi	s1,s1,40
    80005370:	fee49ce3          	bne	s1,a4,80005368 <filealloc+0x2a>
    80005374:	00241517          	auipc	a0,0x241
    80005378:	c2450513          	addi	a0,a0,-988 # 80245f98 <ftable>
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	b26080e7          	jalr	-1242(ra) # 80000ea2 <release>
    80005384:	4481                	li	s1,0
    80005386:	a819                	j	8000539c <filealloc+0x5e>
    80005388:	4785                	li	a5,1
    8000538a:	c0dc                	sw	a5,4(s1)
    8000538c:	00241517          	auipc	a0,0x241
    80005390:	c0c50513          	addi	a0,a0,-1012 # 80245f98 <ftable>
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	b0e080e7          	jalr	-1266(ra) # 80000ea2 <release>
    8000539c:	8526                	mv	a0,s1
    8000539e:	60e2                	ld	ra,24(sp)
    800053a0:	6442                	ld	s0,16(sp)
    800053a2:	64a2                	ld	s1,8(sp)
    800053a4:	6105                	addi	sp,sp,32
    800053a6:	8082                	ret

00000000800053a8 <filedup>:
    800053a8:	1101                	addi	sp,sp,-32
    800053aa:	ec06                	sd	ra,24(sp)
    800053ac:	e822                	sd	s0,16(sp)
    800053ae:	e426                	sd	s1,8(sp)
    800053b0:	1000                	addi	s0,sp,32
    800053b2:	84aa                	mv	s1,a0
    800053b4:	00241517          	auipc	a0,0x241
    800053b8:	be450513          	addi	a0,a0,-1052 # 80245f98 <ftable>
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	a32080e7          	jalr	-1486(ra) # 80000dee <acquire>
    800053c4:	40dc                	lw	a5,4(s1)
    800053c6:	02f05263          	blez	a5,800053ea <filedup+0x42>
    800053ca:	2785                	addiw	a5,a5,1
    800053cc:	c0dc                	sw	a5,4(s1)
    800053ce:	00241517          	auipc	a0,0x241
    800053d2:	bca50513          	addi	a0,a0,-1078 # 80245f98 <ftable>
    800053d6:	ffffc097          	auipc	ra,0xffffc
    800053da:	acc080e7          	jalr	-1332(ra) # 80000ea2 <release>
    800053de:	8526                	mv	a0,s1
    800053e0:	60e2                	ld	ra,24(sp)
    800053e2:	6442                	ld	s0,16(sp)
    800053e4:	64a2                	ld	s1,8(sp)
    800053e6:	6105                	addi	sp,sp,32
    800053e8:	8082                	ret
    800053ea:	00004517          	auipc	a0,0x4
    800053ee:	5e650513          	addi	a0,a0,1510 # 800099d0 <syscall_names+0x270>
    800053f2:	ffffb097          	auipc	ra,0xffffb
    800053f6:	152080e7          	jalr	338(ra) # 80000544 <panic>

00000000800053fa <fileclose>:
    800053fa:	7139                	addi	sp,sp,-64
    800053fc:	fc06                	sd	ra,56(sp)
    800053fe:	f822                	sd	s0,48(sp)
    80005400:	f426                	sd	s1,40(sp)
    80005402:	f04a                	sd	s2,32(sp)
    80005404:	ec4e                	sd	s3,24(sp)
    80005406:	e852                	sd	s4,16(sp)
    80005408:	e456                	sd	s5,8(sp)
    8000540a:	0080                	addi	s0,sp,64
    8000540c:	84aa                	mv	s1,a0
    8000540e:	00241517          	auipc	a0,0x241
    80005412:	b8a50513          	addi	a0,a0,-1142 # 80245f98 <ftable>
    80005416:	ffffc097          	auipc	ra,0xffffc
    8000541a:	9d8080e7          	jalr	-1576(ra) # 80000dee <acquire>
    8000541e:	40dc                	lw	a5,4(s1)
    80005420:	06f05163          	blez	a5,80005482 <fileclose+0x88>
    80005424:	37fd                	addiw	a5,a5,-1
    80005426:	0007871b          	sext.w	a4,a5
    8000542a:	c0dc                	sw	a5,4(s1)
    8000542c:	06e04363          	bgtz	a4,80005492 <fileclose+0x98>
    80005430:	0004a903          	lw	s2,0(s1)
    80005434:	0094ca83          	lbu	s5,9(s1)
    80005438:	0104ba03          	ld	s4,16(s1)
    8000543c:	0184b983          	ld	s3,24(s1)
    80005440:	0004a223          	sw	zero,4(s1)
    80005444:	0004a023          	sw	zero,0(s1)
    80005448:	00241517          	auipc	a0,0x241
    8000544c:	b5050513          	addi	a0,a0,-1200 # 80245f98 <ftable>
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	a52080e7          	jalr	-1454(ra) # 80000ea2 <release>
    80005458:	4785                	li	a5,1
    8000545a:	04f90d63          	beq	s2,a5,800054b4 <fileclose+0xba>
    8000545e:	3979                	addiw	s2,s2,-2
    80005460:	4785                	li	a5,1
    80005462:	0527e063          	bltu	a5,s2,800054a2 <fileclose+0xa8>
    80005466:	00000097          	auipc	ra,0x0
    8000546a:	ac8080e7          	jalr	-1336(ra) # 80004f2e <begin_op>
    8000546e:	854e                	mv	a0,s3
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	2b6080e7          	jalr	694(ra) # 80004726 <iput>
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	b36080e7          	jalr	-1226(ra) # 80004fae <end_op>
    80005480:	a00d                	j	800054a2 <fileclose+0xa8>
    80005482:	00004517          	auipc	a0,0x4
    80005486:	55650513          	addi	a0,a0,1366 # 800099d8 <syscall_names+0x278>
    8000548a:	ffffb097          	auipc	ra,0xffffb
    8000548e:	0ba080e7          	jalr	186(ra) # 80000544 <panic>
    80005492:	00241517          	auipc	a0,0x241
    80005496:	b0650513          	addi	a0,a0,-1274 # 80245f98 <ftable>
    8000549a:	ffffc097          	auipc	ra,0xffffc
    8000549e:	a08080e7          	jalr	-1528(ra) # 80000ea2 <release>
    800054a2:	70e2                	ld	ra,56(sp)
    800054a4:	7442                	ld	s0,48(sp)
    800054a6:	74a2                	ld	s1,40(sp)
    800054a8:	7902                	ld	s2,32(sp)
    800054aa:	69e2                	ld	s3,24(sp)
    800054ac:	6a42                	ld	s4,16(sp)
    800054ae:	6aa2                	ld	s5,8(sp)
    800054b0:	6121                	addi	sp,sp,64
    800054b2:	8082                	ret
    800054b4:	85d6                	mv	a1,s5
    800054b6:	8552                	mv	a0,s4
    800054b8:	00000097          	auipc	ra,0x0
    800054bc:	34c080e7          	jalr	844(ra) # 80005804 <pipeclose>
    800054c0:	b7cd                	j	800054a2 <fileclose+0xa8>

00000000800054c2 <filestat>:
    800054c2:	715d                	addi	sp,sp,-80
    800054c4:	e486                	sd	ra,72(sp)
    800054c6:	e0a2                	sd	s0,64(sp)
    800054c8:	fc26                	sd	s1,56(sp)
    800054ca:	f84a                	sd	s2,48(sp)
    800054cc:	f44e                	sd	s3,40(sp)
    800054ce:	0880                	addi	s0,sp,80
    800054d0:	84aa                	mv	s1,a0
    800054d2:	89ae                	mv	s3,a1
    800054d4:	ffffd097          	auipc	ra,0xffffd
    800054d8:	944080e7          	jalr	-1724(ra) # 80001e18 <myproc>
    800054dc:	409c                	lw	a5,0(s1)
    800054de:	37f9                	addiw	a5,a5,-2
    800054e0:	4705                	li	a4,1
    800054e2:	04f76763          	bltu	a4,a5,80005530 <filestat+0x6e>
    800054e6:	892a                	mv	s2,a0
    800054e8:	6c88                	ld	a0,24(s1)
    800054ea:	fffff097          	auipc	ra,0xfffff
    800054ee:	082080e7          	jalr	130(ra) # 8000456c <ilock>
    800054f2:	fb840593          	addi	a1,s0,-72
    800054f6:	6c88                	ld	a0,24(s1)
    800054f8:	fffff097          	auipc	ra,0xfffff
    800054fc:	2fe080e7          	jalr	766(ra) # 800047f6 <stati>
    80005500:	6c88                	ld	a0,24(s1)
    80005502:	fffff097          	auipc	ra,0xfffff
    80005506:	12c080e7          	jalr	300(ra) # 8000462e <iunlock>
    8000550a:	46e1                	li	a3,24
    8000550c:	fb840613          	addi	a2,s0,-72
    80005510:	85ce                	mv	a1,s3
    80005512:	05093503          	ld	a0,80(s2)
    80005516:	ffffc097          	auipc	ra,0xffffc
    8000551a:	37a080e7          	jalr	890(ra) # 80001890 <copyout>
    8000551e:	41f5551b          	sraiw	a0,a0,0x1f
    80005522:	60a6                	ld	ra,72(sp)
    80005524:	6406                	ld	s0,64(sp)
    80005526:	74e2                	ld	s1,56(sp)
    80005528:	7942                	ld	s2,48(sp)
    8000552a:	79a2                	ld	s3,40(sp)
    8000552c:	6161                	addi	sp,sp,80
    8000552e:	8082                	ret
    80005530:	557d                	li	a0,-1
    80005532:	bfc5                	j	80005522 <filestat+0x60>

0000000080005534 <fileread>:
    80005534:	7179                	addi	sp,sp,-48
    80005536:	f406                	sd	ra,40(sp)
    80005538:	f022                	sd	s0,32(sp)
    8000553a:	ec26                	sd	s1,24(sp)
    8000553c:	e84a                	sd	s2,16(sp)
    8000553e:	e44e                	sd	s3,8(sp)
    80005540:	1800                	addi	s0,sp,48
    80005542:	00854783          	lbu	a5,8(a0)
    80005546:	c3d5                	beqz	a5,800055ea <fileread+0xb6>
    80005548:	84aa                	mv	s1,a0
    8000554a:	89ae                	mv	s3,a1
    8000554c:	8932                	mv	s2,a2
    8000554e:	411c                	lw	a5,0(a0)
    80005550:	4705                	li	a4,1
    80005552:	04e78963          	beq	a5,a4,800055a4 <fileread+0x70>
    80005556:	470d                	li	a4,3
    80005558:	04e78d63          	beq	a5,a4,800055b2 <fileread+0x7e>
    8000555c:	4709                	li	a4,2
    8000555e:	06e79e63          	bne	a5,a4,800055da <fileread+0xa6>
    80005562:	6d08                	ld	a0,24(a0)
    80005564:	fffff097          	auipc	ra,0xfffff
    80005568:	008080e7          	jalr	8(ra) # 8000456c <ilock>
    8000556c:	874a                	mv	a4,s2
    8000556e:	5094                	lw	a3,32(s1)
    80005570:	864e                	mv	a2,s3
    80005572:	4585                	li	a1,1
    80005574:	6c88                	ld	a0,24(s1)
    80005576:	fffff097          	auipc	ra,0xfffff
    8000557a:	2aa080e7          	jalr	682(ra) # 80004820 <readi>
    8000557e:	892a                	mv	s2,a0
    80005580:	00a05563          	blez	a0,8000558a <fileread+0x56>
    80005584:	509c                	lw	a5,32(s1)
    80005586:	9fa9                	addw	a5,a5,a0
    80005588:	d09c                	sw	a5,32(s1)
    8000558a:	6c88                	ld	a0,24(s1)
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	0a2080e7          	jalr	162(ra) # 8000462e <iunlock>
    80005594:	854a                	mv	a0,s2
    80005596:	70a2                	ld	ra,40(sp)
    80005598:	7402                	ld	s0,32(sp)
    8000559a:	64e2                	ld	s1,24(sp)
    8000559c:	6942                	ld	s2,16(sp)
    8000559e:	69a2                	ld	s3,8(sp)
    800055a0:	6145                	addi	sp,sp,48
    800055a2:	8082                	ret
    800055a4:	6908                	ld	a0,16(a0)
    800055a6:	00000097          	auipc	ra,0x0
    800055aa:	3ce080e7          	jalr	974(ra) # 80005974 <piperead>
    800055ae:	892a                	mv	s2,a0
    800055b0:	b7d5                	j	80005594 <fileread+0x60>
    800055b2:	02451783          	lh	a5,36(a0)
    800055b6:	03079693          	slli	a3,a5,0x30
    800055ba:	92c1                	srli	a3,a3,0x30
    800055bc:	4725                	li	a4,9
    800055be:	02d76863          	bltu	a4,a3,800055ee <fileread+0xba>
    800055c2:	0792                	slli	a5,a5,0x4
    800055c4:	00241717          	auipc	a4,0x241
    800055c8:	93470713          	addi	a4,a4,-1740 # 80245ef8 <devsw>
    800055cc:	97ba                	add	a5,a5,a4
    800055ce:	639c                	ld	a5,0(a5)
    800055d0:	c38d                	beqz	a5,800055f2 <fileread+0xbe>
    800055d2:	4505                	li	a0,1
    800055d4:	9782                	jalr	a5
    800055d6:	892a                	mv	s2,a0
    800055d8:	bf75                	j	80005594 <fileread+0x60>
    800055da:	00004517          	auipc	a0,0x4
    800055de:	40e50513          	addi	a0,a0,1038 # 800099e8 <syscall_names+0x288>
    800055e2:	ffffb097          	auipc	ra,0xffffb
    800055e6:	f62080e7          	jalr	-158(ra) # 80000544 <panic>
    800055ea:	597d                	li	s2,-1
    800055ec:	b765                	j	80005594 <fileread+0x60>
    800055ee:	597d                	li	s2,-1
    800055f0:	b755                	j	80005594 <fileread+0x60>
    800055f2:	597d                	li	s2,-1
    800055f4:	b745                	j	80005594 <fileread+0x60>

00000000800055f6 <filewrite>:
    800055f6:	715d                	addi	sp,sp,-80
    800055f8:	e486                	sd	ra,72(sp)
    800055fa:	e0a2                	sd	s0,64(sp)
    800055fc:	fc26                	sd	s1,56(sp)
    800055fe:	f84a                	sd	s2,48(sp)
    80005600:	f44e                	sd	s3,40(sp)
    80005602:	f052                	sd	s4,32(sp)
    80005604:	ec56                	sd	s5,24(sp)
    80005606:	e85a                	sd	s6,16(sp)
    80005608:	e45e                	sd	s7,8(sp)
    8000560a:	e062                	sd	s8,0(sp)
    8000560c:	0880                	addi	s0,sp,80
    8000560e:	00954783          	lbu	a5,9(a0)
    80005612:	10078663          	beqz	a5,8000571e <filewrite+0x128>
    80005616:	892a                	mv	s2,a0
    80005618:	8aae                	mv	s5,a1
    8000561a:	8a32                	mv	s4,a2
    8000561c:	411c                	lw	a5,0(a0)
    8000561e:	4705                	li	a4,1
    80005620:	02e78263          	beq	a5,a4,80005644 <filewrite+0x4e>
    80005624:	470d                	li	a4,3
    80005626:	02e78663          	beq	a5,a4,80005652 <filewrite+0x5c>
    8000562a:	4709                	li	a4,2
    8000562c:	0ee79163          	bne	a5,a4,8000570e <filewrite+0x118>
    80005630:	0ac05d63          	blez	a2,800056ea <filewrite+0xf4>
    80005634:	4981                	li	s3,0
    80005636:	6b05                	lui	s6,0x1
    80005638:	c00b0b13          	addi	s6,s6,-1024 # c00 <_entry-0x7ffff400>
    8000563c:	6b85                	lui	s7,0x1
    8000563e:	c00b8b9b          	addiw	s7,s7,-1024
    80005642:	a861                	j	800056da <filewrite+0xe4>
    80005644:	6908                	ld	a0,16(a0)
    80005646:	00000097          	auipc	ra,0x0
    8000564a:	22e080e7          	jalr	558(ra) # 80005874 <pipewrite>
    8000564e:	8a2a                	mv	s4,a0
    80005650:	a045                	j	800056f0 <filewrite+0xfa>
    80005652:	02451783          	lh	a5,36(a0)
    80005656:	03079693          	slli	a3,a5,0x30
    8000565a:	92c1                	srli	a3,a3,0x30
    8000565c:	4725                	li	a4,9
    8000565e:	0cd76263          	bltu	a4,a3,80005722 <filewrite+0x12c>
    80005662:	0792                	slli	a5,a5,0x4
    80005664:	00241717          	auipc	a4,0x241
    80005668:	89470713          	addi	a4,a4,-1900 # 80245ef8 <devsw>
    8000566c:	97ba                	add	a5,a5,a4
    8000566e:	679c                	ld	a5,8(a5)
    80005670:	cbdd                	beqz	a5,80005726 <filewrite+0x130>
    80005672:	4505                	li	a0,1
    80005674:	9782                	jalr	a5
    80005676:	8a2a                	mv	s4,a0
    80005678:	a8a5                	j	800056f0 <filewrite+0xfa>
    8000567a:	00048c1b          	sext.w	s8,s1
    8000567e:	00000097          	auipc	ra,0x0
    80005682:	8b0080e7          	jalr	-1872(ra) # 80004f2e <begin_op>
    80005686:	01893503          	ld	a0,24(s2)
    8000568a:	fffff097          	auipc	ra,0xfffff
    8000568e:	ee2080e7          	jalr	-286(ra) # 8000456c <ilock>
    80005692:	8762                	mv	a4,s8
    80005694:	02092683          	lw	a3,32(s2)
    80005698:	01598633          	add	a2,s3,s5
    8000569c:	4585                	li	a1,1
    8000569e:	01893503          	ld	a0,24(s2)
    800056a2:	fffff097          	auipc	ra,0xfffff
    800056a6:	276080e7          	jalr	630(ra) # 80004918 <writei>
    800056aa:	84aa                	mv	s1,a0
    800056ac:	00a05763          	blez	a0,800056ba <filewrite+0xc4>
    800056b0:	02092783          	lw	a5,32(s2)
    800056b4:	9fa9                	addw	a5,a5,a0
    800056b6:	02f92023          	sw	a5,32(s2)
    800056ba:	01893503          	ld	a0,24(s2)
    800056be:	fffff097          	auipc	ra,0xfffff
    800056c2:	f70080e7          	jalr	-144(ra) # 8000462e <iunlock>
    800056c6:	00000097          	auipc	ra,0x0
    800056ca:	8e8080e7          	jalr	-1816(ra) # 80004fae <end_op>
    800056ce:	009c1f63          	bne	s8,s1,800056ec <filewrite+0xf6>
    800056d2:	013489bb          	addw	s3,s1,s3
    800056d6:	0149db63          	bge	s3,s4,800056ec <filewrite+0xf6>
    800056da:	413a07bb          	subw	a5,s4,s3
    800056de:	84be                	mv	s1,a5
    800056e0:	2781                	sext.w	a5,a5
    800056e2:	f8fb5ce3          	bge	s6,a5,8000567a <filewrite+0x84>
    800056e6:	84de                	mv	s1,s7
    800056e8:	bf49                	j	8000567a <filewrite+0x84>
    800056ea:	4981                	li	s3,0
    800056ec:	013a1f63          	bne	s4,s3,8000570a <filewrite+0x114>
    800056f0:	8552                	mv	a0,s4
    800056f2:	60a6                	ld	ra,72(sp)
    800056f4:	6406                	ld	s0,64(sp)
    800056f6:	74e2                	ld	s1,56(sp)
    800056f8:	7942                	ld	s2,48(sp)
    800056fa:	79a2                	ld	s3,40(sp)
    800056fc:	7a02                	ld	s4,32(sp)
    800056fe:	6ae2                	ld	s5,24(sp)
    80005700:	6b42                	ld	s6,16(sp)
    80005702:	6ba2                	ld	s7,8(sp)
    80005704:	6c02                	ld	s8,0(sp)
    80005706:	6161                	addi	sp,sp,80
    80005708:	8082                	ret
    8000570a:	5a7d                	li	s4,-1
    8000570c:	b7d5                	j	800056f0 <filewrite+0xfa>
    8000570e:	00004517          	auipc	a0,0x4
    80005712:	2ea50513          	addi	a0,a0,746 # 800099f8 <syscall_names+0x298>
    80005716:	ffffb097          	auipc	ra,0xffffb
    8000571a:	e2e080e7          	jalr	-466(ra) # 80000544 <panic>
    8000571e:	5a7d                	li	s4,-1
    80005720:	bfc1                	j	800056f0 <filewrite+0xfa>
    80005722:	5a7d                	li	s4,-1
    80005724:	b7f1                	j	800056f0 <filewrite+0xfa>
    80005726:	5a7d                	li	s4,-1
    80005728:	b7e1                	j	800056f0 <filewrite+0xfa>

000000008000572a <pipealloc>:
    8000572a:	7179                	addi	sp,sp,-48
    8000572c:	f406                	sd	ra,40(sp)
    8000572e:	f022                	sd	s0,32(sp)
    80005730:	ec26                	sd	s1,24(sp)
    80005732:	e84a                	sd	s2,16(sp)
    80005734:	e44e                	sd	s3,8(sp)
    80005736:	e052                	sd	s4,0(sp)
    80005738:	1800                	addi	s0,sp,48
    8000573a:	84aa                	mv	s1,a0
    8000573c:	8a2e                	mv	s4,a1
    8000573e:	0005b023          	sd	zero,0(a1)
    80005742:	00053023          	sd	zero,0(a0)
    80005746:	00000097          	auipc	ra,0x0
    8000574a:	bf8080e7          	jalr	-1032(ra) # 8000533e <filealloc>
    8000574e:	e088                	sd	a0,0(s1)
    80005750:	c551                	beqz	a0,800057dc <pipealloc+0xb2>
    80005752:	00000097          	auipc	ra,0x0
    80005756:	bec080e7          	jalr	-1044(ra) # 8000533e <filealloc>
    8000575a:	00aa3023          	sd	a0,0(s4)
    8000575e:	c92d                	beqz	a0,800057d0 <pipealloc+0xa6>
    80005760:	ffffb097          	auipc	ra,0xffffb
    80005764:	536080e7          	jalr	1334(ra) # 80000c96 <kalloc>
    80005768:	892a                	mv	s2,a0
    8000576a:	c125                	beqz	a0,800057ca <pipealloc+0xa0>
    8000576c:	4985                	li	s3,1
    8000576e:	23352023          	sw	s3,544(a0)
    80005772:	23352223          	sw	s3,548(a0)
    80005776:	20052e23          	sw	zero,540(a0)
    8000577a:	20052c23          	sw	zero,536(a0)
    8000577e:	00004597          	auipc	a1,0x4
    80005782:	da258593          	addi	a1,a1,-606 # 80009520 <states.1850+0x1c0>
    80005786:	ffffb097          	auipc	ra,0xffffb
    8000578a:	5d8080e7          	jalr	1496(ra) # 80000d5e <initlock>
    8000578e:	609c                	ld	a5,0(s1)
    80005790:	0137a023          	sw	s3,0(a5)
    80005794:	609c                	ld	a5,0(s1)
    80005796:	01378423          	sb	s3,8(a5)
    8000579a:	609c                	ld	a5,0(s1)
    8000579c:	000784a3          	sb	zero,9(a5)
    800057a0:	609c                	ld	a5,0(s1)
    800057a2:	0127b823          	sd	s2,16(a5)
    800057a6:	000a3783          	ld	a5,0(s4)
    800057aa:	0137a023          	sw	s3,0(a5)
    800057ae:	000a3783          	ld	a5,0(s4)
    800057b2:	00078423          	sb	zero,8(a5)
    800057b6:	000a3783          	ld	a5,0(s4)
    800057ba:	013784a3          	sb	s3,9(a5)
    800057be:	000a3783          	ld	a5,0(s4)
    800057c2:	0127b823          	sd	s2,16(a5)
    800057c6:	4501                	li	a0,0
    800057c8:	a025                	j	800057f0 <pipealloc+0xc6>
    800057ca:	6088                	ld	a0,0(s1)
    800057cc:	e501                	bnez	a0,800057d4 <pipealloc+0xaa>
    800057ce:	a039                	j	800057dc <pipealloc+0xb2>
    800057d0:	6088                	ld	a0,0(s1)
    800057d2:	c51d                	beqz	a0,80005800 <pipealloc+0xd6>
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	c26080e7          	jalr	-986(ra) # 800053fa <fileclose>
    800057dc:	000a3783          	ld	a5,0(s4)
    800057e0:	557d                	li	a0,-1
    800057e2:	c799                	beqz	a5,800057f0 <pipealloc+0xc6>
    800057e4:	853e                	mv	a0,a5
    800057e6:	00000097          	auipc	ra,0x0
    800057ea:	c14080e7          	jalr	-1004(ra) # 800053fa <fileclose>
    800057ee:	557d                	li	a0,-1
    800057f0:	70a2                	ld	ra,40(sp)
    800057f2:	7402                	ld	s0,32(sp)
    800057f4:	64e2                	ld	s1,24(sp)
    800057f6:	6942                	ld	s2,16(sp)
    800057f8:	69a2                	ld	s3,8(sp)
    800057fa:	6a02                	ld	s4,0(sp)
    800057fc:	6145                	addi	sp,sp,48
    800057fe:	8082                	ret
    80005800:	557d                	li	a0,-1
    80005802:	b7fd                	j	800057f0 <pipealloc+0xc6>

0000000080005804 <pipeclose>:
    80005804:	1101                	addi	sp,sp,-32
    80005806:	ec06                	sd	ra,24(sp)
    80005808:	e822                	sd	s0,16(sp)
    8000580a:	e426                	sd	s1,8(sp)
    8000580c:	e04a                	sd	s2,0(sp)
    8000580e:	1000                	addi	s0,sp,32
    80005810:	84aa                	mv	s1,a0
    80005812:	892e                	mv	s2,a1
    80005814:	ffffb097          	auipc	ra,0xffffb
    80005818:	5da080e7          	jalr	1498(ra) # 80000dee <acquire>
    8000581c:	02090d63          	beqz	s2,80005856 <pipeclose+0x52>
    80005820:	2204a223          	sw	zero,548(s1)
    80005824:	21848513          	addi	a0,s1,536
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	d48080e7          	jalr	-696(ra) # 80002570 <wakeup>
    80005830:	2204b783          	ld	a5,544(s1)
    80005834:	eb95                	bnez	a5,80005868 <pipeclose+0x64>
    80005836:	8526                	mv	a0,s1
    80005838:	ffffb097          	auipc	ra,0xffffb
    8000583c:	66a080e7          	jalr	1642(ra) # 80000ea2 <release>
    80005840:	8526                	mv	a0,s1
    80005842:	ffffb097          	auipc	ra,0xffffb
    80005846:	21e080e7          	jalr	542(ra) # 80000a60 <kfree>
    8000584a:	60e2                	ld	ra,24(sp)
    8000584c:	6442                	ld	s0,16(sp)
    8000584e:	64a2                	ld	s1,8(sp)
    80005850:	6902                	ld	s2,0(sp)
    80005852:	6105                	addi	sp,sp,32
    80005854:	8082                	ret
    80005856:	2204a023          	sw	zero,544(s1)
    8000585a:	21c48513          	addi	a0,s1,540
    8000585e:	ffffd097          	auipc	ra,0xffffd
    80005862:	d12080e7          	jalr	-750(ra) # 80002570 <wakeup>
    80005866:	b7e9                	j	80005830 <pipeclose+0x2c>
    80005868:	8526                	mv	a0,s1
    8000586a:	ffffb097          	auipc	ra,0xffffb
    8000586e:	638080e7          	jalr	1592(ra) # 80000ea2 <release>
    80005872:	bfe1                	j	8000584a <pipeclose+0x46>

0000000080005874 <pipewrite>:
    80005874:	7159                	addi	sp,sp,-112
    80005876:	f486                	sd	ra,104(sp)
    80005878:	f0a2                	sd	s0,96(sp)
    8000587a:	eca6                	sd	s1,88(sp)
    8000587c:	e8ca                	sd	s2,80(sp)
    8000587e:	e4ce                	sd	s3,72(sp)
    80005880:	e0d2                	sd	s4,64(sp)
    80005882:	fc56                	sd	s5,56(sp)
    80005884:	f85a                	sd	s6,48(sp)
    80005886:	f45e                	sd	s7,40(sp)
    80005888:	f062                	sd	s8,32(sp)
    8000588a:	ec66                	sd	s9,24(sp)
    8000588c:	1880                	addi	s0,sp,112
    8000588e:	84aa                	mv	s1,a0
    80005890:	8aae                	mv	s5,a1
    80005892:	8a32                	mv	s4,a2
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	584080e7          	jalr	1412(ra) # 80001e18 <myproc>
    8000589c:	89aa                	mv	s3,a0
    8000589e:	8526                	mv	a0,s1
    800058a0:	ffffb097          	auipc	ra,0xffffb
    800058a4:	54e080e7          	jalr	1358(ra) # 80000dee <acquire>
    800058a8:	0d405463          	blez	s4,80005970 <pipewrite+0xfc>
    800058ac:	8ba6                	mv	s7,s1
    800058ae:	4901                	li	s2,0
    800058b0:	5b7d                	li	s6,-1
    800058b2:	21848c93          	addi	s9,s1,536
    800058b6:	21c48c13          	addi	s8,s1,540
    800058ba:	a08d                	j	8000591c <pipewrite+0xa8>
    800058bc:	8526                	mv	a0,s1
    800058be:	ffffb097          	auipc	ra,0xffffb
    800058c2:	5e4080e7          	jalr	1508(ra) # 80000ea2 <release>
    800058c6:	597d                	li	s2,-1
    800058c8:	854a                	mv	a0,s2
    800058ca:	70a6                	ld	ra,104(sp)
    800058cc:	7406                	ld	s0,96(sp)
    800058ce:	64e6                	ld	s1,88(sp)
    800058d0:	6946                	ld	s2,80(sp)
    800058d2:	69a6                	ld	s3,72(sp)
    800058d4:	6a06                	ld	s4,64(sp)
    800058d6:	7ae2                	ld	s5,56(sp)
    800058d8:	7b42                	ld	s6,48(sp)
    800058da:	7ba2                	ld	s7,40(sp)
    800058dc:	7c02                	ld	s8,32(sp)
    800058de:	6ce2                	ld	s9,24(sp)
    800058e0:	6165                	addi	sp,sp,112
    800058e2:	8082                	ret
    800058e4:	8566                	mv	a0,s9
    800058e6:	ffffd097          	auipc	ra,0xffffd
    800058ea:	c8a080e7          	jalr	-886(ra) # 80002570 <wakeup>
    800058ee:	85de                	mv	a1,s7
    800058f0:	8562                	mv	a0,s8
    800058f2:	ffffd097          	auipc	ra,0xffffd
    800058f6:	c08080e7          	jalr	-1016(ra) # 800024fa <sleep>
    800058fa:	a839                	j	80005918 <pipewrite+0xa4>
    800058fc:	21c4a783          	lw	a5,540(s1)
    80005900:	0017871b          	addiw	a4,a5,1
    80005904:	20e4ae23          	sw	a4,540(s1)
    80005908:	1ff7f793          	andi	a5,a5,511
    8000590c:	97a6                	add	a5,a5,s1
    8000590e:	f9f44703          	lbu	a4,-97(s0)
    80005912:	00e78c23          	sb	a4,24(a5)
    80005916:	2905                	addiw	s2,s2,1
    80005918:	05495063          	bge	s2,s4,80005958 <pipewrite+0xe4>
    8000591c:	2204a783          	lw	a5,544(s1)
    80005920:	dfd1                	beqz	a5,800058bc <pipewrite+0x48>
    80005922:	854e                	mv	a0,s3
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	eb2080e7          	jalr	-334(ra) # 800027d6 <killed>
    8000592c:	f941                	bnez	a0,800058bc <pipewrite+0x48>
    8000592e:	2184a783          	lw	a5,536(s1)
    80005932:	21c4a703          	lw	a4,540(s1)
    80005936:	2007879b          	addiw	a5,a5,512
    8000593a:	faf705e3          	beq	a4,a5,800058e4 <pipewrite+0x70>
    8000593e:	4685                	li	a3,1
    80005940:	01590633          	add	a2,s2,s5
    80005944:	f9f40593          	addi	a1,s0,-97
    80005948:	0509b503          	ld	a0,80(s3)
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	008080e7          	jalr	8(ra) # 80001954 <copyin>
    80005954:	fb6514e3          	bne	a0,s6,800058fc <pipewrite+0x88>
    80005958:	21848513          	addi	a0,s1,536
    8000595c:	ffffd097          	auipc	ra,0xffffd
    80005960:	c14080e7          	jalr	-1004(ra) # 80002570 <wakeup>
    80005964:	8526                	mv	a0,s1
    80005966:	ffffb097          	auipc	ra,0xffffb
    8000596a:	53c080e7          	jalr	1340(ra) # 80000ea2 <release>
    8000596e:	bfa9                	j	800058c8 <pipewrite+0x54>
    80005970:	4901                	li	s2,0
    80005972:	b7dd                	j	80005958 <pipewrite+0xe4>

0000000080005974 <piperead>:
    80005974:	715d                	addi	sp,sp,-80
    80005976:	e486                	sd	ra,72(sp)
    80005978:	e0a2                	sd	s0,64(sp)
    8000597a:	fc26                	sd	s1,56(sp)
    8000597c:	f84a                	sd	s2,48(sp)
    8000597e:	f44e                	sd	s3,40(sp)
    80005980:	f052                	sd	s4,32(sp)
    80005982:	ec56                	sd	s5,24(sp)
    80005984:	e85a                	sd	s6,16(sp)
    80005986:	0880                	addi	s0,sp,80
    80005988:	84aa                	mv	s1,a0
    8000598a:	892e                	mv	s2,a1
    8000598c:	8ab2                	mv	s5,a2
    8000598e:	ffffc097          	auipc	ra,0xffffc
    80005992:	48a080e7          	jalr	1162(ra) # 80001e18 <myproc>
    80005996:	8a2a                	mv	s4,a0
    80005998:	8b26                	mv	s6,s1
    8000599a:	8526                	mv	a0,s1
    8000599c:	ffffb097          	auipc	ra,0xffffb
    800059a0:	452080e7          	jalr	1106(ra) # 80000dee <acquire>
    800059a4:	2184a703          	lw	a4,536(s1)
    800059a8:	21c4a783          	lw	a5,540(s1)
    800059ac:	21848993          	addi	s3,s1,536
    800059b0:	02f71763          	bne	a4,a5,800059de <piperead+0x6a>
    800059b4:	2244a783          	lw	a5,548(s1)
    800059b8:	c39d                	beqz	a5,800059de <piperead+0x6a>
    800059ba:	8552                	mv	a0,s4
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	e1a080e7          	jalr	-486(ra) # 800027d6 <killed>
    800059c4:	e941                	bnez	a0,80005a54 <piperead+0xe0>
    800059c6:	85da                	mv	a1,s6
    800059c8:	854e                	mv	a0,s3
    800059ca:	ffffd097          	auipc	ra,0xffffd
    800059ce:	b30080e7          	jalr	-1232(ra) # 800024fa <sleep>
    800059d2:	2184a703          	lw	a4,536(s1)
    800059d6:	21c4a783          	lw	a5,540(s1)
    800059da:	fcf70de3          	beq	a4,a5,800059b4 <piperead+0x40>
    800059de:	09505263          	blez	s5,80005a62 <piperead+0xee>
    800059e2:	4981                	li	s3,0
    800059e4:	5b7d                	li	s6,-1
    800059e6:	2184a783          	lw	a5,536(s1)
    800059ea:	21c4a703          	lw	a4,540(s1)
    800059ee:	02f70d63          	beq	a4,a5,80005a28 <piperead+0xb4>
    800059f2:	0017871b          	addiw	a4,a5,1
    800059f6:	20e4ac23          	sw	a4,536(s1)
    800059fa:	1ff7f793          	andi	a5,a5,511
    800059fe:	97a6                	add	a5,a5,s1
    80005a00:	0187c783          	lbu	a5,24(a5)
    80005a04:	faf40fa3          	sb	a5,-65(s0)
    80005a08:	4685                	li	a3,1
    80005a0a:	fbf40613          	addi	a2,s0,-65
    80005a0e:	85ca                	mv	a1,s2
    80005a10:	050a3503          	ld	a0,80(s4)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	e7c080e7          	jalr	-388(ra) # 80001890 <copyout>
    80005a1c:	01650663          	beq	a0,s6,80005a28 <piperead+0xb4>
    80005a20:	2985                	addiw	s3,s3,1
    80005a22:	0905                	addi	s2,s2,1
    80005a24:	fd3a91e3          	bne	s5,s3,800059e6 <piperead+0x72>
    80005a28:	21c48513          	addi	a0,s1,540
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	b44080e7          	jalr	-1212(ra) # 80002570 <wakeup>
    80005a34:	8526                	mv	a0,s1
    80005a36:	ffffb097          	auipc	ra,0xffffb
    80005a3a:	46c080e7          	jalr	1132(ra) # 80000ea2 <release>
    80005a3e:	854e                	mv	a0,s3
    80005a40:	60a6                	ld	ra,72(sp)
    80005a42:	6406                	ld	s0,64(sp)
    80005a44:	74e2                	ld	s1,56(sp)
    80005a46:	7942                	ld	s2,48(sp)
    80005a48:	79a2                	ld	s3,40(sp)
    80005a4a:	7a02                	ld	s4,32(sp)
    80005a4c:	6ae2                	ld	s5,24(sp)
    80005a4e:	6b42                	ld	s6,16(sp)
    80005a50:	6161                	addi	sp,sp,80
    80005a52:	8082                	ret
    80005a54:	8526                	mv	a0,s1
    80005a56:	ffffb097          	auipc	ra,0xffffb
    80005a5a:	44c080e7          	jalr	1100(ra) # 80000ea2 <release>
    80005a5e:	59fd                	li	s3,-1
    80005a60:	bff9                	j	80005a3e <piperead+0xca>
    80005a62:	4981                	li	s3,0
    80005a64:	b7d1                	j	80005a28 <piperead+0xb4>

0000000080005a66 <flags2perm>:
    80005a66:	1141                	addi	sp,sp,-16
    80005a68:	e422                	sd	s0,8(sp)
    80005a6a:	0800                	addi	s0,sp,16
    80005a6c:	87aa                	mv	a5,a0
    80005a6e:	8905                	andi	a0,a0,1
    80005a70:	c111                	beqz	a0,80005a74 <flags2perm+0xe>
    80005a72:	4521                	li	a0,8
    80005a74:	8b89                	andi	a5,a5,2
    80005a76:	c399                	beqz	a5,80005a7c <flags2perm+0x16>
    80005a78:	00456513          	ori	a0,a0,4
    80005a7c:	6422                	ld	s0,8(sp)
    80005a7e:	0141                	addi	sp,sp,16
    80005a80:	8082                	ret

0000000080005a82 <exec>:
    80005a82:	df010113          	addi	sp,sp,-528
    80005a86:	20113423          	sd	ra,520(sp)
    80005a8a:	20813023          	sd	s0,512(sp)
    80005a8e:	ffa6                	sd	s1,504(sp)
    80005a90:	fbca                	sd	s2,496(sp)
    80005a92:	f7ce                	sd	s3,488(sp)
    80005a94:	f3d2                	sd	s4,480(sp)
    80005a96:	efd6                	sd	s5,472(sp)
    80005a98:	ebda                	sd	s6,464(sp)
    80005a9a:	e7de                	sd	s7,456(sp)
    80005a9c:	e3e2                	sd	s8,448(sp)
    80005a9e:	ff66                	sd	s9,440(sp)
    80005aa0:	fb6a                	sd	s10,432(sp)
    80005aa2:	f76e                	sd	s11,424(sp)
    80005aa4:	0c00                	addi	s0,sp,528
    80005aa6:	84aa                	mv	s1,a0
    80005aa8:	dea43c23          	sd	a0,-520(s0)
    80005aac:	e0b43023          	sd	a1,-512(s0)
    80005ab0:	ffffc097          	auipc	ra,0xffffc
    80005ab4:	368080e7          	jalr	872(ra) # 80001e18 <myproc>
    80005ab8:	892a                	mv	s2,a0
    80005aba:	fffff097          	auipc	ra,0xfffff
    80005abe:	474080e7          	jalr	1140(ra) # 80004f2e <begin_op>
    80005ac2:	8526                	mv	a0,s1
    80005ac4:	fffff097          	auipc	ra,0xfffff
    80005ac8:	24e080e7          	jalr	590(ra) # 80004d12 <namei>
    80005acc:	c92d                	beqz	a0,80005b3e <exec+0xbc>
    80005ace:	84aa                	mv	s1,a0
    80005ad0:	fffff097          	auipc	ra,0xfffff
    80005ad4:	a9c080e7          	jalr	-1380(ra) # 8000456c <ilock>
    80005ad8:	04000713          	li	a4,64
    80005adc:	4681                	li	a3,0
    80005ade:	e5040613          	addi	a2,s0,-432
    80005ae2:	4581                	li	a1,0
    80005ae4:	8526                	mv	a0,s1
    80005ae6:	fffff097          	auipc	ra,0xfffff
    80005aea:	d3a080e7          	jalr	-710(ra) # 80004820 <readi>
    80005aee:	04000793          	li	a5,64
    80005af2:	00f51a63          	bne	a0,a5,80005b06 <exec+0x84>
    80005af6:	e5042703          	lw	a4,-432(s0)
    80005afa:	464c47b7          	lui	a5,0x464c4
    80005afe:	57f78793          	addi	a5,a5,1407 # 464c457f <_entry-0x39b3ba81>
    80005b02:	04f70463          	beq	a4,a5,80005b4a <exec+0xc8>
    80005b06:	8526                	mv	a0,s1
    80005b08:	fffff097          	auipc	ra,0xfffff
    80005b0c:	cc6080e7          	jalr	-826(ra) # 800047ce <iunlockput>
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	49e080e7          	jalr	1182(ra) # 80004fae <end_op>
    80005b18:	557d                	li	a0,-1
    80005b1a:	20813083          	ld	ra,520(sp)
    80005b1e:	20013403          	ld	s0,512(sp)
    80005b22:	74fe                	ld	s1,504(sp)
    80005b24:	795e                	ld	s2,496(sp)
    80005b26:	79be                	ld	s3,488(sp)
    80005b28:	7a1e                	ld	s4,480(sp)
    80005b2a:	6afe                	ld	s5,472(sp)
    80005b2c:	6b5e                	ld	s6,464(sp)
    80005b2e:	6bbe                	ld	s7,456(sp)
    80005b30:	6c1e                	ld	s8,448(sp)
    80005b32:	7cfa                	ld	s9,440(sp)
    80005b34:	7d5a                	ld	s10,432(sp)
    80005b36:	7dba                	ld	s11,424(sp)
    80005b38:	21010113          	addi	sp,sp,528
    80005b3c:	8082                	ret
    80005b3e:	fffff097          	auipc	ra,0xfffff
    80005b42:	470080e7          	jalr	1136(ra) # 80004fae <end_op>
    80005b46:	557d                	li	a0,-1
    80005b48:	bfc9                	j	80005b1a <exec+0x98>
    80005b4a:	854a                	mv	a0,s2
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	390080e7          	jalr	912(ra) # 80001edc <proc_pagetable>
    80005b54:	8baa                	mv	s7,a0
    80005b56:	d945                	beqz	a0,80005b06 <exec+0x84>
    80005b58:	e7042983          	lw	s3,-400(s0)
    80005b5c:	e8845783          	lhu	a5,-376(s0)
    80005b60:	c7ad                	beqz	a5,80005bca <exec+0x148>
    80005b62:	4a01                	li	s4,0
    80005b64:	4b01                	li	s6,0
    80005b66:	6c85                	lui	s9,0x1
    80005b68:	fffc8793          	addi	a5,s9,-1 # fff <_entry-0x7ffff001>
    80005b6c:	def43823          	sd	a5,-528(s0)
    80005b70:	ac0d                	j	80005da2 <exec+0x320>
    80005b72:	00004517          	auipc	a0,0x4
    80005b76:	e9650513          	addi	a0,a0,-362 # 80009a08 <syscall_names+0x2a8>
    80005b7a:	ffffb097          	auipc	ra,0xffffb
    80005b7e:	9ca080e7          	jalr	-1590(ra) # 80000544 <panic>
    80005b82:	8756                	mv	a4,s5
    80005b84:	012d86bb          	addw	a3,s11,s2
    80005b88:	4581                	li	a1,0
    80005b8a:	8526                	mv	a0,s1
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	c94080e7          	jalr	-876(ra) # 80004820 <readi>
    80005b94:	2501                	sext.w	a0,a0
    80005b96:	1aaa9a63          	bne	s5,a0,80005d4a <exec+0x2c8>
    80005b9a:	6785                	lui	a5,0x1
    80005b9c:	0127893b          	addw	s2,a5,s2
    80005ba0:	77fd                	lui	a5,0xfffff
    80005ba2:	01478a3b          	addw	s4,a5,s4
    80005ba6:	1f897563          	bgeu	s2,s8,80005d90 <exec+0x30e>
    80005baa:	02091593          	slli	a1,s2,0x20
    80005bae:	9181                	srli	a1,a1,0x20
    80005bb0:	95ea                	add	a1,a1,s10
    80005bb2:	855e                	mv	a0,s7
    80005bb4:	ffffb097          	auipc	ra,0xffffb
    80005bb8:	6c8080e7          	jalr	1736(ra) # 8000127c <walkaddr>
    80005bbc:	862a                	mv	a2,a0
    80005bbe:	d955                	beqz	a0,80005b72 <exec+0xf0>
    80005bc0:	8ae6                	mv	s5,s9
    80005bc2:	fd9a70e3          	bgeu	s4,s9,80005b82 <exec+0x100>
    80005bc6:	8ad2                	mv	s5,s4
    80005bc8:	bf6d                	j	80005b82 <exec+0x100>
    80005bca:	4a01                	li	s4,0
    80005bcc:	8526                	mv	a0,s1
    80005bce:	fffff097          	auipc	ra,0xfffff
    80005bd2:	c00080e7          	jalr	-1024(ra) # 800047ce <iunlockput>
    80005bd6:	fffff097          	auipc	ra,0xfffff
    80005bda:	3d8080e7          	jalr	984(ra) # 80004fae <end_op>
    80005bde:	ffffc097          	auipc	ra,0xffffc
    80005be2:	23a080e7          	jalr	570(ra) # 80001e18 <myproc>
    80005be6:	8aaa                	mv	s5,a0
    80005be8:	04853d03          	ld	s10,72(a0)
    80005bec:	6785                	lui	a5,0x1
    80005bee:	17fd                	addi	a5,a5,-1
    80005bf0:	9a3e                	add	s4,s4,a5
    80005bf2:	757d                	lui	a0,0xfffff
    80005bf4:	00aa77b3          	and	a5,s4,a0
    80005bf8:	e0f43423          	sd	a5,-504(s0)
    80005bfc:	4691                	li	a3,4
    80005bfe:	6609                	lui	a2,0x2
    80005c00:	963e                	add	a2,a2,a5
    80005c02:	85be                	mv	a1,a5
    80005c04:	855e                	mv	a0,s7
    80005c06:	ffffc097          	auipc	ra,0xffffc
    80005c0a:	a2a080e7          	jalr	-1494(ra) # 80001630 <uvmalloc>
    80005c0e:	8b2a                	mv	s6,a0
    80005c10:	4481                	li	s1,0
    80005c12:	12050c63          	beqz	a0,80005d4a <exec+0x2c8>
    80005c16:	75f9                	lui	a1,0xffffe
    80005c18:	95aa                	add	a1,a1,a0
    80005c1a:	855e                	mv	a0,s7
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	c42080e7          	jalr	-958(ra) # 8000185e <uvmclear>
    80005c24:	7c7d                	lui	s8,0xfffff
    80005c26:	9c5a                	add	s8,s8,s6
    80005c28:	e0043783          	ld	a5,-512(s0)
    80005c2c:	6388                	ld	a0,0(a5)
    80005c2e:	c535                	beqz	a0,80005c9a <exec+0x218>
    80005c30:	e9040993          	addi	s3,s0,-368
    80005c34:	f9040c93          	addi	s9,s0,-112
    80005c38:	895a                	mv	s2,s6
    80005c3a:	ffffb097          	auipc	ra,0xffffb
    80005c3e:	434080e7          	jalr	1076(ra) # 8000106e <strlen>
    80005c42:	2505                	addiw	a0,a0,1
    80005c44:	40a90933          	sub	s2,s2,a0
    80005c48:	ff097913          	andi	s2,s2,-16
    80005c4c:	13896663          	bltu	s2,s8,80005d78 <exec+0x2f6>
    80005c50:	e0043d83          	ld	s11,-512(s0)
    80005c54:	000dba03          	ld	s4,0(s11)
    80005c58:	8552                	mv	a0,s4
    80005c5a:	ffffb097          	auipc	ra,0xffffb
    80005c5e:	414080e7          	jalr	1044(ra) # 8000106e <strlen>
    80005c62:	0015069b          	addiw	a3,a0,1
    80005c66:	8652                	mv	a2,s4
    80005c68:	85ca                	mv	a1,s2
    80005c6a:	855e                	mv	a0,s7
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	c24080e7          	jalr	-988(ra) # 80001890 <copyout>
    80005c74:	10054663          	bltz	a0,80005d80 <exec+0x2fe>
    80005c78:	0129b023          	sd	s2,0(s3)
    80005c7c:	0485                	addi	s1,s1,1
    80005c7e:	008d8793          	addi	a5,s11,8
    80005c82:	e0f43023          	sd	a5,-512(s0)
    80005c86:	008db503          	ld	a0,8(s11)
    80005c8a:	c911                	beqz	a0,80005c9e <exec+0x21c>
    80005c8c:	09a1                	addi	s3,s3,8
    80005c8e:	fb3c96e3          	bne	s9,s3,80005c3a <exec+0x1b8>
    80005c92:	e1643423          	sd	s6,-504(s0)
    80005c96:	4481                	li	s1,0
    80005c98:	a84d                	j	80005d4a <exec+0x2c8>
    80005c9a:	895a                	mv	s2,s6
    80005c9c:	4481                	li	s1,0
    80005c9e:	00349793          	slli	a5,s1,0x3
    80005ca2:	f9040713          	addi	a4,s0,-112
    80005ca6:	97ba                	add	a5,a5,a4
    80005ca8:	f007b023          	sd	zero,-256(a5) # f00 <_entry-0x7ffff100>
    80005cac:	00148693          	addi	a3,s1,1
    80005cb0:	068e                	slli	a3,a3,0x3
    80005cb2:	40d90933          	sub	s2,s2,a3
    80005cb6:	ff097913          	andi	s2,s2,-16
    80005cba:	01897663          	bgeu	s2,s8,80005cc6 <exec+0x244>
    80005cbe:	e1643423          	sd	s6,-504(s0)
    80005cc2:	4481                	li	s1,0
    80005cc4:	a059                	j	80005d4a <exec+0x2c8>
    80005cc6:	e9040613          	addi	a2,s0,-368
    80005cca:	85ca                	mv	a1,s2
    80005ccc:	855e                	mv	a0,s7
    80005cce:	ffffc097          	auipc	ra,0xffffc
    80005cd2:	bc2080e7          	jalr	-1086(ra) # 80001890 <copyout>
    80005cd6:	0a054963          	bltz	a0,80005d88 <exec+0x306>
    80005cda:	058ab783          	ld	a5,88(s5)
    80005cde:	0727bc23          	sd	s2,120(a5)
    80005ce2:	df843783          	ld	a5,-520(s0)
    80005ce6:	0007c703          	lbu	a4,0(a5)
    80005cea:	cf11                	beqz	a4,80005d06 <exec+0x284>
    80005cec:	0785                	addi	a5,a5,1
    80005cee:	02f00693          	li	a3,47
    80005cf2:	a039                	j	80005d00 <exec+0x27e>
    80005cf4:	def43c23          	sd	a5,-520(s0)
    80005cf8:	0785                	addi	a5,a5,1
    80005cfa:	fff7c703          	lbu	a4,-1(a5)
    80005cfe:	c701                	beqz	a4,80005d06 <exec+0x284>
    80005d00:	fed71ce3          	bne	a4,a3,80005cf8 <exec+0x276>
    80005d04:	bfc5                	j	80005cf4 <exec+0x272>
    80005d06:	4641                	li	a2,16
    80005d08:	df843583          	ld	a1,-520(s0)
    80005d0c:	158a8513          	addi	a0,s5,344
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	32c080e7          	jalr	812(ra) # 8000103c <safestrcpy>
    80005d18:	050ab503          	ld	a0,80(s5)
    80005d1c:	057ab823          	sd	s7,80(s5)
    80005d20:	056ab423          	sd	s6,72(s5)
    80005d24:	058ab783          	ld	a5,88(s5)
    80005d28:	e6843703          	ld	a4,-408(s0)
    80005d2c:	ef98                	sd	a4,24(a5)
    80005d2e:	058ab783          	ld	a5,88(s5)
    80005d32:	0327b823          	sd	s2,48(a5)
    80005d36:	85ea                	mv	a1,s10
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	240080e7          	jalr	576(ra) # 80001f78 <proc_freepagetable>
    80005d40:	0004851b          	sext.w	a0,s1
    80005d44:	bbd9                	j	80005b1a <exec+0x98>
    80005d46:	e1443423          	sd	s4,-504(s0)
    80005d4a:	e0843583          	ld	a1,-504(s0)
    80005d4e:	855e                	mv	a0,s7
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	228080e7          	jalr	552(ra) # 80001f78 <proc_freepagetable>
    80005d58:	da0497e3          	bnez	s1,80005b06 <exec+0x84>
    80005d5c:	557d                	li	a0,-1
    80005d5e:	bb75                	j	80005b1a <exec+0x98>
    80005d60:	e1443423          	sd	s4,-504(s0)
    80005d64:	b7dd                	j	80005d4a <exec+0x2c8>
    80005d66:	e1443423          	sd	s4,-504(s0)
    80005d6a:	b7c5                	j	80005d4a <exec+0x2c8>
    80005d6c:	e1443423          	sd	s4,-504(s0)
    80005d70:	bfe9                	j	80005d4a <exec+0x2c8>
    80005d72:	e1443423          	sd	s4,-504(s0)
    80005d76:	bfd1                	j	80005d4a <exec+0x2c8>
    80005d78:	e1643423          	sd	s6,-504(s0)
    80005d7c:	4481                	li	s1,0
    80005d7e:	b7f1                	j	80005d4a <exec+0x2c8>
    80005d80:	e1643423          	sd	s6,-504(s0)
    80005d84:	4481                	li	s1,0
    80005d86:	b7d1                	j	80005d4a <exec+0x2c8>
    80005d88:	e1643423          	sd	s6,-504(s0)
    80005d8c:	4481                	li	s1,0
    80005d8e:	bf75                	j	80005d4a <exec+0x2c8>
    80005d90:	e0843a03          	ld	s4,-504(s0)
    80005d94:	2b05                	addiw	s6,s6,1
    80005d96:	0389899b          	addiw	s3,s3,56
    80005d9a:	e8845783          	lhu	a5,-376(s0)
    80005d9e:	e2fb57e3          	bge	s6,a5,80005bcc <exec+0x14a>
    80005da2:	2981                	sext.w	s3,s3
    80005da4:	03800713          	li	a4,56
    80005da8:	86ce                	mv	a3,s3
    80005daa:	e1840613          	addi	a2,s0,-488
    80005dae:	4581                	li	a1,0
    80005db0:	8526                	mv	a0,s1
    80005db2:	fffff097          	auipc	ra,0xfffff
    80005db6:	a6e080e7          	jalr	-1426(ra) # 80004820 <readi>
    80005dba:	03800793          	li	a5,56
    80005dbe:	f8f514e3          	bne	a0,a5,80005d46 <exec+0x2c4>
    80005dc2:	e1842783          	lw	a5,-488(s0)
    80005dc6:	4705                	li	a4,1
    80005dc8:	fce796e3          	bne	a5,a4,80005d94 <exec+0x312>
    80005dcc:	e4043903          	ld	s2,-448(s0)
    80005dd0:	e3843783          	ld	a5,-456(s0)
    80005dd4:	f8f966e3          	bltu	s2,a5,80005d60 <exec+0x2de>
    80005dd8:	e2843783          	ld	a5,-472(s0)
    80005ddc:	993e                	add	s2,s2,a5
    80005dde:	f8f964e3          	bltu	s2,a5,80005d66 <exec+0x2e4>
    80005de2:	df043703          	ld	a4,-528(s0)
    80005de6:	8ff9                	and	a5,a5,a4
    80005de8:	f3d1                	bnez	a5,80005d6c <exec+0x2ea>
    80005dea:	e1c42503          	lw	a0,-484(s0)
    80005dee:	00000097          	auipc	ra,0x0
    80005df2:	c78080e7          	jalr	-904(ra) # 80005a66 <flags2perm>
    80005df6:	86aa                	mv	a3,a0
    80005df8:	864a                	mv	a2,s2
    80005dfa:	85d2                	mv	a1,s4
    80005dfc:	855e                	mv	a0,s7
    80005dfe:	ffffc097          	auipc	ra,0xffffc
    80005e02:	832080e7          	jalr	-1998(ra) # 80001630 <uvmalloc>
    80005e06:	e0a43423          	sd	a0,-504(s0)
    80005e0a:	d525                	beqz	a0,80005d72 <exec+0x2f0>
    80005e0c:	e2843d03          	ld	s10,-472(s0)
    80005e10:	e2042d83          	lw	s11,-480(s0)
    80005e14:	e3842c03          	lw	s8,-456(s0)
    80005e18:	f60c0ce3          	beqz	s8,80005d90 <exec+0x30e>
    80005e1c:	8a62                	mv	s4,s8
    80005e1e:	4901                	li	s2,0
    80005e20:	b369                	j	80005baa <exec+0x128>

0000000080005e22 <argfd>:
    80005e22:	7179                	addi	sp,sp,-48
    80005e24:	f406                	sd	ra,40(sp)
    80005e26:	f022                	sd	s0,32(sp)
    80005e28:	ec26                	sd	s1,24(sp)
    80005e2a:	e84a                	sd	s2,16(sp)
    80005e2c:	1800                	addi	s0,sp,48
    80005e2e:	892e                	mv	s2,a1
    80005e30:	84b2                	mv	s1,a2
    80005e32:	fdc40593          	addi	a1,s0,-36
    80005e36:	ffffe097          	auipc	ra,0xffffe
    80005e3a:	8dc080e7          	jalr	-1828(ra) # 80003712 <argint>
    80005e3e:	fdc42703          	lw	a4,-36(s0)
    80005e42:	47bd                	li	a5,15
    80005e44:	02e7eb63          	bltu	a5,a4,80005e7a <argfd+0x58>
    80005e48:	ffffc097          	auipc	ra,0xffffc
    80005e4c:	fd0080e7          	jalr	-48(ra) # 80001e18 <myproc>
    80005e50:	fdc42703          	lw	a4,-36(s0)
    80005e54:	01a70793          	addi	a5,a4,26
    80005e58:	078e                	slli	a5,a5,0x3
    80005e5a:	953e                	add	a0,a0,a5
    80005e5c:	611c                	ld	a5,0(a0)
    80005e5e:	c385                	beqz	a5,80005e7e <argfd+0x5c>
    80005e60:	00090463          	beqz	s2,80005e68 <argfd+0x46>
    80005e64:	00e92023          	sw	a4,0(s2)
    80005e68:	4501                	li	a0,0
    80005e6a:	c091                	beqz	s1,80005e6e <argfd+0x4c>
    80005e6c:	e09c                	sd	a5,0(s1)
    80005e6e:	70a2                	ld	ra,40(sp)
    80005e70:	7402                	ld	s0,32(sp)
    80005e72:	64e2                	ld	s1,24(sp)
    80005e74:	6942                	ld	s2,16(sp)
    80005e76:	6145                	addi	sp,sp,48
    80005e78:	8082                	ret
    80005e7a:	557d                	li	a0,-1
    80005e7c:	bfcd                	j	80005e6e <argfd+0x4c>
    80005e7e:	557d                	li	a0,-1
    80005e80:	b7fd                	j	80005e6e <argfd+0x4c>

0000000080005e82 <fdalloc>:
    80005e82:	1101                	addi	sp,sp,-32
    80005e84:	ec06                	sd	ra,24(sp)
    80005e86:	e822                	sd	s0,16(sp)
    80005e88:	e426                	sd	s1,8(sp)
    80005e8a:	1000                	addi	s0,sp,32
    80005e8c:	84aa                	mv	s1,a0
    80005e8e:	ffffc097          	auipc	ra,0xffffc
    80005e92:	f8a080e7          	jalr	-118(ra) # 80001e18 <myproc>
    80005e96:	862a                	mv	a2,a0
    80005e98:	0d050793          	addi	a5,a0,208 # fffffffffffff0d0 <end+0xffffffff7fdb8040>
    80005e9c:	4501                	li	a0,0
    80005e9e:	46c1                	li	a3,16
    80005ea0:	6398                	ld	a4,0(a5)
    80005ea2:	cb19                	beqz	a4,80005eb8 <fdalloc+0x36>
    80005ea4:	2505                	addiw	a0,a0,1
    80005ea6:	07a1                	addi	a5,a5,8
    80005ea8:	fed51ce3          	bne	a0,a3,80005ea0 <fdalloc+0x1e>
    80005eac:	557d                	li	a0,-1
    80005eae:	60e2                	ld	ra,24(sp)
    80005eb0:	6442                	ld	s0,16(sp)
    80005eb2:	64a2                	ld	s1,8(sp)
    80005eb4:	6105                	addi	sp,sp,32
    80005eb6:	8082                	ret
    80005eb8:	01a50793          	addi	a5,a0,26
    80005ebc:	078e                	slli	a5,a5,0x3
    80005ebe:	963e                	add	a2,a2,a5
    80005ec0:	e204                	sd	s1,0(a2)
    80005ec2:	b7f5                	j	80005eae <fdalloc+0x2c>

0000000080005ec4 <create>:
    80005ec4:	715d                	addi	sp,sp,-80
    80005ec6:	e486                	sd	ra,72(sp)
    80005ec8:	e0a2                	sd	s0,64(sp)
    80005eca:	fc26                	sd	s1,56(sp)
    80005ecc:	f84a                	sd	s2,48(sp)
    80005ece:	f44e                	sd	s3,40(sp)
    80005ed0:	f052                	sd	s4,32(sp)
    80005ed2:	ec56                	sd	s5,24(sp)
    80005ed4:	e85a                	sd	s6,16(sp)
    80005ed6:	0880                	addi	s0,sp,80
    80005ed8:	8b2e                	mv	s6,a1
    80005eda:	89b2                	mv	s3,a2
    80005edc:	8936                	mv	s2,a3
    80005ede:	fb040593          	addi	a1,s0,-80
    80005ee2:	fffff097          	auipc	ra,0xfffff
    80005ee6:	e4e080e7          	jalr	-434(ra) # 80004d30 <nameiparent>
    80005eea:	84aa                	mv	s1,a0
    80005eec:	16050063          	beqz	a0,8000604c <create+0x188>
    80005ef0:	ffffe097          	auipc	ra,0xffffe
    80005ef4:	67c080e7          	jalr	1660(ra) # 8000456c <ilock>
    80005ef8:	4601                	li	a2,0
    80005efa:	fb040593          	addi	a1,s0,-80
    80005efe:	8526                	mv	a0,s1
    80005f00:	fffff097          	auipc	ra,0xfffff
    80005f04:	b50080e7          	jalr	-1200(ra) # 80004a50 <dirlookup>
    80005f08:	8aaa                	mv	s5,a0
    80005f0a:	c931                	beqz	a0,80005f5e <create+0x9a>
    80005f0c:	8526                	mv	a0,s1
    80005f0e:	fffff097          	auipc	ra,0xfffff
    80005f12:	8c0080e7          	jalr	-1856(ra) # 800047ce <iunlockput>
    80005f16:	8556                	mv	a0,s5
    80005f18:	ffffe097          	auipc	ra,0xffffe
    80005f1c:	654080e7          	jalr	1620(ra) # 8000456c <ilock>
    80005f20:	000b059b          	sext.w	a1,s6
    80005f24:	4789                	li	a5,2
    80005f26:	02f59563          	bne	a1,a5,80005f50 <create+0x8c>
    80005f2a:	044ad783          	lhu	a5,68(s5)
    80005f2e:	37f9                	addiw	a5,a5,-2
    80005f30:	17c2                	slli	a5,a5,0x30
    80005f32:	93c1                	srli	a5,a5,0x30
    80005f34:	4705                	li	a4,1
    80005f36:	00f76d63          	bltu	a4,a5,80005f50 <create+0x8c>
    80005f3a:	8556                	mv	a0,s5
    80005f3c:	60a6                	ld	ra,72(sp)
    80005f3e:	6406                	ld	s0,64(sp)
    80005f40:	74e2                	ld	s1,56(sp)
    80005f42:	7942                	ld	s2,48(sp)
    80005f44:	79a2                	ld	s3,40(sp)
    80005f46:	7a02                	ld	s4,32(sp)
    80005f48:	6ae2                	ld	s5,24(sp)
    80005f4a:	6b42                	ld	s6,16(sp)
    80005f4c:	6161                	addi	sp,sp,80
    80005f4e:	8082                	ret
    80005f50:	8556                	mv	a0,s5
    80005f52:	fffff097          	auipc	ra,0xfffff
    80005f56:	87c080e7          	jalr	-1924(ra) # 800047ce <iunlockput>
    80005f5a:	4a81                	li	s5,0
    80005f5c:	bff9                	j	80005f3a <create+0x76>
    80005f5e:	85da                	mv	a1,s6
    80005f60:	4088                	lw	a0,0(s1)
    80005f62:	ffffe097          	auipc	ra,0xffffe
    80005f66:	46e080e7          	jalr	1134(ra) # 800043d0 <ialloc>
    80005f6a:	8a2a                	mv	s4,a0
    80005f6c:	c921                	beqz	a0,80005fbc <create+0xf8>
    80005f6e:	ffffe097          	auipc	ra,0xffffe
    80005f72:	5fe080e7          	jalr	1534(ra) # 8000456c <ilock>
    80005f76:	053a1323          	sh	s3,70(s4)
    80005f7a:	052a1423          	sh	s2,72(s4)
    80005f7e:	4785                	li	a5,1
    80005f80:	04fa1523          	sh	a5,74(s4)
    80005f84:	8552                	mv	a0,s4
    80005f86:	ffffe097          	auipc	ra,0xffffe
    80005f8a:	51c080e7          	jalr	1308(ra) # 800044a2 <iupdate>
    80005f8e:	000b059b          	sext.w	a1,s6
    80005f92:	4785                	li	a5,1
    80005f94:	02f58b63          	beq	a1,a5,80005fca <create+0x106>
    80005f98:	004a2603          	lw	a2,4(s4)
    80005f9c:	fb040593          	addi	a1,s0,-80
    80005fa0:	8526                	mv	a0,s1
    80005fa2:	fffff097          	auipc	ra,0xfffff
    80005fa6:	cbe080e7          	jalr	-834(ra) # 80004c60 <dirlink>
    80005faa:	06054f63          	bltz	a0,80006028 <create+0x164>
    80005fae:	8526                	mv	a0,s1
    80005fb0:	fffff097          	auipc	ra,0xfffff
    80005fb4:	81e080e7          	jalr	-2018(ra) # 800047ce <iunlockput>
    80005fb8:	8ad2                	mv	s5,s4
    80005fba:	b741                	j	80005f3a <create+0x76>
    80005fbc:	8526                	mv	a0,s1
    80005fbe:	fffff097          	auipc	ra,0xfffff
    80005fc2:	810080e7          	jalr	-2032(ra) # 800047ce <iunlockput>
    80005fc6:	8ad2                	mv	s5,s4
    80005fc8:	bf8d                	j	80005f3a <create+0x76>
    80005fca:	004a2603          	lw	a2,4(s4)
    80005fce:	00004597          	auipc	a1,0x4
    80005fd2:	a5a58593          	addi	a1,a1,-1446 # 80009a28 <syscall_names+0x2c8>
    80005fd6:	8552                	mv	a0,s4
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	c88080e7          	jalr	-888(ra) # 80004c60 <dirlink>
    80005fe0:	04054463          	bltz	a0,80006028 <create+0x164>
    80005fe4:	40d0                	lw	a2,4(s1)
    80005fe6:	00004597          	auipc	a1,0x4
    80005fea:	a4a58593          	addi	a1,a1,-1462 # 80009a30 <syscall_names+0x2d0>
    80005fee:	8552                	mv	a0,s4
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	c70080e7          	jalr	-912(ra) # 80004c60 <dirlink>
    80005ff8:	02054863          	bltz	a0,80006028 <create+0x164>
    80005ffc:	004a2603          	lw	a2,4(s4)
    80006000:	fb040593          	addi	a1,s0,-80
    80006004:	8526                	mv	a0,s1
    80006006:	fffff097          	auipc	ra,0xfffff
    8000600a:	c5a080e7          	jalr	-934(ra) # 80004c60 <dirlink>
    8000600e:	00054d63          	bltz	a0,80006028 <create+0x164>
    80006012:	04a4d783          	lhu	a5,74(s1)
    80006016:	2785                	addiw	a5,a5,1
    80006018:	04f49523          	sh	a5,74(s1)
    8000601c:	8526                	mv	a0,s1
    8000601e:	ffffe097          	auipc	ra,0xffffe
    80006022:	484080e7          	jalr	1156(ra) # 800044a2 <iupdate>
    80006026:	b761                	j	80005fae <create+0xea>
    80006028:	040a1523          	sh	zero,74(s4)
    8000602c:	8552                	mv	a0,s4
    8000602e:	ffffe097          	auipc	ra,0xffffe
    80006032:	474080e7          	jalr	1140(ra) # 800044a2 <iupdate>
    80006036:	8552                	mv	a0,s4
    80006038:	ffffe097          	auipc	ra,0xffffe
    8000603c:	796080e7          	jalr	1942(ra) # 800047ce <iunlockput>
    80006040:	8526                	mv	a0,s1
    80006042:	ffffe097          	auipc	ra,0xffffe
    80006046:	78c080e7          	jalr	1932(ra) # 800047ce <iunlockput>
    8000604a:	bdc5                	j	80005f3a <create+0x76>
    8000604c:	8aaa                	mv	s5,a0
    8000604e:	b5f5                	j	80005f3a <create+0x76>

0000000080006050 <sys_dup>:
    80006050:	7179                	addi	sp,sp,-48
    80006052:	f406                	sd	ra,40(sp)
    80006054:	f022                	sd	s0,32(sp)
    80006056:	ec26                	sd	s1,24(sp)
    80006058:	1800                	addi	s0,sp,48
    8000605a:	fd840613          	addi	a2,s0,-40
    8000605e:	4581                	li	a1,0
    80006060:	4501                	li	a0,0
    80006062:	00000097          	auipc	ra,0x0
    80006066:	dc0080e7          	jalr	-576(ra) # 80005e22 <argfd>
    8000606a:	57fd                	li	a5,-1
    8000606c:	02054363          	bltz	a0,80006092 <sys_dup+0x42>
    80006070:	fd843503          	ld	a0,-40(s0)
    80006074:	00000097          	auipc	ra,0x0
    80006078:	e0e080e7          	jalr	-498(ra) # 80005e82 <fdalloc>
    8000607c:	84aa                	mv	s1,a0
    8000607e:	57fd                	li	a5,-1
    80006080:	00054963          	bltz	a0,80006092 <sys_dup+0x42>
    80006084:	fd843503          	ld	a0,-40(s0)
    80006088:	fffff097          	auipc	ra,0xfffff
    8000608c:	320080e7          	jalr	800(ra) # 800053a8 <filedup>
    80006090:	87a6                	mv	a5,s1
    80006092:	853e                	mv	a0,a5
    80006094:	70a2                	ld	ra,40(sp)
    80006096:	7402                	ld	s0,32(sp)
    80006098:	64e2                	ld	s1,24(sp)
    8000609a:	6145                	addi	sp,sp,48
    8000609c:	8082                	ret

000000008000609e <sys_read>:
    8000609e:	7179                	addi	sp,sp,-48
    800060a0:	f406                	sd	ra,40(sp)
    800060a2:	f022                	sd	s0,32(sp)
    800060a4:	1800                	addi	s0,sp,48
    800060a6:	fd840593          	addi	a1,s0,-40
    800060aa:	4505                	li	a0,1
    800060ac:	ffffd097          	auipc	ra,0xffffd
    800060b0:	688080e7          	jalr	1672(ra) # 80003734 <argaddr>
    800060b4:	fe440593          	addi	a1,s0,-28
    800060b8:	4509                	li	a0,2
    800060ba:	ffffd097          	auipc	ra,0xffffd
    800060be:	658080e7          	jalr	1624(ra) # 80003712 <argint>
    800060c2:	fe840613          	addi	a2,s0,-24
    800060c6:	4581                	li	a1,0
    800060c8:	4501                	li	a0,0
    800060ca:	00000097          	auipc	ra,0x0
    800060ce:	d58080e7          	jalr	-680(ra) # 80005e22 <argfd>
    800060d2:	87aa                	mv	a5,a0
    800060d4:	557d                	li	a0,-1
    800060d6:	0007cc63          	bltz	a5,800060ee <sys_read+0x50>
    800060da:	fe442603          	lw	a2,-28(s0)
    800060de:	fd843583          	ld	a1,-40(s0)
    800060e2:	fe843503          	ld	a0,-24(s0)
    800060e6:	fffff097          	auipc	ra,0xfffff
    800060ea:	44e080e7          	jalr	1102(ra) # 80005534 <fileread>
    800060ee:	70a2                	ld	ra,40(sp)
    800060f0:	7402                	ld	s0,32(sp)
    800060f2:	6145                	addi	sp,sp,48
    800060f4:	8082                	ret

00000000800060f6 <sys_write>:
    800060f6:	7179                	addi	sp,sp,-48
    800060f8:	f406                	sd	ra,40(sp)
    800060fa:	f022                	sd	s0,32(sp)
    800060fc:	1800                	addi	s0,sp,48
    800060fe:	fd840593          	addi	a1,s0,-40
    80006102:	4505                	li	a0,1
    80006104:	ffffd097          	auipc	ra,0xffffd
    80006108:	630080e7          	jalr	1584(ra) # 80003734 <argaddr>
    8000610c:	fe440593          	addi	a1,s0,-28
    80006110:	4509                	li	a0,2
    80006112:	ffffd097          	auipc	ra,0xffffd
    80006116:	600080e7          	jalr	1536(ra) # 80003712 <argint>
    8000611a:	fe840613          	addi	a2,s0,-24
    8000611e:	4581                	li	a1,0
    80006120:	4501                	li	a0,0
    80006122:	00000097          	auipc	ra,0x0
    80006126:	d00080e7          	jalr	-768(ra) # 80005e22 <argfd>
    8000612a:	87aa                	mv	a5,a0
    8000612c:	557d                	li	a0,-1
    8000612e:	0007cc63          	bltz	a5,80006146 <sys_write+0x50>
    80006132:	fe442603          	lw	a2,-28(s0)
    80006136:	fd843583          	ld	a1,-40(s0)
    8000613a:	fe843503          	ld	a0,-24(s0)
    8000613e:	fffff097          	auipc	ra,0xfffff
    80006142:	4b8080e7          	jalr	1208(ra) # 800055f6 <filewrite>
    80006146:	70a2                	ld	ra,40(sp)
    80006148:	7402                	ld	s0,32(sp)
    8000614a:	6145                	addi	sp,sp,48
    8000614c:	8082                	ret

000000008000614e <sys_close>:
    8000614e:	1101                	addi	sp,sp,-32
    80006150:	ec06                	sd	ra,24(sp)
    80006152:	e822                	sd	s0,16(sp)
    80006154:	1000                	addi	s0,sp,32
    80006156:	fe040613          	addi	a2,s0,-32
    8000615a:	fec40593          	addi	a1,s0,-20
    8000615e:	4501                	li	a0,0
    80006160:	00000097          	auipc	ra,0x0
    80006164:	cc2080e7          	jalr	-830(ra) # 80005e22 <argfd>
    80006168:	57fd                	li	a5,-1
    8000616a:	02054463          	bltz	a0,80006192 <sys_close+0x44>
    8000616e:	ffffc097          	auipc	ra,0xffffc
    80006172:	caa080e7          	jalr	-854(ra) # 80001e18 <myproc>
    80006176:	fec42783          	lw	a5,-20(s0)
    8000617a:	07e9                	addi	a5,a5,26
    8000617c:	078e                	slli	a5,a5,0x3
    8000617e:	97aa                	add	a5,a5,a0
    80006180:	0007b023          	sd	zero,0(a5)
    80006184:	fe043503          	ld	a0,-32(s0)
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	272080e7          	jalr	626(ra) # 800053fa <fileclose>
    80006190:	4781                	li	a5,0
    80006192:	853e                	mv	a0,a5
    80006194:	60e2                	ld	ra,24(sp)
    80006196:	6442                	ld	s0,16(sp)
    80006198:	6105                	addi	sp,sp,32
    8000619a:	8082                	ret

000000008000619c <sys_fstat>:
    8000619c:	1101                	addi	sp,sp,-32
    8000619e:	ec06                	sd	ra,24(sp)
    800061a0:	e822                	sd	s0,16(sp)
    800061a2:	1000                	addi	s0,sp,32
    800061a4:	fe040593          	addi	a1,s0,-32
    800061a8:	4505                	li	a0,1
    800061aa:	ffffd097          	auipc	ra,0xffffd
    800061ae:	58a080e7          	jalr	1418(ra) # 80003734 <argaddr>
    800061b2:	fe840613          	addi	a2,s0,-24
    800061b6:	4581                	li	a1,0
    800061b8:	4501                	li	a0,0
    800061ba:	00000097          	auipc	ra,0x0
    800061be:	c68080e7          	jalr	-920(ra) # 80005e22 <argfd>
    800061c2:	87aa                	mv	a5,a0
    800061c4:	557d                	li	a0,-1
    800061c6:	0007ca63          	bltz	a5,800061da <sys_fstat+0x3e>
    800061ca:	fe043583          	ld	a1,-32(s0)
    800061ce:	fe843503          	ld	a0,-24(s0)
    800061d2:	fffff097          	auipc	ra,0xfffff
    800061d6:	2f0080e7          	jalr	752(ra) # 800054c2 <filestat>
    800061da:	60e2                	ld	ra,24(sp)
    800061dc:	6442                	ld	s0,16(sp)
    800061de:	6105                	addi	sp,sp,32
    800061e0:	8082                	ret

00000000800061e2 <sys_link>:
    800061e2:	7169                	addi	sp,sp,-304
    800061e4:	f606                	sd	ra,296(sp)
    800061e6:	f222                	sd	s0,288(sp)
    800061e8:	ee26                	sd	s1,280(sp)
    800061ea:	ea4a                	sd	s2,272(sp)
    800061ec:	1a00                	addi	s0,sp,304
    800061ee:	08000613          	li	a2,128
    800061f2:	ed040593          	addi	a1,s0,-304
    800061f6:	4501                	li	a0,0
    800061f8:	ffffd097          	auipc	ra,0xffffd
    800061fc:	55e080e7          	jalr	1374(ra) # 80003756 <argstr>
    80006200:	57fd                	li	a5,-1
    80006202:	10054e63          	bltz	a0,8000631e <sys_link+0x13c>
    80006206:	08000613          	li	a2,128
    8000620a:	f5040593          	addi	a1,s0,-176
    8000620e:	4505                	li	a0,1
    80006210:	ffffd097          	auipc	ra,0xffffd
    80006214:	546080e7          	jalr	1350(ra) # 80003756 <argstr>
    80006218:	57fd                	li	a5,-1
    8000621a:	10054263          	bltz	a0,8000631e <sys_link+0x13c>
    8000621e:	fffff097          	auipc	ra,0xfffff
    80006222:	d10080e7          	jalr	-752(ra) # 80004f2e <begin_op>
    80006226:	ed040513          	addi	a0,s0,-304
    8000622a:	fffff097          	auipc	ra,0xfffff
    8000622e:	ae8080e7          	jalr	-1304(ra) # 80004d12 <namei>
    80006232:	84aa                	mv	s1,a0
    80006234:	c551                	beqz	a0,800062c0 <sys_link+0xde>
    80006236:	ffffe097          	auipc	ra,0xffffe
    8000623a:	336080e7          	jalr	822(ra) # 8000456c <ilock>
    8000623e:	04449703          	lh	a4,68(s1)
    80006242:	4785                	li	a5,1
    80006244:	08f70463          	beq	a4,a5,800062cc <sys_link+0xea>
    80006248:	04a4d783          	lhu	a5,74(s1)
    8000624c:	2785                	addiw	a5,a5,1
    8000624e:	04f49523          	sh	a5,74(s1)
    80006252:	8526                	mv	a0,s1
    80006254:	ffffe097          	auipc	ra,0xffffe
    80006258:	24e080e7          	jalr	590(ra) # 800044a2 <iupdate>
    8000625c:	8526                	mv	a0,s1
    8000625e:	ffffe097          	auipc	ra,0xffffe
    80006262:	3d0080e7          	jalr	976(ra) # 8000462e <iunlock>
    80006266:	fd040593          	addi	a1,s0,-48
    8000626a:	f5040513          	addi	a0,s0,-176
    8000626e:	fffff097          	auipc	ra,0xfffff
    80006272:	ac2080e7          	jalr	-1342(ra) # 80004d30 <nameiparent>
    80006276:	892a                	mv	s2,a0
    80006278:	c935                	beqz	a0,800062ec <sys_link+0x10a>
    8000627a:	ffffe097          	auipc	ra,0xffffe
    8000627e:	2f2080e7          	jalr	754(ra) # 8000456c <ilock>
    80006282:	00092703          	lw	a4,0(s2)
    80006286:	409c                	lw	a5,0(s1)
    80006288:	04f71d63          	bne	a4,a5,800062e2 <sys_link+0x100>
    8000628c:	40d0                	lw	a2,4(s1)
    8000628e:	fd040593          	addi	a1,s0,-48
    80006292:	854a                	mv	a0,s2
    80006294:	fffff097          	auipc	ra,0xfffff
    80006298:	9cc080e7          	jalr	-1588(ra) # 80004c60 <dirlink>
    8000629c:	04054363          	bltz	a0,800062e2 <sys_link+0x100>
    800062a0:	854a                	mv	a0,s2
    800062a2:	ffffe097          	auipc	ra,0xffffe
    800062a6:	52c080e7          	jalr	1324(ra) # 800047ce <iunlockput>
    800062aa:	8526                	mv	a0,s1
    800062ac:	ffffe097          	auipc	ra,0xffffe
    800062b0:	47a080e7          	jalr	1146(ra) # 80004726 <iput>
    800062b4:	fffff097          	auipc	ra,0xfffff
    800062b8:	cfa080e7          	jalr	-774(ra) # 80004fae <end_op>
    800062bc:	4781                	li	a5,0
    800062be:	a085                	j	8000631e <sys_link+0x13c>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	cee080e7          	jalr	-786(ra) # 80004fae <end_op>
    800062c8:	57fd                	li	a5,-1
    800062ca:	a891                	j	8000631e <sys_link+0x13c>
    800062cc:	8526                	mv	a0,s1
    800062ce:	ffffe097          	auipc	ra,0xffffe
    800062d2:	500080e7          	jalr	1280(ra) # 800047ce <iunlockput>
    800062d6:	fffff097          	auipc	ra,0xfffff
    800062da:	cd8080e7          	jalr	-808(ra) # 80004fae <end_op>
    800062de:	57fd                	li	a5,-1
    800062e0:	a83d                	j	8000631e <sys_link+0x13c>
    800062e2:	854a                	mv	a0,s2
    800062e4:	ffffe097          	auipc	ra,0xffffe
    800062e8:	4ea080e7          	jalr	1258(ra) # 800047ce <iunlockput>
    800062ec:	8526                	mv	a0,s1
    800062ee:	ffffe097          	auipc	ra,0xffffe
    800062f2:	27e080e7          	jalr	638(ra) # 8000456c <ilock>
    800062f6:	04a4d783          	lhu	a5,74(s1)
    800062fa:	37fd                	addiw	a5,a5,-1
    800062fc:	04f49523          	sh	a5,74(s1)
    80006300:	8526                	mv	a0,s1
    80006302:	ffffe097          	auipc	ra,0xffffe
    80006306:	1a0080e7          	jalr	416(ra) # 800044a2 <iupdate>
    8000630a:	8526                	mv	a0,s1
    8000630c:	ffffe097          	auipc	ra,0xffffe
    80006310:	4c2080e7          	jalr	1218(ra) # 800047ce <iunlockput>
    80006314:	fffff097          	auipc	ra,0xfffff
    80006318:	c9a080e7          	jalr	-870(ra) # 80004fae <end_op>
    8000631c:	57fd                	li	a5,-1
    8000631e:	853e                	mv	a0,a5
    80006320:	70b2                	ld	ra,296(sp)
    80006322:	7412                	ld	s0,288(sp)
    80006324:	64f2                	ld	s1,280(sp)
    80006326:	6952                	ld	s2,272(sp)
    80006328:	6155                	addi	sp,sp,304
    8000632a:	8082                	ret

000000008000632c <sys_unlink>:
    8000632c:	7151                	addi	sp,sp,-240
    8000632e:	f586                	sd	ra,232(sp)
    80006330:	f1a2                	sd	s0,224(sp)
    80006332:	eda6                	sd	s1,216(sp)
    80006334:	e9ca                	sd	s2,208(sp)
    80006336:	e5ce                	sd	s3,200(sp)
    80006338:	1980                	addi	s0,sp,240
    8000633a:	08000613          	li	a2,128
    8000633e:	f3040593          	addi	a1,s0,-208
    80006342:	4501                	li	a0,0
    80006344:	ffffd097          	auipc	ra,0xffffd
    80006348:	412080e7          	jalr	1042(ra) # 80003756 <argstr>
    8000634c:	18054163          	bltz	a0,800064ce <sys_unlink+0x1a2>
    80006350:	fffff097          	auipc	ra,0xfffff
    80006354:	bde080e7          	jalr	-1058(ra) # 80004f2e <begin_op>
    80006358:	fb040593          	addi	a1,s0,-80
    8000635c:	f3040513          	addi	a0,s0,-208
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	9d0080e7          	jalr	-1584(ra) # 80004d30 <nameiparent>
    80006368:	84aa                	mv	s1,a0
    8000636a:	c979                	beqz	a0,80006440 <sys_unlink+0x114>
    8000636c:	ffffe097          	auipc	ra,0xffffe
    80006370:	200080e7          	jalr	512(ra) # 8000456c <ilock>
    80006374:	00003597          	auipc	a1,0x3
    80006378:	6b458593          	addi	a1,a1,1716 # 80009a28 <syscall_names+0x2c8>
    8000637c:	fb040513          	addi	a0,s0,-80
    80006380:	ffffe097          	auipc	ra,0xffffe
    80006384:	6b6080e7          	jalr	1718(ra) # 80004a36 <namecmp>
    80006388:	14050a63          	beqz	a0,800064dc <sys_unlink+0x1b0>
    8000638c:	00003597          	auipc	a1,0x3
    80006390:	6a458593          	addi	a1,a1,1700 # 80009a30 <syscall_names+0x2d0>
    80006394:	fb040513          	addi	a0,s0,-80
    80006398:	ffffe097          	auipc	ra,0xffffe
    8000639c:	69e080e7          	jalr	1694(ra) # 80004a36 <namecmp>
    800063a0:	12050e63          	beqz	a0,800064dc <sys_unlink+0x1b0>
    800063a4:	f2c40613          	addi	a2,s0,-212
    800063a8:	fb040593          	addi	a1,s0,-80
    800063ac:	8526                	mv	a0,s1
    800063ae:	ffffe097          	auipc	ra,0xffffe
    800063b2:	6a2080e7          	jalr	1698(ra) # 80004a50 <dirlookup>
    800063b6:	892a                	mv	s2,a0
    800063b8:	12050263          	beqz	a0,800064dc <sys_unlink+0x1b0>
    800063bc:	ffffe097          	auipc	ra,0xffffe
    800063c0:	1b0080e7          	jalr	432(ra) # 8000456c <ilock>
    800063c4:	04a91783          	lh	a5,74(s2)
    800063c8:	08f05263          	blez	a5,8000644c <sys_unlink+0x120>
    800063cc:	04491703          	lh	a4,68(s2)
    800063d0:	4785                	li	a5,1
    800063d2:	08f70563          	beq	a4,a5,8000645c <sys_unlink+0x130>
    800063d6:	4641                	li	a2,16
    800063d8:	4581                	li	a1,0
    800063da:	fc040513          	addi	a0,s0,-64
    800063de:	ffffb097          	auipc	ra,0xffffb
    800063e2:	b0c080e7          	jalr	-1268(ra) # 80000eea <memset>
    800063e6:	4741                	li	a4,16
    800063e8:	f2c42683          	lw	a3,-212(s0)
    800063ec:	fc040613          	addi	a2,s0,-64
    800063f0:	4581                	li	a1,0
    800063f2:	8526                	mv	a0,s1
    800063f4:	ffffe097          	auipc	ra,0xffffe
    800063f8:	524080e7          	jalr	1316(ra) # 80004918 <writei>
    800063fc:	47c1                	li	a5,16
    800063fe:	0af51563          	bne	a0,a5,800064a8 <sys_unlink+0x17c>
    80006402:	04491703          	lh	a4,68(s2)
    80006406:	4785                	li	a5,1
    80006408:	0af70863          	beq	a4,a5,800064b8 <sys_unlink+0x18c>
    8000640c:	8526                	mv	a0,s1
    8000640e:	ffffe097          	auipc	ra,0xffffe
    80006412:	3c0080e7          	jalr	960(ra) # 800047ce <iunlockput>
    80006416:	04a95783          	lhu	a5,74(s2)
    8000641a:	37fd                	addiw	a5,a5,-1
    8000641c:	04f91523          	sh	a5,74(s2)
    80006420:	854a                	mv	a0,s2
    80006422:	ffffe097          	auipc	ra,0xffffe
    80006426:	080080e7          	jalr	128(ra) # 800044a2 <iupdate>
    8000642a:	854a                	mv	a0,s2
    8000642c:	ffffe097          	auipc	ra,0xffffe
    80006430:	3a2080e7          	jalr	930(ra) # 800047ce <iunlockput>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	b7a080e7          	jalr	-1158(ra) # 80004fae <end_op>
    8000643c:	4501                	li	a0,0
    8000643e:	a84d                	j	800064f0 <sys_unlink+0x1c4>
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	b6e080e7          	jalr	-1170(ra) # 80004fae <end_op>
    80006448:	557d                	li	a0,-1
    8000644a:	a05d                	j	800064f0 <sys_unlink+0x1c4>
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	5ec50513          	addi	a0,a0,1516 # 80009a38 <syscall_names+0x2d8>
    80006454:	ffffa097          	auipc	ra,0xffffa
    80006458:	0f0080e7          	jalr	240(ra) # 80000544 <panic>
    8000645c:	04c92703          	lw	a4,76(s2)
    80006460:	02000793          	li	a5,32
    80006464:	f6e7f9e3          	bgeu	a5,a4,800063d6 <sys_unlink+0xaa>
    80006468:	02000993          	li	s3,32
    8000646c:	4741                	li	a4,16
    8000646e:	86ce                	mv	a3,s3
    80006470:	f1840613          	addi	a2,s0,-232
    80006474:	4581                	li	a1,0
    80006476:	854a                	mv	a0,s2
    80006478:	ffffe097          	auipc	ra,0xffffe
    8000647c:	3a8080e7          	jalr	936(ra) # 80004820 <readi>
    80006480:	47c1                	li	a5,16
    80006482:	00f51b63          	bne	a0,a5,80006498 <sys_unlink+0x16c>
    80006486:	f1845783          	lhu	a5,-232(s0)
    8000648a:	e7a1                	bnez	a5,800064d2 <sys_unlink+0x1a6>
    8000648c:	29c1                	addiw	s3,s3,16
    8000648e:	04c92783          	lw	a5,76(s2)
    80006492:	fcf9ede3          	bltu	s3,a5,8000646c <sys_unlink+0x140>
    80006496:	b781                	j	800063d6 <sys_unlink+0xaa>
    80006498:	00003517          	auipc	a0,0x3
    8000649c:	5b850513          	addi	a0,a0,1464 # 80009a50 <syscall_names+0x2f0>
    800064a0:	ffffa097          	auipc	ra,0xffffa
    800064a4:	0a4080e7          	jalr	164(ra) # 80000544 <panic>
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	5c050513          	addi	a0,a0,1472 # 80009a68 <syscall_names+0x308>
    800064b0:	ffffa097          	auipc	ra,0xffffa
    800064b4:	094080e7          	jalr	148(ra) # 80000544 <panic>
    800064b8:	04a4d783          	lhu	a5,74(s1)
    800064bc:	37fd                	addiw	a5,a5,-1
    800064be:	04f49523          	sh	a5,74(s1)
    800064c2:	8526                	mv	a0,s1
    800064c4:	ffffe097          	auipc	ra,0xffffe
    800064c8:	fde080e7          	jalr	-34(ra) # 800044a2 <iupdate>
    800064cc:	b781                	j	8000640c <sys_unlink+0xe0>
    800064ce:	557d                	li	a0,-1
    800064d0:	a005                	j	800064f0 <sys_unlink+0x1c4>
    800064d2:	854a                	mv	a0,s2
    800064d4:	ffffe097          	auipc	ra,0xffffe
    800064d8:	2fa080e7          	jalr	762(ra) # 800047ce <iunlockput>
    800064dc:	8526                	mv	a0,s1
    800064de:	ffffe097          	auipc	ra,0xffffe
    800064e2:	2f0080e7          	jalr	752(ra) # 800047ce <iunlockput>
    800064e6:	fffff097          	auipc	ra,0xfffff
    800064ea:	ac8080e7          	jalr	-1336(ra) # 80004fae <end_op>
    800064ee:	557d                	li	a0,-1
    800064f0:	70ae                	ld	ra,232(sp)
    800064f2:	740e                	ld	s0,224(sp)
    800064f4:	64ee                	ld	s1,216(sp)
    800064f6:	694e                	ld	s2,208(sp)
    800064f8:	69ae                	ld	s3,200(sp)
    800064fa:	616d                	addi	sp,sp,240
    800064fc:	8082                	ret

00000000800064fe <sys_open>:
    800064fe:	7131                	addi	sp,sp,-192
    80006500:	fd06                	sd	ra,184(sp)
    80006502:	f922                	sd	s0,176(sp)
    80006504:	f526                	sd	s1,168(sp)
    80006506:	f14a                	sd	s2,160(sp)
    80006508:	ed4e                	sd	s3,152(sp)
    8000650a:	0180                	addi	s0,sp,192
    8000650c:	f4c40593          	addi	a1,s0,-180
    80006510:	4505                	li	a0,1
    80006512:	ffffd097          	auipc	ra,0xffffd
    80006516:	200080e7          	jalr	512(ra) # 80003712 <argint>
    8000651a:	08000613          	li	a2,128
    8000651e:	f5040593          	addi	a1,s0,-176
    80006522:	4501                	li	a0,0
    80006524:	ffffd097          	auipc	ra,0xffffd
    80006528:	232080e7          	jalr	562(ra) # 80003756 <argstr>
    8000652c:	87aa                	mv	a5,a0
    8000652e:	557d                	li	a0,-1
    80006530:	0a07c963          	bltz	a5,800065e2 <sys_open+0xe4>
    80006534:	fffff097          	auipc	ra,0xfffff
    80006538:	9fa080e7          	jalr	-1542(ra) # 80004f2e <begin_op>
    8000653c:	f4c42783          	lw	a5,-180(s0)
    80006540:	2007f793          	andi	a5,a5,512
    80006544:	cfc5                	beqz	a5,800065fc <sys_open+0xfe>
    80006546:	4681                	li	a3,0
    80006548:	4601                	li	a2,0
    8000654a:	4589                	li	a1,2
    8000654c:	f5040513          	addi	a0,s0,-176
    80006550:	00000097          	auipc	ra,0x0
    80006554:	974080e7          	jalr	-1676(ra) # 80005ec4 <create>
    80006558:	84aa                	mv	s1,a0
    8000655a:	c959                	beqz	a0,800065f0 <sys_open+0xf2>
    8000655c:	04449703          	lh	a4,68(s1)
    80006560:	478d                	li	a5,3
    80006562:	00f71763          	bne	a4,a5,80006570 <sys_open+0x72>
    80006566:	0464d703          	lhu	a4,70(s1)
    8000656a:	47a5                	li	a5,9
    8000656c:	0ce7ed63          	bltu	a5,a4,80006646 <sys_open+0x148>
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	dce080e7          	jalr	-562(ra) # 8000533e <filealloc>
    80006578:	89aa                	mv	s3,a0
    8000657a:	10050363          	beqz	a0,80006680 <sys_open+0x182>
    8000657e:	00000097          	auipc	ra,0x0
    80006582:	904080e7          	jalr	-1788(ra) # 80005e82 <fdalloc>
    80006586:	892a                	mv	s2,a0
    80006588:	0e054763          	bltz	a0,80006676 <sys_open+0x178>
    8000658c:	04449703          	lh	a4,68(s1)
    80006590:	478d                	li	a5,3
    80006592:	0cf70563          	beq	a4,a5,8000665c <sys_open+0x15e>
    80006596:	4789                	li	a5,2
    80006598:	00f9a023          	sw	a5,0(s3)
    8000659c:	0209a023          	sw	zero,32(s3)
    800065a0:	0099bc23          	sd	s1,24(s3)
    800065a4:	f4c42783          	lw	a5,-180(s0)
    800065a8:	0017c713          	xori	a4,a5,1
    800065ac:	8b05                	andi	a4,a4,1
    800065ae:	00e98423          	sb	a4,8(s3)
    800065b2:	0037f713          	andi	a4,a5,3
    800065b6:	00e03733          	snez	a4,a4
    800065ba:	00e984a3          	sb	a4,9(s3)
    800065be:	4007f793          	andi	a5,a5,1024
    800065c2:	c791                	beqz	a5,800065ce <sys_open+0xd0>
    800065c4:	04449703          	lh	a4,68(s1)
    800065c8:	4789                	li	a5,2
    800065ca:	0af70063          	beq	a4,a5,8000666a <sys_open+0x16c>
    800065ce:	8526                	mv	a0,s1
    800065d0:	ffffe097          	auipc	ra,0xffffe
    800065d4:	05e080e7          	jalr	94(ra) # 8000462e <iunlock>
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	9d6080e7          	jalr	-1578(ra) # 80004fae <end_op>
    800065e0:	854a                	mv	a0,s2
    800065e2:	70ea                	ld	ra,184(sp)
    800065e4:	744a                	ld	s0,176(sp)
    800065e6:	74aa                	ld	s1,168(sp)
    800065e8:	790a                	ld	s2,160(sp)
    800065ea:	69ea                	ld	s3,152(sp)
    800065ec:	6129                	addi	sp,sp,192
    800065ee:	8082                	ret
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	9be080e7          	jalr	-1602(ra) # 80004fae <end_op>
    800065f8:	557d                	li	a0,-1
    800065fa:	b7e5                	j	800065e2 <sys_open+0xe4>
    800065fc:	f5040513          	addi	a0,s0,-176
    80006600:	ffffe097          	auipc	ra,0xffffe
    80006604:	712080e7          	jalr	1810(ra) # 80004d12 <namei>
    80006608:	84aa                	mv	s1,a0
    8000660a:	c905                	beqz	a0,8000663a <sys_open+0x13c>
    8000660c:	ffffe097          	auipc	ra,0xffffe
    80006610:	f60080e7          	jalr	-160(ra) # 8000456c <ilock>
    80006614:	04449703          	lh	a4,68(s1)
    80006618:	4785                	li	a5,1
    8000661a:	f4f711e3          	bne	a4,a5,8000655c <sys_open+0x5e>
    8000661e:	f4c42783          	lw	a5,-180(s0)
    80006622:	d7b9                	beqz	a5,80006570 <sys_open+0x72>
    80006624:	8526                	mv	a0,s1
    80006626:	ffffe097          	auipc	ra,0xffffe
    8000662a:	1a8080e7          	jalr	424(ra) # 800047ce <iunlockput>
    8000662e:	fffff097          	auipc	ra,0xfffff
    80006632:	980080e7          	jalr	-1664(ra) # 80004fae <end_op>
    80006636:	557d                	li	a0,-1
    80006638:	b76d                	j	800065e2 <sys_open+0xe4>
    8000663a:	fffff097          	auipc	ra,0xfffff
    8000663e:	974080e7          	jalr	-1676(ra) # 80004fae <end_op>
    80006642:	557d                	li	a0,-1
    80006644:	bf79                	j	800065e2 <sys_open+0xe4>
    80006646:	8526                	mv	a0,s1
    80006648:	ffffe097          	auipc	ra,0xffffe
    8000664c:	186080e7          	jalr	390(ra) # 800047ce <iunlockput>
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	95e080e7          	jalr	-1698(ra) # 80004fae <end_op>
    80006658:	557d                	li	a0,-1
    8000665a:	b761                	j	800065e2 <sys_open+0xe4>
    8000665c:	00f9a023          	sw	a5,0(s3)
    80006660:	04649783          	lh	a5,70(s1)
    80006664:	02f99223          	sh	a5,36(s3)
    80006668:	bf25                	j	800065a0 <sys_open+0xa2>
    8000666a:	8526                	mv	a0,s1
    8000666c:	ffffe097          	auipc	ra,0xffffe
    80006670:	00e080e7          	jalr	14(ra) # 8000467a <itrunc>
    80006674:	bfa9                	j	800065ce <sys_open+0xd0>
    80006676:	854e                	mv	a0,s3
    80006678:	fffff097          	auipc	ra,0xfffff
    8000667c:	d82080e7          	jalr	-638(ra) # 800053fa <fileclose>
    80006680:	8526                	mv	a0,s1
    80006682:	ffffe097          	auipc	ra,0xffffe
    80006686:	14c080e7          	jalr	332(ra) # 800047ce <iunlockput>
    8000668a:	fffff097          	auipc	ra,0xfffff
    8000668e:	924080e7          	jalr	-1756(ra) # 80004fae <end_op>
    80006692:	557d                	li	a0,-1
    80006694:	b7b9                	j	800065e2 <sys_open+0xe4>

0000000080006696 <sys_mkdir>:
    80006696:	7175                	addi	sp,sp,-144
    80006698:	e506                	sd	ra,136(sp)
    8000669a:	e122                	sd	s0,128(sp)
    8000669c:	0900                	addi	s0,sp,144
    8000669e:	fffff097          	auipc	ra,0xfffff
    800066a2:	890080e7          	jalr	-1904(ra) # 80004f2e <begin_op>
    800066a6:	08000613          	li	a2,128
    800066aa:	f7040593          	addi	a1,s0,-144
    800066ae:	4501                	li	a0,0
    800066b0:	ffffd097          	auipc	ra,0xffffd
    800066b4:	0a6080e7          	jalr	166(ra) # 80003756 <argstr>
    800066b8:	02054963          	bltz	a0,800066ea <sys_mkdir+0x54>
    800066bc:	4681                	li	a3,0
    800066be:	4601                	li	a2,0
    800066c0:	4585                	li	a1,1
    800066c2:	f7040513          	addi	a0,s0,-144
    800066c6:	fffff097          	auipc	ra,0xfffff
    800066ca:	7fe080e7          	jalr	2046(ra) # 80005ec4 <create>
    800066ce:	cd11                	beqz	a0,800066ea <sys_mkdir+0x54>
    800066d0:	ffffe097          	auipc	ra,0xffffe
    800066d4:	0fe080e7          	jalr	254(ra) # 800047ce <iunlockput>
    800066d8:	fffff097          	auipc	ra,0xfffff
    800066dc:	8d6080e7          	jalr	-1834(ra) # 80004fae <end_op>
    800066e0:	4501                	li	a0,0
    800066e2:	60aa                	ld	ra,136(sp)
    800066e4:	640a                	ld	s0,128(sp)
    800066e6:	6149                	addi	sp,sp,144
    800066e8:	8082                	ret
    800066ea:	fffff097          	auipc	ra,0xfffff
    800066ee:	8c4080e7          	jalr	-1852(ra) # 80004fae <end_op>
    800066f2:	557d                	li	a0,-1
    800066f4:	b7fd                	j	800066e2 <sys_mkdir+0x4c>

00000000800066f6 <sys_mknod>:
    800066f6:	7135                	addi	sp,sp,-160
    800066f8:	ed06                	sd	ra,152(sp)
    800066fa:	e922                	sd	s0,144(sp)
    800066fc:	1100                	addi	s0,sp,160
    800066fe:	fffff097          	auipc	ra,0xfffff
    80006702:	830080e7          	jalr	-2000(ra) # 80004f2e <begin_op>
    80006706:	f6c40593          	addi	a1,s0,-148
    8000670a:	4505                	li	a0,1
    8000670c:	ffffd097          	auipc	ra,0xffffd
    80006710:	006080e7          	jalr	6(ra) # 80003712 <argint>
    80006714:	f6840593          	addi	a1,s0,-152
    80006718:	4509                	li	a0,2
    8000671a:	ffffd097          	auipc	ra,0xffffd
    8000671e:	ff8080e7          	jalr	-8(ra) # 80003712 <argint>
    80006722:	08000613          	li	a2,128
    80006726:	f7040593          	addi	a1,s0,-144
    8000672a:	4501                	li	a0,0
    8000672c:	ffffd097          	auipc	ra,0xffffd
    80006730:	02a080e7          	jalr	42(ra) # 80003756 <argstr>
    80006734:	02054b63          	bltz	a0,8000676a <sys_mknod+0x74>
    80006738:	f6841683          	lh	a3,-152(s0)
    8000673c:	f6c41603          	lh	a2,-148(s0)
    80006740:	458d                	li	a1,3
    80006742:	f7040513          	addi	a0,s0,-144
    80006746:	fffff097          	auipc	ra,0xfffff
    8000674a:	77e080e7          	jalr	1918(ra) # 80005ec4 <create>
    8000674e:	cd11                	beqz	a0,8000676a <sys_mknod+0x74>
    80006750:	ffffe097          	auipc	ra,0xffffe
    80006754:	07e080e7          	jalr	126(ra) # 800047ce <iunlockput>
    80006758:	fffff097          	auipc	ra,0xfffff
    8000675c:	856080e7          	jalr	-1962(ra) # 80004fae <end_op>
    80006760:	4501                	li	a0,0
    80006762:	60ea                	ld	ra,152(sp)
    80006764:	644a                	ld	s0,144(sp)
    80006766:	610d                	addi	sp,sp,160
    80006768:	8082                	ret
    8000676a:	fffff097          	auipc	ra,0xfffff
    8000676e:	844080e7          	jalr	-1980(ra) # 80004fae <end_op>
    80006772:	557d                	li	a0,-1
    80006774:	b7fd                	j	80006762 <sys_mknod+0x6c>

0000000080006776 <sys_chdir>:
    80006776:	7135                	addi	sp,sp,-160
    80006778:	ed06                	sd	ra,152(sp)
    8000677a:	e922                	sd	s0,144(sp)
    8000677c:	e526                	sd	s1,136(sp)
    8000677e:	e14a                	sd	s2,128(sp)
    80006780:	1100                	addi	s0,sp,160
    80006782:	ffffb097          	auipc	ra,0xffffb
    80006786:	696080e7          	jalr	1686(ra) # 80001e18 <myproc>
    8000678a:	892a                	mv	s2,a0
    8000678c:	ffffe097          	auipc	ra,0xffffe
    80006790:	7a2080e7          	jalr	1954(ra) # 80004f2e <begin_op>
    80006794:	08000613          	li	a2,128
    80006798:	f6040593          	addi	a1,s0,-160
    8000679c:	4501                	li	a0,0
    8000679e:	ffffd097          	auipc	ra,0xffffd
    800067a2:	fb8080e7          	jalr	-72(ra) # 80003756 <argstr>
    800067a6:	04054b63          	bltz	a0,800067fc <sys_chdir+0x86>
    800067aa:	f6040513          	addi	a0,s0,-160
    800067ae:	ffffe097          	auipc	ra,0xffffe
    800067b2:	564080e7          	jalr	1380(ra) # 80004d12 <namei>
    800067b6:	84aa                	mv	s1,a0
    800067b8:	c131                	beqz	a0,800067fc <sys_chdir+0x86>
    800067ba:	ffffe097          	auipc	ra,0xffffe
    800067be:	db2080e7          	jalr	-590(ra) # 8000456c <ilock>
    800067c2:	04449703          	lh	a4,68(s1)
    800067c6:	4785                	li	a5,1
    800067c8:	04f71063          	bne	a4,a5,80006808 <sys_chdir+0x92>
    800067cc:	8526                	mv	a0,s1
    800067ce:	ffffe097          	auipc	ra,0xffffe
    800067d2:	e60080e7          	jalr	-416(ra) # 8000462e <iunlock>
    800067d6:	15093503          	ld	a0,336(s2)
    800067da:	ffffe097          	auipc	ra,0xffffe
    800067de:	f4c080e7          	jalr	-180(ra) # 80004726 <iput>
    800067e2:	ffffe097          	auipc	ra,0xffffe
    800067e6:	7cc080e7          	jalr	1996(ra) # 80004fae <end_op>
    800067ea:	14993823          	sd	s1,336(s2)
    800067ee:	4501                	li	a0,0
    800067f0:	60ea                	ld	ra,152(sp)
    800067f2:	644a                	ld	s0,144(sp)
    800067f4:	64aa                	ld	s1,136(sp)
    800067f6:	690a                	ld	s2,128(sp)
    800067f8:	610d                	addi	sp,sp,160
    800067fa:	8082                	ret
    800067fc:	ffffe097          	auipc	ra,0xffffe
    80006800:	7b2080e7          	jalr	1970(ra) # 80004fae <end_op>
    80006804:	557d                	li	a0,-1
    80006806:	b7ed                	j	800067f0 <sys_chdir+0x7a>
    80006808:	8526                	mv	a0,s1
    8000680a:	ffffe097          	auipc	ra,0xffffe
    8000680e:	fc4080e7          	jalr	-60(ra) # 800047ce <iunlockput>
    80006812:	ffffe097          	auipc	ra,0xffffe
    80006816:	79c080e7          	jalr	1948(ra) # 80004fae <end_op>
    8000681a:	557d                	li	a0,-1
    8000681c:	bfd1                	j	800067f0 <sys_chdir+0x7a>

000000008000681e <sys_exec>:
    8000681e:	7145                	addi	sp,sp,-464
    80006820:	e786                	sd	ra,456(sp)
    80006822:	e3a2                	sd	s0,448(sp)
    80006824:	ff26                	sd	s1,440(sp)
    80006826:	fb4a                	sd	s2,432(sp)
    80006828:	f74e                	sd	s3,424(sp)
    8000682a:	f352                	sd	s4,416(sp)
    8000682c:	ef56                	sd	s5,408(sp)
    8000682e:	0b80                	addi	s0,sp,464
    80006830:	e3840593          	addi	a1,s0,-456
    80006834:	4505                	li	a0,1
    80006836:	ffffd097          	auipc	ra,0xffffd
    8000683a:	efe080e7          	jalr	-258(ra) # 80003734 <argaddr>
    8000683e:	08000613          	li	a2,128
    80006842:	f4040593          	addi	a1,s0,-192
    80006846:	4501                	li	a0,0
    80006848:	ffffd097          	auipc	ra,0xffffd
    8000684c:	f0e080e7          	jalr	-242(ra) # 80003756 <argstr>
    80006850:	87aa                	mv	a5,a0
    80006852:	557d                	li	a0,-1
    80006854:	0c07c263          	bltz	a5,80006918 <sys_exec+0xfa>
    80006858:	10000613          	li	a2,256
    8000685c:	4581                	li	a1,0
    8000685e:	e4040513          	addi	a0,s0,-448
    80006862:	ffffa097          	auipc	ra,0xffffa
    80006866:	688080e7          	jalr	1672(ra) # 80000eea <memset>
    8000686a:	e4040493          	addi	s1,s0,-448
    8000686e:	89a6                	mv	s3,s1
    80006870:	4901                	li	s2,0
    80006872:	02000a13          	li	s4,32
    80006876:	00090a9b          	sext.w	s5,s2
    8000687a:	00391513          	slli	a0,s2,0x3
    8000687e:	e3040593          	addi	a1,s0,-464
    80006882:	e3843783          	ld	a5,-456(s0)
    80006886:	953e                	add	a0,a0,a5
    80006888:	ffffd097          	auipc	ra,0xffffd
    8000688c:	dec080e7          	jalr	-532(ra) # 80003674 <fetchaddr>
    80006890:	02054a63          	bltz	a0,800068c4 <sys_exec+0xa6>
    80006894:	e3043783          	ld	a5,-464(s0)
    80006898:	c3b9                	beqz	a5,800068de <sys_exec+0xc0>
    8000689a:	ffffa097          	auipc	ra,0xffffa
    8000689e:	3fc080e7          	jalr	1020(ra) # 80000c96 <kalloc>
    800068a2:	85aa                	mv	a1,a0
    800068a4:	00a9b023          	sd	a0,0(s3)
    800068a8:	cd11                	beqz	a0,800068c4 <sys_exec+0xa6>
    800068aa:	6605                	lui	a2,0x1
    800068ac:	e3043503          	ld	a0,-464(s0)
    800068b0:	ffffd097          	auipc	ra,0xffffd
    800068b4:	e16080e7          	jalr	-490(ra) # 800036c6 <fetchstr>
    800068b8:	00054663          	bltz	a0,800068c4 <sys_exec+0xa6>
    800068bc:	0905                	addi	s2,s2,1
    800068be:	09a1                	addi	s3,s3,8
    800068c0:	fb491be3          	bne	s2,s4,80006876 <sys_exec+0x58>
    800068c4:	10048913          	addi	s2,s1,256
    800068c8:	6088                	ld	a0,0(s1)
    800068ca:	c531                	beqz	a0,80006916 <sys_exec+0xf8>
    800068cc:	ffffa097          	auipc	ra,0xffffa
    800068d0:	194080e7          	jalr	404(ra) # 80000a60 <kfree>
    800068d4:	04a1                	addi	s1,s1,8
    800068d6:	ff2499e3          	bne	s1,s2,800068c8 <sys_exec+0xaa>
    800068da:	557d                	li	a0,-1
    800068dc:	a835                	j	80006918 <sys_exec+0xfa>
    800068de:	0a8e                	slli	s5,s5,0x3
    800068e0:	fc040793          	addi	a5,s0,-64
    800068e4:	9abe                	add	s5,s5,a5
    800068e6:	e80ab023          	sd	zero,-384(s5)
    800068ea:	e4040593          	addi	a1,s0,-448
    800068ee:	f4040513          	addi	a0,s0,-192
    800068f2:	fffff097          	auipc	ra,0xfffff
    800068f6:	190080e7          	jalr	400(ra) # 80005a82 <exec>
    800068fa:	892a                	mv	s2,a0
    800068fc:	10048993          	addi	s3,s1,256
    80006900:	6088                	ld	a0,0(s1)
    80006902:	c901                	beqz	a0,80006912 <sys_exec+0xf4>
    80006904:	ffffa097          	auipc	ra,0xffffa
    80006908:	15c080e7          	jalr	348(ra) # 80000a60 <kfree>
    8000690c:	04a1                	addi	s1,s1,8
    8000690e:	ff3499e3          	bne	s1,s3,80006900 <sys_exec+0xe2>
    80006912:	854a                	mv	a0,s2
    80006914:	a011                	j	80006918 <sys_exec+0xfa>
    80006916:	557d                	li	a0,-1
    80006918:	60be                	ld	ra,456(sp)
    8000691a:	641e                	ld	s0,448(sp)
    8000691c:	74fa                	ld	s1,440(sp)
    8000691e:	795a                	ld	s2,432(sp)
    80006920:	79ba                	ld	s3,424(sp)
    80006922:	7a1a                	ld	s4,416(sp)
    80006924:	6afa                	ld	s5,408(sp)
    80006926:	6179                	addi	sp,sp,464
    80006928:	8082                	ret

000000008000692a <sys_pipe>:
    8000692a:	7139                	addi	sp,sp,-64
    8000692c:	fc06                	sd	ra,56(sp)
    8000692e:	f822                	sd	s0,48(sp)
    80006930:	f426                	sd	s1,40(sp)
    80006932:	0080                	addi	s0,sp,64
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	4e4080e7          	jalr	1252(ra) # 80001e18 <myproc>
    8000693c:	84aa                	mv	s1,a0
    8000693e:	fd840593          	addi	a1,s0,-40
    80006942:	4501                	li	a0,0
    80006944:	ffffd097          	auipc	ra,0xffffd
    80006948:	df0080e7          	jalr	-528(ra) # 80003734 <argaddr>
    8000694c:	fc840593          	addi	a1,s0,-56
    80006950:	fd040513          	addi	a0,s0,-48
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	dd6080e7          	jalr	-554(ra) # 8000572a <pipealloc>
    8000695c:	57fd                	li	a5,-1
    8000695e:	0c054463          	bltz	a0,80006a26 <sys_pipe+0xfc>
    80006962:	fcf42223          	sw	a5,-60(s0)
    80006966:	fd043503          	ld	a0,-48(s0)
    8000696a:	fffff097          	auipc	ra,0xfffff
    8000696e:	518080e7          	jalr	1304(ra) # 80005e82 <fdalloc>
    80006972:	fca42223          	sw	a0,-60(s0)
    80006976:	08054b63          	bltz	a0,80006a0c <sys_pipe+0xe2>
    8000697a:	fc843503          	ld	a0,-56(s0)
    8000697e:	fffff097          	auipc	ra,0xfffff
    80006982:	504080e7          	jalr	1284(ra) # 80005e82 <fdalloc>
    80006986:	fca42023          	sw	a0,-64(s0)
    8000698a:	06054863          	bltz	a0,800069fa <sys_pipe+0xd0>
    8000698e:	4691                	li	a3,4
    80006990:	fc440613          	addi	a2,s0,-60
    80006994:	fd843583          	ld	a1,-40(s0)
    80006998:	68a8                	ld	a0,80(s1)
    8000699a:	ffffb097          	auipc	ra,0xffffb
    8000699e:	ef6080e7          	jalr	-266(ra) # 80001890 <copyout>
    800069a2:	02054063          	bltz	a0,800069c2 <sys_pipe+0x98>
    800069a6:	4691                	li	a3,4
    800069a8:	fc040613          	addi	a2,s0,-64
    800069ac:	fd843583          	ld	a1,-40(s0)
    800069b0:	0591                	addi	a1,a1,4
    800069b2:	68a8                	ld	a0,80(s1)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	edc080e7          	jalr	-292(ra) # 80001890 <copyout>
    800069bc:	4781                	li	a5,0
    800069be:	06055463          	bgez	a0,80006a26 <sys_pipe+0xfc>
    800069c2:	fc442783          	lw	a5,-60(s0)
    800069c6:	07e9                	addi	a5,a5,26
    800069c8:	078e                	slli	a5,a5,0x3
    800069ca:	97a6                	add	a5,a5,s1
    800069cc:	0007b023          	sd	zero,0(a5)
    800069d0:	fc042503          	lw	a0,-64(s0)
    800069d4:	0569                	addi	a0,a0,26
    800069d6:	050e                	slli	a0,a0,0x3
    800069d8:	94aa                	add	s1,s1,a0
    800069da:	0004b023          	sd	zero,0(s1)
    800069de:	fd043503          	ld	a0,-48(s0)
    800069e2:	fffff097          	auipc	ra,0xfffff
    800069e6:	a18080e7          	jalr	-1512(ra) # 800053fa <fileclose>
    800069ea:	fc843503          	ld	a0,-56(s0)
    800069ee:	fffff097          	auipc	ra,0xfffff
    800069f2:	a0c080e7          	jalr	-1524(ra) # 800053fa <fileclose>
    800069f6:	57fd                	li	a5,-1
    800069f8:	a03d                	j	80006a26 <sys_pipe+0xfc>
    800069fa:	fc442783          	lw	a5,-60(s0)
    800069fe:	0007c763          	bltz	a5,80006a0c <sys_pipe+0xe2>
    80006a02:	07e9                	addi	a5,a5,26
    80006a04:	078e                	slli	a5,a5,0x3
    80006a06:	94be                	add	s1,s1,a5
    80006a08:	0004b023          	sd	zero,0(s1)
    80006a0c:	fd043503          	ld	a0,-48(s0)
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	9ea080e7          	jalr	-1558(ra) # 800053fa <fileclose>
    80006a18:	fc843503          	ld	a0,-56(s0)
    80006a1c:	fffff097          	auipc	ra,0xfffff
    80006a20:	9de080e7          	jalr	-1570(ra) # 800053fa <fileclose>
    80006a24:	57fd                	li	a5,-1
    80006a26:	853e                	mv	a0,a5
    80006a28:	70e2                	ld	ra,56(sp)
    80006a2a:	7442                	ld	s0,48(sp)
    80006a2c:	74a2                	ld	s1,40(sp)
    80006a2e:	6121                	addi	sp,sp,64
    80006a30:	8082                	ret
	...

0000000080006a40 <kernelvec>:
    80006a40:	7111                	addi	sp,sp,-256
    80006a42:	e006                	sd	ra,0(sp)
    80006a44:	e40a                	sd	sp,8(sp)
    80006a46:	e80e                	sd	gp,16(sp)
    80006a48:	ec12                	sd	tp,24(sp)
    80006a4a:	f016                	sd	t0,32(sp)
    80006a4c:	f41a                	sd	t1,40(sp)
    80006a4e:	f81e                	sd	t2,48(sp)
    80006a50:	fc22                	sd	s0,56(sp)
    80006a52:	e0a6                	sd	s1,64(sp)
    80006a54:	e4aa                	sd	a0,72(sp)
    80006a56:	e8ae                	sd	a1,80(sp)
    80006a58:	ecb2                	sd	a2,88(sp)
    80006a5a:	f0b6                	sd	a3,96(sp)
    80006a5c:	f4ba                	sd	a4,104(sp)
    80006a5e:	f8be                	sd	a5,112(sp)
    80006a60:	fcc2                	sd	a6,120(sp)
    80006a62:	e146                	sd	a7,128(sp)
    80006a64:	e54a                	sd	s2,136(sp)
    80006a66:	e94e                	sd	s3,144(sp)
    80006a68:	ed52                	sd	s4,152(sp)
    80006a6a:	f156                	sd	s5,160(sp)
    80006a6c:	f55a                	sd	s6,168(sp)
    80006a6e:	f95e                	sd	s7,176(sp)
    80006a70:	fd62                	sd	s8,184(sp)
    80006a72:	e1e6                	sd	s9,192(sp)
    80006a74:	e5ea                	sd	s10,200(sp)
    80006a76:	e9ee                	sd	s11,208(sp)
    80006a78:	edf2                	sd	t3,216(sp)
    80006a7a:	f1f6                	sd	t4,224(sp)
    80006a7c:	f5fa                	sd	t5,232(sp)
    80006a7e:	f9fe                	sd	t6,240(sp)
    80006a80:	f90fc0ef          	jal	ra,80003210 <kerneltrap>
    80006a84:	6082                	ld	ra,0(sp)
    80006a86:	6122                	ld	sp,8(sp)
    80006a88:	61c2                	ld	gp,16(sp)
    80006a8a:	7282                	ld	t0,32(sp)
    80006a8c:	7322                	ld	t1,40(sp)
    80006a8e:	73c2                	ld	t2,48(sp)
    80006a90:	7462                	ld	s0,56(sp)
    80006a92:	6486                	ld	s1,64(sp)
    80006a94:	6526                	ld	a0,72(sp)
    80006a96:	65c6                	ld	a1,80(sp)
    80006a98:	6666                	ld	a2,88(sp)
    80006a9a:	7686                	ld	a3,96(sp)
    80006a9c:	7726                	ld	a4,104(sp)
    80006a9e:	77c6                	ld	a5,112(sp)
    80006aa0:	7866                	ld	a6,120(sp)
    80006aa2:	688a                	ld	a7,128(sp)
    80006aa4:	692a                	ld	s2,136(sp)
    80006aa6:	69ca                	ld	s3,144(sp)
    80006aa8:	6a6a                	ld	s4,152(sp)
    80006aaa:	7a8a                	ld	s5,160(sp)
    80006aac:	7b2a                	ld	s6,168(sp)
    80006aae:	7bca                	ld	s7,176(sp)
    80006ab0:	7c6a                	ld	s8,184(sp)
    80006ab2:	6c8e                	ld	s9,192(sp)
    80006ab4:	6d2e                	ld	s10,200(sp)
    80006ab6:	6dce                	ld	s11,208(sp)
    80006ab8:	6e6e                	ld	t3,216(sp)
    80006aba:	7e8e                	ld	t4,224(sp)
    80006abc:	7f2e                	ld	t5,232(sp)
    80006abe:	7fce                	ld	t6,240(sp)
    80006ac0:	6111                	addi	sp,sp,256
    80006ac2:	10200073          	sret
    80006ac6:	00000013          	nop
    80006aca:	00000013          	nop
    80006ace:	0001                	nop

0000000080006ad0 <timervec>:
    80006ad0:	34051573          	csrrw	a0,mscratch,a0
    80006ad4:	e10c                	sd	a1,0(a0)
    80006ad6:	e510                	sd	a2,8(a0)
    80006ad8:	e914                	sd	a3,16(a0)
    80006ada:	6d0c                	ld	a1,24(a0)
    80006adc:	7110                	ld	a2,32(a0)
    80006ade:	6194                	ld	a3,0(a1)
    80006ae0:	96b2                	add	a3,a3,a2
    80006ae2:	e194                	sd	a3,0(a1)
    80006ae4:	4589                	li	a1,2
    80006ae6:	14459073          	csrw	sip,a1
    80006aea:	6914                	ld	a3,16(a0)
    80006aec:	6510                	ld	a2,8(a0)
    80006aee:	610c                	ld	a1,0(a0)
    80006af0:	34051573          	csrrw	a0,mscratch,a0
    80006af4:	30200073          	mret
	...

0000000080006afa <plicinit>:
    80006afa:	1141                	addi	sp,sp,-16
    80006afc:	e422                	sd	s0,8(sp)
    80006afe:	0800                	addi	s0,sp,16
    80006b00:	0c0007b7          	lui	a5,0xc000
    80006b04:	4705                	li	a4,1
    80006b06:	d798                	sw	a4,40(a5)
    80006b08:	c3d8                	sw	a4,4(a5)
    80006b0a:	6422                	ld	s0,8(sp)
    80006b0c:	0141                	addi	sp,sp,16
    80006b0e:	8082                	ret

0000000080006b10 <plicinithart>:
    80006b10:	1141                	addi	sp,sp,-16
    80006b12:	e406                	sd	ra,8(sp)
    80006b14:	e022                	sd	s0,0(sp)
    80006b16:	0800                	addi	s0,sp,16
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	2d4080e7          	jalr	724(ra) # 80001dec <cpuid>
    80006b20:	0085171b          	slliw	a4,a0,0x8
    80006b24:	0c0027b7          	lui	a5,0xc002
    80006b28:	97ba                	add	a5,a5,a4
    80006b2a:	40200713          	li	a4,1026
    80006b2e:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b32:	00d5151b          	slliw	a0,a0,0xd
    80006b36:	0c2017b7          	lui	a5,0xc201
    80006b3a:	953e                	add	a0,a0,a5
    80006b3c:	00052023          	sw	zero,0(a0)
    80006b40:	60a2                	ld	ra,8(sp)
    80006b42:	6402                	ld	s0,0(sp)
    80006b44:	0141                	addi	sp,sp,16
    80006b46:	8082                	ret

0000000080006b48 <plic_claim>:
    80006b48:	1141                	addi	sp,sp,-16
    80006b4a:	e406                	sd	ra,8(sp)
    80006b4c:	e022                	sd	s0,0(sp)
    80006b4e:	0800                	addi	s0,sp,16
    80006b50:	ffffb097          	auipc	ra,0xffffb
    80006b54:	29c080e7          	jalr	668(ra) # 80001dec <cpuid>
    80006b58:	00d5179b          	slliw	a5,a0,0xd
    80006b5c:	0c201537          	lui	a0,0xc201
    80006b60:	953e                	add	a0,a0,a5
    80006b62:	4148                	lw	a0,4(a0)
    80006b64:	60a2                	ld	ra,8(sp)
    80006b66:	6402                	ld	s0,0(sp)
    80006b68:	0141                	addi	sp,sp,16
    80006b6a:	8082                	ret

0000000080006b6c <plic_complete>:
    80006b6c:	1101                	addi	sp,sp,-32
    80006b6e:	ec06                	sd	ra,24(sp)
    80006b70:	e822                	sd	s0,16(sp)
    80006b72:	e426                	sd	s1,8(sp)
    80006b74:	1000                	addi	s0,sp,32
    80006b76:	84aa                	mv	s1,a0
    80006b78:	ffffb097          	auipc	ra,0xffffb
    80006b7c:	274080e7          	jalr	628(ra) # 80001dec <cpuid>
    80006b80:	00d5151b          	slliw	a0,a0,0xd
    80006b84:	0c2017b7          	lui	a5,0xc201
    80006b88:	97aa                	add	a5,a5,a0
    80006b8a:	c3c4                	sw	s1,4(a5)
    80006b8c:	60e2                	ld	ra,24(sp)
    80006b8e:	6442                	ld	s0,16(sp)
    80006b90:	64a2                	ld	s1,8(sp)
    80006b92:	6105                	addi	sp,sp,32
    80006b94:	8082                	ret

0000000080006b96 <free_desc>:
    80006b96:	1141                	addi	sp,sp,-16
    80006b98:	e406                	sd	ra,8(sp)
    80006b9a:	e022                	sd	s0,0(sp)
    80006b9c:	0800                	addi	s0,sp,16
    80006b9e:	479d                	li	a5,7
    80006ba0:	04a7cc63          	blt	a5,a0,80006bf8 <free_desc+0x62>
    80006ba4:	00240797          	auipc	a5,0x240
    80006ba8:	3ac78793          	addi	a5,a5,940 # 80246f50 <disk>
    80006bac:	97aa                	add	a5,a5,a0
    80006bae:	0187c783          	lbu	a5,24(a5)
    80006bb2:	ebb9                	bnez	a5,80006c08 <free_desc+0x72>
    80006bb4:	00451613          	slli	a2,a0,0x4
    80006bb8:	00240797          	auipc	a5,0x240
    80006bbc:	39878793          	addi	a5,a5,920 # 80246f50 <disk>
    80006bc0:	6394                	ld	a3,0(a5)
    80006bc2:	96b2                	add	a3,a3,a2
    80006bc4:	0006b023          	sd	zero,0(a3)
    80006bc8:	6398                	ld	a4,0(a5)
    80006bca:	9732                	add	a4,a4,a2
    80006bcc:	00072423          	sw	zero,8(a4)
    80006bd0:	00071623          	sh	zero,12(a4)
    80006bd4:	00071723          	sh	zero,14(a4)
    80006bd8:	953e                	add	a0,a0,a5
    80006bda:	4785                	li	a5,1
    80006bdc:	00f50c23          	sb	a5,24(a0) # c201018 <_entry-0x73dfefe8>
    80006be0:	00240517          	auipc	a0,0x240
    80006be4:	38850513          	addi	a0,a0,904 # 80246f68 <disk+0x18>
    80006be8:	ffffc097          	auipc	ra,0xffffc
    80006bec:	988080e7          	jalr	-1656(ra) # 80002570 <wakeup>
    80006bf0:	60a2                	ld	ra,8(sp)
    80006bf2:	6402                	ld	s0,0(sp)
    80006bf4:	0141                	addi	sp,sp,16
    80006bf6:	8082                	ret
    80006bf8:	00003517          	auipc	a0,0x3
    80006bfc:	e8050513          	addi	a0,a0,-384 # 80009a78 <syscall_names+0x318>
    80006c00:	ffffa097          	auipc	ra,0xffffa
    80006c04:	944080e7          	jalr	-1724(ra) # 80000544 <panic>
    80006c08:	00003517          	auipc	a0,0x3
    80006c0c:	e8050513          	addi	a0,a0,-384 # 80009a88 <syscall_names+0x328>
    80006c10:	ffffa097          	auipc	ra,0xffffa
    80006c14:	934080e7          	jalr	-1740(ra) # 80000544 <panic>

0000000080006c18 <virtio_disk_init>:
    80006c18:	1101                	addi	sp,sp,-32
    80006c1a:	ec06                	sd	ra,24(sp)
    80006c1c:	e822                	sd	s0,16(sp)
    80006c1e:	e426                	sd	s1,8(sp)
    80006c20:	e04a                	sd	s2,0(sp)
    80006c22:	1000                	addi	s0,sp,32
    80006c24:	00003597          	auipc	a1,0x3
    80006c28:	e7458593          	addi	a1,a1,-396 # 80009a98 <syscall_names+0x338>
    80006c2c:	00240517          	auipc	a0,0x240
    80006c30:	44c50513          	addi	a0,a0,1100 # 80247078 <disk+0x128>
    80006c34:	ffffa097          	auipc	ra,0xffffa
    80006c38:	12a080e7          	jalr	298(ra) # 80000d5e <initlock>
    80006c3c:	100017b7          	lui	a5,0x10001
    80006c40:	4398                	lw	a4,0(a5)
    80006c42:	2701                	sext.w	a4,a4
    80006c44:	747277b7          	lui	a5,0x74727
    80006c48:	97678793          	addi	a5,a5,-1674 # 74726976 <_entry-0xb8d968a>
    80006c4c:	14f71e63          	bne	a4,a5,80006da8 <virtio_disk_init+0x190>
    80006c50:	100017b7          	lui	a5,0x10001
    80006c54:	43dc                	lw	a5,4(a5)
    80006c56:	2781                	sext.w	a5,a5
    80006c58:	4709                	li	a4,2
    80006c5a:	14e79763          	bne	a5,a4,80006da8 <virtio_disk_init+0x190>
    80006c5e:	100017b7          	lui	a5,0x10001
    80006c62:	479c                	lw	a5,8(a5)
    80006c64:	2781                	sext.w	a5,a5
    80006c66:	14e79163          	bne	a5,a4,80006da8 <virtio_disk_init+0x190>
    80006c6a:	100017b7          	lui	a5,0x10001
    80006c6e:	47d8                	lw	a4,12(a5)
    80006c70:	2701                	sext.w	a4,a4
    80006c72:	554d47b7          	lui	a5,0x554d4
    80006c76:	55178793          	addi	a5,a5,1361 # 554d4551 <_entry-0x2ab2baaf>
    80006c7a:	12f71763          	bne	a4,a5,80006da8 <virtio_disk_init+0x190>
    80006c7e:	100017b7          	lui	a5,0x10001
    80006c82:	0607a823          	sw	zero,112(a5) # 10001070 <_entry-0x6fffef90>
    80006c86:	4705                	li	a4,1
    80006c88:	dbb8                	sw	a4,112(a5)
    80006c8a:	470d                	li	a4,3
    80006c8c:	dbb8                	sw	a4,112(a5)
    80006c8e:	4b94                	lw	a3,16(a5)
    80006c90:	c7ffe737          	lui	a4,0xc7ffe
    80006c94:	75f70713          	addi	a4,a4,1887 # ffffffffc7ffe75f <end+0xffffffff47db76cf>
    80006c98:	8f75                	and	a4,a4,a3
    80006c9a:	2701                	sext.w	a4,a4
    80006c9c:	d398                	sw	a4,32(a5)
    80006c9e:	472d                	li	a4,11
    80006ca0:	dbb8                	sw	a4,112(a5)
    80006ca2:	0707a903          	lw	s2,112(a5)
    80006ca6:	2901                	sext.w	s2,s2
    80006ca8:	00897793          	andi	a5,s2,8
    80006cac:	10078663          	beqz	a5,80006db8 <virtio_disk_init+0x1a0>
    80006cb0:	100017b7          	lui	a5,0x10001
    80006cb4:	0207a823          	sw	zero,48(a5) # 10001030 <_entry-0x6fffefd0>
    80006cb8:	43fc                	lw	a5,68(a5)
    80006cba:	2781                	sext.w	a5,a5
    80006cbc:	10079663          	bnez	a5,80006dc8 <virtio_disk_init+0x1b0>
    80006cc0:	100017b7          	lui	a5,0x10001
    80006cc4:	5bdc                	lw	a5,52(a5)
    80006cc6:	2781                	sext.w	a5,a5
    80006cc8:	10078863          	beqz	a5,80006dd8 <virtio_disk_init+0x1c0>
    80006ccc:	471d                	li	a4,7
    80006cce:	10f77d63          	bgeu	a4,a5,80006de8 <virtio_disk_init+0x1d0>
    80006cd2:	ffffa097          	auipc	ra,0xffffa
    80006cd6:	fc4080e7          	jalr	-60(ra) # 80000c96 <kalloc>
    80006cda:	00240497          	auipc	s1,0x240
    80006cde:	27648493          	addi	s1,s1,630 # 80246f50 <disk>
    80006ce2:	e088                	sd	a0,0(s1)
    80006ce4:	ffffa097          	auipc	ra,0xffffa
    80006ce8:	fb2080e7          	jalr	-78(ra) # 80000c96 <kalloc>
    80006cec:	e488                	sd	a0,8(s1)
    80006cee:	ffffa097          	auipc	ra,0xffffa
    80006cf2:	fa8080e7          	jalr	-88(ra) # 80000c96 <kalloc>
    80006cf6:	87aa                	mv	a5,a0
    80006cf8:	e888                	sd	a0,16(s1)
    80006cfa:	6088                	ld	a0,0(s1)
    80006cfc:	cd75                	beqz	a0,80006df8 <virtio_disk_init+0x1e0>
    80006cfe:	00240717          	auipc	a4,0x240
    80006d02:	25a73703          	ld	a4,602(a4) # 80246f58 <disk+0x8>
    80006d06:	cb6d                	beqz	a4,80006df8 <virtio_disk_init+0x1e0>
    80006d08:	cbe5                	beqz	a5,80006df8 <virtio_disk_init+0x1e0>
    80006d0a:	6605                	lui	a2,0x1
    80006d0c:	4581                	li	a1,0
    80006d0e:	ffffa097          	auipc	ra,0xffffa
    80006d12:	1dc080e7          	jalr	476(ra) # 80000eea <memset>
    80006d16:	00240497          	auipc	s1,0x240
    80006d1a:	23a48493          	addi	s1,s1,570 # 80246f50 <disk>
    80006d1e:	6605                	lui	a2,0x1
    80006d20:	4581                	li	a1,0
    80006d22:	6488                	ld	a0,8(s1)
    80006d24:	ffffa097          	auipc	ra,0xffffa
    80006d28:	1c6080e7          	jalr	454(ra) # 80000eea <memset>
    80006d2c:	6605                	lui	a2,0x1
    80006d2e:	4581                	li	a1,0
    80006d30:	6888                	ld	a0,16(s1)
    80006d32:	ffffa097          	auipc	ra,0xffffa
    80006d36:	1b8080e7          	jalr	440(ra) # 80000eea <memset>
    80006d3a:	100017b7          	lui	a5,0x10001
    80006d3e:	4721                	li	a4,8
    80006d40:	df98                	sw	a4,56(a5)
    80006d42:	4098                	lw	a4,0(s1)
    80006d44:	08e7a023          	sw	a4,128(a5) # 10001080 <_entry-0x6fffef80>
    80006d48:	40d8                	lw	a4,4(s1)
    80006d4a:	08e7a223          	sw	a4,132(a5)
    80006d4e:	6498                	ld	a4,8(s1)
    80006d50:	0007069b          	sext.w	a3,a4
    80006d54:	08d7a823          	sw	a3,144(a5)
    80006d58:	9701                	srai	a4,a4,0x20
    80006d5a:	08e7aa23          	sw	a4,148(a5)
    80006d5e:	6898                	ld	a4,16(s1)
    80006d60:	0007069b          	sext.w	a3,a4
    80006d64:	0ad7a023          	sw	a3,160(a5)
    80006d68:	9701                	srai	a4,a4,0x20
    80006d6a:	0ae7a223          	sw	a4,164(a5)
    80006d6e:	4685                	li	a3,1
    80006d70:	c3f4                	sw	a3,68(a5)
    80006d72:	4705                	li	a4,1
    80006d74:	00d48c23          	sb	a3,24(s1)
    80006d78:	00e48ca3          	sb	a4,25(s1)
    80006d7c:	00e48d23          	sb	a4,26(s1)
    80006d80:	00e48da3          	sb	a4,27(s1)
    80006d84:	00e48e23          	sb	a4,28(s1)
    80006d88:	00e48ea3          	sb	a4,29(s1)
    80006d8c:	00e48f23          	sb	a4,30(s1)
    80006d90:	00e48fa3          	sb	a4,31(s1)
    80006d94:	00496913          	ori	s2,s2,4
    80006d98:	0727a823          	sw	s2,112(a5)
    80006d9c:	60e2                	ld	ra,24(sp)
    80006d9e:	6442                	ld	s0,16(sp)
    80006da0:	64a2                	ld	s1,8(sp)
    80006da2:	6902                	ld	s2,0(sp)
    80006da4:	6105                	addi	sp,sp,32
    80006da6:	8082                	ret
    80006da8:	00003517          	auipc	a0,0x3
    80006dac:	d0050513          	addi	a0,a0,-768 # 80009aa8 <syscall_names+0x348>
    80006db0:	ffff9097          	auipc	ra,0xffff9
    80006db4:	794080e7          	jalr	1940(ra) # 80000544 <panic>
    80006db8:	00003517          	auipc	a0,0x3
    80006dbc:	d1050513          	addi	a0,a0,-752 # 80009ac8 <syscall_names+0x368>
    80006dc0:	ffff9097          	auipc	ra,0xffff9
    80006dc4:	784080e7          	jalr	1924(ra) # 80000544 <panic>
    80006dc8:	00003517          	auipc	a0,0x3
    80006dcc:	d2050513          	addi	a0,a0,-736 # 80009ae8 <syscall_names+0x388>
    80006dd0:	ffff9097          	auipc	ra,0xffff9
    80006dd4:	774080e7          	jalr	1908(ra) # 80000544 <panic>
    80006dd8:	00003517          	auipc	a0,0x3
    80006ddc:	d3050513          	addi	a0,a0,-720 # 80009b08 <syscall_names+0x3a8>
    80006de0:	ffff9097          	auipc	ra,0xffff9
    80006de4:	764080e7          	jalr	1892(ra) # 80000544 <panic>
    80006de8:	00003517          	auipc	a0,0x3
    80006dec:	d4050513          	addi	a0,a0,-704 # 80009b28 <syscall_names+0x3c8>
    80006df0:	ffff9097          	auipc	ra,0xffff9
    80006df4:	754080e7          	jalr	1876(ra) # 80000544 <panic>
    80006df8:	00003517          	auipc	a0,0x3
    80006dfc:	d5050513          	addi	a0,a0,-688 # 80009b48 <syscall_names+0x3e8>
    80006e00:	ffff9097          	auipc	ra,0xffff9
    80006e04:	744080e7          	jalr	1860(ra) # 80000544 <panic>

0000000080006e08 <virtio_disk_rw>:
    80006e08:	7159                	addi	sp,sp,-112
    80006e0a:	f486                	sd	ra,104(sp)
    80006e0c:	f0a2                	sd	s0,96(sp)
    80006e0e:	eca6                	sd	s1,88(sp)
    80006e10:	e8ca                	sd	s2,80(sp)
    80006e12:	e4ce                	sd	s3,72(sp)
    80006e14:	e0d2                	sd	s4,64(sp)
    80006e16:	fc56                	sd	s5,56(sp)
    80006e18:	f85a                	sd	s6,48(sp)
    80006e1a:	f45e                	sd	s7,40(sp)
    80006e1c:	f062                	sd	s8,32(sp)
    80006e1e:	ec66                	sd	s9,24(sp)
    80006e20:	e86a                	sd	s10,16(sp)
    80006e22:	1880                	addi	s0,sp,112
    80006e24:	892a                	mv	s2,a0
    80006e26:	8d2e                	mv	s10,a1
    80006e28:	00c52c83          	lw	s9,12(a0)
    80006e2c:	001c9c9b          	slliw	s9,s9,0x1
    80006e30:	1c82                	slli	s9,s9,0x20
    80006e32:	020cdc93          	srli	s9,s9,0x20
    80006e36:	00240517          	auipc	a0,0x240
    80006e3a:	24250513          	addi	a0,a0,578 # 80247078 <disk+0x128>
    80006e3e:	ffffa097          	auipc	ra,0xffffa
    80006e42:	fb0080e7          	jalr	-80(ra) # 80000dee <acquire>
    80006e46:	4981                	li	s3,0
    80006e48:	4ba1                	li	s7,8
    80006e4a:	00240b17          	auipc	s6,0x240
    80006e4e:	106b0b13          	addi	s6,s6,262 # 80246f50 <disk>
    80006e52:	4a8d                	li	s5,3
    80006e54:	8a4e                	mv	s4,s3
    80006e56:	00240c17          	auipc	s8,0x240
    80006e5a:	222c0c13          	addi	s8,s8,546 # 80247078 <disk+0x128>
    80006e5e:	a8b5                	j	80006eda <virtio_disk_rw+0xd2>
    80006e60:	00fb06b3          	add	a3,s6,a5
    80006e64:	00068c23          	sb	zero,24(a3)
    80006e68:	c21c                	sw	a5,0(a2)
    80006e6a:	0207c563          	bltz	a5,80006e94 <virtio_disk_rw+0x8c>
    80006e6e:	2485                	addiw	s1,s1,1
    80006e70:	0711                	addi	a4,a4,4
    80006e72:	1f548a63          	beq	s1,s5,80007066 <virtio_disk_rw+0x25e>
    80006e76:	863a                	mv	a2,a4
    80006e78:	00240697          	auipc	a3,0x240
    80006e7c:	0d868693          	addi	a3,a3,216 # 80246f50 <disk>
    80006e80:	87d2                	mv	a5,s4
    80006e82:	0186c583          	lbu	a1,24(a3)
    80006e86:	fde9                	bnez	a1,80006e60 <virtio_disk_rw+0x58>
    80006e88:	2785                	addiw	a5,a5,1
    80006e8a:	0685                	addi	a3,a3,1
    80006e8c:	ff779be3          	bne	a5,s7,80006e82 <virtio_disk_rw+0x7a>
    80006e90:	57fd                	li	a5,-1
    80006e92:	c21c                	sw	a5,0(a2)
    80006e94:	02905a63          	blez	s1,80006ec8 <virtio_disk_rw+0xc0>
    80006e98:	f9042503          	lw	a0,-112(s0)
    80006e9c:	00000097          	auipc	ra,0x0
    80006ea0:	cfa080e7          	jalr	-774(ra) # 80006b96 <free_desc>
    80006ea4:	4785                	li	a5,1
    80006ea6:	0297d163          	bge	a5,s1,80006ec8 <virtio_disk_rw+0xc0>
    80006eaa:	f9442503          	lw	a0,-108(s0)
    80006eae:	00000097          	auipc	ra,0x0
    80006eb2:	ce8080e7          	jalr	-792(ra) # 80006b96 <free_desc>
    80006eb6:	4789                	li	a5,2
    80006eb8:	0097d863          	bge	a5,s1,80006ec8 <virtio_disk_rw+0xc0>
    80006ebc:	f9842503          	lw	a0,-104(s0)
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	cd6080e7          	jalr	-810(ra) # 80006b96 <free_desc>
    80006ec8:	85e2                	mv	a1,s8
    80006eca:	00240517          	auipc	a0,0x240
    80006ece:	09e50513          	addi	a0,a0,158 # 80246f68 <disk+0x18>
    80006ed2:	ffffb097          	auipc	ra,0xffffb
    80006ed6:	628080e7          	jalr	1576(ra) # 800024fa <sleep>
    80006eda:	f9040713          	addi	a4,s0,-112
    80006ede:	84ce                	mv	s1,s3
    80006ee0:	bf59                	j	80006e76 <virtio_disk_rw+0x6e>
    80006ee2:	00a60793          	addi	a5,a2,10 # 100a <_entry-0x7fffeff6>
    80006ee6:	00479693          	slli	a3,a5,0x4
    80006eea:	00240797          	auipc	a5,0x240
    80006eee:	06678793          	addi	a5,a5,102 # 80246f50 <disk>
    80006ef2:	97b6                	add	a5,a5,a3
    80006ef4:	4685                	li	a3,1
    80006ef6:	c794                	sw	a3,8(a5)
    80006ef8:	00240597          	auipc	a1,0x240
    80006efc:	05858593          	addi	a1,a1,88 # 80246f50 <disk>
    80006f00:	00a60793          	addi	a5,a2,10
    80006f04:	0792                	slli	a5,a5,0x4
    80006f06:	97ae                	add	a5,a5,a1
    80006f08:	0007a623          	sw	zero,12(a5)
    80006f0c:	0197b823          	sd	s9,16(a5)
    80006f10:	f6070693          	addi	a3,a4,-160
    80006f14:	619c                	ld	a5,0(a1)
    80006f16:	97b6                	add	a5,a5,a3
    80006f18:	e388                	sd	a0,0(a5)
    80006f1a:	6188                	ld	a0,0(a1)
    80006f1c:	96aa                	add	a3,a3,a0
    80006f1e:	47c1                	li	a5,16
    80006f20:	c69c                	sw	a5,8(a3)
    80006f22:	4785                	li	a5,1
    80006f24:	00f69623          	sh	a5,12(a3)
    80006f28:	f9442783          	lw	a5,-108(s0)
    80006f2c:	00f69723          	sh	a5,14(a3)
    80006f30:	0792                	slli	a5,a5,0x4
    80006f32:	953e                	add	a0,a0,a5
    80006f34:	05890693          	addi	a3,s2,88
    80006f38:	e114                	sd	a3,0(a0)
    80006f3a:	6188                	ld	a0,0(a1)
    80006f3c:	97aa                	add	a5,a5,a0
    80006f3e:	40000693          	li	a3,1024
    80006f42:	c794                	sw	a3,8(a5)
    80006f44:	100d0d63          	beqz	s10,8000705e <virtio_disk_rw+0x256>
    80006f48:	00079623          	sh	zero,12(a5)
    80006f4c:	00c7d683          	lhu	a3,12(a5)
    80006f50:	0016e693          	ori	a3,a3,1
    80006f54:	00d79623          	sh	a3,12(a5)
    80006f58:	f9842583          	lw	a1,-104(s0)
    80006f5c:	00b79723          	sh	a1,14(a5)
    80006f60:	00240697          	auipc	a3,0x240
    80006f64:	ff068693          	addi	a3,a3,-16 # 80246f50 <disk>
    80006f68:	00260793          	addi	a5,a2,2
    80006f6c:	0792                	slli	a5,a5,0x4
    80006f6e:	97b6                	add	a5,a5,a3
    80006f70:	587d                	li	a6,-1
    80006f72:	01078823          	sb	a6,16(a5)
    80006f76:	0592                	slli	a1,a1,0x4
    80006f78:	952e                	add	a0,a0,a1
    80006f7a:	f9070713          	addi	a4,a4,-112
    80006f7e:	9736                	add	a4,a4,a3
    80006f80:	e118                	sd	a4,0(a0)
    80006f82:	6298                	ld	a4,0(a3)
    80006f84:	972e                	add	a4,a4,a1
    80006f86:	4585                	li	a1,1
    80006f88:	c70c                	sw	a1,8(a4)
    80006f8a:	4509                	li	a0,2
    80006f8c:	00a71623          	sh	a0,12(a4)
    80006f90:	00071723          	sh	zero,14(a4)
    80006f94:	00b92223          	sw	a1,4(s2)
    80006f98:	0127b423          	sd	s2,8(a5)
    80006f9c:	6698                	ld	a4,8(a3)
    80006f9e:	00275783          	lhu	a5,2(a4)
    80006fa2:	8b9d                	andi	a5,a5,7
    80006fa4:	0786                	slli	a5,a5,0x1
    80006fa6:	97ba                	add	a5,a5,a4
    80006fa8:	00c79223          	sh	a2,4(a5)
    80006fac:	0ff0000f          	fence
    80006fb0:	6698                	ld	a4,8(a3)
    80006fb2:	00275783          	lhu	a5,2(a4)
    80006fb6:	2785                	addiw	a5,a5,1
    80006fb8:	00f71123          	sh	a5,2(a4)
    80006fbc:	0ff0000f          	fence
    80006fc0:	100017b7          	lui	a5,0x10001
    80006fc4:	0407a823          	sw	zero,80(a5) # 10001050 <_entry-0x6fffefb0>
    80006fc8:	00492703          	lw	a4,4(s2)
    80006fcc:	4785                	li	a5,1
    80006fce:	02f71163          	bne	a4,a5,80006ff0 <virtio_disk_rw+0x1e8>
    80006fd2:	00240997          	auipc	s3,0x240
    80006fd6:	0a698993          	addi	s3,s3,166 # 80247078 <disk+0x128>
    80006fda:	4485                	li	s1,1
    80006fdc:	85ce                	mv	a1,s3
    80006fde:	854a                	mv	a0,s2
    80006fe0:	ffffb097          	auipc	ra,0xffffb
    80006fe4:	51a080e7          	jalr	1306(ra) # 800024fa <sleep>
    80006fe8:	00492783          	lw	a5,4(s2)
    80006fec:	fe9788e3          	beq	a5,s1,80006fdc <virtio_disk_rw+0x1d4>
    80006ff0:	f9042903          	lw	s2,-112(s0)
    80006ff4:	00290793          	addi	a5,s2,2
    80006ff8:	00479713          	slli	a4,a5,0x4
    80006ffc:	00240797          	auipc	a5,0x240
    80007000:	f5478793          	addi	a5,a5,-172 # 80246f50 <disk>
    80007004:	97ba                	add	a5,a5,a4
    80007006:	0007b423          	sd	zero,8(a5)
    8000700a:	00240997          	auipc	s3,0x240
    8000700e:	f4698993          	addi	s3,s3,-186 # 80246f50 <disk>
    80007012:	00491713          	slli	a4,s2,0x4
    80007016:	0009b783          	ld	a5,0(s3)
    8000701a:	97ba                	add	a5,a5,a4
    8000701c:	00c7d483          	lhu	s1,12(a5)
    80007020:	854a                	mv	a0,s2
    80007022:	00e7d903          	lhu	s2,14(a5)
    80007026:	00000097          	auipc	ra,0x0
    8000702a:	b70080e7          	jalr	-1168(ra) # 80006b96 <free_desc>
    8000702e:	8885                	andi	s1,s1,1
    80007030:	f0ed                	bnez	s1,80007012 <virtio_disk_rw+0x20a>
    80007032:	00240517          	auipc	a0,0x240
    80007036:	04650513          	addi	a0,a0,70 # 80247078 <disk+0x128>
    8000703a:	ffffa097          	auipc	ra,0xffffa
    8000703e:	e68080e7          	jalr	-408(ra) # 80000ea2 <release>
    80007042:	70a6                	ld	ra,104(sp)
    80007044:	7406                	ld	s0,96(sp)
    80007046:	64e6                	ld	s1,88(sp)
    80007048:	6946                	ld	s2,80(sp)
    8000704a:	69a6                	ld	s3,72(sp)
    8000704c:	6a06                	ld	s4,64(sp)
    8000704e:	7ae2                	ld	s5,56(sp)
    80007050:	7b42                	ld	s6,48(sp)
    80007052:	7ba2                	ld	s7,40(sp)
    80007054:	7c02                	ld	s8,32(sp)
    80007056:	6ce2                	ld	s9,24(sp)
    80007058:	6d42                	ld	s10,16(sp)
    8000705a:	6165                	addi	sp,sp,112
    8000705c:	8082                	ret
    8000705e:	4689                	li	a3,2
    80007060:	00d79623          	sh	a3,12(a5)
    80007064:	b5e5                	j	80006f4c <virtio_disk_rw+0x144>
    80007066:	f9042603          	lw	a2,-112(s0)
    8000706a:	00a60713          	addi	a4,a2,10
    8000706e:	0712                	slli	a4,a4,0x4
    80007070:	00240517          	auipc	a0,0x240
    80007074:	ee850513          	addi	a0,a0,-280 # 80246f58 <disk+0x8>
    80007078:	953a                	add	a0,a0,a4
    8000707a:	e60d14e3          	bnez	s10,80006ee2 <virtio_disk_rw+0xda>
    8000707e:	00a60793          	addi	a5,a2,10
    80007082:	00479693          	slli	a3,a5,0x4
    80007086:	00240797          	auipc	a5,0x240
    8000708a:	eca78793          	addi	a5,a5,-310 # 80246f50 <disk>
    8000708e:	97b6                	add	a5,a5,a3
    80007090:	0007a423          	sw	zero,8(a5)
    80007094:	b595                	j	80006ef8 <virtio_disk_rw+0xf0>

0000000080007096 <virtio_disk_intr>:
    80007096:	1101                	addi	sp,sp,-32
    80007098:	ec06                	sd	ra,24(sp)
    8000709a:	e822                	sd	s0,16(sp)
    8000709c:	e426                	sd	s1,8(sp)
    8000709e:	1000                	addi	s0,sp,32
    800070a0:	00240497          	auipc	s1,0x240
    800070a4:	eb048493          	addi	s1,s1,-336 # 80246f50 <disk>
    800070a8:	00240517          	auipc	a0,0x240
    800070ac:	fd050513          	addi	a0,a0,-48 # 80247078 <disk+0x128>
    800070b0:	ffffa097          	auipc	ra,0xffffa
    800070b4:	d3e080e7          	jalr	-706(ra) # 80000dee <acquire>
    800070b8:	10001737          	lui	a4,0x10001
    800070bc:	533c                	lw	a5,96(a4)
    800070be:	8b8d                	andi	a5,a5,3
    800070c0:	d37c                	sw	a5,100(a4)
    800070c2:	0ff0000f          	fence
    800070c6:	689c                	ld	a5,16(s1)
    800070c8:	0204d703          	lhu	a4,32(s1)
    800070cc:	0027d783          	lhu	a5,2(a5)
    800070d0:	04f70863          	beq	a4,a5,80007120 <virtio_disk_intr+0x8a>
    800070d4:	0ff0000f          	fence
    800070d8:	6898                	ld	a4,16(s1)
    800070da:	0204d783          	lhu	a5,32(s1)
    800070de:	8b9d                	andi	a5,a5,7
    800070e0:	078e                	slli	a5,a5,0x3
    800070e2:	97ba                	add	a5,a5,a4
    800070e4:	43dc                	lw	a5,4(a5)
    800070e6:	00278713          	addi	a4,a5,2
    800070ea:	0712                	slli	a4,a4,0x4
    800070ec:	9726                	add	a4,a4,s1
    800070ee:	01074703          	lbu	a4,16(a4) # 10001010 <_entry-0x6fffeff0>
    800070f2:	e721                	bnez	a4,8000713a <virtio_disk_intr+0xa4>
    800070f4:	0789                	addi	a5,a5,2
    800070f6:	0792                	slli	a5,a5,0x4
    800070f8:	97a6                	add	a5,a5,s1
    800070fa:	6788                	ld	a0,8(a5)
    800070fc:	00052223          	sw	zero,4(a0)
    80007100:	ffffb097          	auipc	ra,0xffffb
    80007104:	470080e7          	jalr	1136(ra) # 80002570 <wakeup>
    80007108:	0204d783          	lhu	a5,32(s1)
    8000710c:	2785                	addiw	a5,a5,1
    8000710e:	17c2                	slli	a5,a5,0x30
    80007110:	93c1                	srli	a5,a5,0x30
    80007112:	02f49023          	sh	a5,32(s1)
    80007116:	6898                	ld	a4,16(s1)
    80007118:	00275703          	lhu	a4,2(a4)
    8000711c:	faf71ce3          	bne	a4,a5,800070d4 <virtio_disk_intr+0x3e>
    80007120:	00240517          	auipc	a0,0x240
    80007124:	f5850513          	addi	a0,a0,-168 # 80247078 <disk+0x128>
    80007128:	ffffa097          	auipc	ra,0xffffa
    8000712c:	d7a080e7          	jalr	-646(ra) # 80000ea2 <release>
    80007130:	60e2                	ld	ra,24(sp)
    80007132:	6442                	ld	s0,16(sp)
    80007134:	64a2                	ld	s1,8(sp)
    80007136:	6105                	addi	sp,sp,32
    80007138:	8082                	ret
    8000713a:	00003517          	auipc	a0,0x3
    8000713e:	a2650513          	addi	a0,a0,-1498 # 80009b60 <syscall_names+0x400>
    80007142:	ffff9097          	auipc	ra,0xffff9
    80007146:	402080e7          	jalr	1026(ra) # 80000544 <panic>
	...

0000000080008000 <_trampoline>:
    80008000:	14051073          	csrw	sscratch,a0
    80008004:	02000537          	lui	a0,0x2000
    80008008:	357d                	addiw	a0,a0,-1
    8000800a:	0536                	slli	a0,a0,0xd
    8000800c:	02153423          	sd	ra,40(a0) # 2000028 <_entry-0x7dffffd8>
    80008010:	02253823          	sd	sp,48(a0)
    80008014:	02353c23          	sd	gp,56(a0)
    80008018:	04453023          	sd	tp,64(a0)
    8000801c:	04553423          	sd	t0,72(a0)
    80008020:	04653823          	sd	t1,80(a0)
    80008024:	04753c23          	sd	t2,88(a0)
    80008028:	f120                	sd	s0,96(a0)
    8000802a:	f524                	sd	s1,104(a0)
    8000802c:	fd2c                	sd	a1,120(a0)
    8000802e:	e150                	sd	a2,128(a0)
    80008030:	e554                	sd	a3,136(a0)
    80008032:	e958                	sd	a4,144(a0)
    80008034:	ed5c                	sd	a5,152(a0)
    80008036:	0b053023          	sd	a6,160(a0)
    8000803a:	0b153423          	sd	a7,168(a0)
    8000803e:	0b253823          	sd	s2,176(a0)
    80008042:	0b353c23          	sd	s3,184(a0)
    80008046:	0d453023          	sd	s4,192(a0)
    8000804a:	0d553423          	sd	s5,200(a0)
    8000804e:	0d653823          	sd	s6,208(a0)
    80008052:	0d753c23          	sd	s7,216(a0)
    80008056:	0f853023          	sd	s8,224(a0)
    8000805a:	0f953423          	sd	s9,232(a0)
    8000805e:	0fa53823          	sd	s10,240(a0)
    80008062:	0fb53c23          	sd	s11,248(a0)
    80008066:	11c53023          	sd	t3,256(a0)
    8000806a:	11d53423          	sd	t4,264(a0)
    8000806e:	11e53823          	sd	t5,272(a0)
    80008072:	11f53c23          	sd	t6,280(a0)
    80008076:	140022f3          	csrr	t0,sscratch
    8000807a:	06553823          	sd	t0,112(a0)
    8000807e:	00853103          	ld	sp,8(a0)
    80008082:	02053203          	ld	tp,32(a0)
    80008086:	01053283          	ld	t0,16(a0)
    8000808a:	00053303          	ld	t1,0(a0)
    8000808e:	12000073          	sfence.vma
    80008092:	18031073          	csrw	satp,t1
    80008096:	12000073          	sfence.vma
    8000809a:	8282                	jr	t0

000000008000809c <userret>:
    8000809c:	12000073          	sfence.vma
    800080a0:	18051073          	csrw	satp,a0
    800080a4:	12000073          	sfence.vma
    800080a8:	02000537          	lui	a0,0x2000
    800080ac:	357d                	addiw	a0,a0,-1
    800080ae:	0536                	slli	a0,a0,0xd
    800080b0:	02853083          	ld	ra,40(a0) # 2000028 <_entry-0x7dffffd8>
    800080b4:	03053103          	ld	sp,48(a0)
    800080b8:	03853183          	ld	gp,56(a0)
    800080bc:	04053203          	ld	tp,64(a0)
    800080c0:	04853283          	ld	t0,72(a0)
    800080c4:	05053303          	ld	t1,80(a0)
    800080c8:	05853383          	ld	t2,88(a0)
    800080cc:	7120                	ld	s0,96(a0)
    800080ce:	7524                	ld	s1,104(a0)
    800080d0:	7d2c                	ld	a1,120(a0)
    800080d2:	6150                	ld	a2,128(a0)
    800080d4:	6554                	ld	a3,136(a0)
    800080d6:	6958                	ld	a4,144(a0)
    800080d8:	6d5c                	ld	a5,152(a0)
    800080da:	0a053803          	ld	a6,160(a0)
    800080de:	0a853883          	ld	a7,168(a0)
    800080e2:	0b053903          	ld	s2,176(a0)
    800080e6:	0b853983          	ld	s3,184(a0)
    800080ea:	0c053a03          	ld	s4,192(a0)
    800080ee:	0c853a83          	ld	s5,200(a0)
    800080f2:	0d053b03          	ld	s6,208(a0)
    800080f6:	0d853b83          	ld	s7,216(a0)
    800080fa:	0e053c03          	ld	s8,224(a0)
    800080fe:	0e853c83          	ld	s9,232(a0)
    80008102:	0f053d03          	ld	s10,240(a0)
    80008106:	0f853d83          	ld	s11,248(a0)
    8000810a:	10053e03          	ld	t3,256(a0)
    8000810e:	10853e83          	ld	t4,264(a0)
    80008112:	11053f03          	ld	t5,272(a0)
    80008116:	11853f83          	ld	t6,280(a0)
    8000811a:	7928                	ld	a0,112(a0)
    8000811c:	10200073          	sret
	...
