
user/_usertests:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <copyinstr1>:
       0:	1141                	addi	sp,sp,-16
       2:	e406                	sd	ra,8(sp)
       4:	e022                	sd	s0,0(sp)
       6:	0800                	addi	s0,sp,16
       8:	20100593          	li	a1,513
       c:	4505                	li	a0,1
       e:	057e                	slli	a0,a0,0x1f
      10:	00006097          	auipc	ra,0x6
      14:	b92080e7          	jalr	-1134(ra) # 5ba2 <open>
      18:	02055063          	bgez	a0,38 <copyinstr1+0x38>
      1c:	20100593          	li	a1,513
      20:	557d                	li	a0,-1
      22:	00006097          	auipc	ra,0x6
      26:	b80080e7          	jalr	-1152(ra) # 5ba2 <open>
      2a:	55fd                	li	a1,-1
      2c:	00055863          	bgez	a0,3c <copyinstr1+0x3c>
      30:	60a2                	ld	ra,8(sp)
      32:	6402                	ld	s0,0(sp)
      34:	0141                	addi	sp,sp,16
      36:	8082                	ret
      38:	4585                	li	a1,1
      3a:	05fe                	slli	a1,a1,0x1f
      3c:	862a                	mv	a2,a0
      3e:	00006517          	auipc	a0,0x6
      42:	09250513          	addi	a0,a0,146 # 60d0 <malloc+0x110>
      46:	00006097          	auipc	ra,0x6
      4a:	ebc080e7          	jalr	-324(ra) # 5f02 <printf>
      4e:	4505                	li	a0,1
      50:	00006097          	auipc	ra,0x6
      54:	b12080e7          	jalr	-1262(ra) # 5b62 <exit>

0000000000000058 <bsstest>:
      58:	0000a797          	auipc	a5,0xa
      5c:	50078793          	addi	a5,a5,1280 # a558 <uninit>
      60:	0000d697          	auipc	a3,0xd
      64:	c0868693          	addi	a3,a3,-1016 # cc68 <buf>
      68:	0007c703          	lbu	a4,0(a5)
      6c:	e709                	bnez	a4,76 <bsstest+0x1e>
      6e:	0785                	addi	a5,a5,1
      70:	fed79ce3          	bne	a5,a3,68 <bsstest+0x10>
      74:	8082                	ret
      76:	1141                	addi	sp,sp,-16
      78:	e406                	sd	ra,8(sp)
      7a:	e022                	sd	s0,0(sp)
      7c:	0800                	addi	s0,sp,16
      7e:	85aa                	mv	a1,a0
      80:	00006517          	auipc	a0,0x6
      84:	07050513          	addi	a0,a0,112 # 60f0 <malloc+0x130>
      88:	00006097          	auipc	ra,0x6
      8c:	e7a080e7          	jalr	-390(ra) # 5f02 <printf>
      90:	4505                	li	a0,1
      92:	00006097          	auipc	ra,0x6
      96:	ad0080e7          	jalr	-1328(ra) # 5b62 <exit>

000000000000009a <opentest>:
      9a:	1101                	addi	sp,sp,-32
      9c:	ec06                	sd	ra,24(sp)
      9e:	e822                	sd	s0,16(sp)
      a0:	e426                	sd	s1,8(sp)
      a2:	1000                	addi	s0,sp,32
      a4:	84aa                	mv	s1,a0
      a6:	4581                	li	a1,0
      a8:	00006517          	auipc	a0,0x6
      ac:	06050513          	addi	a0,a0,96 # 6108 <malloc+0x148>
      b0:	00006097          	auipc	ra,0x6
      b4:	af2080e7          	jalr	-1294(ra) # 5ba2 <open>
      b8:	02054663          	bltz	a0,e4 <opentest+0x4a>
      bc:	00006097          	auipc	ra,0x6
      c0:	ace080e7          	jalr	-1330(ra) # 5b8a <close>
      c4:	4581                	li	a1,0
      c6:	00006517          	auipc	a0,0x6
      ca:	06250513          	addi	a0,a0,98 # 6128 <malloc+0x168>
      ce:	00006097          	auipc	ra,0x6
      d2:	ad4080e7          	jalr	-1324(ra) # 5ba2 <open>
      d6:	02055563          	bgez	a0,100 <opentest+0x66>
      da:	60e2                	ld	ra,24(sp)
      dc:	6442                	ld	s0,16(sp)
      de:	64a2                	ld	s1,8(sp)
      e0:	6105                	addi	sp,sp,32
      e2:	8082                	ret
      e4:	85a6                	mv	a1,s1
      e6:	00006517          	auipc	a0,0x6
      ea:	02a50513          	addi	a0,a0,42 # 6110 <malloc+0x150>
      ee:	00006097          	auipc	ra,0x6
      f2:	e14080e7          	jalr	-492(ra) # 5f02 <printf>
      f6:	4505                	li	a0,1
      f8:	00006097          	auipc	ra,0x6
      fc:	a6a080e7          	jalr	-1430(ra) # 5b62 <exit>
     100:	85a6                	mv	a1,s1
     102:	00006517          	auipc	a0,0x6
     106:	03650513          	addi	a0,a0,54 # 6138 <malloc+0x178>
     10a:	00006097          	auipc	ra,0x6
     10e:	df8080e7          	jalr	-520(ra) # 5f02 <printf>
     112:	4505                	li	a0,1
     114:	00006097          	auipc	ra,0x6
     118:	a4e080e7          	jalr	-1458(ra) # 5b62 <exit>

000000000000011c <truncate2>:
     11c:	7179                	addi	sp,sp,-48
     11e:	f406                	sd	ra,40(sp)
     120:	f022                	sd	s0,32(sp)
     122:	ec26                	sd	s1,24(sp)
     124:	e84a                	sd	s2,16(sp)
     126:	e44e                	sd	s3,8(sp)
     128:	1800                	addi	s0,sp,48
     12a:	89aa                	mv	s3,a0
     12c:	00006517          	auipc	a0,0x6
     130:	03450513          	addi	a0,a0,52 # 6160 <malloc+0x1a0>
     134:	00006097          	auipc	ra,0x6
     138:	a7e080e7          	jalr	-1410(ra) # 5bb2 <unlink>
     13c:	60100593          	li	a1,1537
     140:	00006517          	auipc	a0,0x6
     144:	02050513          	addi	a0,a0,32 # 6160 <malloc+0x1a0>
     148:	00006097          	auipc	ra,0x6
     14c:	a5a080e7          	jalr	-1446(ra) # 5ba2 <open>
     150:	84aa                	mv	s1,a0
     152:	4611                	li	a2,4
     154:	00006597          	auipc	a1,0x6
     158:	01c58593          	addi	a1,a1,28 # 6170 <malloc+0x1b0>
     15c:	00006097          	auipc	ra,0x6
     160:	a26080e7          	jalr	-1498(ra) # 5b82 <write>
     164:	40100593          	li	a1,1025
     168:	00006517          	auipc	a0,0x6
     16c:	ff850513          	addi	a0,a0,-8 # 6160 <malloc+0x1a0>
     170:	00006097          	auipc	ra,0x6
     174:	a32080e7          	jalr	-1486(ra) # 5ba2 <open>
     178:	892a                	mv	s2,a0
     17a:	4605                	li	a2,1
     17c:	00006597          	auipc	a1,0x6
     180:	ffc58593          	addi	a1,a1,-4 # 6178 <malloc+0x1b8>
     184:	8526                	mv	a0,s1
     186:	00006097          	auipc	ra,0x6
     18a:	9fc080e7          	jalr	-1540(ra) # 5b82 <write>
     18e:	57fd                	li	a5,-1
     190:	02f51b63          	bne	a0,a5,1c6 <truncate2+0xaa>
     194:	00006517          	auipc	a0,0x6
     198:	fcc50513          	addi	a0,a0,-52 # 6160 <malloc+0x1a0>
     19c:	00006097          	auipc	ra,0x6
     1a0:	a16080e7          	jalr	-1514(ra) # 5bb2 <unlink>
     1a4:	8526                	mv	a0,s1
     1a6:	00006097          	auipc	ra,0x6
     1aa:	9e4080e7          	jalr	-1564(ra) # 5b8a <close>
     1ae:	854a                	mv	a0,s2
     1b0:	00006097          	auipc	ra,0x6
     1b4:	9da080e7          	jalr	-1574(ra) # 5b8a <close>
     1b8:	70a2                	ld	ra,40(sp)
     1ba:	7402                	ld	s0,32(sp)
     1bc:	64e2                	ld	s1,24(sp)
     1be:	6942                	ld	s2,16(sp)
     1c0:	69a2                	ld	s3,8(sp)
     1c2:	6145                	addi	sp,sp,48
     1c4:	8082                	ret
     1c6:	862a                	mv	a2,a0
     1c8:	85ce                	mv	a1,s3
     1ca:	00006517          	auipc	a0,0x6
     1ce:	fb650513          	addi	a0,a0,-74 # 6180 <malloc+0x1c0>
     1d2:	00006097          	auipc	ra,0x6
     1d6:	d30080e7          	jalr	-720(ra) # 5f02 <printf>
     1da:	4505                	li	a0,1
     1dc:	00006097          	auipc	ra,0x6
     1e0:	986080e7          	jalr	-1658(ra) # 5b62 <exit>

00000000000001e4 <createtest>:
     1e4:	7179                	addi	sp,sp,-48
     1e6:	f406                	sd	ra,40(sp)
     1e8:	f022                	sd	s0,32(sp)
     1ea:	ec26                	sd	s1,24(sp)
     1ec:	e84a                	sd	s2,16(sp)
     1ee:	1800                	addi	s0,sp,48
     1f0:	06100793          	li	a5,97
     1f4:	fcf40c23          	sb	a5,-40(s0)
     1f8:	fc040d23          	sb	zero,-38(s0)
     1fc:	03000493          	li	s1,48
     200:	06400913          	li	s2,100
     204:	fc940ca3          	sb	s1,-39(s0)
     208:	20200593          	li	a1,514
     20c:	fd840513          	addi	a0,s0,-40
     210:	00006097          	auipc	ra,0x6
     214:	992080e7          	jalr	-1646(ra) # 5ba2 <open>
     218:	00006097          	auipc	ra,0x6
     21c:	972080e7          	jalr	-1678(ra) # 5b8a <close>
     220:	2485                	addiw	s1,s1,1
     222:	0ff4f493          	andi	s1,s1,255
     226:	fd249fe3          	bne	s1,s2,204 <createtest+0x20>
     22a:	06100793          	li	a5,97
     22e:	fcf40c23          	sb	a5,-40(s0)
     232:	fc040d23          	sb	zero,-38(s0)
     236:	03000493          	li	s1,48
     23a:	06400913          	li	s2,100
     23e:	fc940ca3          	sb	s1,-39(s0)
     242:	fd840513          	addi	a0,s0,-40
     246:	00006097          	auipc	ra,0x6
     24a:	96c080e7          	jalr	-1684(ra) # 5bb2 <unlink>
     24e:	2485                	addiw	s1,s1,1
     250:	0ff4f493          	andi	s1,s1,255
     254:	ff2495e3          	bne	s1,s2,23e <createtest+0x5a>
     258:	70a2                	ld	ra,40(sp)
     25a:	7402                	ld	s0,32(sp)
     25c:	64e2                	ld	s1,24(sp)
     25e:	6942                	ld	s2,16(sp)
     260:	6145                	addi	sp,sp,48
     262:	8082                	ret

0000000000000264 <bigwrite>:
     264:	715d                	addi	sp,sp,-80
     266:	e486                	sd	ra,72(sp)
     268:	e0a2                	sd	s0,64(sp)
     26a:	fc26                	sd	s1,56(sp)
     26c:	f84a                	sd	s2,48(sp)
     26e:	f44e                	sd	s3,40(sp)
     270:	f052                	sd	s4,32(sp)
     272:	ec56                	sd	s5,24(sp)
     274:	e85a                	sd	s6,16(sp)
     276:	e45e                	sd	s7,8(sp)
     278:	0880                	addi	s0,sp,80
     27a:	8baa                	mv	s7,a0
     27c:	00006517          	auipc	a0,0x6
     280:	f2c50513          	addi	a0,a0,-212 # 61a8 <malloc+0x1e8>
     284:	00006097          	auipc	ra,0x6
     288:	92e080e7          	jalr	-1746(ra) # 5bb2 <unlink>
     28c:	1f300493          	li	s1,499
     290:	00006a97          	auipc	s5,0x6
     294:	f18a8a93          	addi	s5,s5,-232 # 61a8 <malloc+0x1e8>
     298:	0000da17          	auipc	s4,0xd
     29c:	9d0a0a13          	addi	s4,s4,-1584 # cc68 <buf>
     2a0:	6b0d                	lui	s6,0x3
     2a2:	1c9b0b13          	addi	s6,s6,457 # 31c9 <diskfull+0x6d>
     2a6:	20200593          	li	a1,514
     2aa:	8556                	mv	a0,s5
     2ac:	00006097          	auipc	ra,0x6
     2b0:	8f6080e7          	jalr	-1802(ra) # 5ba2 <open>
     2b4:	892a                	mv	s2,a0
     2b6:	04054d63          	bltz	a0,310 <bigwrite+0xac>
     2ba:	8626                	mv	a2,s1
     2bc:	85d2                	mv	a1,s4
     2be:	00006097          	auipc	ra,0x6
     2c2:	8c4080e7          	jalr	-1852(ra) # 5b82 <write>
     2c6:	89aa                	mv	s3,a0
     2c8:	06a49463          	bne	s1,a0,330 <bigwrite+0xcc>
     2cc:	8626                	mv	a2,s1
     2ce:	85d2                	mv	a1,s4
     2d0:	854a                	mv	a0,s2
     2d2:	00006097          	auipc	ra,0x6
     2d6:	8b0080e7          	jalr	-1872(ra) # 5b82 <write>
     2da:	04951963          	bne	a0,s1,32c <bigwrite+0xc8>
     2de:	854a                	mv	a0,s2
     2e0:	00006097          	auipc	ra,0x6
     2e4:	8aa080e7          	jalr	-1878(ra) # 5b8a <close>
     2e8:	8556                	mv	a0,s5
     2ea:	00006097          	auipc	ra,0x6
     2ee:	8c8080e7          	jalr	-1848(ra) # 5bb2 <unlink>
     2f2:	1d74849b          	addiw	s1,s1,471
     2f6:	fb6498e3          	bne	s1,s6,2a6 <bigwrite+0x42>
     2fa:	60a6                	ld	ra,72(sp)
     2fc:	6406                	ld	s0,64(sp)
     2fe:	74e2                	ld	s1,56(sp)
     300:	7942                	ld	s2,48(sp)
     302:	79a2                	ld	s3,40(sp)
     304:	7a02                	ld	s4,32(sp)
     306:	6ae2                	ld	s5,24(sp)
     308:	6b42                	ld	s6,16(sp)
     30a:	6ba2                	ld	s7,8(sp)
     30c:	6161                	addi	sp,sp,80
     30e:	8082                	ret
     310:	85de                	mv	a1,s7
     312:	00006517          	auipc	a0,0x6
     316:	ea650513          	addi	a0,a0,-346 # 61b8 <malloc+0x1f8>
     31a:	00006097          	auipc	ra,0x6
     31e:	be8080e7          	jalr	-1048(ra) # 5f02 <printf>
     322:	4505                	li	a0,1
     324:	00006097          	auipc	ra,0x6
     328:	83e080e7          	jalr	-1986(ra) # 5b62 <exit>
     32c:	84ce                	mv	s1,s3
     32e:	89aa                	mv	s3,a0
     330:	86ce                	mv	a3,s3
     332:	8626                	mv	a2,s1
     334:	85de                	mv	a1,s7
     336:	00006517          	auipc	a0,0x6
     33a:	ea250513          	addi	a0,a0,-350 # 61d8 <malloc+0x218>
     33e:	00006097          	auipc	ra,0x6
     342:	bc4080e7          	jalr	-1084(ra) # 5f02 <printf>
     346:	4505                	li	a0,1
     348:	00006097          	auipc	ra,0x6
     34c:	81a080e7          	jalr	-2022(ra) # 5b62 <exit>

0000000000000350 <badwrite>:
     350:	7179                	addi	sp,sp,-48
     352:	f406                	sd	ra,40(sp)
     354:	f022                	sd	s0,32(sp)
     356:	ec26                	sd	s1,24(sp)
     358:	e84a                	sd	s2,16(sp)
     35a:	e44e                	sd	s3,8(sp)
     35c:	e052                	sd	s4,0(sp)
     35e:	1800                	addi	s0,sp,48
     360:	00006517          	auipc	a0,0x6
     364:	e9050513          	addi	a0,a0,-368 # 61f0 <malloc+0x230>
     368:	00006097          	auipc	ra,0x6
     36c:	84a080e7          	jalr	-1974(ra) # 5bb2 <unlink>
     370:	25800913          	li	s2,600
     374:	00006997          	auipc	s3,0x6
     378:	e7c98993          	addi	s3,s3,-388 # 61f0 <malloc+0x230>
     37c:	5a7d                	li	s4,-1
     37e:	018a5a13          	srli	s4,s4,0x18
     382:	20100593          	li	a1,513
     386:	854e                	mv	a0,s3
     388:	00006097          	auipc	ra,0x6
     38c:	81a080e7          	jalr	-2022(ra) # 5ba2 <open>
     390:	84aa                	mv	s1,a0
     392:	06054b63          	bltz	a0,408 <badwrite+0xb8>
     396:	4605                	li	a2,1
     398:	85d2                	mv	a1,s4
     39a:	00005097          	auipc	ra,0x5
     39e:	7e8080e7          	jalr	2024(ra) # 5b82 <write>
     3a2:	8526                	mv	a0,s1
     3a4:	00005097          	auipc	ra,0x5
     3a8:	7e6080e7          	jalr	2022(ra) # 5b8a <close>
     3ac:	854e                	mv	a0,s3
     3ae:	00006097          	auipc	ra,0x6
     3b2:	804080e7          	jalr	-2044(ra) # 5bb2 <unlink>
     3b6:	397d                	addiw	s2,s2,-1
     3b8:	fc0915e3          	bnez	s2,382 <badwrite+0x32>
     3bc:	20100593          	li	a1,513
     3c0:	00006517          	auipc	a0,0x6
     3c4:	e3050513          	addi	a0,a0,-464 # 61f0 <malloc+0x230>
     3c8:	00005097          	auipc	ra,0x5
     3cc:	7da080e7          	jalr	2010(ra) # 5ba2 <open>
     3d0:	84aa                	mv	s1,a0
     3d2:	04054863          	bltz	a0,422 <badwrite+0xd2>
     3d6:	4605                	li	a2,1
     3d8:	00006597          	auipc	a1,0x6
     3dc:	da058593          	addi	a1,a1,-608 # 6178 <malloc+0x1b8>
     3e0:	00005097          	auipc	ra,0x5
     3e4:	7a2080e7          	jalr	1954(ra) # 5b82 <write>
     3e8:	4785                	li	a5,1
     3ea:	04f50963          	beq	a0,a5,43c <badwrite+0xec>
     3ee:	00006517          	auipc	a0,0x6
     3f2:	e2250513          	addi	a0,a0,-478 # 6210 <malloc+0x250>
     3f6:	00006097          	auipc	ra,0x6
     3fa:	b0c080e7          	jalr	-1268(ra) # 5f02 <printf>
     3fe:	4505                	li	a0,1
     400:	00005097          	auipc	ra,0x5
     404:	762080e7          	jalr	1890(ra) # 5b62 <exit>
     408:	00006517          	auipc	a0,0x6
     40c:	df050513          	addi	a0,a0,-528 # 61f8 <malloc+0x238>
     410:	00006097          	auipc	ra,0x6
     414:	af2080e7          	jalr	-1294(ra) # 5f02 <printf>
     418:	4505                	li	a0,1
     41a:	00005097          	auipc	ra,0x5
     41e:	748080e7          	jalr	1864(ra) # 5b62 <exit>
     422:	00006517          	auipc	a0,0x6
     426:	dd650513          	addi	a0,a0,-554 # 61f8 <malloc+0x238>
     42a:	00006097          	auipc	ra,0x6
     42e:	ad8080e7          	jalr	-1320(ra) # 5f02 <printf>
     432:	4505                	li	a0,1
     434:	00005097          	auipc	ra,0x5
     438:	72e080e7          	jalr	1838(ra) # 5b62 <exit>
     43c:	8526                	mv	a0,s1
     43e:	00005097          	auipc	ra,0x5
     442:	74c080e7          	jalr	1868(ra) # 5b8a <close>
     446:	00006517          	auipc	a0,0x6
     44a:	daa50513          	addi	a0,a0,-598 # 61f0 <malloc+0x230>
     44e:	00005097          	auipc	ra,0x5
     452:	764080e7          	jalr	1892(ra) # 5bb2 <unlink>
     456:	4501                	li	a0,0
     458:	00005097          	auipc	ra,0x5
     45c:	70a080e7          	jalr	1802(ra) # 5b62 <exit>

0000000000000460 <outofinodes>:
     460:	715d                	addi	sp,sp,-80
     462:	e486                	sd	ra,72(sp)
     464:	e0a2                	sd	s0,64(sp)
     466:	fc26                	sd	s1,56(sp)
     468:	f84a                	sd	s2,48(sp)
     46a:	f44e                	sd	s3,40(sp)
     46c:	0880                	addi	s0,sp,80
     46e:	4481                	li	s1,0
     470:	07a00913          	li	s2,122
     474:	40000993          	li	s3,1024
     478:	fb240823          	sb	s2,-80(s0)
     47c:	fb2408a3          	sb	s2,-79(s0)
     480:	41f4d79b          	sraiw	a5,s1,0x1f
     484:	01b7d71b          	srliw	a4,a5,0x1b
     488:	009707bb          	addw	a5,a4,s1
     48c:	4057d69b          	sraiw	a3,a5,0x5
     490:	0306869b          	addiw	a3,a3,48
     494:	fad40923          	sb	a3,-78(s0)
     498:	8bfd                	andi	a5,a5,31
     49a:	9f99                	subw	a5,a5,a4
     49c:	0307879b          	addiw	a5,a5,48
     4a0:	faf409a3          	sb	a5,-77(s0)
     4a4:	fa040a23          	sb	zero,-76(s0)
     4a8:	fb040513          	addi	a0,s0,-80
     4ac:	00005097          	auipc	ra,0x5
     4b0:	706080e7          	jalr	1798(ra) # 5bb2 <unlink>
     4b4:	60200593          	li	a1,1538
     4b8:	fb040513          	addi	a0,s0,-80
     4bc:	00005097          	auipc	ra,0x5
     4c0:	6e6080e7          	jalr	1766(ra) # 5ba2 <open>
     4c4:	00054963          	bltz	a0,4d6 <outofinodes+0x76>
     4c8:	00005097          	auipc	ra,0x5
     4cc:	6c2080e7          	jalr	1730(ra) # 5b8a <close>
     4d0:	2485                	addiw	s1,s1,1
     4d2:	fb3493e3          	bne	s1,s3,478 <outofinodes+0x18>
     4d6:	4481                	li	s1,0
     4d8:	07a00913          	li	s2,122
     4dc:	40000993          	li	s3,1024
     4e0:	fb240823          	sb	s2,-80(s0)
     4e4:	fb2408a3          	sb	s2,-79(s0)
     4e8:	41f4d79b          	sraiw	a5,s1,0x1f
     4ec:	01b7d71b          	srliw	a4,a5,0x1b
     4f0:	009707bb          	addw	a5,a4,s1
     4f4:	4057d69b          	sraiw	a3,a5,0x5
     4f8:	0306869b          	addiw	a3,a3,48
     4fc:	fad40923          	sb	a3,-78(s0)
     500:	8bfd                	andi	a5,a5,31
     502:	9f99                	subw	a5,a5,a4
     504:	0307879b          	addiw	a5,a5,48
     508:	faf409a3          	sb	a5,-77(s0)
     50c:	fa040a23          	sb	zero,-76(s0)
     510:	fb040513          	addi	a0,s0,-80
     514:	00005097          	auipc	ra,0x5
     518:	69e080e7          	jalr	1694(ra) # 5bb2 <unlink>
     51c:	2485                	addiw	s1,s1,1
     51e:	fd3491e3          	bne	s1,s3,4e0 <outofinodes+0x80>
     522:	60a6                	ld	ra,72(sp)
     524:	6406                	ld	s0,64(sp)
     526:	74e2                	ld	s1,56(sp)
     528:	7942                	ld	s2,48(sp)
     52a:	79a2                	ld	s3,40(sp)
     52c:	6161                	addi	sp,sp,80
     52e:	8082                	ret

0000000000000530 <copyin>:
     530:	715d                	addi	sp,sp,-80
     532:	e486                	sd	ra,72(sp)
     534:	e0a2                	sd	s0,64(sp)
     536:	fc26                	sd	s1,56(sp)
     538:	f84a                	sd	s2,48(sp)
     53a:	f44e                	sd	s3,40(sp)
     53c:	f052                	sd	s4,32(sp)
     53e:	0880                	addi	s0,sp,80
     540:	4785                	li	a5,1
     542:	07fe                	slli	a5,a5,0x1f
     544:	fcf43023          	sd	a5,-64(s0)
     548:	57fd                	li	a5,-1
     54a:	fcf43423          	sd	a5,-56(s0)
     54e:	fc040913          	addi	s2,s0,-64
     552:	00006a17          	auipc	s4,0x6
     556:	ccea0a13          	addi	s4,s4,-818 # 6220 <malloc+0x260>
     55a:	00093983          	ld	s3,0(s2)
     55e:	20100593          	li	a1,513
     562:	8552                	mv	a0,s4
     564:	00005097          	auipc	ra,0x5
     568:	63e080e7          	jalr	1598(ra) # 5ba2 <open>
     56c:	84aa                	mv	s1,a0
     56e:	08054863          	bltz	a0,5fe <copyin+0xce>
     572:	6609                	lui	a2,0x2
     574:	85ce                	mv	a1,s3
     576:	00005097          	auipc	ra,0x5
     57a:	60c080e7          	jalr	1548(ra) # 5b82 <write>
     57e:	08055d63          	bgez	a0,618 <copyin+0xe8>
     582:	8526                	mv	a0,s1
     584:	00005097          	auipc	ra,0x5
     588:	606080e7          	jalr	1542(ra) # 5b8a <close>
     58c:	8552                	mv	a0,s4
     58e:	00005097          	auipc	ra,0x5
     592:	624080e7          	jalr	1572(ra) # 5bb2 <unlink>
     596:	6609                	lui	a2,0x2
     598:	85ce                	mv	a1,s3
     59a:	4505                	li	a0,1
     59c:	00005097          	auipc	ra,0x5
     5a0:	5e6080e7          	jalr	1510(ra) # 5b82 <write>
     5a4:	08a04963          	bgtz	a0,636 <copyin+0x106>
     5a8:	fb840513          	addi	a0,s0,-72
     5ac:	00005097          	auipc	ra,0x5
     5b0:	5c6080e7          	jalr	1478(ra) # 5b72 <pipe>
     5b4:	0a054063          	bltz	a0,654 <copyin+0x124>
     5b8:	6609                	lui	a2,0x2
     5ba:	85ce                	mv	a1,s3
     5bc:	fbc42503          	lw	a0,-68(s0)
     5c0:	00005097          	auipc	ra,0x5
     5c4:	5c2080e7          	jalr	1474(ra) # 5b82 <write>
     5c8:	0aa04363          	bgtz	a0,66e <copyin+0x13e>
     5cc:	fb842503          	lw	a0,-72(s0)
     5d0:	00005097          	auipc	ra,0x5
     5d4:	5ba080e7          	jalr	1466(ra) # 5b8a <close>
     5d8:	fbc42503          	lw	a0,-68(s0)
     5dc:	00005097          	auipc	ra,0x5
     5e0:	5ae080e7          	jalr	1454(ra) # 5b8a <close>
     5e4:	0921                	addi	s2,s2,8
     5e6:	fd040793          	addi	a5,s0,-48
     5ea:	f6f918e3          	bne	s2,a5,55a <copyin+0x2a>
     5ee:	60a6                	ld	ra,72(sp)
     5f0:	6406                	ld	s0,64(sp)
     5f2:	74e2                	ld	s1,56(sp)
     5f4:	7942                	ld	s2,48(sp)
     5f6:	79a2                	ld	s3,40(sp)
     5f8:	7a02                	ld	s4,32(sp)
     5fa:	6161                	addi	sp,sp,80
     5fc:	8082                	ret
     5fe:	00006517          	auipc	a0,0x6
     602:	c2a50513          	addi	a0,a0,-982 # 6228 <malloc+0x268>
     606:	00006097          	auipc	ra,0x6
     60a:	8fc080e7          	jalr	-1796(ra) # 5f02 <printf>
     60e:	4505                	li	a0,1
     610:	00005097          	auipc	ra,0x5
     614:	552080e7          	jalr	1362(ra) # 5b62 <exit>
     618:	862a                	mv	a2,a0
     61a:	85ce                	mv	a1,s3
     61c:	00006517          	auipc	a0,0x6
     620:	c2450513          	addi	a0,a0,-988 # 6240 <malloc+0x280>
     624:	00006097          	auipc	ra,0x6
     628:	8de080e7          	jalr	-1826(ra) # 5f02 <printf>
     62c:	4505                	li	a0,1
     62e:	00005097          	auipc	ra,0x5
     632:	534080e7          	jalr	1332(ra) # 5b62 <exit>
     636:	862a                	mv	a2,a0
     638:	85ce                	mv	a1,s3
     63a:	00006517          	auipc	a0,0x6
     63e:	c3650513          	addi	a0,a0,-970 # 6270 <malloc+0x2b0>
     642:	00006097          	auipc	ra,0x6
     646:	8c0080e7          	jalr	-1856(ra) # 5f02 <printf>
     64a:	4505                	li	a0,1
     64c:	00005097          	auipc	ra,0x5
     650:	516080e7          	jalr	1302(ra) # 5b62 <exit>
     654:	00006517          	auipc	a0,0x6
     658:	c4c50513          	addi	a0,a0,-948 # 62a0 <malloc+0x2e0>
     65c:	00006097          	auipc	ra,0x6
     660:	8a6080e7          	jalr	-1882(ra) # 5f02 <printf>
     664:	4505                	li	a0,1
     666:	00005097          	auipc	ra,0x5
     66a:	4fc080e7          	jalr	1276(ra) # 5b62 <exit>
     66e:	862a                	mv	a2,a0
     670:	85ce                	mv	a1,s3
     672:	00006517          	auipc	a0,0x6
     676:	c3e50513          	addi	a0,a0,-962 # 62b0 <malloc+0x2f0>
     67a:	00006097          	auipc	ra,0x6
     67e:	888080e7          	jalr	-1912(ra) # 5f02 <printf>
     682:	4505                	li	a0,1
     684:	00005097          	auipc	ra,0x5
     688:	4de080e7          	jalr	1246(ra) # 5b62 <exit>

000000000000068c <copyout>:
     68c:	711d                	addi	sp,sp,-96
     68e:	ec86                	sd	ra,88(sp)
     690:	e8a2                	sd	s0,80(sp)
     692:	e4a6                	sd	s1,72(sp)
     694:	e0ca                	sd	s2,64(sp)
     696:	fc4e                	sd	s3,56(sp)
     698:	f852                	sd	s4,48(sp)
     69a:	f456                	sd	s5,40(sp)
     69c:	1080                	addi	s0,sp,96
     69e:	4785                	li	a5,1
     6a0:	07fe                	slli	a5,a5,0x1f
     6a2:	faf43823          	sd	a5,-80(s0)
     6a6:	57fd                	li	a5,-1
     6a8:	faf43c23          	sd	a5,-72(s0)
     6ac:	fb040913          	addi	s2,s0,-80
     6b0:	00006a17          	auipc	s4,0x6
     6b4:	c30a0a13          	addi	s4,s4,-976 # 62e0 <malloc+0x320>
     6b8:	00006a97          	auipc	s5,0x6
     6bc:	ac0a8a93          	addi	s5,s5,-1344 # 6178 <malloc+0x1b8>
     6c0:	00093983          	ld	s3,0(s2)
     6c4:	4581                	li	a1,0
     6c6:	8552                	mv	a0,s4
     6c8:	00005097          	auipc	ra,0x5
     6cc:	4da080e7          	jalr	1242(ra) # 5ba2 <open>
     6d0:	84aa                	mv	s1,a0
     6d2:	08054663          	bltz	a0,75e <copyout+0xd2>
     6d6:	6609                	lui	a2,0x2
     6d8:	85ce                	mv	a1,s3
     6da:	00005097          	auipc	ra,0x5
     6de:	4a0080e7          	jalr	1184(ra) # 5b7a <read>
     6e2:	08a04b63          	bgtz	a0,778 <copyout+0xec>
     6e6:	8526                	mv	a0,s1
     6e8:	00005097          	auipc	ra,0x5
     6ec:	4a2080e7          	jalr	1186(ra) # 5b8a <close>
     6f0:	fa840513          	addi	a0,s0,-88
     6f4:	00005097          	auipc	ra,0x5
     6f8:	47e080e7          	jalr	1150(ra) # 5b72 <pipe>
     6fc:	08054d63          	bltz	a0,796 <copyout+0x10a>
     700:	4605                	li	a2,1
     702:	85d6                	mv	a1,s5
     704:	fac42503          	lw	a0,-84(s0)
     708:	00005097          	auipc	ra,0x5
     70c:	47a080e7          	jalr	1146(ra) # 5b82 <write>
     710:	4785                	li	a5,1
     712:	08f51f63          	bne	a0,a5,7b0 <copyout+0x124>
     716:	6609                	lui	a2,0x2
     718:	85ce                	mv	a1,s3
     71a:	fa842503          	lw	a0,-88(s0)
     71e:	00005097          	auipc	ra,0x5
     722:	45c080e7          	jalr	1116(ra) # 5b7a <read>
     726:	0aa04263          	bgtz	a0,7ca <copyout+0x13e>
     72a:	fa842503          	lw	a0,-88(s0)
     72e:	00005097          	auipc	ra,0x5
     732:	45c080e7          	jalr	1116(ra) # 5b8a <close>
     736:	fac42503          	lw	a0,-84(s0)
     73a:	00005097          	auipc	ra,0x5
     73e:	450080e7          	jalr	1104(ra) # 5b8a <close>
     742:	0921                	addi	s2,s2,8
     744:	fc040793          	addi	a5,s0,-64
     748:	f6f91ce3          	bne	s2,a5,6c0 <copyout+0x34>
     74c:	60e6                	ld	ra,88(sp)
     74e:	6446                	ld	s0,80(sp)
     750:	64a6                	ld	s1,72(sp)
     752:	6906                	ld	s2,64(sp)
     754:	79e2                	ld	s3,56(sp)
     756:	7a42                	ld	s4,48(sp)
     758:	7aa2                	ld	s5,40(sp)
     75a:	6125                	addi	sp,sp,96
     75c:	8082                	ret
     75e:	00006517          	auipc	a0,0x6
     762:	b8a50513          	addi	a0,a0,-1142 # 62e8 <malloc+0x328>
     766:	00005097          	auipc	ra,0x5
     76a:	79c080e7          	jalr	1948(ra) # 5f02 <printf>
     76e:	4505                	li	a0,1
     770:	00005097          	auipc	ra,0x5
     774:	3f2080e7          	jalr	1010(ra) # 5b62 <exit>
     778:	862a                	mv	a2,a0
     77a:	85ce                	mv	a1,s3
     77c:	00006517          	auipc	a0,0x6
     780:	b8450513          	addi	a0,a0,-1148 # 6300 <malloc+0x340>
     784:	00005097          	auipc	ra,0x5
     788:	77e080e7          	jalr	1918(ra) # 5f02 <printf>
     78c:	4505                	li	a0,1
     78e:	00005097          	auipc	ra,0x5
     792:	3d4080e7          	jalr	980(ra) # 5b62 <exit>
     796:	00006517          	auipc	a0,0x6
     79a:	b0a50513          	addi	a0,a0,-1270 # 62a0 <malloc+0x2e0>
     79e:	00005097          	auipc	ra,0x5
     7a2:	764080e7          	jalr	1892(ra) # 5f02 <printf>
     7a6:	4505                	li	a0,1
     7a8:	00005097          	auipc	ra,0x5
     7ac:	3ba080e7          	jalr	954(ra) # 5b62 <exit>
     7b0:	00006517          	auipc	a0,0x6
     7b4:	b8050513          	addi	a0,a0,-1152 # 6330 <malloc+0x370>
     7b8:	00005097          	auipc	ra,0x5
     7bc:	74a080e7          	jalr	1866(ra) # 5f02 <printf>
     7c0:	4505                	li	a0,1
     7c2:	00005097          	auipc	ra,0x5
     7c6:	3a0080e7          	jalr	928(ra) # 5b62 <exit>
     7ca:	862a                	mv	a2,a0
     7cc:	85ce                	mv	a1,s3
     7ce:	00006517          	auipc	a0,0x6
     7d2:	b7a50513          	addi	a0,a0,-1158 # 6348 <malloc+0x388>
     7d6:	00005097          	auipc	ra,0x5
     7da:	72c080e7          	jalr	1836(ra) # 5f02 <printf>
     7de:	4505                	li	a0,1
     7e0:	00005097          	auipc	ra,0x5
     7e4:	382080e7          	jalr	898(ra) # 5b62 <exit>

00000000000007e8 <truncate1>:
     7e8:	711d                	addi	sp,sp,-96
     7ea:	ec86                	sd	ra,88(sp)
     7ec:	e8a2                	sd	s0,80(sp)
     7ee:	e4a6                	sd	s1,72(sp)
     7f0:	e0ca                	sd	s2,64(sp)
     7f2:	fc4e                	sd	s3,56(sp)
     7f4:	f852                	sd	s4,48(sp)
     7f6:	f456                	sd	s5,40(sp)
     7f8:	1080                	addi	s0,sp,96
     7fa:	8aaa                	mv	s5,a0
     7fc:	00006517          	auipc	a0,0x6
     800:	96450513          	addi	a0,a0,-1692 # 6160 <malloc+0x1a0>
     804:	00005097          	auipc	ra,0x5
     808:	3ae080e7          	jalr	942(ra) # 5bb2 <unlink>
     80c:	60100593          	li	a1,1537
     810:	00006517          	auipc	a0,0x6
     814:	95050513          	addi	a0,a0,-1712 # 6160 <malloc+0x1a0>
     818:	00005097          	auipc	ra,0x5
     81c:	38a080e7          	jalr	906(ra) # 5ba2 <open>
     820:	84aa                	mv	s1,a0
     822:	4611                	li	a2,4
     824:	00006597          	auipc	a1,0x6
     828:	94c58593          	addi	a1,a1,-1716 # 6170 <malloc+0x1b0>
     82c:	00005097          	auipc	ra,0x5
     830:	356080e7          	jalr	854(ra) # 5b82 <write>
     834:	8526                	mv	a0,s1
     836:	00005097          	auipc	ra,0x5
     83a:	354080e7          	jalr	852(ra) # 5b8a <close>
     83e:	4581                	li	a1,0
     840:	00006517          	auipc	a0,0x6
     844:	92050513          	addi	a0,a0,-1760 # 6160 <malloc+0x1a0>
     848:	00005097          	auipc	ra,0x5
     84c:	35a080e7          	jalr	858(ra) # 5ba2 <open>
     850:	84aa                	mv	s1,a0
     852:	02000613          	li	a2,32
     856:	fa040593          	addi	a1,s0,-96
     85a:	00005097          	auipc	ra,0x5
     85e:	320080e7          	jalr	800(ra) # 5b7a <read>
     862:	4791                	li	a5,4
     864:	0cf51e63          	bne	a0,a5,940 <truncate1+0x158>
     868:	40100593          	li	a1,1025
     86c:	00006517          	auipc	a0,0x6
     870:	8f450513          	addi	a0,a0,-1804 # 6160 <malloc+0x1a0>
     874:	00005097          	auipc	ra,0x5
     878:	32e080e7          	jalr	814(ra) # 5ba2 <open>
     87c:	89aa                	mv	s3,a0
     87e:	4581                	li	a1,0
     880:	00006517          	auipc	a0,0x6
     884:	8e050513          	addi	a0,a0,-1824 # 6160 <malloc+0x1a0>
     888:	00005097          	auipc	ra,0x5
     88c:	31a080e7          	jalr	794(ra) # 5ba2 <open>
     890:	892a                	mv	s2,a0
     892:	02000613          	li	a2,32
     896:	fa040593          	addi	a1,s0,-96
     89a:	00005097          	auipc	ra,0x5
     89e:	2e0080e7          	jalr	736(ra) # 5b7a <read>
     8a2:	8a2a                	mv	s4,a0
     8a4:	ed4d                	bnez	a0,95e <truncate1+0x176>
     8a6:	02000613          	li	a2,32
     8aa:	fa040593          	addi	a1,s0,-96
     8ae:	8526                	mv	a0,s1
     8b0:	00005097          	auipc	ra,0x5
     8b4:	2ca080e7          	jalr	714(ra) # 5b7a <read>
     8b8:	8a2a                	mv	s4,a0
     8ba:	e971                	bnez	a0,98e <truncate1+0x1a6>
     8bc:	4619                	li	a2,6
     8be:	00006597          	auipc	a1,0x6
     8c2:	b1a58593          	addi	a1,a1,-1254 # 63d8 <malloc+0x418>
     8c6:	854e                	mv	a0,s3
     8c8:	00005097          	auipc	ra,0x5
     8cc:	2ba080e7          	jalr	698(ra) # 5b82 <write>
     8d0:	02000613          	li	a2,32
     8d4:	fa040593          	addi	a1,s0,-96
     8d8:	854a                	mv	a0,s2
     8da:	00005097          	auipc	ra,0x5
     8de:	2a0080e7          	jalr	672(ra) # 5b7a <read>
     8e2:	4799                	li	a5,6
     8e4:	0cf51d63          	bne	a0,a5,9be <truncate1+0x1d6>
     8e8:	02000613          	li	a2,32
     8ec:	fa040593          	addi	a1,s0,-96
     8f0:	8526                	mv	a0,s1
     8f2:	00005097          	auipc	ra,0x5
     8f6:	288080e7          	jalr	648(ra) # 5b7a <read>
     8fa:	4789                	li	a5,2
     8fc:	0ef51063          	bne	a0,a5,9dc <truncate1+0x1f4>
     900:	00006517          	auipc	a0,0x6
     904:	86050513          	addi	a0,a0,-1952 # 6160 <malloc+0x1a0>
     908:	00005097          	auipc	ra,0x5
     90c:	2aa080e7          	jalr	682(ra) # 5bb2 <unlink>
     910:	854e                	mv	a0,s3
     912:	00005097          	auipc	ra,0x5
     916:	278080e7          	jalr	632(ra) # 5b8a <close>
     91a:	8526                	mv	a0,s1
     91c:	00005097          	auipc	ra,0x5
     920:	26e080e7          	jalr	622(ra) # 5b8a <close>
     924:	854a                	mv	a0,s2
     926:	00005097          	auipc	ra,0x5
     92a:	264080e7          	jalr	612(ra) # 5b8a <close>
     92e:	60e6                	ld	ra,88(sp)
     930:	6446                	ld	s0,80(sp)
     932:	64a6                	ld	s1,72(sp)
     934:	6906                	ld	s2,64(sp)
     936:	79e2                	ld	s3,56(sp)
     938:	7a42                	ld	s4,48(sp)
     93a:	7aa2                	ld	s5,40(sp)
     93c:	6125                	addi	sp,sp,96
     93e:	8082                	ret
     940:	862a                	mv	a2,a0
     942:	85d6                	mv	a1,s5
     944:	00006517          	auipc	a0,0x6
     948:	a3450513          	addi	a0,a0,-1484 # 6378 <malloc+0x3b8>
     94c:	00005097          	auipc	ra,0x5
     950:	5b6080e7          	jalr	1462(ra) # 5f02 <printf>
     954:	4505                	li	a0,1
     956:	00005097          	auipc	ra,0x5
     95a:	20c080e7          	jalr	524(ra) # 5b62 <exit>
     95e:	85ca                	mv	a1,s2
     960:	00006517          	auipc	a0,0x6
     964:	a3850513          	addi	a0,a0,-1480 # 6398 <malloc+0x3d8>
     968:	00005097          	auipc	ra,0x5
     96c:	59a080e7          	jalr	1434(ra) # 5f02 <printf>
     970:	8652                	mv	a2,s4
     972:	85d6                	mv	a1,s5
     974:	00006517          	auipc	a0,0x6
     978:	a3450513          	addi	a0,a0,-1484 # 63a8 <malloc+0x3e8>
     97c:	00005097          	auipc	ra,0x5
     980:	586080e7          	jalr	1414(ra) # 5f02 <printf>
     984:	4505                	li	a0,1
     986:	00005097          	auipc	ra,0x5
     98a:	1dc080e7          	jalr	476(ra) # 5b62 <exit>
     98e:	85a6                	mv	a1,s1
     990:	00006517          	auipc	a0,0x6
     994:	a3850513          	addi	a0,a0,-1480 # 63c8 <malloc+0x408>
     998:	00005097          	auipc	ra,0x5
     99c:	56a080e7          	jalr	1386(ra) # 5f02 <printf>
     9a0:	8652                	mv	a2,s4
     9a2:	85d6                	mv	a1,s5
     9a4:	00006517          	auipc	a0,0x6
     9a8:	a0450513          	addi	a0,a0,-1532 # 63a8 <malloc+0x3e8>
     9ac:	00005097          	auipc	ra,0x5
     9b0:	556080e7          	jalr	1366(ra) # 5f02 <printf>
     9b4:	4505                	li	a0,1
     9b6:	00005097          	auipc	ra,0x5
     9ba:	1ac080e7          	jalr	428(ra) # 5b62 <exit>
     9be:	862a                	mv	a2,a0
     9c0:	85d6                	mv	a1,s5
     9c2:	00006517          	auipc	a0,0x6
     9c6:	a1e50513          	addi	a0,a0,-1506 # 63e0 <malloc+0x420>
     9ca:	00005097          	auipc	ra,0x5
     9ce:	538080e7          	jalr	1336(ra) # 5f02 <printf>
     9d2:	4505                	li	a0,1
     9d4:	00005097          	auipc	ra,0x5
     9d8:	18e080e7          	jalr	398(ra) # 5b62 <exit>
     9dc:	862a                	mv	a2,a0
     9de:	85d6                	mv	a1,s5
     9e0:	00006517          	auipc	a0,0x6
     9e4:	a2050513          	addi	a0,a0,-1504 # 6400 <malloc+0x440>
     9e8:	00005097          	auipc	ra,0x5
     9ec:	51a080e7          	jalr	1306(ra) # 5f02 <printf>
     9f0:	4505                	li	a0,1
     9f2:	00005097          	auipc	ra,0x5
     9f6:	170080e7          	jalr	368(ra) # 5b62 <exit>

00000000000009fa <writetest>:
     9fa:	7139                	addi	sp,sp,-64
     9fc:	fc06                	sd	ra,56(sp)
     9fe:	f822                	sd	s0,48(sp)
     a00:	f426                	sd	s1,40(sp)
     a02:	f04a                	sd	s2,32(sp)
     a04:	ec4e                	sd	s3,24(sp)
     a06:	e852                	sd	s4,16(sp)
     a08:	e456                	sd	s5,8(sp)
     a0a:	e05a                	sd	s6,0(sp)
     a0c:	0080                	addi	s0,sp,64
     a0e:	8b2a                	mv	s6,a0
     a10:	20200593          	li	a1,514
     a14:	00006517          	auipc	a0,0x6
     a18:	a0c50513          	addi	a0,a0,-1524 # 6420 <malloc+0x460>
     a1c:	00005097          	auipc	ra,0x5
     a20:	186080e7          	jalr	390(ra) # 5ba2 <open>
     a24:	0a054d63          	bltz	a0,ade <writetest+0xe4>
     a28:	892a                	mv	s2,a0
     a2a:	4481                	li	s1,0
     a2c:	00006997          	auipc	s3,0x6
     a30:	a1c98993          	addi	s3,s3,-1508 # 6448 <malloc+0x488>
     a34:	00006a97          	auipc	s5,0x6
     a38:	a4ca8a93          	addi	s5,s5,-1460 # 6480 <malloc+0x4c0>
     a3c:	06400a13          	li	s4,100
     a40:	4629                	li	a2,10
     a42:	85ce                	mv	a1,s3
     a44:	854a                	mv	a0,s2
     a46:	00005097          	auipc	ra,0x5
     a4a:	13c080e7          	jalr	316(ra) # 5b82 <write>
     a4e:	47a9                	li	a5,10
     a50:	0af51563          	bne	a0,a5,afa <writetest+0x100>
     a54:	4629                	li	a2,10
     a56:	85d6                	mv	a1,s5
     a58:	854a                	mv	a0,s2
     a5a:	00005097          	auipc	ra,0x5
     a5e:	128080e7          	jalr	296(ra) # 5b82 <write>
     a62:	47a9                	li	a5,10
     a64:	0af51a63          	bne	a0,a5,b18 <writetest+0x11e>
     a68:	2485                	addiw	s1,s1,1
     a6a:	fd449be3          	bne	s1,s4,a40 <writetest+0x46>
     a6e:	854a                	mv	a0,s2
     a70:	00005097          	auipc	ra,0x5
     a74:	11a080e7          	jalr	282(ra) # 5b8a <close>
     a78:	4581                	li	a1,0
     a7a:	00006517          	auipc	a0,0x6
     a7e:	9a650513          	addi	a0,a0,-1626 # 6420 <malloc+0x460>
     a82:	00005097          	auipc	ra,0x5
     a86:	120080e7          	jalr	288(ra) # 5ba2 <open>
     a8a:	84aa                	mv	s1,a0
     a8c:	0a054563          	bltz	a0,b36 <writetest+0x13c>
     a90:	7d000613          	li	a2,2000
     a94:	0000c597          	auipc	a1,0xc
     a98:	1d458593          	addi	a1,a1,468 # cc68 <buf>
     a9c:	00005097          	auipc	ra,0x5
     aa0:	0de080e7          	jalr	222(ra) # 5b7a <read>
     aa4:	7d000793          	li	a5,2000
     aa8:	0af51563          	bne	a0,a5,b52 <writetest+0x158>
     aac:	8526                	mv	a0,s1
     aae:	00005097          	auipc	ra,0x5
     ab2:	0dc080e7          	jalr	220(ra) # 5b8a <close>
     ab6:	00006517          	auipc	a0,0x6
     aba:	96a50513          	addi	a0,a0,-1686 # 6420 <malloc+0x460>
     abe:	00005097          	auipc	ra,0x5
     ac2:	0f4080e7          	jalr	244(ra) # 5bb2 <unlink>
     ac6:	0a054463          	bltz	a0,b6e <writetest+0x174>
     aca:	70e2                	ld	ra,56(sp)
     acc:	7442                	ld	s0,48(sp)
     ace:	74a2                	ld	s1,40(sp)
     ad0:	7902                	ld	s2,32(sp)
     ad2:	69e2                	ld	s3,24(sp)
     ad4:	6a42                	ld	s4,16(sp)
     ad6:	6aa2                	ld	s5,8(sp)
     ad8:	6b02                	ld	s6,0(sp)
     ada:	6121                	addi	sp,sp,64
     adc:	8082                	ret
     ade:	85da                	mv	a1,s6
     ae0:	00006517          	auipc	a0,0x6
     ae4:	94850513          	addi	a0,a0,-1720 # 6428 <malloc+0x468>
     ae8:	00005097          	auipc	ra,0x5
     aec:	41a080e7          	jalr	1050(ra) # 5f02 <printf>
     af0:	4505                	li	a0,1
     af2:	00005097          	auipc	ra,0x5
     af6:	070080e7          	jalr	112(ra) # 5b62 <exit>
     afa:	8626                	mv	a2,s1
     afc:	85da                	mv	a1,s6
     afe:	00006517          	auipc	a0,0x6
     b02:	95a50513          	addi	a0,a0,-1702 # 6458 <malloc+0x498>
     b06:	00005097          	auipc	ra,0x5
     b0a:	3fc080e7          	jalr	1020(ra) # 5f02 <printf>
     b0e:	4505                	li	a0,1
     b10:	00005097          	auipc	ra,0x5
     b14:	052080e7          	jalr	82(ra) # 5b62 <exit>
     b18:	8626                	mv	a2,s1
     b1a:	85da                	mv	a1,s6
     b1c:	00006517          	auipc	a0,0x6
     b20:	97450513          	addi	a0,a0,-1676 # 6490 <malloc+0x4d0>
     b24:	00005097          	auipc	ra,0x5
     b28:	3de080e7          	jalr	990(ra) # 5f02 <printf>
     b2c:	4505                	li	a0,1
     b2e:	00005097          	auipc	ra,0x5
     b32:	034080e7          	jalr	52(ra) # 5b62 <exit>
     b36:	85da                	mv	a1,s6
     b38:	00006517          	auipc	a0,0x6
     b3c:	98050513          	addi	a0,a0,-1664 # 64b8 <malloc+0x4f8>
     b40:	00005097          	auipc	ra,0x5
     b44:	3c2080e7          	jalr	962(ra) # 5f02 <printf>
     b48:	4505                	li	a0,1
     b4a:	00005097          	auipc	ra,0x5
     b4e:	018080e7          	jalr	24(ra) # 5b62 <exit>
     b52:	85da                	mv	a1,s6
     b54:	00006517          	auipc	a0,0x6
     b58:	98450513          	addi	a0,a0,-1660 # 64d8 <malloc+0x518>
     b5c:	00005097          	auipc	ra,0x5
     b60:	3a6080e7          	jalr	934(ra) # 5f02 <printf>
     b64:	4505                	li	a0,1
     b66:	00005097          	auipc	ra,0x5
     b6a:	ffc080e7          	jalr	-4(ra) # 5b62 <exit>
     b6e:	85da                	mv	a1,s6
     b70:	00006517          	auipc	a0,0x6
     b74:	98050513          	addi	a0,a0,-1664 # 64f0 <malloc+0x530>
     b78:	00005097          	auipc	ra,0x5
     b7c:	38a080e7          	jalr	906(ra) # 5f02 <printf>
     b80:	4505                	li	a0,1
     b82:	00005097          	auipc	ra,0x5
     b86:	fe0080e7          	jalr	-32(ra) # 5b62 <exit>

0000000000000b8a <writebig>:
     b8a:	7139                	addi	sp,sp,-64
     b8c:	fc06                	sd	ra,56(sp)
     b8e:	f822                	sd	s0,48(sp)
     b90:	f426                	sd	s1,40(sp)
     b92:	f04a                	sd	s2,32(sp)
     b94:	ec4e                	sd	s3,24(sp)
     b96:	e852                	sd	s4,16(sp)
     b98:	e456                	sd	s5,8(sp)
     b9a:	0080                	addi	s0,sp,64
     b9c:	8aaa                	mv	s5,a0
     b9e:	20200593          	li	a1,514
     ba2:	00006517          	auipc	a0,0x6
     ba6:	96e50513          	addi	a0,a0,-1682 # 6510 <malloc+0x550>
     baa:	00005097          	auipc	ra,0x5
     bae:	ff8080e7          	jalr	-8(ra) # 5ba2 <open>
     bb2:	89aa                	mv	s3,a0
     bb4:	4481                	li	s1,0
     bb6:	0000c917          	auipc	s2,0xc
     bba:	0b290913          	addi	s2,s2,178 # cc68 <buf>
     bbe:	10c00a13          	li	s4,268
     bc2:	06054c63          	bltz	a0,c3a <writebig+0xb0>
     bc6:	00992023          	sw	s1,0(s2)
     bca:	40000613          	li	a2,1024
     bce:	85ca                	mv	a1,s2
     bd0:	854e                	mv	a0,s3
     bd2:	00005097          	auipc	ra,0x5
     bd6:	fb0080e7          	jalr	-80(ra) # 5b82 <write>
     bda:	40000793          	li	a5,1024
     bde:	06f51c63          	bne	a0,a5,c56 <writebig+0xcc>
     be2:	2485                	addiw	s1,s1,1
     be4:	ff4491e3          	bne	s1,s4,bc6 <writebig+0x3c>
     be8:	854e                	mv	a0,s3
     bea:	00005097          	auipc	ra,0x5
     bee:	fa0080e7          	jalr	-96(ra) # 5b8a <close>
     bf2:	4581                	li	a1,0
     bf4:	00006517          	auipc	a0,0x6
     bf8:	91c50513          	addi	a0,a0,-1764 # 6510 <malloc+0x550>
     bfc:	00005097          	auipc	ra,0x5
     c00:	fa6080e7          	jalr	-90(ra) # 5ba2 <open>
     c04:	89aa                	mv	s3,a0
     c06:	4481                	li	s1,0
     c08:	0000c917          	auipc	s2,0xc
     c0c:	06090913          	addi	s2,s2,96 # cc68 <buf>
     c10:	06054263          	bltz	a0,c74 <writebig+0xea>
     c14:	40000613          	li	a2,1024
     c18:	85ca                	mv	a1,s2
     c1a:	854e                	mv	a0,s3
     c1c:	00005097          	auipc	ra,0x5
     c20:	f5e080e7          	jalr	-162(ra) # 5b7a <read>
     c24:	c535                	beqz	a0,c90 <writebig+0x106>
     c26:	40000793          	li	a5,1024
     c2a:	0af51f63          	bne	a0,a5,ce8 <writebig+0x15e>
     c2e:	00092683          	lw	a3,0(s2)
     c32:	0c969a63          	bne	a3,s1,d06 <writebig+0x17c>
     c36:	2485                	addiw	s1,s1,1
     c38:	bff1                	j	c14 <writebig+0x8a>
     c3a:	85d6                	mv	a1,s5
     c3c:	00006517          	auipc	a0,0x6
     c40:	8dc50513          	addi	a0,a0,-1828 # 6518 <malloc+0x558>
     c44:	00005097          	auipc	ra,0x5
     c48:	2be080e7          	jalr	702(ra) # 5f02 <printf>
     c4c:	4505                	li	a0,1
     c4e:	00005097          	auipc	ra,0x5
     c52:	f14080e7          	jalr	-236(ra) # 5b62 <exit>
     c56:	8626                	mv	a2,s1
     c58:	85d6                	mv	a1,s5
     c5a:	00006517          	auipc	a0,0x6
     c5e:	8de50513          	addi	a0,a0,-1826 # 6538 <malloc+0x578>
     c62:	00005097          	auipc	ra,0x5
     c66:	2a0080e7          	jalr	672(ra) # 5f02 <printf>
     c6a:	4505                	li	a0,1
     c6c:	00005097          	auipc	ra,0x5
     c70:	ef6080e7          	jalr	-266(ra) # 5b62 <exit>
     c74:	85d6                	mv	a1,s5
     c76:	00006517          	auipc	a0,0x6
     c7a:	8ea50513          	addi	a0,a0,-1814 # 6560 <malloc+0x5a0>
     c7e:	00005097          	auipc	ra,0x5
     c82:	284080e7          	jalr	644(ra) # 5f02 <printf>
     c86:	4505                	li	a0,1
     c88:	00005097          	auipc	ra,0x5
     c8c:	eda080e7          	jalr	-294(ra) # 5b62 <exit>
     c90:	10b00793          	li	a5,267
     c94:	02f48a63          	beq	s1,a5,cc8 <writebig+0x13e>
     c98:	854e                	mv	a0,s3
     c9a:	00005097          	auipc	ra,0x5
     c9e:	ef0080e7          	jalr	-272(ra) # 5b8a <close>
     ca2:	00006517          	auipc	a0,0x6
     ca6:	86e50513          	addi	a0,a0,-1938 # 6510 <malloc+0x550>
     caa:	00005097          	auipc	ra,0x5
     cae:	f08080e7          	jalr	-248(ra) # 5bb2 <unlink>
     cb2:	06054963          	bltz	a0,d24 <writebig+0x19a>
     cb6:	70e2                	ld	ra,56(sp)
     cb8:	7442                	ld	s0,48(sp)
     cba:	74a2                	ld	s1,40(sp)
     cbc:	7902                	ld	s2,32(sp)
     cbe:	69e2                	ld	s3,24(sp)
     cc0:	6a42                	ld	s4,16(sp)
     cc2:	6aa2                	ld	s5,8(sp)
     cc4:	6121                	addi	sp,sp,64
     cc6:	8082                	ret
     cc8:	10b00613          	li	a2,267
     ccc:	85d6                	mv	a1,s5
     cce:	00006517          	auipc	a0,0x6
     cd2:	8b250513          	addi	a0,a0,-1870 # 6580 <malloc+0x5c0>
     cd6:	00005097          	auipc	ra,0x5
     cda:	22c080e7          	jalr	556(ra) # 5f02 <printf>
     cde:	4505                	li	a0,1
     ce0:	00005097          	auipc	ra,0x5
     ce4:	e82080e7          	jalr	-382(ra) # 5b62 <exit>
     ce8:	862a                	mv	a2,a0
     cea:	85d6                	mv	a1,s5
     cec:	00006517          	auipc	a0,0x6
     cf0:	8bc50513          	addi	a0,a0,-1860 # 65a8 <malloc+0x5e8>
     cf4:	00005097          	auipc	ra,0x5
     cf8:	20e080e7          	jalr	526(ra) # 5f02 <printf>
     cfc:	4505                	li	a0,1
     cfe:	00005097          	auipc	ra,0x5
     d02:	e64080e7          	jalr	-412(ra) # 5b62 <exit>
     d06:	8626                	mv	a2,s1
     d08:	85d6                	mv	a1,s5
     d0a:	00006517          	auipc	a0,0x6
     d0e:	8b650513          	addi	a0,a0,-1866 # 65c0 <malloc+0x600>
     d12:	00005097          	auipc	ra,0x5
     d16:	1f0080e7          	jalr	496(ra) # 5f02 <printf>
     d1a:	4505                	li	a0,1
     d1c:	00005097          	auipc	ra,0x5
     d20:	e46080e7          	jalr	-442(ra) # 5b62 <exit>
     d24:	85d6                	mv	a1,s5
     d26:	00006517          	auipc	a0,0x6
     d2a:	8c250513          	addi	a0,a0,-1854 # 65e8 <malloc+0x628>
     d2e:	00005097          	auipc	ra,0x5
     d32:	1d4080e7          	jalr	468(ra) # 5f02 <printf>
     d36:	4505                	li	a0,1
     d38:	00005097          	auipc	ra,0x5
     d3c:	e2a080e7          	jalr	-470(ra) # 5b62 <exit>

0000000000000d40 <unlinkread>:
     d40:	7179                	addi	sp,sp,-48
     d42:	f406                	sd	ra,40(sp)
     d44:	f022                	sd	s0,32(sp)
     d46:	ec26                	sd	s1,24(sp)
     d48:	e84a                	sd	s2,16(sp)
     d4a:	e44e                	sd	s3,8(sp)
     d4c:	1800                	addi	s0,sp,48
     d4e:	89aa                	mv	s3,a0
     d50:	20200593          	li	a1,514
     d54:	00006517          	auipc	a0,0x6
     d58:	8ac50513          	addi	a0,a0,-1876 # 6600 <malloc+0x640>
     d5c:	00005097          	auipc	ra,0x5
     d60:	e46080e7          	jalr	-442(ra) # 5ba2 <open>
     d64:	0e054563          	bltz	a0,e4e <unlinkread+0x10e>
     d68:	84aa                	mv	s1,a0
     d6a:	4615                	li	a2,5
     d6c:	00006597          	auipc	a1,0x6
     d70:	8c458593          	addi	a1,a1,-1852 # 6630 <malloc+0x670>
     d74:	00005097          	auipc	ra,0x5
     d78:	e0e080e7          	jalr	-498(ra) # 5b82 <write>
     d7c:	8526                	mv	a0,s1
     d7e:	00005097          	auipc	ra,0x5
     d82:	e0c080e7          	jalr	-500(ra) # 5b8a <close>
     d86:	4589                	li	a1,2
     d88:	00006517          	auipc	a0,0x6
     d8c:	87850513          	addi	a0,a0,-1928 # 6600 <malloc+0x640>
     d90:	00005097          	auipc	ra,0x5
     d94:	e12080e7          	jalr	-494(ra) # 5ba2 <open>
     d98:	84aa                	mv	s1,a0
     d9a:	0c054863          	bltz	a0,e6a <unlinkread+0x12a>
     d9e:	00006517          	auipc	a0,0x6
     da2:	86250513          	addi	a0,a0,-1950 # 6600 <malloc+0x640>
     da6:	00005097          	auipc	ra,0x5
     daa:	e0c080e7          	jalr	-500(ra) # 5bb2 <unlink>
     dae:	ed61                	bnez	a0,e86 <unlinkread+0x146>
     db0:	20200593          	li	a1,514
     db4:	00006517          	auipc	a0,0x6
     db8:	84c50513          	addi	a0,a0,-1972 # 6600 <malloc+0x640>
     dbc:	00005097          	auipc	ra,0x5
     dc0:	de6080e7          	jalr	-538(ra) # 5ba2 <open>
     dc4:	892a                	mv	s2,a0
     dc6:	460d                	li	a2,3
     dc8:	00006597          	auipc	a1,0x6
     dcc:	8b058593          	addi	a1,a1,-1872 # 6678 <malloc+0x6b8>
     dd0:	00005097          	auipc	ra,0x5
     dd4:	db2080e7          	jalr	-590(ra) # 5b82 <write>
     dd8:	854a                	mv	a0,s2
     dda:	00005097          	auipc	ra,0x5
     dde:	db0080e7          	jalr	-592(ra) # 5b8a <close>
     de2:	660d                	lui	a2,0x3
     de4:	0000c597          	auipc	a1,0xc
     de8:	e8458593          	addi	a1,a1,-380 # cc68 <buf>
     dec:	8526                	mv	a0,s1
     dee:	00005097          	auipc	ra,0x5
     df2:	d8c080e7          	jalr	-628(ra) # 5b7a <read>
     df6:	4795                	li	a5,5
     df8:	0af51563          	bne	a0,a5,ea2 <unlinkread+0x162>
     dfc:	0000c717          	auipc	a4,0xc
     e00:	e6c74703          	lbu	a4,-404(a4) # cc68 <buf>
     e04:	06800793          	li	a5,104
     e08:	0af71b63          	bne	a4,a5,ebe <unlinkread+0x17e>
     e0c:	4629                	li	a2,10
     e0e:	0000c597          	auipc	a1,0xc
     e12:	e5a58593          	addi	a1,a1,-422 # cc68 <buf>
     e16:	8526                	mv	a0,s1
     e18:	00005097          	auipc	ra,0x5
     e1c:	d6a080e7          	jalr	-662(ra) # 5b82 <write>
     e20:	47a9                	li	a5,10
     e22:	0af51c63          	bne	a0,a5,eda <unlinkread+0x19a>
     e26:	8526                	mv	a0,s1
     e28:	00005097          	auipc	ra,0x5
     e2c:	d62080e7          	jalr	-670(ra) # 5b8a <close>
     e30:	00005517          	auipc	a0,0x5
     e34:	7d050513          	addi	a0,a0,2000 # 6600 <malloc+0x640>
     e38:	00005097          	auipc	ra,0x5
     e3c:	d7a080e7          	jalr	-646(ra) # 5bb2 <unlink>
     e40:	70a2                	ld	ra,40(sp)
     e42:	7402                	ld	s0,32(sp)
     e44:	64e2                	ld	s1,24(sp)
     e46:	6942                	ld	s2,16(sp)
     e48:	69a2                	ld	s3,8(sp)
     e4a:	6145                	addi	sp,sp,48
     e4c:	8082                	ret
     e4e:	85ce                	mv	a1,s3
     e50:	00005517          	auipc	a0,0x5
     e54:	7c050513          	addi	a0,a0,1984 # 6610 <malloc+0x650>
     e58:	00005097          	auipc	ra,0x5
     e5c:	0aa080e7          	jalr	170(ra) # 5f02 <printf>
     e60:	4505                	li	a0,1
     e62:	00005097          	auipc	ra,0x5
     e66:	d00080e7          	jalr	-768(ra) # 5b62 <exit>
     e6a:	85ce                	mv	a1,s3
     e6c:	00005517          	auipc	a0,0x5
     e70:	7cc50513          	addi	a0,a0,1996 # 6638 <malloc+0x678>
     e74:	00005097          	auipc	ra,0x5
     e78:	08e080e7          	jalr	142(ra) # 5f02 <printf>
     e7c:	4505                	li	a0,1
     e7e:	00005097          	auipc	ra,0x5
     e82:	ce4080e7          	jalr	-796(ra) # 5b62 <exit>
     e86:	85ce                	mv	a1,s3
     e88:	00005517          	auipc	a0,0x5
     e8c:	7d050513          	addi	a0,a0,2000 # 6658 <malloc+0x698>
     e90:	00005097          	auipc	ra,0x5
     e94:	072080e7          	jalr	114(ra) # 5f02 <printf>
     e98:	4505                	li	a0,1
     e9a:	00005097          	auipc	ra,0x5
     e9e:	cc8080e7          	jalr	-824(ra) # 5b62 <exit>
     ea2:	85ce                	mv	a1,s3
     ea4:	00005517          	auipc	a0,0x5
     ea8:	7dc50513          	addi	a0,a0,2012 # 6680 <malloc+0x6c0>
     eac:	00005097          	auipc	ra,0x5
     eb0:	056080e7          	jalr	86(ra) # 5f02 <printf>
     eb4:	4505                	li	a0,1
     eb6:	00005097          	auipc	ra,0x5
     eba:	cac080e7          	jalr	-852(ra) # 5b62 <exit>
     ebe:	85ce                	mv	a1,s3
     ec0:	00005517          	auipc	a0,0x5
     ec4:	7e050513          	addi	a0,a0,2016 # 66a0 <malloc+0x6e0>
     ec8:	00005097          	auipc	ra,0x5
     ecc:	03a080e7          	jalr	58(ra) # 5f02 <printf>
     ed0:	4505                	li	a0,1
     ed2:	00005097          	auipc	ra,0x5
     ed6:	c90080e7          	jalr	-880(ra) # 5b62 <exit>
     eda:	85ce                	mv	a1,s3
     edc:	00005517          	auipc	a0,0x5
     ee0:	7e450513          	addi	a0,a0,2020 # 66c0 <malloc+0x700>
     ee4:	00005097          	auipc	ra,0x5
     ee8:	01e080e7          	jalr	30(ra) # 5f02 <printf>
     eec:	4505                	li	a0,1
     eee:	00005097          	auipc	ra,0x5
     ef2:	c74080e7          	jalr	-908(ra) # 5b62 <exit>

0000000000000ef6 <linktest>:
     ef6:	1101                	addi	sp,sp,-32
     ef8:	ec06                	sd	ra,24(sp)
     efa:	e822                	sd	s0,16(sp)
     efc:	e426                	sd	s1,8(sp)
     efe:	e04a                	sd	s2,0(sp)
     f00:	1000                	addi	s0,sp,32
     f02:	892a                	mv	s2,a0
     f04:	00005517          	auipc	a0,0x5
     f08:	7dc50513          	addi	a0,a0,2012 # 66e0 <malloc+0x720>
     f0c:	00005097          	auipc	ra,0x5
     f10:	ca6080e7          	jalr	-858(ra) # 5bb2 <unlink>
     f14:	00005517          	auipc	a0,0x5
     f18:	7d450513          	addi	a0,a0,2004 # 66e8 <malloc+0x728>
     f1c:	00005097          	auipc	ra,0x5
     f20:	c96080e7          	jalr	-874(ra) # 5bb2 <unlink>
     f24:	20200593          	li	a1,514
     f28:	00005517          	auipc	a0,0x5
     f2c:	7b850513          	addi	a0,a0,1976 # 66e0 <malloc+0x720>
     f30:	00005097          	auipc	ra,0x5
     f34:	c72080e7          	jalr	-910(ra) # 5ba2 <open>
     f38:	10054763          	bltz	a0,1046 <linktest+0x150>
     f3c:	84aa                	mv	s1,a0
     f3e:	4615                	li	a2,5
     f40:	00005597          	auipc	a1,0x5
     f44:	6f058593          	addi	a1,a1,1776 # 6630 <malloc+0x670>
     f48:	00005097          	auipc	ra,0x5
     f4c:	c3a080e7          	jalr	-966(ra) # 5b82 <write>
     f50:	4795                	li	a5,5
     f52:	10f51863          	bne	a0,a5,1062 <linktest+0x16c>
     f56:	8526                	mv	a0,s1
     f58:	00005097          	auipc	ra,0x5
     f5c:	c32080e7          	jalr	-974(ra) # 5b8a <close>
     f60:	00005597          	auipc	a1,0x5
     f64:	78858593          	addi	a1,a1,1928 # 66e8 <malloc+0x728>
     f68:	00005517          	auipc	a0,0x5
     f6c:	77850513          	addi	a0,a0,1912 # 66e0 <malloc+0x720>
     f70:	00005097          	auipc	ra,0x5
     f74:	c52080e7          	jalr	-942(ra) # 5bc2 <link>
     f78:	10054363          	bltz	a0,107e <linktest+0x188>
     f7c:	00005517          	auipc	a0,0x5
     f80:	76450513          	addi	a0,a0,1892 # 66e0 <malloc+0x720>
     f84:	00005097          	auipc	ra,0x5
     f88:	c2e080e7          	jalr	-978(ra) # 5bb2 <unlink>
     f8c:	4581                	li	a1,0
     f8e:	00005517          	auipc	a0,0x5
     f92:	75250513          	addi	a0,a0,1874 # 66e0 <malloc+0x720>
     f96:	00005097          	auipc	ra,0x5
     f9a:	c0c080e7          	jalr	-1012(ra) # 5ba2 <open>
     f9e:	0e055e63          	bgez	a0,109a <linktest+0x1a4>
     fa2:	4581                	li	a1,0
     fa4:	00005517          	auipc	a0,0x5
     fa8:	74450513          	addi	a0,a0,1860 # 66e8 <malloc+0x728>
     fac:	00005097          	auipc	ra,0x5
     fb0:	bf6080e7          	jalr	-1034(ra) # 5ba2 <open>
     fb4:	84aa                	mv	s1,a0
     fb6:	10054063          	bltz	a0,10b6 <linktest+0x1c0>
     fba:	660d                	lui	a2,0x3
     fbc:	0000c597          	auipc	a1,0xc
     fc0:	cac58593          	addi	a1,a1,-852 # cc68 <buf>
     fc4:	00005097          	auipc	ra,0x5
     fc8:	bb6080e7          	jalr	-1098(ra) # 5b7a <read>
     fcc:	4795                	li	a5,5
     fce:	10f51263          	bne	a0,a5,10d2 <linktest+0x1dc>
     fd2:	8526                	mv	a0,s1
     fd4:	00005097          	auipc	ra,0x5
     fd8:	bb6080e7          	jalr	-1098(ra) # 5b8a <close>
     fdc:	00005597          	auipc	a1,0x5
     fe0:	70c58593          	addi	a1,a1,1804 # 66e8 <malloc+0x728>
     fe4:	852e                	mv	a0,a1
     fe6:	00005097          	auipc	ra,0x5
     fea:	bdc080e7          	jalr	-1060(ra) # 5bc2 <link>
     fee:	10055063          	bgez	a0,10ee <linktest+0x1f8>
     ff2:	00005517          	auipc	a0,0x5
     ff6:	6f650513          	addi	a0,a0,1782 # 66e8 <malloc+0x728>
     ffa:	00005097          	auipc	ra,0x5
     ffe:	bb8080e7          	jalr	-1096(ra) # 5bb2 <unlink>
    1002:	00005597          	auipc	a1,0x5
    1006:	6de58593          	addi	a1,a1,1758 # 66e0 <malloc+0x720>
    100a:	00005517          	auipc	a0,0x5
    100e:	6de50513          	addi	a0,a0,1758 # 66e8 <malloc+0x728>
    1012:	00005097          	auipc	ra,0x5
    1016:	bb0080e7          	jalr	-1104(ra) # 5bc2 <link>
    101a:	0e055863          	bgez	a0,110a <linktest+0x214>
    101e:	00005597          	auipc	a1,0x5
    1022:	6c258593          	addi	a1,a1,1730 # 66e0 <malloc+0x720>
    1026:	00005517          	auipc	a0,0x5
    102a:	7ca50513          	addi	a0,a0,1994 # 67f0 <malloc+0x830>
    102e:	00005097          	auipc	ra,0x5
    1032:	b94080e7          	jalr	-1132(ra) # 5bc2 <link>
    1036:	0e055863          	bgez	a0,1126 <linktest+0x230>
    103a:	60e2                	ld	ra,24(sp)
    103c:	6442                	ld	s0,16(sp)
    103e:	64a2                	ld	s1,8(sp)
    1040:	6902                	ld	s2,0(sp)
    1042:	6105                	addi	sp,sp,32
    1044:	8082                	ret
    1046:	85ca                	mv	a1,s2
    1048:	00005517          	auipc	a0,0x5
    104c:	6a850513          	addi	a0,a0,1704 # 66f0 <malloc+0x730>
    1050:	00005097          	auipc	ra,0x5
    1054:	eb2080e7          	jalr	-334(ra) # 5f02 <printf>
    1058:	4505                	li	a0,1
    105a:	00005097          	auipc	ra,0x5
    105e:	b08080e7          	jalr	-1272(ra) # 5b62 <exit>
    1062:	85ca                	mv	a1,s2
    1064:	00005517          	auipc	a0,0x5
    1068:	6a450513          	addi	a0,a0,1700 # 6708 <malloc+0x748>
    106c:	00005097          	auipc	ra,0x5
    1070:	e96080e7          	jalr	-362(ra) # 5f02 <printf>
    1074:	4505                	li	a0,1
    1076:	00005097          	auipc	ra,0x5
    107a:	aec080e7          	jalr	-1300(ra) # 5b62 <exit>
    107e:	85ca                	mv	a1,s2
    1080:	00005517          	auipc	a0,0x5
    1084:	6a050513          	addi	a0,a0,1696 # 6720 <malloc+0x760>
    1088:	00005097          	auipc	ra,0x5
    108c:	e7a080e7          	jalr	-390(ra) # 5f02 <printf>
    1090:	4505                	li	a0,1
    1092:	00005097          	auipc	ra,0x5
    1096:	ad0080e7          	jalr	-1328(ra) # 5b62 <exit>
    109a:	85ca                	mv	a1,s2
    109c:	00005517          	auipc	a0,0x5
    10a0:	6a450513          	addi	a0,a0,1700 # 6740 <malloc+0x780>
    10a4:	00005097          	auipc	ra,0x5
    10a8:	e5e080e7          	jalr	-418(ra) # 5f02 <printf>
    10ac:	4505                	li	a0,1
    10ae:	00005097          	auipc	ra,0x5
    10b2:	ab4080e7          	jalr	-1356(ra) # 5b62 <exit>
    10b6:	85ca                	mv	a1,s2
    10b8:	00005517          	auipc	a0,0x5
    10bc:	6b850513          	addi	a0,a0,1720 # 6770 <malloc+0x7b0>
    10c0:	00005097          	auipc	ra,0x5
    10c4:	e42080e7          	jalr	-446(ra) # 5f02 <printf>
    10c8:	4505                	li	a0,1
    10ca:	00005097          	auipc	ra,0x5
    10ce:	a98080e7          	jalr	-1384(ra) # 5b62 <exit>
    10d2:	85ca                	mv	a1,s2
    10d4:	00005517          	auipc	a0,0x5
    10d8:	6b450513          	addi	a0,a0,1716 # 6788 <malloc+0x7c8>
    10dc:	00005097          	auipc	ra,0x5
    10e0:	e26080e7          	jalr	-474(ra) # 5f02 <printf>
    10e4:	4505                	li	a0,1
    10e6:	00005097          	auipc	ra,0x5
    10ea:	a7c080e7          	jalr	-1412(ra) # 5b62 <exit>
    10ee:	85ca                	mv	a1,s2
    10f0:	00005517          	auipc	a0,0x5
    10f4:	6b050513          	addi	a0,a0,1712 # 67a0 <malloc+0x7e0>
    10f8:	00005097          	auipc	ra,0x5
    10fc:	e0a080e7          	jalr	-502(ra) # 5f02 <printf>
    1100:	4505                	li	a0,1
    1102:	00005097          	auipc	ra,0x5
    1106:	a60080e7          	jalr	-1440(ra) # 5b62 <exit>
    110a:	85ca                	mv	a1,s2
    110c:	00005517          	auipc	a0,0x5
    1110:	6bc50513          	addi	a0,a0,1724 # 67c8 <malloc+0x808>
    1114:	00005097          	auipc	ra,0x5
    1118:	dee080e7          	jalr	-530(ra) # 5f02 <printf>
    111c:	4505                	li	a0,1
    111e:	00005097          	auipc	ra,0x5
    1122:	a44080e7          	jalr	-1468(ra) # 5b62 <exit>
    1126:	85ca                	mv	a1,s2
    1128:	00005517          	auipc	a0,0x5
    112c:	6d050513          	addi	a0,a0,1744 # 67f8 <malloc+0x838>
    1130:	00005097          	auipc	ra,0x5
    1134:	dd2080e7          	jalr	-558(ra) # 5f02 <printf>
    1138:	4505                	li	a0,1
    113a:	00005097          	auipc	ra,0x5
    113e:	a28080e7          	jalr	-1496(ra) # 5b62 <exit>

0000000000001142 <validatetest>:
    1142:	7139                	addi	sp,sp,-64
    1144:	fc06                	sd	ra,56(sp)
    1146:	f822                	sd	s0,48(sp)
    1148:	f426                	sd	s1,40(sp)
    114a:	f04a                	sd	s2,32(sp)
    114c:	ec4e                	sd	s3,24(sp)
    114e:	e852                	sd	s4,16(sp)
    1150:	e456                	sd	s5,8(sp)
    1152:	e05a                	sd	s6,0(sp)
    1154:	0080                	addi	s0,sp,64
    1156:	8b2a                	mv	s6,a0
    1158:	4481                	li	s1,0
    115a:	00005997          	auipc	s3,0x5
    115e:	6be98993          	addi	s3,s3,1726 # 6818 <malloc+0x858>
    1162:	597d                	li	s2,-1
    1164:	6a85                	lui	s5,0x1
    1166:	00114a37          	lui	s4,0x114
    116a:	85a6                	mv	a1,s1
    116c:	854e                	mv	a0,s3
    116e:	00005097          	auipc	ra,0x5
    1172:	a54080e7          	jalr	-1452(ra) # 5bc2 <link>
    1176:	01251f63          	bne	a0,s2,1194 <validatetest+0x52>
    117a:	94d6                	add	s1,s1,s5
    117c:	ff4497e3          	bne	s1,s4,116a <validatetest+0x28>
    1180:	70e2                	ld	ra,56(sp)
    1182:	7442                	ld	s0,48(sp)
    1184:	74a2                	ld	s1,40(sp)
    1186:	7902                	ld	s2,32(sp)
    1188:	69e2                	ld	s3,24(sp)
    118a:	6a42                	ld	s4,16(sp)
    118c:	6aa2                	ld	s5,8(sp)
    118e:	6b02                	ld	s6,0(sp)
    1190:	6121                	addi	sp,sp,64
    1192:	8082                	ret
    1194:	85da                	mv	a1,s6
    1196:	00005517          	auipc	a0,0x5
    119a:	69250513          	addi	a0,a0,1682 # 6828 <malloc+0x868>
    119e:	00005097          	auipc	ra,0x5
    11a2:	d64080e7          	jalr	-668(ra) # 5f02 <printf>
    11a6:	4505                	li	a0,1
    11a8:	00005097          	auipc	ra,0x5
    11ac:	9ba080e7          	jalr	-1606(ra) # 5b62 <exit>

00000000000011b0 <bigdir>:
    11b0:	715d                	addi	sp,sp,-80
    11b2:	e486                	sd	ra,72(sp)
    11b4:	e0a2                	sd	s0,64(sp)
    11b6:	fc26                	sd	s1,56(sp)
    11b8:	f84a                	sd	s2,48(sp)
    11ba:	f44e                	sd	s3,40(sp)
    11bc:	f052                	sd	s4,32(sp)
    11be:	ec56                	sd	s5,24(sp)
    11c0:	e85a                	sd	s6,16(sp)
    11c2:	0880                	addi	s0,sp,80
    11c4:	89aa                	mv	s3,a0
    11c6:	00005517          	auipc	a0,0x5
    11ca:	68250513          	addi	a0,a0,1666 # 6848 <malloc+0x888>
    11ce:	00005097          	auipc	ra,0x5
    11d2:	9e4080e7          	jalr	-1564(ra) # 5bb2 <unlink>
    11d6:	20000593          	li	a1,512
    11da:	00005517          	auipc	a0,0x5
    11de:	66e50513          	addi	a0,a0,1646 # 6848 <malloc+0x888>
    11e2:	00005097          	auipc	ra,0x5
    11e6:	9c0080e7          	jalr	-1600(ra) # 5ba2 <open>
    11ea:	0c054963          	bltz	a0,12bc <bigdir+0x10c>
    11ee:	00005097          	auipc	ra,0x5
    11f2:	99c080e7          	jalr	-1636(ra) # 5b8a <close>
    11f6:	4901                	li	s2,0
    11f8:	07800a93          	li	s5,120
    11fc:	00005a17          	auipc	s4,0x5
    1200:	64ca0a13          	addi	s4,s4,1612 # 6848 <malloc+0x888>
    1204:	1f400b13          	li	s6,500
    1208:	fb540823          	sb	s5,-80(s0)
    120c:	41f9579b          	sraiw	a5,s2,0x1f
    1210:	01a7d71b          	srliw	a4,a5,0x1a
    1214:	012707bb          	addw	a5,a4,s2
    1218:	4067d69b          	sraiw	a3,a5,0x6
    121c:	0306869b          	addiw	a3,a3,48
    1220:	fad408a3          	sb	a3,-79(s0)
    1224:	03f7f793          	andi	a5,a5,63
    1228:	9f99                	subw	a5,a5,a4
    122a:	0307879b          	addiw	a5,a5,48
    122e:	faf40923          	sb	a5,-78(s0)
    1232:	fa0409a3          	sb	zero,-77(s0)
    1236:	fb040593          	addi	a1,s0,-80
    123a:	8552                	mv	a0,s4
    123c:	00005097          	auipc	ra,0x5
    1240:	986080e7          	jalr	-1658(ra) # 5bc2 <link>
    1244:	84aa                	mv	s1,a0
    1246:	e949                	bnez	a0,12d8 <bigdir+0x128>
    1248:	2905                	addiw	s2,s2,1
    124a:	fb691fe3          	bne	s2,s6,1208 <bigdir+0x58>
    124e:	00005517          	auipc	a0,0x5
    1252:	5fa50513          	addi	a0,a0,1530 # 6848 <malloc+0x888>
    1256:	00005097          	auipc	ra,0x5
    125a:	95c080e7          	jalr	-1700(ra) # 5bb2 <unlink>
    125e:	07800913          	li	s2,120
    1262:	1f400a13          	li	s4,500
    1266:	fb240823          	sb	s2,-80(s0)
    126a:	41f4d79b          	sraiw	a5,s1,0x1f
    126e:	01a7d71b          	srliw	a4,a5,0x1a
    1272:	009707bb          	addw	a5,a4,s1
    1276:	4067d69b          	sraiw	a3,a5,0x6
    127a:	0306869b          	addiw	a3,a3,48
    127e:	fad408a3          	sb	a3,-79(s0)
    1282:	03f7f793          	andi	a5,a5,63
    1286:	9f99                	subw	a5,a5,a4
    1288:	0307879b          	addiw	a5,a5,48
    128c:	faf40923          	sb	a5,-78(s0)
    1290:	fa0409a3          	sb	zero,-77(s0)
    1294:	fb040513          	addi	a0,s0,-80
    1298:	00005097          	auipc	ra,0x5
    129c:	91a080e7          	jalr	-1766(ra) # 5bb2 <unlink>
    12a0:	ed21                	bnez	a0,12f8 <bigdir+0x148>
    12a2:	2485                	addiw	s1,s1,1
    12a4:	fd4491e3          	bne	s1,s4,1266 <bigdir+0xb6>
    12a8:	60a6                	ld	ra,72(sp)
    12aa:	6406                	ld	s0,64(sp)
    12ac:	74e2                	ld	s1,56(sp)
    12ae:	7942                	ld	s2,48(sp)
    12b0:	79a2                	ld	s3,40(sp)
    12b2:	7a02                	ld	s4,32(sp)
    12b4:	6ae2                	ld	s5,24(sp)
    12b6:	6b42                	ld	s6,16(sp)
    12b8:	6161                	addi	sp,sp,80
    12ba:	8082                	ret
    12bc:	85ce                	mv	a1,s3
    12be:	00005517          	auipc	a0,0x5
    12c2:	59250513          	addi	a0,a0,1426 # 6850 <malloc+0x890>
    12c6:	00005097          	auipc	ra,0x5
    12ca:	c3c080e7          	jalr	-964(ra) # 5f02 <printf>
    12ce:	4505                	li	a0,1
    12d0:	00005097          	auipc	ra,0x5
    12d4:	892080e7          	jalr	-1902(ra) # 5b62 <exit>
    12d8:	fb040613          	addi	a2,s0,-80
    12dc:	85ce                	mv	a1,s3
    12de:	00005517          	auipc	a0,0x5
    12e2:	59250513          	addi	a0,a0,1426 # 6870 <malloc+0x8b0>
    12e6:	00005097          	auipc	ra,0x5
    12ea:	c1c080e7          	jalr	-996(ra) # 5f02 <printf>
    12ee:	4505                	li	a0,1
    12f0:	00005097          	auipc	ra,0x5
    12f4:	872080e7          	jalr	-1934(ra) # 5b62 <exit>
    12f8:	85ce                	mv	a1,s3
    12fa:	00005517          	auipc	a0,0x5
    12fe:	59650513          	addi	a0,a0,1430 # 6890 <malloc+0x8d0>
    1302:	00005097          	auipc	ra,0x5
    1306:	c00080e7          	jalr	-1024(ra) # 5f02 <printf>
    130a:	4505                	li	a0,1
    130c:	00005097          	auipc	ra,0x5
    1310:	856080e7          	jalr	-1962(ra) # 5b62 <exit>

0000000000001314 <pgbug>:
    1314:	7179                	addi	sp,sp,-48
    1316:	f406                	sd	ra,40(sp)
    1318:	f022                	sd	s0,32(sp)
    131a:	ec26                	sd	s1,24(sp)
    131c:	1800                	addi	s0,sp,48
    131e:	fc043c23          	sd	zero,-40(s0)
    1322:	00008497          	auipc	s1,0x8
    1326:	cde48493          	addi	s1,s1,-802 # 9000 <big>
    132a:	fd840593          	addi	a1,s0,-40
    132e:	6088                	ld	a0,0(s1)
    1330:	00005097          	auipc	ra,0x5
    1334:	86a080e7          	jalr	-1942(ra) # 5b9a <exec>
    1338:	6088                	ld	a0,0(s1)
    133a:	00005097          	auipc	ra,0x5
    133e:	838080e7          	jalr	-1992(ra) # 5b72 <pipe>
    1342:	4501                	li	a0,0
    1344:	00005097          	auipc	ra,0x5
    1348:	81e080e7          	jalr	-2018(ra) # 5b62 <exit>

000000000000134c <badarg>:
    134c:	7139                	addi	sp,sp,-64
    134e:	fc06                	sd	ra,56(sp)
    1350:	f822                	sd	s0,48(sp)
    1352:	f426                	sd	s1,40(sp)
    1354:	f04a                	sd	s2,32(sp)
    1356:	ec4e                	sd	s3,24(sp)
    1358:	0080                	addi	s0,sp,64
    135a:	64b1                	lui	s1,0xc
    135c:	35048493          	addi	s1,s1,848 # c350 <uninit+0x1df8>
    1360:	597d                	li	s2,-1
    1362:	02095913          	srli	s2,s2,0x20
    1366:	00005997          	auipc	s3,0x5
    136a:	da298993          	addi	s3,s3,-606 # 6108 <malloc+0x148>
    136e:	fd243023          	sd	s2,-64(s0)
    1372:	fc043423          	sd	zero,-56(s0)
    1376:	fc040593          	addi	a1,s0,-64
    137a:	854e                	mv	a0,s3
    137c:	00005097          	auipc	ra,0x5
    1380:	81e080e7          	jalr	-2018(ra) # 5b9a <exec>
    1384:	34fd                	addiw	s1,s1,-1
    1386:	f4e5                	bnez	s1,136e <badarg+0x22>
    1388:	4501                	li	a0,0
    138a:	00004097          	auipc	ra,0x4
    138e:	7d8080e7          	jalr	2008(ra) # 5b62 <exit>

0000000000001392 <copyinstr2>:
    1392:	7155                	addi	sp,sp,-208
    1394:	e586                	sd	ra,200(sp)
    1396:	e1a2                	sd	s0,192(sp)
    1398:	0980                	addi	s0,sp,208
    139a:	f6840793          	addi	a5,s0,-152
    139e:	fe840693          	addi	a3,s0,-24
    13a2:	07800713          	li	a4,120
    13a6:	00e78023          	sb	a4,0(a5)
    13aa:	0785                	addi	a5,a5,1
    13ac:	fed79de3          	bne	a5,a3,13a6 <copyinstr2+0x14>
    13b0:	fe040423          	sb	zero,-24(s0)
    13b4:	f6840513          	addi	a0,s0,-152
    13b8:	00004097          	auipc	ra,0x4
    13bc:	7fa080e7          	jalr	2042(ra) # 5bb2 <unlink>
    13c0:	57fd                	li	a5,-1
    13c2:	0ef51063          	bne	a0,a5,14a2 <copyinstr2+0x110>
    13c6:	20100593          	li	a1,513
    13ca:	f6840513          	addi	a0,s0,-152
    13ce:	00004097          	auipc	ra,0x4
    13d2:	7d4080e7          	jalr	2004(ra) # 5ba2 <open>
    13d6:	57fd                	li	a5,-1
    13d8:	0ef51563          	bne	a0,a5,14c2 <copyinstr2+0x130>
    13dc:	f6840593          	addi	a1,s0,-152
    13e0:	852e                	mv	a0,a1
    13e2:	00004097          	auipc	ra,0x4
    13e6:	7e0080e7          	jalr	2016(ra) # 5bc2 <link>
    13ea:	57fd                	li	a5,-1
    13ec:	0ef51b63          	bne	a0,a5,14e2 <copyinstr2+0x150>
    13f0:	00006797          	auipc	a5,0x6
    13f4:	6f878793          	addi	a5,a5,1784 # 7ae8 <malloc+0x1b28>
    13f8:	f4f43c23          	sd	a5,-168(s0)
    13fc:	f6043023          	sd	zero,-160(s0)
    1400:	f5840593          	addi	a1,s0,-168
    1404:	f6840513          	addi	a0,s0,-152
    1408:	00004097          	auipc	ra,0x4
    140c:	792080e7          	jalr	1938(ra) # 5b9a <exec>
    1410:	57fd                	li	a5,-1
    1412:	0ef51963          	bne	a0,a5,1504 <copyinstr2+0x172>
    1416:	00004097          	auipc	ra,0x4
    141a:	744080e7          	jalr	1860(ra) # 5b5a <fork>
    141e:	10054363          	bltz	a0,1524 <copyinstr2+0x192>
    1422:	12051463          	bnez	a0,154a <copyinstr2+0x1b8>
    1426:	00008797          	auipc	a5,0x8
    142a:	12a78793          	addi	a5,a5,298 # 9550 <big.1280>
    142e:	00009697          	auipc	a3,0x9
    1432:	12268693          	addi	a3,a3,290 # a550 <big.1280+0x1000>
    1436:	07800713          	li	a4,120
    143a:	00e78023          	sb	a4,0(a5)
    143e:	0785                	addi	a5,a5,1
    1440:	fed79de3          	bne	a5,a3,143a <copyinstr2+0xa8>
    1444:	00009797          	auipc	a5,0x9
    1448:	10078623          	sb	zero,268(a5) # a550 <big.1280+0x1000>
    144c:	00007797          	auipc	a5,0x7
    1450:	0ac78793          	addi	a5,a5,172 # 84f8 <malloc+0x2538>
    1454:	6390                	ld	a2,0(a5)
    1456:	6794                	ld	a3,8(a5)
    1458:	6b98                	ld	a4,16(a5)
    145a:	6f9c                	ld	a5,24(a5)
    145c:	f2c43823          	sd	a2,-208(s0)
    1460:	f2d43c23          	sd	a3,-200(s0)
    1464:	f4e43023          	sd	a4,-192(s0)
    1468:	f4f43423          	sd	a5,-184(s0)
    146c:	f3040593          	addi	a1,s0,-208
    1470:	00005517          	auipc	a0,0x5
    1474:	c9850513          	addi	a0,a0,-872 # 6108 <malloc+0x148>
    1478:	00004097          	auipc	ra,0x4
    147c:	722080e7          	jalr	1826(ra) # 5b9a <exec>
    1480:	57fd                	li	a5,-1
    1482:	0af50e63          	beq	a0,a5,153e <copyinstr2+0x1ac>
    1486:	55fd                	li	a1,-1
    1488:	00005517          	auipc	a0,0x5
    148c:	4b050513          	addi	a0,a0,1200 # 6938 <malloc+0x978>
    1490:	00005097          	auipc	ra,0x5
    1494:	a72080e7          	jalr	-1422(ra) # 5f02 <printf>
    1498:	4505                	li	a0,1
    149a:	00004097          	auipc	ra,0x4
    149e:	6c8080e7          	jalr	1736(ra) # 5b62 <exit>
    14a2:	862a                	mv	a2,a0
    14a4:	f6840593          	addi	a1,s0,-152
    14a8:	00005517          	auipc	a0,0x5
    14ac:	40850513          	addi	a0,a0,1032 # 68b0 <malloc+0x8f0>
    14b0:	00005097          	auipc	ra,0x5
    14b4:	a52080e7          	jalr	-1454(ra) # 5f02 <printf>
    14b8:	4505                	li	a0,1
    14ba:	00004097          	auipc	ra,0x4
    14be:	6a8080e7          	jalr	1704(ra) # 5b62 <exit>
    14c2:	862a                	mv	a2,a0
    14c4:	f6840593          	addi	a1,s0,-152
    14c8:	00005517          	auipc	a0,0x5
    14cc:	40850513          	addi	a0,a0,1032 # 68d0 <malloc+0x910>
    14d0:	00005097          	auipc	ra,0x5
    14d4:	a32080e7          	jalr	-1486(ra) # 5f02 <printf>
    14d8:	4505                	li	a0,1
    14da:	00004097          	auipc	ra,0x4
    14de:	688080e7          	jalr	1672(ra) # 5b62 <exit>
    14e2:	86aa                	mv	a3,a0
    14e4:	f6840613          	addi	a2,s0,-152
    14e8:	85b2                	mv	a1,a2
    14ea:	00005517          	auipc	a0,0x5
    14ee:	40650513          	addi	a0,a0,1030 # 68f0 <malloc+0x930>
    14f2:	00005097          	auipc	ra,0x5
    14f6:	a10080e7          	jalr	-1520(ra) # 5f02 <printf>
    14fa:	4505                	li	a0,1
    14fc:	00004097          	auipc	ra,0x4
    1500:	666080e7          	jalr	1638(ra) # 5b62 <exit>
    1504:	567d                	li	a2,-1
    1506:	f6840593          	addi	a1,s0,-152
    150a:	00005517          	auipc	a0,0x5
    150e:	40e50513          	addi	a0,a0,1038 # 6918 <malloc+0x958>
    1512:	00005097          	auipc	ra,0x5
    1516:	9f0080e7          	jalr	-1552(ra) # 5f02 <printf>
    151a:	4505                	li	a0,1
    151c:	00004097          	auipc	ra,0x4
    1520:	646080e7          	jalr	1606(ra) # 5b62 <exit>
    1524:	00006517          	auipc	a0,0x6
    1528:	87450513          	addi	a0,a0,-1932 # 6d98 <malloc+0xdd8>
    152c:	00005097          	auipc	ra,0x5
    1530:	9d6080e7          	jalr	-1578(ra) # 5f02 <printf>
    1534:	4505                	li	a0,1
    1536:	00004097          	auipc	ra,0x4
    153a:	62c080e7          	jalr	1580(ra) # 5b62 <exit>
    153e:	2eb00513          	li	a0,747
    1542:	00004097          	auipc	ra,0x4
    1546:	620080e7          	jalr	1568(ra) # 5b62 <exit>
    154a:	f4042a23          	sw	zero,-172(s0)
    154e:	f5440513          	addi	a0,s0,-172
    1552:	00004097          	auipc	ra,0x4
    1556:	618080e7          	jalr	1560(ra) # 5b6a <wait>
    155a:	f5442703          	lw	a4,-172(s0)
    155e:	2eb00793          	li	a5,747
    1562:	00f71663          	bne	a4,a5,156e <copyinstr2+0x1dc>
    1566:	60ae                	ld	ra,200(sp)
    1568:	640e                	ld	s0,192(sp)
    156a:	6169                	addi	sp,sp,208
    156c:	8082                	ret
    156e:	00005517          	auipc	a0,0x5
    1572:	3f250513          	addi	a0,a0,1010 # 6960 <malloc+0x9a0>
    1576:	00005097          	auipc	ra,0x5
    157a:	98c080e7          	jalr	-1652(ra) # 5f02 <printf>
    157e:	4505                	li	a0,1
    1580:	00004097          	auipc	ra,0x4
    1584:	5e2080e7          	jalr	1506(ra) # 5b62 <exit>

0000000000001588 <truncate3>:
    1588:	7159                	addi	sp,sp,-112
    158a:	f486                	sd	ra,104(sp)
    158c:	f0a2                	sd	s0,96(sp)
    158e:	eca6                	sd	s1,88(sp)
    1590:	e8ca                	sd	s2,80(sp)
    1592:	e4ce                	sd	s3,72(sp)
    1594:	e0d2                	sd	s4,64(sp)
    1596:	fc56                	sd	s5,56(sp)
    1598:	1880                	addi	s0,sp,112
    159a:	892a                	mv	s2,a0
    159c:	60100593          	li	a1,1537
    15a0:	00005517          	auipc	a0,0x5
    15a4:	bc050513          	addi	a0,a0,-1088 # 6160 <malloc+0x1a0>
    15a8:	00004097          	auipc	ra,0x4
    15ac:	5fa080e7          	jalr	1530(ra) # 5ba2 <open>
    15b0:	00004097          	auipc	ra,0x4
    15b4:	5da080e7          	jalr	1498(ra) # 5b8a <close>
    15b8:	00004097          	auipc	ra,0x4
    15bc:	5a2080e7          	jalr	1442(ra) # 5b5a <fork>
    15c0:	08054063          	bltz	a0,1640 <truncate3+0xb8>
    15c4:	e969                	bnez	a0,1696 <truncate3+0x10e>
    15c6:	06400993          	li	s3,100
    15ca:	00005a17          	auipc	s4,0x5
    15ce:	b96a0a13          	addi	s4,s4,-1130 # 6160 <malloc+0x1a0>
    15d2:	00005a97          	auipc	s5,0x5
    15d6:	3eea8a93          	addi	s5,s5,1006 # 69c0 <malloc+0xa00>
    15da:	4585                	li	a1,1
    15dc:	8552                	mv	a0,s4
    15de:	00004097          	auipc	ra,0x4
    15e2:	5c4080e7          	jalr	1476(ra) # 5ba2 <open>
    15e6:	84aa                	mv	s1,a0
    15e8:	06054a63          	bltz	a0,165c <truncate3+0xd4>
    15ec:	4629                	li	a2,10
    15ee:	85d6                	mv	a1,s5
    15f0:	00004097          	auipc	ra,0x4
    15f4:	592080e7          	jalr	1426(ra) # 5b82 <write>
    15f8:	47a9                	li	a5,10
    15fa:	06f51f63          	bne	a0,a5,1678 <truncate3+0xf0>
    15fe:	8526                	mv	a0,s1
    1600:	00004097          	auipc	ra,0x4
    1604:	58a080e7          	jalr	1418(ra) # 5b8a <close>
    1608:	4581                	li	a1,0
    160a:	8552                	mv	a0,s4
    160c:	00004097          	auipc	ra,0x4
    1610:	596080e7          	jalr	1430(ra) # 5ba2 <open>
    1614:	84aa                	mv	s1,a0
    1616:	02000613          	li	a2,32
    161a:	f9840593          	addi	a1,s0,-104
    161e:	00004097          	auipc	ra,0x4
    1622:	55c080e7          	jalr	1372(ra) # 5b7a <read>
    1626:	8526                	mv	a0,s1
    1628:	00004097          	auipc	ra,0x4
    162c:	562080e7          	jalr	1378(ra) # 5b8a <close>
    1630:	39fd                	addiw	s3,s3,-1
    1632:	fa0994e3          	bnez	s3,15da <truncate3+0x52>
    1636:	4501                	li	a0,0
    1638:	00004097          	auipc	ra,0x4
    163c:	52a080e7          	jalr	1322(ra) # 5b62 <exit>
    1640:	85ca                	mv	a1,s2
    1642:	00005517          	auipc	a0,0x5
    1646:	34e50513          	addi	a0,a0,846 # 6990 <malloc+0x9d0>
    164a:	00005097          	auipc	ra,0x5
    164e:	8b8080e7          	jalr	-1864(ra) # 5f02 <printf>
    1652:	4505                	li	a0,1
    1654:	00004097          	auipc	ra,0x4
    1658:	50e080e7          	jalr	1294(ra) # 5b62 <exit>
    165c:	85ca                	mv	a1,s2
    165e:	00005517          	auipc	a0,0x5
    1662:	34a50513          	addi	a0,a0,842 # 69a8 <malloc+0x9e8>
    1666:	00005097          	auipc	ra,0x5
    166a:	89c080e7          	jalr	-1892(ra) # 5f02 <printf>
    166e:	4505                	li	a0,1
    1670:	00004097          	auipc	ra,0x4
    1674:	4f2080e7          	jalr	1266(ra) # 5b62 <exit>
    1678:	862a                	mv	a2,a0
    167a:	85ca                	mv	a1,s2
    167c:	00005517          	auipc	a0,0x5
    1680:	35450513          	addi	a0,a0,852 # 69d0 <malloc+0xa10>
    1684:	00005097          	auipc	ra,0x5
    1688:	87e080e7          	jalr	-1922(ra) # 5f02 <printf>
    168c:	4505                	li	a0,1
    168e:	00004097          	auipc	ra,0x4
    1692:	4d4080e7          	jalr	1236(ra) # 5b62 <exit>
    1696:	09600993          	li	s3,150
    169a:	00005a17          	auipc	s4,0x5
    169e:	ac6a0a13          	addi	s4,s4,-1338 # 6160 <malloc+0x1a0>
    16a2:	00005a97          	auipc	s5,0x5
    16a6:	34ea8a93          	addi	s5,s5,846 # 69f0 <malloc+0xa30>
    16aa:	60100593          	li	a1,1537
    16ae:	8552                	mv	a0,s4
    16b0:	00004097          	auipc	ra,0x4
    16b4:	4f2080e7          	jalr	1266(ra) # 5ba2 <open>
    16b8:	84aa                	mv	s1,a0
    16ba:	04054763          	bltz	a0,1708 <truncate3+0x180>
    16be:	460d                	li	a2,3
    16c0:	85d6                	mv	a1,s5
    16c2:	00004097          	auipc	ra,0x4
    16c6:	4c0080e7          	jalr	1216(ra) # 5b82 <write>
    16ca:	478d                	li	a5,3
    16cc:	04f51c63          	bne	a0,a5,1724 <truncate3+0x19c>
    16d0:	8526                	mv	a0,s1
    16d2:	00004097          	auipc	ra,0x4
    16d6:	4b8080e7          	jalr	1208(ra) # 5b8a <close>
    16da:	39fd                	addiw	s3,s3,-1
    16dc:	fc0997e3          	bnez	s3,16aa <truncate3+0x122>
    16e0:	fbc40513          	addi	a0,s0,-68
    16e4:	00004097          	auipc	ra,0x4
    16e8:	486080e7          	jalr	1158(ra) # 5b6a <wait>
    16ec:	00005517          	auipc	a0,0x5
    16f0:	a7450513          	addi	a0,a0,-1420 # 6160 <malloc+0x1a0>
    16f4:	00004097          	auipc	ra,0x4
    16f8:	4be080e7          	jalr	1214(ra) # 5bb2 <unlink>
    16fc:	fbc42503          	lw	a0,-68(s0)
    1700:	00004097          	auipc	ra,0x4
    1704:	462080e7          	jalr	1122(ra) # 5b62 <exit>
    1708:	85ca                	mv	a1,s2
    170a:	00005517          	auipc	a0,0x5
    170e:	29e50513          	addi	a0,a0,670 # 69a8 <malloc+0x9e8>
    1712:	00004097          	auipc	ra,0x4
    1716:	7f0080e7          	jalr	2032(ra) # 5f02 <printf>
    171a:	4505                	li	a0,1
    171c:	00004097          	auipc	ra,0x4
    1720:	446080e7          	jalr	1094(ra) # 5b62 <exit>
    1724:	862a                	mv	a2,a0
    1726:	85ca                	mv	a1,s2
    1728:	00005517          	auipc	a0,0x5
    172c:	2d050513          	addi	a0,a0,720 # 69f8 <malloc+0xa38>
    1730:	00004097          	auipc	ra,0x4
    1734:	7d2080e7          	jalr	2002(ra) # 5f02 <printf>
    1738:	4505                	li	a0,1
    173a:	00004097          	auipc	ra,0x4
    173e:	428080e7          	jalr	1064(ra) # 5b62 <exit>

0000000000001742 <exectest>:
    1742:	715d                	addi	sp,sp,-80
    1744:	e486                	sd	ra,72(sp)
    1746:	e0a2                	sd	s0,64(sp)
    1748:	fc26                	sd	s1,56(sp)
    174a:	f84a                	sd	s2,48(sp)
    174c:	0880                	addi	s0,sp,80
    174e:	892a                	mv	s2,a0
    1750:	00005797          	auipc	a5,0x5
    1754:	9b878793          	addi	a5,a5,-1608 # 6108 <malloc+0x148>
    1758:	fcf43023          	sd	a5,-64(s0)
    175c:	00005797          	auipc	a5,0x5
    1760:	2bc78793          	addi	a5,a5,700 # 6a18 <malloc+0xa58>
    1764:	fcf43423          	sd	a5,-56(s0)
    1768:	fc043823          	sd	zero,-48(s0)
    176c:	00005517          	auipc	a0,0x5
    1770:	2b450513          	addi	a0,a0,692 # 6a20 <malloc+0xa60>
    1774:	00004097          	auipc	ra,0x4
    1778:	43e080e7          	jalr	1086(ra) # 5bb2 <unlink>
    177c:	00004097          	auipc	ra,0x4
    1780:	3de080e7          	jalr	990(ra) # 5b5a <fork>
    1784:	04054663          	bltz	a0,17d0 <exectest+0x8e>
    1788:	84aa                	mv	s1,a0
    178a:	e959                	bnez	a0,1820 <exectest+0xde>
    178c:	4505                	li	a0,1
    178e:	00004097          	auipc	ra,0x4
    1792:	3fc080e7          	jalr	1020(ra) # 5b8a <close>
    1796:	20100593          	li	a1,513
    179a:	00005517          	auipc	a0,0x5
    179e:	28650513          	addi	a0,a0,646 # 6a20 <malloc+0xa60>
    17a2:	00004097          	auipc	ra,0x4
    17a6:	400080e7          	jalr	1024(ra) # 5ba2 <open>
    17aa:	04054163          	bltz	a0,17ec <exectest+0xaa>
    17ae:	4785                	li	a5,1
    17b0:	04f50c63          	beq	a0,a5,1808 <exectest+0xc6>
    17b4:	85ca                	mv	a1,s2
    17b6:	00005517          	auipc	a0,0x5
    17ba:	28a50513          	addi	a0,a0,650 # 6a40 <malloc+0xa80>
    17be:	00004097          	auipc	ra,0x4
    17c2:	744080e7          	jalr	1860(ra) # 5f02 <printf>
    17c6:	4505                	li	a0,1
    17c8:	00004097          	auipc	ra,0x4
    17cc:	39a080e7          	jalr	922(ra) # 5b62 <exit>
    17d0:	85ca                	mv	a1,s2
    17d2:	00005517          	auipc	a0,0x5
    17d6:	1be50513          	addi	a0,a0,446 # 6990 <malloc+0x9d0>
    17da:	00004097          	auipc	ra,0x4
    17de:	728080e7          	jalr	1832(ra) # 5f02 <printf>
    17e2:	4505                	li	a0,1
    17e4:	00004097          	auipc	ra,0x4
    17e8:	37e080e7          	jalr	894(ra) # 5b62 <exit>
    17ec:	85ca                	mv	a1,s2
    17ee:	00005517          	auipc	a0,0x5
    17f2:	23a50513          	addi	a0,a0,570 # 6a28 <malloc+0xa68>
    17f6:	00004097          	auipc	ra,0x4
    17fa:	70c080e7          	jalr	1804(ra) # 5f02 <printf>
    17fe:	4505                	li	a0,1
    1800:	00004097          	auipc	ra,0x4
    1804:	362080e7          	jalr	866(ra) # 5b62 <exit>
    1808:	fc040593          	addi	a1,s0,-64
    180c:	00005517          	auipc	a0,0x5
    1810:	8fc50513          	addi	a0,a0,-1796 # 6108 <malloc+0x148>
    1814:	00004097          	auipc	ra,0x4
    1818:	386080e7          	jalr	902(ra) # 5b9a <exec>
    181c:	02054163          	bltz	a0,183e <exectest+0xfc>
    1820:	fdc40513          	addi	a0,s0,-36
    1824:	00004097          	auipc	ra,0x4
    1828:	346080e7          	jalr	838(ra) # 5b6a <wait>
    182c:	02951763          	bne	a0,s1,185a <exectest+0x118>
    1830:	fdc42503          	lw	a0,-36(s0)
    1834:	cd0d                	beqz	a0,186e <exectest+0x12c>
    1836:	00004097          	auipc	ra,0x4
    183a:	32c080e7          	jalr	812(ra) # 5b62 <exit>
    183e:	85ca                	mv	a1,s2
    1840:	00005517          	auipc	a0,0x5
    1844:	21050513          	addi	a0,a0,528 # 6a50 <malloc+0xa90>
    1848:	00004097          	auipc	ra,0x4
    184c:	6ba080e7          	jalr	1722(ra) # 5f02 <printf>
    1850:	4505                	li	a0,1
    1852:	00004097          	auipc	ra,0x4
    1856:	310080e7          	jalr	784(ra) # 5b62 <exit>
    185a:	85ca                	mv	a1,s2
    185c:	00005517          	auipc	a0,0x5
    1860:	20c50513          	addi	a0,a0,524 # 6a68 <malloc+0xaa8>
    1864:	00004097          	auipc	ra,0x4
    1868:	69e080e7          	jalr	1694(ra) # 5f02 <printf>
    186c:	b7d1                	j	1830 <exectest+0xee>
    186e:	4581                	li	a1,0
    1870:	00005517          	auipc	a0,0x5
    1874:	1b050513          	addi	a0,a0,432 # 6a20 <malloc+0xa60>
    1878:	00004097          	auipc	ra,0x4
    187c:	32a080e7          	jalr	810(ra) # 5ba2 <open>
    1880:	02054a63          	bltz	a0,18b4 <exectest+0x172>
    1884:	4609                	li	a2,2
    1886:	fb840593          	addi	a1,s0,-72
    188a:	00004097          	auipc	ra,0x4
    188e:	2f0080e7          	jalr	752(ra) # 5b7a <read>
    1892:	4789                	li	a5,2
    1894:	02f50e63          	beq	a0,a5,18d0 <exectest+0x18e>
    1898:	85ca                	mv	a1,s2
    189a:	00005517          	auipc	a0,0x5
    189e:	c3e50513          	addi	a0,a0,-962 # 64d8 <malloc+0x518>
    18a2:	00004097          	auipc	ra,0x4
    18a6:	660080e7          	jalr	1632(ra) # 5f02 <printf>
    18aa:	4505                	li	a0,1
    18ac:	00004097          	auipc	ra,0x4
    18b0:	2b6080e7          	jalr	694(ra) # 5b62 <exit>
    18b4:	85ca                	mv	a1,s2
    18b6:	00005517          	auipc	a0,0x5
    18ba:	0f250513          	addi	a0,a0,242 # 69a8 <malloc+0x9e8>
    18be:	00004097          	auipc	ra,0x4
    18c2:	644080e7          	jalr	1604(ra) # 5f02 <printf>
    18c6:	4505                	li	a0,1
    18c8:	00004097          	auipc	ra,0x4
    18cc:	29a080e7          	jalr	666(ra) # 5b62 <exit>
    18d0:	00005517          	auipc	a0,0x5
    18d4:	15050513          	addi	a0,a0,336 # 6a20 <malloc+0xa60>
    18d8:	00004097          	auipc	ra,0x4
    18dc:	2da080e7          	jalr	730(ra) # 5bb2 <unlink>
    18e0:	fb844703          	lbu	a4,-72(s0)
    18e4:	04f00793          	li	a5,79
    18e8:	00f71863          	bne	a4,a5,18f8 <exectest+0x1b6>
    18ec:	fb944703          	lbu	a4,-71(s0)
    18f0:	04b00793          	li	a5,75
    18f4:	02f70063          	beq	a4,a5,1914 <exectest+0x1d2>
    18f8:	85ca                	mv	a1,s2
    18fa:	00005517          	auipc	a0,0x5
    18fe:	18650513          	addi	a0,a0,390 # 6a80 <malloc+0xac0>
    1902:	00004097          	auipc	ra,0x4
    1906:	600080e7          	jalr	1536(ra) # 5f02 <printf>
    190a:	4505                	li	a0,1
    190c:	00004097          	auipc	ra,0x4
    1910:	256080e7          	jalr	598(ra) # 5b62 <exit>
    1914:	4501                	li	a0,0
    1916:	00004097          	auipc	ra,0x4
    191a:	24c080e7          	jalr	588(ra) # 5b62 <exit>

000000000000191e <pipe1>:
    191e:	711d                	addi	sp,sp,-96
    1920:	ec86                	sd	ra,88(sp)
    1922:	e8a2                	sd	s0,80(sp)
    1924:	e4a6                	sd	s1,72(sp)
    1926:	e0ca                	sd	s2,64(sp)
    1928:	fc4e                	sd	s3,56(sp)
    192a:	f852                	sd	s4,48(sp)
    192c:	f456                	sd	s5,40(sp)
    192e:	f05a                	sd	s6,32(sp)
    1930:	ec5e                	sd	s7,24(sp)
    1932:	1080                	addi	s0,sp,96
    1934:	892a                	mv	s2,a0
    1936:	fa840513          	addi	a0,s0,-88
    193a:	00004097          	auipc	ra,0x4
    193e:	238080e7          	jalr	568(ra) # 5b72 <pipe>
    1942:	ed25                	bnez	a0,19ba <pipe1+0x9c>
    1944:	84aa                	mv	s1,a0
    1946:	00004097          	auipc	ra,0x4
    194a:	214080e7          	jalr	532(ra) # 5b5a <fork>
    194e:	8a2a                	mv	s4,a0
    1950:	c159                	beqz	a0,19d6 <pipe1+0xb8>
    1952:	16a05e63          	blez	a0,1ace <pipe1+0x1b0>
    1956:	fac42503          	lw	a0,-84(s0)
    195a:	00004097          	auipc	ra,0x4
    195e:	230080e7          	jalr	560(ra) # 5b8a <close>
    1962:	8a26                	mv	s4,s1
    1964:	4985                	li	s3,1
    1966:	0000ba97          	auipc	s5,0xb
    196a:	302a8a93          	addi	s5,s5,770 # cc68 <buf>
    196e:	6b0d                	lui	s6,0x3
    1970:	864e                	mv	a2,s3
    1972:	85d6                	mv	a1,s5
    1974:	fa842503          	lw	a0,-88(s0)
    1978:	00004097          	auipc	ra,0x4
    197c:	202080e7          	jalr	514(ra) # 5b7a <read>
    1980:	10a05263          	blez	a0,1a84 <pipe1+0x166>
    1984:	0000b717          	auipc	a4,0xb
    1988:	2e470713          	addi	a4,a4,740 # cc68 <buf>
    198c:	00a4863b          	addw	a2,s1,a0
    1990:	00074683          	lbu	a3,0(a4)
    1994:	0ff4f793          	andi	a5,s1,255
    1998:	2485                	addiw	s1,s1,1
    199a:	0cf69163          	bne	a3,a5,1a5c <pipe1+0x13e>
    199e:	0705                	addi	a4,a4,1
    19a0:	fec498e3          	bne	s1,a2,1990 <pipe1+0x72>
    19a4:	00aa0a3b          	addw	s4,s4,a0
    19a8:	0019979b          	slliw	a5,s3,0x1
    19ac:	0007899b          	sext.w	s3,a5
    19b0:	013b7363          	bgeu	s6,s3,19b6 <pipe1+0x98>
    19b4:	89da                	mv	s3,s6
    19b6:	84b2                	mv	s1,a2
    19b8:	bf65                	j	1970 <pipe1+0x52>
    19ba:	85ca                	mv	a1,s2
    19bc:	00005517          	auipc	a0,0x5
    19c0:	0dc50513          	addi	a0,a0,220 # 6a98 <malloc+0xad8>
    19c4:	00004097          	auipc	ra,0x4
    19c8:	53e080e7          	jalr	1342(ra) # 5f02 <printf>
    19cc:	4505                	li	a0,1
    19ce:	00004097          	auipc	ra,0x4
    19d2:	194080e7          	jalr	404(ra) # 5b62 <exit>
    19d6:	fa842503          	lw	a0,-88(s0)
    19da:	00004097          	auipc	ra,0x4
    19de:	1b0080e7          	jalr	432(ra) # 5b8a <close>
    19e2:	0000bb17          	auipc	s6,0xb
    19e6:	286b0b13          	addi	s6,s6,646 # cc68 <buf>
    19ea:	416004bb          	negw	s1,s6
    19ee:	0ff4f493          	andi	s1,s1,255
    19f2:	409b0993          	addi	s3,s6,1033
    19f6:	8bda                	mv	s7,s6
    19f8:	6a85                	lui	s5,0x1
    19fa:	42da8a93          	addi	s5,s5,1069 # 142d <copyinstr2+0x9b>
    19fe:	87da                	mv	a5,s6
    1a00:	0097873b          	addw	a4,a5,s1
    1a04:	00e78023          	sb	a4,0(a5)
    1a08:	0785                	addi	a5,a5,1
    1a0a:	fef99be3          	bne	s3,a5,1a00 <pipe1+0xe2>
    1a0e:	409a0a1b          	addiw	s4,s4,1033
    1a12:	40900613          	li	a2,1033
    1a16:	85de                	mv	a1,s7
    1a18:	fac42503          	lw	a0,-84(s0)
    1a1c:	00004097          	auipc	ra,0x4
    1a20:	166080e7          	jalr	358(ra) # 5b82 <write>
    1a24:	40900793          	li	a5,1033
    1a28:	00f51c63          	bne	a0,a5,1a40 <pipe1+0x122>
    1a2c:	24a5                	addiw	s1,s1,9
    1a2e:	0ff4f493          	andi	s1,s1,255
    1a32:	fd5a16e3          	bne	s4,s5,19fe <pipe1+0xe0>
    1a36:	4501                	li	a0,0
    1a38:	00004097          	auipc	ra,0x4
    1a3c:	12a080e7          	jalr	298(ra) # 5b62 <exit>
    1a40:	85ca                	mv	a1,s2
    1a42:	00005517          	auipc	a0,0x5
    1a46:	06e50513          	addi	a0,a0,110 # 6ab0 <malloc+0xaf0>
    1a4a:	00004097          	auipc	ra,0x4
    1a4e:	4b8080e7          	jalr	1208(ra) # 5f02 <printf>
    1a52:	4505                	li	a0,1
    1a54:	00004097          	auipc	ra,0x4
    1a58:	10e080e7          	jalr	270(ra) # 5b62 <exit>
    1a5c:	85ca                	mv	a1,s2
    1a5e:	00005517          	auipc	a0,0x5
    1a62:	06a50513          	addi	a0,a0,106 # 6ac8 <malloc+0xb08>
    1a66:	00004097          	auipc	ra,0x4
    1a6a:	49c080e7          	jalr	1180(ra) # 5f02 <printf>
    1a6e:	60e6                	ld	ra,88(sp)
    1a70:	6446                	ld	s0,80(sp)
    1a72:	64a6                	ld	s1,72(sp)
    1a74:	6906                	ld	s2,64(sp)
    1a76:	79e2                	ld	s3,56(sp)
    1a78:	7a42                	ld	s4,48(sp)
    1a7a:	7aa2                	ld	s5,40(sp)
    1a7c:	7b02                	ld	s6,32(sp)
    1a7e:	6be2                	ld	s7,24(sp)
    1a80:	6125                	addi	sp,sp,96
    1a82:	8082                	ret
    1a84:	6785                	lui	a5,0x1
    1a86:	42d78793          	addi	a5,a5,1069 # 142d <copyinstr2+0x9b>
    1a8a:	02fa0063          	beq	s4,a5,1aaa <pipe1+0x18c>
    1a8e:	85d2                	mv	a1,s4
    1a90:	00005517          	auipc	a0,0x5
    1a94:	05050513          	addi	a0,a0,80 # 6ae0 <malloc+0xb20>
    1a98:	00004097          	auipc	ra,0x4
    1a9c:	46a080e7          	jalr	1130(ra) # 5f02 <printf>
    1aa0:	4505                	li	a0,1
    1aa2:	00004097          	auipc	ra,0x4
    1aa6:	0c0080e7          	jalr	192(ra) # 5b62 <exit>
    1aaa:	fa842503          	lw	a0,-88(s0)
    1aae:	00004097          	auipc	ra,0x4
    1ab2:	0dc080e7          	jalr	220(ra) # 5b8a <close>
    1ab6:	fa440513          	addi	a0,s0,-92
    1aba:	00004097          	auipc	ra,0x4
    1abe:	0b0080e7          	jalr	176(ra) # 5b6a <wait>
    1ac2:	fa442503          	lw	a0,-92(s0)
    1ac6:	00004097          	auipc	ra,0x4
    1aca:	09c080e7          	jalr	156(ra) # 5b62 <exit>
    1ace:	85ca                	mv	a1,s2
    1ad0:	00005517          	auipc	a0,0x5
    1ad4:	03050513          	addi	a0,a0,48 # 6b00 <malloc+0xb40>
    1ad8:	00004097          	auipc	ra,0x4
    1adc:	42a080e7          	jalr	1066(ra) # 5f02 <printf>
    1ae0:	4505                	li	a0,1
    1ae2:	00004097          	auipc	ra,0x4
    1ae6:	080080e7          	jalr	128(ra) # 5b62 <exit>

0000000000001aea <exitwait>:
    1aea:	7139                	addi	sp,sp,-64
    1aec:	fc06                	sd	ra,56(sp)
    1aee:	f822                	sd	s0,48(sp)
    1af0:	f426                	sd	s1,40(sp)
    1af2:	f04a                	sd	s2,32(sp)
    1af4:	ec4e                	sd	s3,24(sp)
    1af6:	e852                	sd	s4,16(sp)
    1af8:	0080                	addi	s0,sp,64
    1afa:	8a2a                	mv	s4,a0
    1afc:	4901                	li	s2,0
    1afe:	06400993          	li	s3,100
    1b02:	00004097          	auipc	ra,0x4
    1b06:	058080e7          	jalr	88(ra) # 5b5a <fork>
    1b0a:	84aa                	mv	s1,a0
    1b0c:	02054a63          	bltz	a0,1b40 <exitwait+0x56>
    1b10:	c151                	beqz	a0,1b94 <exitwait+0xaa>
    1b12:	fcc40513          	addi	a0,s0,-52
    1b16:	00004097          	auipc	ra,0x4
    1b1a:	054080e7          	jalr	84(ra) # 5b6a <wait>
    1b1e:	02951f63          	bne	a0,s1,1b5c <exitwait+0x72>
    1b22:	fcc42783          	lw	a5,-52(s0)
    1b26:	05279963          	bne	a5,s2,1b78 <exitwait+0x8e>
    1b2a:	2905                	addiw	s2,s2,1
    1b2c:	fd391be3          	bne	s2,s3,1b02 <exitwait+0x18>
    1b30:	70e2                	ld	ra,56(sp)
    1b32:	7442                	ld	s0,48(sp)
    1b34:	74a2                	ld	s1,40(sp)
    1b36:	7902                	ld	s2,32(sp)
    1b38:	69e2                	ld	s3,24(sp)
    1b3a:	6a42                	ld	s4,16(sp)
    1b3c:	6121                	addi	sp,sp,64
    1b3e:	8082                	ret
    1b40:	85d2                	mv	a1,s4
    1b42:	00005517          	auipc	a0,0x5
    1b46:	e4e50513          	addi	a0,a0,-434 # 6990 <malloc+0x9d0>
    1b4a:	00004097          	auipc	ra,0x4
    1b4e:	3b8080e7          	jalr	952(ra) # 5f02 <printf>
    1b52:	4505                	li	a0,1
    1b54:	00004097          	auipc	ra,0x4
    1b58:	00e080e7          	jalr	14(ra) # 5b62 <exit>
    1b5c:	85d2                	mv	a1,s4
    1b5e:	00005517          	auipc	a0,0x5
    1b62:	fba50513          	addi	a0,a0,-70 # 6b18 <malloc+0xb58>
    1b66:	00004097          	auipc	ra,0x4
    1b6a:	39c080e7          	jalr	924(ra) # 5f02 <printf>
    1b6e:	4505                	li	a0,1
    1b70:	00004097          	auipc	ra,0x4
    1b74:	ff2080e7          	jalr	-14(ra) # 5b62 <exit>
    1b78:	85d2                	mv	a1,s4
    1b7a:	00005517          	auipc	a0,0x5
    1b7e:	fb650513          	addi	a0,a0,-74 # 6b30 <malloc+0xb70>
    1b82:	00004097          	auipc	ra,0x4
    1b86:	380080e7          	jalr	896(ra) # 5f02 <printf>
    1b8a:	4505                	li	a0,1
    1b8c:	00004097          	auipc	ra,0x4
    1b90:	fd6080e7          	jalr	-42(ra) # 5b62 <exit>
    1b94:	854a                	mv	a0,s2
    1b96:	00004097          	auipc	ra,0x4
    1b9a:	fcc080e7          	jalr	-52(ra) # 5b62 <exit>

0000000000001b9e <twochildren>:
    1b9e:	1101                	addi	sp,sp,-32
    1ba0:	ec06                	sd	ra,24(sp)
    1ba2:	e822                	sd	s0,16(sp)
    1ba4:	e426                	sd	s1,8(sp)
    1ba6:	e04a                	sd	s2,0(sp)
    1ba8:	1000                	addi	s0,sp,32
    1baa:	892a                	mv	s2,a0
    1bac:	3e800493          	li	s1,1000
    1bb0:	00004097          	auipc	ra,0x4
    1bb4:	faa080e7          	jalr	-86(ra) # 5b5a <fork>
    1bb8:	02054c63          	bltz	a0,1bf0 <twochildren+0x52>
    1bbc:	c921                	beqz	a0,1c0c <twochildren+0x6e>
    1bbe:	00004097          	auipc	ra,0x4
    1bc2:	f9c080e7          	jalr	-100(ra) # 5b5a <fork>
    1bc6:	04054763          	bltz	a0,1c14 <twochildren+0x76>
    1bca:	c13d                	beqz	a0,1c30 <twochildren+0x92>
    1bcc:	4501                	li	a0,0
    1bce:	00004097          	auipc	ra,0x4
    1bd2:	f9c080e7          	jalr	-100(ra) # 5b6a <wait>
    1bd6:	4501                	li	a0,0
    1bd8:	00004097          	auipc	ra,0x4
    1bdc:	f92080e7          	jalr	-110(ra) # 5b6a <wait>
    1be0:	34fd                	addiw	s1,s1,-1
    1be2:	f4f9                	bnez	s1,1bb0 <twochildren+0x12>
    1be4:	60e2                	ld	ra,24(sp)
    1be6:	6442                	ld	s0,16(sp)
    1be8:	64a2                	ld	s1,8(sp)
    1bea:	6902                	ld	s2,0(sp)
    1bec:	6105                	addi	sp,sp,32
    1bee:	8082                	ret
    1bf0:	85ca                	mv	a1,s2
    1bf2:	00005517          	auipc	a0,0x5
    1bf6:	d9e50513          	addi	a0,a0,-610 # 6990 <malloc+0x9d0>
    1bfa:	00004097          	auipc	ra,0x4
    1bfe:	308080e7          	jalr	776(ra) # 5f02 <printf>
    1c02:	4505                	li	a0,1
    1c04:	00004097          	auipc	ra,0x4
    1c08:	f5e080e7          	jalr	-162(ra) # 5b62 <exit>
    1c0c:	00004097          	auipc	ra,0x4
    1c10:	f56080e7          	jalr	-170(ra) # 5b62 <exit>
    1c14:	85ca                	mv	a1,s2
    1c16:	00005517          	auipc	a0,0x5
    1c1a:	d7a50513          	addi	a0,a0,-646 # 6990 <malloc+0x9d0>
    1c1e:	00004097          	auipc	ra,0x4
    1c22:	2e4080e7          	jalr	740(ra) # 5f02 <printf>
    1c26:	4505                	li	a0,1
    1c28:	00004097          	auipc	ra,0x4
    1c2c:	f3a080e7          	jalr	-198(ra) # 5b62 <exit>
    1c30:	00004097          	auipc	ra,0x4
    1c34:	f32080e7          	jalr	-206(ra) # 5b62 <exit>

0000000000001c38 <forkfork>:
    1c38:	7179                	addi	sp,sp,-48
    1c3a:	f406                	sd	ra,40(sp)
    1c3c:	f022                	sd	s0,32(sp)
    1c3e:	ec26                	sd	s1,24(sp)
    1c40:	1800                	addi	s0,sp,48
    1c42:	84aa                	mv	s1,a0
    1c44:	00004097          	auipc	ra,0x4
    1c48:	f16080e7          	jalr	-234(ra) # 5b5a <fork>
    1c4c:	04054163          	bltz	a0,1c8e <forkfork+0x56>
    1c50:	cd29                	beqz	a0,1caa <forkfork+0x72>
    1c52:	00004097          	auipc	ra,0x4
    1c56:	f08080e7          	jalr	-248(ra) # 5b5a <fork>
    1c5a:	02054a63          	bltz	a0,1c8e <forkfork+0x56>
    1c5e:	c531                	beqz	a0,1caa <forkfork+0x72>
    1c60:	fdc40513          	addi	a0,s0,-36
    1c64:	00004097          	auipc	ra,0x4
    1c68:	f06080e7          	jalr	-250(ra) # 5b6a <wait>
    1c6c:	fdc42783          	lw	a5,-36(s0)
    1c70:	ebbd                	bnez	a5,1ce6 <forkfork+0xae>
    1c72:	fdc40513          	addi	a0,s0,-36
    1c76:	00004097          	auipc	ra,0x4
    1c7a:	ef4080e7          	jalr	-268(ra) # 5b6a <wait>
    1c7e:	fdc42783          	lw	a5,-36(s0)
    1c82:	e3b5                	bnez	a5,1ce6 <forkfork+0xae>
    1c84:	70a2                	ld	ra,40(sp)
    1c86:	7402                	ld	s0,32(sp)
    1c88:	64e2                	ld	s1,24(sp)
    1c8a:	6145                	addi	sp,sp,48
    1c8c:	8082                	ret
    1c8e:	85a6                	mv	a1,s1
    1c90:	00005517          	auipc	a0,0x5
    1c94:	ec050513          	addi	a0,a0,-320 # 6b50 <malloc+0xb90>
    1c98:	00004097          	auipc	ra,0x4
    1c9c:	26a080e7          	jalr	618(ra) # 5f02 <printf>
    1ca0:	4505                	li	a0,1
    1ca2:	00004097          	auipc	ra,0x4
    1ca6:	ec0080e7          	jalr	-320(ra) # 5b62 <exit>
    1caa:	0c800493          	li	s1,200
    1cae:	00004097          	auipc	ra,0x4
    1cb2:	eac080e7          	jalr	-340(ra) # 5b5a <fork>
    1cb6:	00054f63          	bltz	a0,1cd4 <forkfork+0x9c>
    1cba:	c115                	beqz	a0,1cde <forkfork+0xa6>
    1cbc:	4501                	li	a0,0
    1cbe:	00004097          	auipc	ra,0x4
    1cc2:	eac080e7          	jalr	-340(ra) # 5b6a <wait>
    1cc6:	34fd                	addiw	s1,s1,-1
    1cc8:	f0fd                	bnez	s1,1cae <forkfork+0x76>
    1cca:	4501                	li	a0,0
    1ccc:	00004097          	auipc	ra,0x4
    1cd0:	e96080e7          	jalr	-362(ra) # 5b62 <exit>
    1cd4:	4505                	li	a0,1
    1cd6:	00004097          	auipc	ra,0x4
    1cda:	e8c080e7          	jalr	-372(ra) # 5b62 <exit>
    1cde:	00004097          	auipc	ra,0x4
    1ce2:	e84080e7          	jalr	-380(ra) # 5b62 <exit>
    1ce6:	85a6                	mv	a1,s1
    1ce8:	00005517          	auipc	a0,0x5
    1cec:	e7850513          	addi	a0,a0,-392 # 6b60 <malloc+0xba0>
    1cf0:	00004097          	auipc	ra,0x4
    1cf4:	212080e7          	jalr	530(ra) # 5f02 <printf>
    1cf8:	4505                	li	a0,1
    1cfa:	00004097          	auipc	ra,0x4
    1cfe:	e68080e7          	jalr	-408(ra) # 5b62 <exit>

0000000000001d02 <reparent2>:
    1d02:	1101                	addi	sp,sp,-32
    1d04:	ec06                	sd	ra,24(sp)
    1d06:	e822                	sd	s0,16(sp)
    1d08:	e426                	sd	s1,8(sp)
    1d0a:	1000                	addi	s0,sp,32
    1d0c:	32000493          	li	s1,800
    1d10:	00004097          	auipc	ra,0x4
    1d14:	e4a080e7          	jalr	-438(ra) # 5b5a <fork>
    1d18:	00054f63          	bltz	a0,1d36 <reparent2+0x34>
    1d1c:	c915                	beqz	a0,1d50 <reparent2+0x4e>
    1d1e:	4501                	li	a0,0
    1d20:	00004097          	auipc	ra,0x4
    1d24:	e4a080e7          	jalr	-438(ra) # 5b6a <wait>
    1d28:	34fd                	addiw	s1,s1,-1
    1d2a:	f0fd                	bnez	s1,1d10 <reparent2+0xe>
    1d2c:	4501                	li	a0,0
    1d2e:	00004097          	auipc	ra,0x4
    1d32:	e34080e7          	jalr	-460(ra) # 5b62 <exit>
    1d36:	00005517          	auipc	a0,0x5
    1d3a:	06250513          	addi	a0,a0,98 # 6d98 <malloc+0xdd8>
    1d3e:	00004097          	auipc	ra,0x4
    1d42:	1c4080e7          	jalr	452(ra) # 5f02 <printf>
    1d46:	4505                	li	a0,1
    1d48:	00004097          	auipc	ra,0x4
    1d4c:	e1a080e7          	jalr	-486(ra) # 5b62 <exit>
    1d50:	00004097          	auipc	ra,0x4
    1d54:	e0a080e7          	jalr	-502(ra) # 5b5a <fork>
    1d58:	00004097          	auipc	ra,0x4
    1d5c:	e02080e7          	jalr	-510(ra) # 5b5a <fork>
    1d60:	4501                	li	a0,0
    1d62:	00004097          	auipc	ra,0x4
    1d66:	e00080e7          	jalr	-512(ra) # 5b62 <exit>

0000000000001d6a <createdelete>:
    1d6a:	7175                	addi	sp,sp,-144
    1d6c:	e506                	sd	ra,136(sp)
    1d6e:	e122                	sd	s0,128(sp)
    1d70:	fca6                	sd	s1,120(sp)
    1d72:	f8ca                	sd	s2,112(sp)
    1d74:	f4ce                	sd	s3,104(sp)
    1d76:	f0d2                	sd	s4,96(sp)
    1d78:	ecd6                	sd	s5,88(sp)
    1d7a:	e8da                	sd	s6,80(sp)
    1d7c:	e4de                	sd	s7,72(sp)
    1d7e:	e0e2                	sd	s8,64(sp)
    1d80:	fc66                	sd	s9,56(sp)
    1d82:	0900                	addi	s0,sp,144
    1d84:	8caa                	mv	s9,a0
    1d86:	4901                	li	s2,0
    1d88:	4991                	li	s3,4
    1d8a:	00004097          	auipc	ra,0x4
    1d8e:	dd0080e7          	jalr	-560(ra) # 5b5a <fork>
    1d92:	84aa                	mv	s1,a0
    1d94:	02054f63          	bltz	a0,1dd2 <createdelete+0x68>
    1d98:	c939                	beqz	a0,1dee <createdelete+0x84>
    1d9a:	2905                	addiw	s2,s2,1
    1d9c:	ff3917e3          	bne	s2,s3,1d8a <createdelete+0x20>
    1da0:	4491                	li	s1,4
    1da2:	f7c40513          	addi	a0,s0,-132
    1da6:	00004097          	auipc	ra,0x4
    1daa:	dc4080e7          	jalr	-572(ra) # 5b6a <wait>
    1dae:	f7c42903          	lw	s2,-132(s0)
    1db2:	0e091263          	bnez	s2,1e96 <createdelete+0x12c>
    1db6:	34fd                	addiw	s1,s1,-1
    1db8:	f4ed                	bnez	s1,1da2 <createdelete+0x38>
    1dba:	f8040123          	sb	zero,-126(s0)
    1dbe:	03000993          	li	s3,48
    1dc2:	5a7d                	li	s4,-1
    1dc4:	07000c13          	li	s8,112
    1dc8:	4b21                	li	s6,8
    1dca:	4ba5                	li	s7,9
    1dcc:	07400a93          	li	s5,116
    1dd0:	a29d                	j	1f36 <createdelete+0x1cc>
    1dd2:	85e6                	mv	a1,s9
    1dd4:	00005517          	auipc	a0,0x5
    1dd8:	fc450513          	addi	a0,a0,-60 # 6d98 <malloc+0xdd8>
    1ddc:	00004097          	auipc	ra,0x4
    1de0:	126080e7          	jalr	294(ra) # 5f02 <printf>
    1de4:	4505                	li	a0,1
    1de6:	00004097          	auipc	ra,0x4
    1dea:	d7c080e7          	jalr	-644(ra) # 5b62 <exit>
    1dee:	0709091b          	addiw	s2,s2,112
    1df2:	f9240023          	sb	s2,-128(s0)
    1df6:	f8040123          	sb	zero,-126(s0)
    1dfa:	4951                	li	s2,20
    1dfc:	a015                	j	1e20 <createdelete+0xb6>
    1dfe:	85e6                	mv	a1,s9
    1e00:	00005517          	auipc	a0,0x5
    1e04:	c2850513          	addi	a0,a0,-984 # 6a28 <malloc+0xa68>
    1e08:	00004097          	auipc	ra,0x4
    1e0c:	0fa080e7          	jalr	250(ra) # 5f02 <printf>
    1e10:	4505                	li	a0,1
    1e12:	00004097          	auipc	ra,0x4
    1e16:	d50080e7          	jalr	-688(ra) # 5b62 <exit>
    1e1a:	2485                	addiw	s1,s1,1
    1e1c:	07248863          	beq	s1,s2,1e8c <createdelete+0x122>
    1e20:	0304879b          	addiw	a5,s1,48
    1e24:	f8f400a3          	sb	a5,-127(s0)
    1e28:	20200593          	li	a1,514
    1e2c:	f8040513          	addi	a0,s0,-128
    1e30:	00004097          	auipc	ra,0x4
    1e34:	d72080e7          	jalr	-654(ra) # 5ba2 <open>
    1e38:	fc0543e3          	bltz	a0,1dfe <createdelete+0x94>
    1e3c:	00004097          	auipc	ra,0x4
    1e40:	d4e080e7          	jalr	-690(ra) # 5b8a <close>
    1e44:	fc905be3          	blez	s1,1e1a <createdelete+0xb0>
    1e48:	0014f793          	andi	a5,s1,1
    1e4c:	f7f9                	bnez	a5,1e1a <createdelete+0xb0>
    1e4e:	01f4d79b          	srliw	a5,s1,0x1f
    1e52:	9fa5                	addw	a5,a5,s1
    1e54:	4017d79b          	sraiw	a5,a5,0x1
    1e58:	0307879b          	addiw	a5,a5,48
    1e5c:	f8f400a3          	sb	a5,-127(s0)
    1e60:	f8040513          	addi	a0,s0,-128
    1e64:	00004097          	auipc	ra,0x4
    1e68:	d4e080e7          	jalr	-690(ra) # 5bb2 <unlink>
    1e6c:	fa0557e3          	bgez	a0,1e1a <createdelete+0xb0>
    1e70:	85e6                	mv	a1,s9
    1e72:	00005517          	auipc	a0,0x5
    1e76:	d0e50513          	addi	a0,a0,-754 # 6b80 <malloc+0xbc0>
    1e7a:	00004097          	auipc	ra,0x4
    1e7e:	088080e7          	jalr	136(ra) # 5f02 <printf>
    1e82:	4505                	li	a0,1
    1e84:	00004097          	auipc	ra,0x4
    1e88:	cde080e7          	jalr	-802(ra) # 5b62 <exit>
    1e8c:	4501                	li	a0,0
    1e8e:	00004097          	auipc	ra,0x4
    1e92:	cd4080e7          	jalr	-812(ra) # 5b62 <exit>
    1e96:	4505                	li	a0,1
    1e98:	00004097          	auipc	ra,0x4
    1e9c:	cca080e7          	jalr	-822(ra) # 5b62 <exit>
    1ea0:	f8040613          	addi	a2,s0,-128
    1ea4:	85e6                	mv	a1,s9
    1ea6:	00005517          	auipc	a0,0x5
    1eaa:	cf250513          	addi	a0,a0,-782 # 6b98 <malloc+0xbd8>
    1eae:	00004097          	auipc	ra,0x4
    1eb2:	054080e7          	jalr	84(ra) # 5f02 <printf>
    1eb6:	4505                	li	a0,1
    1eb8:	00004097          	auipc	ra,0x4
    1ebc:	caa080e7          	jalr	-854(ra) # 5b62 <exit>
    1ec0:	054b7163          	bgeu	s6,s4,1f02 <createdelete+0x198>
    1ec4:	02055a63          	bgez	a0,1ef8 <createdelete+0x18e>
    1ec8:	2485                	addiw	s1,s1,1
    1eca:	0ff4f493          	andi	s1,s1,255
    1ece:	05548c63          	beq	s1,s5,1f26 <createdelete+0x1bc>
    1ed2:	f8940023          	sb	s1,-128(s0)
    1ed6:	f93400a3          	sb	s3,-127(s0)
    1eda:	4581                	li	a1,0
    1edc:	f8040513          	addi	a0,s0,-128
    1ee0:	00004097          	auipc	ra,0x4
    1ee4:	cc2080e7          	jalr	-830(ra) # 5ba2 <open>
    1ee8:	00090463          	beqz	s2,1ef0 <createdelete+0x186>
    1eec:	fd2bdae3          	bge	s7,s2,1ec0 <createdelete+0x156>
    1ef0:	fa0548e3          	bltz	a0,1ea0 <createdelete+0x136>
    1ef4:	014b7963          	bgeu	s6,s4,1f06 <createdelete+0x19c>
    1ef8:	00004097          	auipc	ra,0x4
    1efc:	c92080e7          	jalr	-878(ra) # 5b8a <close>
    1f00:	b7e1                	j	1ec8 <createdelete+0x15e>
    1f02:	fc0543e3          	bltz	a0,1ec8 <createdelete+0x15e>
    1f06:	f8040613          	addi	a2,s0,-128
    1f0a:	85e6                	mv	a1,s9
    1f0c:	00005517          	auipc	a0,0x5
    1f10:	cb450513          	addi	a0,a0,-844 # 6bc0 <malloc+0xc00>
    1f14:	00004097          	auipc	ra,0x4
    1f18:	fee080e7          	jalr	-18(ra) # 5f02 <printf>
    1f1c:	4505                	li	a0,1
    1f1e:	00004097          	auipc	ra,0x4
    1f22:	c44080e7          	jalr	-956(ra) # 5b62 <exit>
    1f26:	2905                	addiw	s2,s2,1
    1f28:	2a05                	addiw	s4,s4,1
    1f2a:	2985                	addiw	s3,s3,1
    1f2c:	0ff9f993          	andi	s3,s3,255
    1f30:	47d1                	li	a5,20
    1f32:	02f90a63          	beq	s2,a5,1f66 <createdelete+0x1fc>
    1f36:	84e2                	mv	s1,s8
    1f38:	bf69                	j	1ed2 <createdelete+0x168>
    1f3a:	2905                	addiw	s2,s2,1
    1f3c:	0ff97913          	andi	s2,s2,255
    1f40:	2985                	addiw	s3,s3,1
    1f42:	0ff9f993          	andi	s3,s3,255
    1f46:	03490863          	beq	s2,s4,1f76 <createdelete+0x20c>
    1f4a:	84d6                	mv	s1,s5
    1f4c:	f9240023          	sb	s2,-128(s0)
    1f50:	f93400a3          	sb	s3,-127(s0)
    1f54:	f8040513          	addi	a0,s0,-128
    1f58:	00004097          	auipc	ra,0x4
    1f5c:	c5a080e7          	jalr	-934(ra) # 5bb2 <unlink>
    1f60:	34fd                	addiw	s1,s1,-1
    1f62:	f4ed                	bnez	s1,1f4c <createdelete+0x1e2>
    1f64:	bfd9                	j	1f3a <createdelete+0x1d0>
    1f66:	03000993          	li	s3,48
    1f6a:	07000913          	li	s2,112
    1f6e:	4a91                	li	s5,4
    1f70:	08400a13          	li	s4,132
    1f74:	bfd9                	j	1f4a <createdelete+0x1e0>
    1f76:	60aa                	ld	ra,136(sp)
    1f78:	640a                	ld	s0,128(sp)
    1f7a:	74e6                	ld	s1,120(sp)
    1f7c:	7946                	ld	s2,112(sp)
    1f7e:	79a6                	ld	s3,104(sp)
    1f80:	7a06                	ld	s4,96(sp)
    1f82:	6ae6                	ld	s5,88(sp)
    1f84:	6b46                	ld	s6,80(sp)
    1f86:	6ba6                	ld	s7,72(sp)
    1f88:	6c06                	ld	s8,64(sp)
    1f8a:	7ce2                	ld	s9,56(sp)
    1f8c:	6149                	addi	sp,sp,144
    1f8e:	8082                	ret

0000000000001f90 <linkunlink>:
    1f90:	711d                	addi	sp,sp,-96
    1f92:	ec86                	sd	ra,88(sp)
    1f94:	e8a2                	sd	s0,80(sp)
    1f96:	e4a6                	sd	s1,72(sp)
    1f98:	e0ca                	sd	s2,64(sp)
    1f9a:	fc4e                	sd	s3,56(sp)
    1f9c:	f852                	sd	s4,48(sp)
    1f9e:	f456                	sd	s5,40(sp)
    1fa0:	f05a                	sd	s6,32(sp)
    1fa2:	ec5e                	sd	s7,24(sp)
    1fa4:	e862                	sd	s8,16(sp)
    1fa6:	e466                	sd	s9,8(sp)
    1fa8:	1080                	addi	s0,sp,96
    1faa:	84aa                	mv	s1,a0
    1fac:	00004517          	auipc	a0,0x4
    1fb0:	1cc50513          	addi	a0,a0,460 # 6178 <malloc+0x1b8>
    1fb4:	00004097          	auipc	ra,0x4
    1fb8:	bfe080e7          	jalr	-1026(ra) # 5bb2 <unlink>
    1fbc:	00004097          	auipc	ra,0x4
    1fc0:	b9e080e7          	jalr	-1122(ra) # 5b5a <fork>
    1fc4:	02054b63          	bltz	a0,1ffa <linkunlink+0x6a>
    1fc8:	8c2a                	mv	s8,a0
    1fca:	4c85                	li	s9,1
    1fcc:	e119                	bnez	a0,1fd2 <linkunlink+0x42>
    1fce:	06100c93          	li	s9,97
    1fd2:	06400493          	li	s1,100
    1fd6:	41c659b7          	lui	s3,0x41c65
    1fda:	e6d9899b          	addiw	s3,s3,-403
    1fde:	690d                	lui	s2,0x3
    1fe0:	0399091b          	addiw	s2,s2,57
    1fe4:	4a0d                	li	s4,3
    1fe6:	4b05                	li	s6,1
    1fe8:	00004a97          	auipc	s5,0x4
    1fec:	190a8a93          	addi	s5,s5,400 # 6178 <malloc+0x1b8>
    1ff0:	00005b97          	auipc	s7,0x5
    1ff4:	bf8b8b93          	addi	s7,s7,-1032 # 6be8 <malloc+0xc28>
    1ff8:	a091                	j	203c <linkunlink+0xac>
    1ffa:	85a6                	mv	a1,s1
    1ffc:	00005517          	auipc	a0,0x5
    2000:	99450513          	addi	a0,a0,-1644 # 6990 <malloc+0x9d0>
    2004:	00004097          	auipc	ra,0x4
    2008:	efe080e7          	jalr	-258(ra) # 5f02 <printf>
    200c:	4505                	li	a0,1
    200e:	00004097          	auipc	ra,0x4
    2012:	b54080e7          	jalr	-1196(ra) # 5b62 <exit>
    2016:	20200593          	li	a1,514
    201a:	8556                	mv	a0,s5
    201c:	00004097          	auipc	ra,0x4
    2020:	b86080e7          	jalr	-1146(ra) # 5ba2 <open>
    2024:	00004097          	auipc	ra,0x4
    2028:	b66080e7          	jalr	-1178(ra) # 5b8a <close>
    202c:	a031                	j	2038 <linkunlink+0xa8>
    202e:	8556                	mv	a0,s5
    2030:	00004097          	auipc	ra,0x4
    2034:	b82080e7          	jalr	-1150(ra) # 5bb2 <unlink>
    2038:	34fd                	addiw	s1,s1,-1
    203a:	c09d                	beqz	s1,2060 <linkunlink+0xd0>
    203c:	033c87bb          	mulw	a5,s9,s3
    2040:	012787bb          	addw	a5,a5,s2
    2044:	00078c9b          	sext.w	s9,a5
    2048:	0347f7bb          	remuw	a5,a5,s4
    204c:	d7e9                	beqz	a5,2016 <linkunlink+0x86>
    204e:	ff6790e3          	bne	a5,s6,202e <linkunlink+0x9e>
    2052:	85d6                	mv	a1,s5
    2054:	855e                	mv	a0,s7
    2056:	00004097          	auipc	ra,0x4
    205a:	b6c080e7          	jalr	-1172(ra) # 5bc2 <link>
    205e:	bfe9                	j	2038 <linkunlink+0xa8>
    2060:	020c0463          	beqz	s8,2088 <linkunlink+0xf8>
    2064:	4501                	li	a0,0
    2066:	00004097          	auipc	ra,0x4
    206a:	b04080e7          	jalr	-1276(ra) # 5b6a <wait>
    206e:	60e6                	ld	ra,88(sp)
    2070:	6446                	ld	s0,80(sp)
    2072:	64a6                	ld	s1,72(sp)
    2074:	6906                	ld	s2,64(sp)
    2076:	79e2                	ld	s3,56(sp)
    2078:	7a42                	ld	s4,48(sp)
    207a:	7aa2                	ld	s5,40(sp)
    207c:	7b02                	ld	s6,32(sp)
    207e:	6be2                	ld	s7,24(sp)
    2080:	6c42                	ld	s8,16(sp)
    2082:	6ca2                	ld	s9,8(sp)
    2084:	6125                	addi	sp,sp,96
    2086:	8082                	ret
    2088:	4501                	li	a0,0
    208a:	00004097          	auipc	ra,0x4
    208e:	ad8080e7          	jalr	-1320(ra) # 5b62 <exit>

0000000000002092 <forktest>:
    2092:	7179                	addi	sp,sp,-48
    2094:	f406                	sd	ra,40(sp)
    2096:	f022                	sd	s0,32(sp)
    2098:	ec26                	sd	s1,24(sp)
    209a:	e84a                	sd	s2,16(sp)
    209c:	e44e                	sd	s3,8(sp)
    209e:	1800                	addi	s0,sp,48
    20a0:	89aa                	mv	s3,a0
    20a2:	4481                	li	s1,0
    20a4:	3e800913          	li	s2,1000
    20a8:	00004097          	auipc	ra,0x4
    20ac:	ab2080e7          	jalr	-1358(ra) # 5b5a <fork>
    20b0:	02054863          	bltz	a0,20e0 <forktest+0x4e>
    20b4:	c115                	beqz	a0,20d8 <forktest+0x46>
    20b6:	2485                	addiw	s1,s1,1
    20b8:	ff2498e3          	bne	s1,s2,20a8 <forktest+0x16>
    20bc:	85ce                	mv	a1,s3
    20be:	00005517          	auipc	a0,0x5
    20c2:	b4a50513          	addi	a0,a0,-1206 # 6c08 <malloc+0xc48>
    20c6:	00004097          	auipc	ra,0x4
    20ca:	e3c080e7          	jalr	-452(ra) # 5f02 <printf>
    20ce:	4505                	li	a0,1
    20d0:	00004097          	auipc	ra,0x4
    20d4:	a92080e7          	jalr	-1390(ra) # 5b62 <exit>
    20d8:	00004097          	auipc	ra,0x4
    20dc:	a8a080e7          	jalr	-1398(ra) # 5b62 <exit>
    20e0:	cc9d                	beqz	s1,211e <forktest+0x8c>
    20e2:	3e800793          	li	a5,1000
    20e6:	fcf48be3          	beq	s1,a5,20bc <forktest+0x2a>
    20ea:	00905b63          	blez	s1,2100 <forktest+0x6e>
    20ee:	4501                	li	a0,0
    20f0:	00004097          	auipc	ra,0x4
    20f4:	a7a080e7          	jalr	-1414(ra) # 5b6a <wait>
    20f8:	04054163          	bltz	a0,213a <forktest+0xa8>
    20fc:	34fd                	addiw	s1,s1,-1
    20fe:	f8e5                	bnez	s1,20ee <forktest+0x5c>
    2100:	4501                	li	a0,0
    2102:	00004097          	auipc	ra,0x4
    2106:	a68080e7          	jalr	-1432(ra) # 5b6a <wait>
    210a:	57fd                	li	a5,-1
    210c:	04f51563          	bne	a0,a5,2156 <forktest+0xc4>
    2110:	70a2                	ld	ra,40(sp)
    2112:	7402                	ld	s0,32(sp)
    2114:	64e2                	ld	s1,24(sp)
    2116:	6942                	ld	s2,16(sp)
    2118:	69a2                	ld	s3,8(sp)
    211a:	6145                	addi	sp,sp,48
    211c:	8082                	ret
    211e:	85ce                	mv	a1,s3
    2120:	00005517          	auipc	a0,0x5
    2124:	ad050513          	addi	a0,a0,-1328 # 6bf0 <malloc+0xc30>
    2128:	00004097          	auipc	ra,0x4
    212c:	dda080e7          	jalr	-550(ra) # 5f02 <printf>
    2130:	4505                	li	a0,1
    2132:	00004097          	auipc	ra,0x4
    2136:	a30080e7          	jalr	-1488(ra) # 5b62 <exit>
    213a:	85ce                	mv	a1,s3
    213c:	00005517          	auipc	a0,0x5
    2140:	af450513          	addi	a0,a0,-1292 # 6c30 <malloc+0xc70>
    2144:	00004097          	auipc	ra,0x4
    2148:	dbe080e7          	jalr	-578(ra) # 5f02 <printf>
    214c:	4505                	li	a0,1
    214e:	00004097          	auipc	ra,0x4
    2152:	a14080e7          	jalr	-1516(ra) # 5b62 <exit>
    2156:	85ce                	mv	a1,s3
    2158:	00005517          	auipc	a0,0x5
    215c:	af050513          	addi	a0,a0,-1296 # 6c48 <malloc+0xc88>
    2160:	00004097          	auipc	ra,0x4
    2164:	da2080e7          	jalr	-606(ra) # 5f02 <printf>
    2168:	4505                	li	a0,1
    216a:	00004097          	auipc	ra,0x4
    216e:	9f8080e7          	jalr	-1544(ra) # 5b62 <exit>

0000000000002172 <kernmem>:
    2172:	715d                	addi	sp,sp,-80
    2174:	e486                	sd	ra,72(sp)
    2176:	e0a2                	sd	s0,64(sp)
    2178:	fc26                	sd	s1,56(sp)
    217a:	f84a                	sd	s2,48(sp)
    217c:	f44e                	sd	s3,40(sp)
    217e:	f052                	sd	s4,32(sp)
    2180:	ec56                	sd	s5,24(sp)
    2182:	0880                	addi	s0,sp,80
    2184:	8a2a                	mv	s4,a0
    2186:	4485                	li	s1,1
    2188:	04fe                	slli	s1,s1,0x1f
    218a:	5afd                	li	s5,-1
    218c:	69b1                	lui	s3,0xc
    218e:	35098993          	addi	s3,s3,848 # c350 <uninit+0x1df8>
    2192:	1003d937          	lui	s2,0x1003d
    2196:	090e                	slli	s2,s2,0x3
    2198:	48090913          	addi	s2,s2,1152 # 1003d480 <base+0x1002d818>
    219c:	00004097          	auipc	ra,0x4
    21a0:	9be080e7          	jalr	-1602(ra) # 5b5a <fork>
    21a4:	02054963          	bltz	a0,21d6 <kernmem+0x64>
    21a8:	c529                	beqz	a0,21f2 <kernmem+0x80>
    21aa:	fbc40513          	addi	a0,s0,-68
    21ae:	00004097          	auipc	ra,0x4
    21b2:	9bc080e7          	jalr	-1604(ra) # 5b6a <wait>
    21b6:	fbc42783          	lw	a5,-68(s0)
    21ba:	05579d63          	bne	a5,s5,2214 <kernmem+0xa2>
    21be:	94ce                	add	s1,s1,s3
    21c0:	fd249ee3          	bne	s1,s2,219c <kernmem+0x2a>
    21c4:	60a6                	ld	ra,72(sp)
    21c6:	6406                	ld	s0,64(sp)
    21c8:	74e2                	ld	s1,56(sp)
    21ca:	7942                	ld	s2,48(sp)
    21cc:	79a2                	ld	s3,40(sp)
    21ce:	7a02                	ld	s4,32(sp)
    21d0:	6ae2                	ld	s5,24(sp)
    21d2:	6161                	addi	sp,sp,80
    21d4:	8082                	ret
    21d6:	85d2                	mv	a1,s4
    21d8:	00004517          	auipc	a0,0x4
    21dc:	7b850513          	addi	a0,a0,1976 # 6990 <malloc+0x9d0>
    21e0:	00004097          	auipc	ra,0x4
    21e4:	d22080e7          	jalr	-734(ra) # 5f02 <printf>
    21e8:	4505                	li	a0,1
    21ea:	00004097          	auipc	ra,0x4
    21ee:	978080e7          	jalr	-1672(ra) # 5b62 <exit>
    21f2:	0004c683          	lbu	a3,0(s1)
    21f6:	8626                	mv	a2,s1
    21f8:	85d2                	mv	a1,s4
    21fa:	00005517          	auipc	a0,0x5
    21fe:	a6650513          	addi	a0,a0,-1434 # 6c60 <malloc+0xca0>
    2202:	00004097          	auipc	ra,0x4
    2206:	d00080e7          	jalr	-768(ra) # 5f02 <printf>
    220a:	4505                	li	a0,1
    220c:	00004097          	auipc	ra,0x4
    2210:	956080e7          	jalr	-1706(ra) # 5b62 <exit>
    2214:	4505                	li	a0,1
    2216:	00004097          	auipc	ra,0x4
    221a:	94c080e7          	jalr	-1716(ra) # 5b62 <exit>

000000000000221e <MAXVAplus>:
    221e:	7179                	addi	sp,sp,-48
    2220:	f406                	sd	ra,40(sp)
    2222:	f022                	sd	s0,32(sp)
    2224:	ec26                	sd	s1,24(sp)
    2226:	e84a                	sd	s2,16(sp)
    2228:	1800                	addi	s0,sp,48
    222a:	4785                	li	a5,1
    222c:	179a                	slli	a5,a5,0x26
    222e:	fcf43c23          	sd	a5,-40(s0)
    2232:	fd843783          	ld	a5,-40(s0)
    2236:	cf85                	beqz	a5,226e <MAXVAplus+0x50>
    2238:	892a                	mv	s2,a0
    223a:	54fd                	li	s1,-1
    223c:	00004097          	auipc	ra,0x4
    2240:	91e080e7          	jalr	-1762(ra) # 5b5a <fork>
    2244:	02054b63          	bltz	a0,227a <MAXVAplus+0x5c>
    2248:	c539                	beqz	a0,2296 <MAXVAplus+0x78>
    224a:	fd440513          	addi	a0,s0,-44
    224e:	00004097          	auipc	ra,0x4
    2252:	91c080e7          	jalr	-1764(ra) # 5b6a <wait>
    2256:	fd442783          	lw	a5,-44(s0)
    225a:	06979463          	bne	a5,s1,22c2 <MAXVAplus+0xa4>
    225e:	fd843783          	ld	a5,-40(s0)
    2262:	0786                	slli	a5,a5,0x1
    2264:	fcf43c23          	sd	a5,-40(s0)
    2268:	fd843783          	ld	a5,-40(s0)
    226c:	fbe1                	bnez	a5,223c <MAXVAplus+0x1e>
    226e:	70a2                	ld	ra,40(sp)
    2270:	7402                	ld	s0,32(sp)
    2272:	64e2                	ld	s1,24(sp)
    2274:	6942                	ld	s2,16(sp)
    2276:	6145                	addi	sp,sp,48
    2278:	8082                	ret
    227a:	85ca                	mv	a1,s2
    227c:	00004517          	auipc	a0,0x4
    2280:	71450513          	addi	a0,a0,1812 # 6990 <malloc+0x9d0>
    2284:	00004097          	auipc	ra,0x4
    2288:	c7e080e7          	jalr	-898(ra) # 5f02 <printf>
    228c:	4505                	li	a0,1
    228e:	00004097          	auipc	ra,0x4
    2292:	8d4080e7          	jalr	-1836(ra) # 5b62 <exit>
    2296:	fd843783          	ld	a5,-40(s0)
    229a:	06300713          	li	a4,99
    229e:	00e78023          	sb	a4,0(a5)
    22a2:	fd843603          	ld	a2,-40(s0)
    22a6:	85ca                	mv	a1,s2
    22a8:	00005517          	auipc	a0,0x5
    22ac:	9d850513          	addi	a0,a0,-1576 # 6c80 <malloc+0xcc0>
    22b0:	00004097          	auipc	ra,0x4
    22b4:	c52080e7          	jalr	-942(ra) # 5f02 <printf>
    22b8:	4505                	li	a0,1
    22ba:	00004097          	auipc	ra,0x4
    22be:	8a8080e7          	jalr	-1880(ra) # 5b62 <exit>
    22c2:	4505                	li	a0,1
    22c4:	00004097          	auipc	ra,0x4
    22c8:	89e080e7          	jalr	-1890(ra) # 5b62 <exit>

00000000000022cc <bigargtest>:
    22cc:	7179                	addi	sp,sp,-48
    22ce:	f406                	sd	ra,40(sp)
    22d0:	f022                	sd	s0,32(sp)
    22d2:	ec26                	sd	s1,24(sp)
    22d4:	1800                	addi	s0,sp,48
    22d6:	84aa                	mv	s1,a0
    22d8:	00005517          	auipc	a0,0x5
    22dc:	9c050513          	addi	a0,a0,-1600 # 6c98 <malloc+0xcd8>
    22e0:	00004097          	auipc	ra,0x4
    22e4:	8d2080e7          	jalr	-1838(ra) # 5bb2 <unlink>
    22e8:	00004097          	auipc	ra,0x4
    22ec:	872080e7          	jalr	-1934(ra) # 5b5a <fork>
    22f0:	c121                	beqz	a0,2330 <bigargtest+0x64>
    22f2:	0a054063          	bltz	a0,2392 <bigargtest+0xc6>
    22f6:	fdc40513          	addi	a0,s0,-36
    22fa:	00004097          	auipc	ra,0x4
    22fe:	870080e7          	jalr	-1936(ra) # 5b6a <wait>
    2302:	fdc42503          	lw	a0,-36(s0)
    2306:	e545                	bnez	a0,23ae <bigargtest+0xe2>
    2308:	4581                	li	a1,0
    230a:	00005517          	auipc	a0,0x5
    230e:	98e50513          	addi	a0,a0,-1650 # 6c98 <malloc+0xcd8>
    2312:	00004097          	auipc	ra,0x4
    2316:	890080e7          	jalr	-1904(ra) # 5ba2 <open>
    231a:	08054e63          	bltz	a0,23b6 <bigargtest+0xea>
    231e:	00004097          	auipc	ra,0x4
    2322:	86c080e7          	jalr	-1940(ra) # 5b8a <close>
    2326:	70a2                	ld	ra,40(sp)
    2328:	7402                	ld	s0,32(sp)
    232a:	64e2                	ld	s1,24(sp)
    232c:	6145                	addi	sp,sp,48
    232e:	8082                	ret
    2330:	00007797          	auipc	a5,0x7
    2334:	12078793          	addi	a5,a5,288 # 9450 <args.1828>
    2338:	00007697          	auipc	a3,0x7
    233c:	21068693          	addi	a3,a3,528 # 9548 <args.1828+0xf8>
    2340:	00005717          	auipc	a4,0x5
    2344:	96870713          	addi	a4,a4,-1688 # 6ca8 <malloc+0xce8>
    2348:	e398                	sd	a4,0(a5)
    234a:	07a1                	addi	a5,a5,8
    234c:	fed79ee3          	bne	a5,a3,2348 <bigargtest+0x7c>
    2350:	00007597          	auipc	a1,0x7
    2354:	10058593          	addi	a1,a1,256 # 9450 <args.1828>
    2358:	0e05bc23          	sd	zero,248(a1)
    235c:	00004517          	auipc	a0,0x4
    2360:	dac50513          	addi	a0,a0,-596 # 6108 <malloc+0x148>
    2364:	00004097          	auipc	ra,0x4
    2368:	836080e7          	jalr	-1994(ra) # 5b9a <exec>
    236c:	20000593          	li	a1,512
    2370:	00005517          	auipc	a0,0x5
    2374:	92850513          	addi	a0,a0,-1752 # 6c98 <malloc+0xcd8>
    2378:	00004097          	auipc	ra,0x4
    237c:	82a080e7          	jalr	-2006(ra) # 5ba2 <open>
    2380:	00004097          	auipc	ra,0x4
    2384:	80a080e7          	jalr	-2038(ra) # 5b8a <close>
    2388:	4501                	li	a0,0
    238a:	00003097          	auipc	ra,0x3
    238e:	7d8080e7          	jalr	2008(ra) # 5b62 <exit>
    2392:	85a6                	mv	a1,s1
    2394:	00005517          	auipc	a0,0x5
    2398:	9f450513          	addi	a0,a0,-1548 # 6d88 <malloc+0xdc8>
    239c:	00004097          	auipc	ra,0x4
    23a0:	b66080e7          	jalr	-1178(ra) # 5f02 <printf>
    23a4:	4505                	li	a0,1
    23a6:	00003097          	auipc	ra,0x3
    23aa:	7bc080e7          	jalr	1980(ra) # 5b62 <exit>
    23ae:	00003097          	auipc	ra,0x3
    23b2:	7b4080e7          	jalr	1972(ra) # 5b62 <exit>
    23b6:	85a6                	mv	a1,s1
    23b8:	00005517          	auipc	a0,0x5
    23bc:	9f050513          	addi	a0,a0,-1552 # 6da8 <malloc+0xde8>
    23c0:	00004097          	auipc	ra,0x4
    23c4:	b42080e7          	jalr	-1214(ra) # 5f02 <printf>
    23c8:	4505                	li	a0,1
    23ca:	00003097          	auipc	ra,0x3
    23ce:	798080e7          	jalr	1944(ra) # 5b62 <exit>

00000000000023d2 <stacktest>:
    23d2:	7179                	addi	sp,sp,-48
    23d4:	f406                	sd	ra,40(sp)
    23d6:	f022                	sd	s0,32(sp)
    23d8:	ec26                	sd	s1,24(sp)
    23da:	1800                	addi	s0,sp,48
    23dc:	84aa                	mv	s1,a0
    23de:	00003097          	auipc	ra,0x3
    23e2:	77c080e7          	jalr	1916(ra) # 5b5a <fork>
    23e6:	c115                	beqz	a0,240a <stacktest+0x38>
    23e8:	04054463          	bltz	a0,2430 <stacktest+0x5e>
    23ec:	fdc40513          	addi	a0,s0,-36
    23f0:	00003097          	auipc	ra,0x3
    23f4:	77a080e7          	jalr	1914(ra) # 5b6a <wait>
    23f8:	fdc42503          	lw	a0,-36(s0)
    23fc:	57fd                	li	a5,-1
    23fe:	04f50763          	beq	a0,a5,244c <stacktest+0x7a>
    2402:	00003097          	auipc	ra,0x3
    2406:	760080e7          	jalr	1888(ra) # 5b62 <exit>
    240a:	870a                	mv	a4,sp
    240c:	77fd                	lui	a5,0xfffff
    240e:	97ba                	add	a5,a5,a4
    2410:	0007c603          	lbu	a2,0(a5) # fffffffffffff000 <base+0xfffffffffffef398>
    2414:	85a6                	mv	a1,s1
    2416:	00005517          	auipc	a0,0x5
    241a:	9b250513          	addi	a0,a0,-1614 # 6dc8 <malloc+0xe08>
    241e:	00004097          	auipc	ra,0x4
    2422:	ae4080e7          	jalr	-1308(ra) # 5f02 <printf>
    2426:	4505                	li	a0,1
    2428:	00003097          	auipc	ra,0x3
    242c:	73a080e7          	jalr	1850(ra) # 5b62 <exit>
    2430:	85a6                	mv	a1,s1
    2432:	00004517          	auipc	a0,0x4
    2436:	55e50513          	addi	a0,a0,1374 # 6990 <malloc+0x9d0>
    243a:	00004097          	auipc	ra,0x4
    243e:	ac8080e7          	jalr	-1336(ra) # 5f02 <printf>
    2442:	4505                	li	a0,1
    2444:	00003097          	auipc	ra,0x3
    2448:	71e080e7          	jalr	1822(ra) # 5b62 <exit>
    244c:	4501                	li	a0,0
    244e:	00003097          	auipc	ra,0x3
    2452:	714080e7          	jalr	1812(ra) # 5b62 <exit>

0000000000002456 <manywrites>:
    2456:	711d                	addi	sp,sp,-96
    2458:	ec86                	sd	ra,88(sp)
    245a:	e8a2                	sd	s0,80(sp)
    245c:	e4a6                	sd	s1,72(sp)
    245e:	e0ca                	sd	s2,64(sp)
    2460:	fc4e                	sd	s3,56(sp)
    2462:	f852                	sd	s4,48(sp)
    2464:	f456                	sd	s5,40(sp)
    2466:	f05a                	sd	s6,32(sp)
    2468:	ec5e                	sd	s7,24(sp)
    246a:	1080                	addi	s0,sp,96
    246c:	8aaa                	mv	s5,a0
    246e:	4901                	li	s2,0
    2470:	4991                	li	s3,4
    2472:	00003097          	auipc	ra,0x3
    2476:	6e8080e7          	jalr	1768(ra) # 5b5a <fork>
    247a:	84aa                	mv	s1,a0
    247c:	02054963          	bltz	a0,24ae <manywrites+0x58>
    2480:	c521                	beqz	a0,24c8 <manywrites+0x72>
    2482:	2905                	addiw	s2,s2,1
    2484:	ff3917e3          	bne	s2,s3,2472 <manywrites+0x1c>
    2488:	4491                	li	s1,4
    248a:	fa042423          	sw	zero,-88(s0)
    248e:	fa840513          	addi	a0,s0,-88
    2492:	00003097          	auipc	ra,0x3
    2496:	6d8080e7          	jalr	1752(ra) # 5b6a <wait>
    249a:	fa842503          	lw	a0,-88(s0)
    249e:	ed6d                	bnez	a0,2598 <manywrites+0x142>
    24a0:	34fd                	addiw	s1,s1,-1
    24a2:	f4e5                	bnez	s1,248a <manywrites+0x34>
    24a4:	4501                	li	a0,0
    24a6:	00003097          	auipc	ra,0x3
    24aa:	6bc080e7          	jalr	1724(ra) # 5b62 <exit>
    24ae:	00005517          	auipc	a0,0x5
    24b2:	8ea50513          	addi	a0,a0,-1814 # 6d98 <malloc+0xdd8>
    24b6:	00004097          	auipc	ra,0x4
    24ba:	a4c080e7          	jalr	-1460(ra) # 5f02 <printf>
    24be:	4505                	li	a0,1
    24c0:	00003097          	auipc	ra,0x3
    24c4:	6a2080e7          	jalr	1698(ra) # 5b62 <exit>
    24c8:	06200793          	li	a5,98
    24cc:	faf40423          	sb	a5,-88(s0)
    24d0:	0619079b          	addiw	a5,s2,97
    24d4:	faf404a3          	sb	a5,-87(s0)
    24d8:	fa040523          	sb	zero,-86(s0)
    24dc:	fa840513          	addi	a0,s0,-88
    24e0:	00003097          	auipc	ra,0x3
    24e4:	6d2080e7          	jalr	1746(ra) # 5bb2 <unlink>
    24e8:	4b79                	li	s6,30
    24ea:	0000ab97          	auipc	s7,0xa
    24ee:	77eb8b93          	addi	s7,s7,1918 # cc68 <buf>
    24f2:	8a26                	mv	s4,s1
    24f4:	02094e63          	bltz	s2,2530 <manywrites+0xda>
    24f8:	20200593          	li	a1,514
    24fc:	fa840513          	addi	a0,s0,-88
    2500:	00003097          	auipc	ra,0x3
    2504:	6a2080e7          	jalr	1698(ra) # 5ba2 <open>
    2508:	89aa                	mv	s3,a0
    250a:	04054763          	bltz	a0,2558 <manywrites+0x102>
    250e:	660d                	lui	a2,0x3
    2510:	85de                	mv	a1,s7
    2512:	00003097          	auipc	ra,0x3
    2516:	670080e7          	jalr	1648(ra) # 5b82 <write>
    251a:	678d                	lui	a5,0x3
    251c:	04f51e63          	bne	a0,a5,2578 <manywrites+0x122>
    2520:	854e                	mv	a0,s3
    2522:	00003097          	auipc	ra,0x3
    2526:	668080e7          	jalr	1640(ra) # 5b8a <close>
    252a:	2a05                	addiw	s4,s4,1
    252c:	fd4956e3          	bge	s2,s4,24f8 <manywrites+0xa2>
    2530:	fa840513          	addi	a0,s0,-88
    2534:	00003097          	auipc	ra,0x3
    2538:	67e080e7          	jalr	1662(ra) # 5bb2 <unlink>
    253c:	3b7d                	addiw	s6,s6,-1
    253e:	fa0b1ae3          	bnez	s6,24f2 <manywrites+0x9c>
    2542:	fa840513          	addi	a0,s0,-88
    2546:	00003097          	auipc	ra,0x3
    254a:	66c080e7          	jalr	1644(ra) # 5bb2 <unlink>
    254e:	4501                	li	a0,0
    2550:	00003097          	auipc	ra,0x3
    2554:	612080e7          	jalr	1554(ra) # 5b62 <exit>
    2558:	fa840613          	addi	a2,s0,-88
    255c:	85d6                	mv	a1,s5
    255e:	00005517          	auipc	a0,0x5
    2562:	89250513          	addi	a0,a0,-1902 # 6df0 <malloc+0xe30>
    2566:	00004097          	auipc	ra,0x4
    256a:	99c080e7          	jalr	-1636(ra) # 5f02 <printf>
    256e:	4505                	li	a0,1
    2570:	00003097          	auipc	ra,0x3
    2574:	5f2080e7          	jalr	1522(ra) # 5b62 <exit>
    2578:	86aa                	mv	a3,a0
    257a:	660d                	lui	a2,0x3
    257c:	85d6                	mv	a1,s5
    257e:	00004517          	auipc	a0,0x4
    2582:	c5a50513          	addi	a0,a0,-934 # 61d8 <malloc+0x218>
    2586:	00004097          	auipc	ra,0x4
    258a:	97c080e7          	jalr	-1668(ra) # 5f02 <printf>
    258e:	4505                	li	a0,1
    2590:	00003097          	auipc	ra,0x3
    2594:	5d2080e7          	jalr	1490(ra) # 5b62 <exit>
    2598:	00003097          	auipc	ra,0x3
    259c:	5ca080e7          	jalr	1482(ra) # 5b62 <exit>

00000000000025a0 <copyinstr3>:
    25a0:	7179                	addi	sp,sp,-48
    25a2:	f406                	sd	ra,40(sp)
    25a4:	f022                	sd	s0,32(sp)
    25a6:	ec26                	sd	s1,24(sp)
    25a8:	1800                	addi	s0,sp,48
    25aa:	6509                	lui	a0,0x2
    25ac:	00003097          	auipc	ra,0x3
    25b0:	63e080e7          	jalr	1598(ra) # 5bea <sbrk>
    25b4:	4501                	li	a0,0
    25b6:	00003097          	auipc	ra,0x3
    25ba:	634080e7          	jalr	1588(ra) # 5bea <sbrk>
    25be:	03451793          	slli	a5,a0,0x34
    25c2:	e3c9                	bnez	a5,2644 <copyinstr3+0xa4>
    25c4:	4501                	li	a0,0
    25c6:	00003097          	auipc	ra,0x3
    25ca:	624080e7          	jalr	1572(ra) # 5bea <sbrk>
    25ce:	03451793          	slli	a5,a0,0x34
    25d2:	e3d9                	bnez	a5,2658 <copyinstr3+0xb8>
    25d4:	fff50493          	addi	s1,a0,-1 # 1fff <linkunlink+0x6f>
    25d8:	07800793          	li	a5,120
    25dc:	fef50fa3          	sb	a5,-1(a0)
    25e0:	8526                	mv	a0,s1
    25e2:	00003097          	auipc	ra,0x3
    25e6:	5d0080e7          	jalr	1488(ra) # 5bb2 <unlink>
    25ea:	57fd                	li	a5,-1
    25ec:	08f51363          	bne	a0,a5,2672 <copyinstr3+0xd2>
    25f0:	20100593          	li	a1,513
    25f4:	8526                	mv	a0,s1
    25f6:	00003097          	auipc	ra,0x3
    25fa:	5ac080e7          	jalr	1452(ra) # 5ba2 <open>
    25fe:	57fd                	li	a5,-1
    2600:	08f51863          	bne	a0,a5,2690 <copyinstr3+0xf0>
    2604:	85a6                	mv	a1,s1
    2606:	8526                	mv	a0,s1
    2608:	00003097          	auipc	ra,0x3
    260c:	5ba080e7          	jalr	1466(ra) # 5bc2 <link>
    2610:	57fd                	li	a5,-1
    2612:	08f51e63          	bne	a0,a5,26ae <copyinstr3+0x10e>
    2616:	00005797          	auipc	a5,0x5
    261a:	4d278793          	addi	a5,a5,1234 # 7ae8 <malloc+0x1b28>
    261e:	fcf43823          	sd	a5,-48(s0)
    2622:	fc043c23          	sd	zero,-40(s0)
    2626:	fd040593          	addi	a1,s0,-48
    262a:	8526                	mv	a0,s1
    262c:	00003097          	auipc	ra,0x3
    2630:	56e080e7          	jalr	1390(ra) # 5b9a <exec>
    2634:	57fd                	li	a5,-1
    2636:	08f51c63          	bne	a0,a5,26ce <copyinstr3+0x12e>
    263a:	70a2                	ld	ra,40(sp)
    263c:	7402                	ld	s0,32(sp)
    263e:	64e2                	ld	s1,24(sp)
    2640:	6145                	addi	sp,sp,48
    2642:	8082                	ret
    2644:	0347d513          	srli	a0,a5,0x34
    2648:	6785                	lui	a5,0x1
    264a:	40a7853b          	subw	a0,a5,a0
    264e:	00003097          	auipc	ra,0x3
    2652:	59c080e7          	jalr	1436(ra) # 5bea <sbrk>
    2656:	b7bd                	j	25c4 <copyinstr3+0x24>
    2658:	00004517          	auipc	a0,0x4
    265c:	7b050513          	addi	a0,a0,1968 # 6e08 <malloc+0xe48>
    2660:	00004097          	auipc	ra,0x4
    2664:	8a2080e7          	jalr	-1886(ra) # 5f02 <printf>
    2668:	4505                	li	a0,1
    266a:	00003097          	auipc	ra,0x3
    266e:	4f8080e7          	jalr	1272(ra) # 5b62 <exit>
    2672:	862a                	mv	a2,a0
    2674:	85a6                	mv	a1,s1
    2676:	00004517          	auipc	a0,0x4
    267a:	23a50513          	addi	a0,a0,570 # 68b0 <malloc+0x8f0>
    267e:	00004097          	auipc	ra,0x4
    2682:	884080e7          	jalr	-1916(ra) # 5f02 <printf>
    2686:	4505                	li	a0,1
    2688:	00003097          	auipc	ra,0x3
    268c:	4da080e7          	jalr	1242(ra) # 5b62 <exit>
    2690:	862a                	mv	a2,a0
    2692:	85a6                	mv	a1,s1
    2694:	00004517          	auipc	a0,0x4
    2698:	23c50513          	addi	a0,a0,572 # 68d0 <malloc+0x910>
    269c:	00004097          	auipc	ra,0x4
    26a0:	866080e7          	jalr	-1946(ra) # 5f02 <printf>
    26a4:	4505                	li	a0,1
    26a6:	00003097          	auipc	ra,0x3
    26aa:	4bc080e7          	jalr	1212(ra) # 5b62 <exit>
    26ae:	86aa                	mv	a3,a0
    26b0:	8626                	mv	a2,s1
    26b2:	85a6                	mv	a1,s1
    26b4:	00004517          	auipc	a0,0x4
    26b8:	23c50513          	addi	a0,a0,572 # 68f0 <malloc+0x930>
    26bc:	00004097          	auipc	ra,0x4
    26c0:	846080e7          	jalr	-1978(ra) # 5f02 <printf>
    26c4:	4505                	li	a0,1
    26c6:	00003097          	auipc	ra,0x3
    26ca:	49c080e7          	jalr	1180(ra) # 5b62 <exit>
    26ce:	567d                	li	a2,-1
    26d0:	85a6                	mv	a1,s1
    26d2:	00004517          	auipc	a0,0x4
    26d6:	24650513          	addi	a0,a0,582 # 6918 <malloc+0x958>
    26da:	00004097          	auipc	ra,0x4
    26de:	828080e7          	jalr	-2008(ra) # 5f02 <printf>
    26e2:	4505                	li	a0,1
    26e4:	00003097          	auipc	ra,0x3
    26e8:	47e080e7          	jalr	1150(ra) # 5b62 <exit>

00000000000026ec <rwsbrk>:
    26ec:	1101                	addi	sp,sp,-32
    26ee:	ec06                	sd	ra,24(sp)
    26f0:	e822                	sd	s0,16(sp)
    26f2:	e426                	sd	s1,8(sp)
    26f4:	e04a                	sd	s2,0(sp)
    26f6:	1000                	addi	s0,sp,32
    26f8:	6509                	lui	a0,0x2
    26fa:	00003097          	auipc	ra,0x3
    26fe:	4f0080e7          	jalr	1264(ra) # 5bea <sbrk>
    2702:	57fd                	li	a5,-1
    2704:	06f50363          	beq	a0,a5,276a <rwsbrk+0x7e>
    2708:	84aa                	mv	s1,a0
    270a:	7579                	lui	a0,0xffffe
    270c:	00003097          	auipc	ra,0x3
    2710:	4de080e7          	jalr	1246(ra) # 5bea <sbrk>
    2714:	57fd                	li	a5,-1
    2716:	06f50763          	beq	a0,a5,2784 <rwsbrk+0x98>
    271a:	20100593          	li	a1,513
    271e:	00004517          	auipc	a0,0x4
    2722:	72a50513          	addi	a0,a0,1834 # 6e48 <malloc+0xe88>
    2726:	00003097          	auipc	ra,0x3
    272a:	47c080e7          	jalr	1148(ra) # 5ba2 <open>
    272e:	892a                	mv	s2,a0
    2730:	06054763          	bltz	a0,279e <rwsbrk+0xb2>
    2734:	6505                	lui	a0,0x1
    2736:	94aa                	add	s1,s1,a0
    2738:	40000613          	li	a2,1024
    273c:	85a6                	mv	a1,s1
    273e:	854a                	mv	a0,s2
    2740:	00003097          	auipc	ra,0x3
    2744:	442080e7          	jalr	1090(ra) # 5b82 <write>
    2748:	862a                	mv	a2,a0
    274a:	06054763          	bltz	a0,27b8 <rwsbrk+0xcc>
    274e:	85a6                	mv	a1,s1
    2750:	00004517          	auipc	a0,0x4
    2754:	71850513          	addi	a0,a0,1816 # 6e68 <malloc+0xea8>
    2758:	00003097          	auipc	ra,0x3
    275c:	7aa080e7          	jalr	1962(ra) # 5f02 <printf>
    2760:	4505                	li	a0,1
    2762:	00003097          	auipc	ra,0x3
    2766:	400080e7          	jalr	1024(ra) # 5b62 <exit>
    276a:	00004517          	auipc	a0,0x4
    276e:	6a650513          	addi	a0,a0,1702 # 6e10 <malloc+0xe50>
    2772:	00003097          	auipc	ra,0x3
    2776:	790080e7          	jalr	1936(ra) # 5f02 <printf>
    277a:	4505                	li	a0,1
    277c:	00003097          	auipc	ra,0x3
    2780:	3e6080e7          	jalr	998(ra) # 5b62 <exit>
    2784:	00004517          	auipc	a0,0x4
    2788:	6a450513          	addi	a0,a0,1700 # 6e28 <malloc+0xe68>
    278c:	00003097          	auipc	ra,0x3
    2790:	776080e7          	jalr	1910(ra) # 5f02 <printf>
    2794:	4505                	li	a0,1
    2796:	00003097          	auipc	ra,0x3
    279a:	3cc080e7          	jalr	972(ra) # 5b62 <exit>
    279e:	00004517          	auipc	a0,0x4
    27a2:	6b250513          	addi	a0,a0,1714 # 6e50 <malloc+0xe90>
    27a6:	00003097          	auipc	ra,0x3
    27aa:	75c080e7          	jalr	1884(ra) # 5f02 <printf>
    27ae:	4505                	li	a0,1
    27b0:	00003097          	auipc	ra,0x3
    27b4:	3b2080e7          	jalr	946(ra) # 5b62 <exit>
    27b8:	854a                	mv	a0,s2
    27ba:	00003097          	auipc	ra,0x3
    27be:	3d0080e7          	jalr	976(ra) # 5b8a <close>
    27c2:	00004517          	auipc	a0,0x4
    27c6:	68650513          	addi	a0,a0,1670 # 6e48 <malloc+0xe88>
    27ca:	00003097          	auipc	ra,0x3
    27ce:	3e8080e7          	jalr	1000(ra) # 5bb2 <unlink>
    27d2:	4581                	li	a1,0
    27d4:	00004517          	auipc	a0,0x4
    27d8:	b0c50513          	addi	a0,a0,-1268 # 62e0 <malloc+0x320>
    27dc:	00003097          	auipc	ra,0x3
    27e0:	3c6080e7          	jalr	966(ra) # 5ba2 <open>
    27e4:	892a                	mv	s2,a0
    27e6:	02054963          	bltz	a0,2818 <rwsbrk+0x12c>
    27ea:	4629                	li	a2,10
    27ec:	85a6                	mv	a1,s1
    27ee:	00003097          	auipc	ra,0x3
    27f2:	38c080e7          	jalr	908(ra) # 5b7a <read>
    27f6:	862a                	mv	a2,a0
    27f8:	02054d63          	bltz	a0,2832 <rwsbrk+0x146>
    27fc:	85a6                	mv	a1,s1
    27fe:	00004517          	auipc	a0,0x4
    2802:	69a50513          	addi	a0,a0,1690 # 6e98 <malloc+0xed8>
    2806:	00003097          	auipc	ra,0x3
    280a:	6fc080e7          	jalr	1788(ra) # 5f02 <printf>
    280e:	4505                	li	a0,1
    2810:	00003097          	auipc	ra,0x3
    2814:	352080e7          	jalr	850(ra) # 5b62 <exit>
    2818:	00004517          	auipc	a0,0x4
    281c:	63850513          	addi	a0,a0,1592 # 6e50 <malloc+0xe90>
    2820:	00003097          	auipc	ra,0x3
    2824:	6e2080e7          	jalr	1762(ra) # 5f02 <printf>
    2828:	4505                	li	a0,1
    282a:	00003097          	auipc	ra,0x3
    282e:	338080e7          	jalr	824(ra) # 5b62 <exit>
    2832:	854a                	mv	a0,s2
    2834:	00003097          	auipc	ra,0x3
    2838:	356080e7          	jalr	854(ra) # 5b8a <close>
    283c:	4501                	li	a0,0
    283e:	00003097          	auipc	ra,0x3
    2842:	324080e7          	jalr	804(ra) # 5b62 <exit>

0000000000002846 <sbrkbasic>:
    2846:	715d                	addi	sp,sp,-80
    2848:	e486                	sd	ra,72(sp)
    284a:	e0a2                	sd	s0,64(sp)
    284c:	fc26                	sd	s1,56(sp)
    284e:	f84a                	sd	s2,48(sp)
    2850:	f44e                	sd	s3,40(sp)
    2852:	f052                	sd	s4,32(sp)
    2854:	ec56                	sd	s5,24(sp)
    2856:	0880                	addi	s0,sp,80
    2858:	8a2a                	mv	s4,a0
    285a:	00003097          	auipc	ra,0x3
    285e:	300080e7          	jalr	768(ra) # 5b5a <fork>
    2862:	02054c63          	bltz	a0,289a <sbrkbasic+0x54>
    2866:	ed21                	bnez	a0,28be <sbrkbasic+0x78>
    2868:	40000537          	lui	a0,0x40000
    286c:	00003097          	auipc	ra,0x3
    2870:	37e080e7          	jalr	894(ra) # 5bea <sbrk>
    2874:	57fd                	li	a5,-1
    2876:	02f50f63          	beq	a0,a5,28b4 <sbrkbasic+0x6e>
    287a:	400007b7          	lui	a5,0x40000
    287e:	97aa                	add	a5,a5,a0
    2880:	06300693          	li	a3,99
    2884:	6705                	lui	a4,0x1
    2886:	00d50023          	sb	a3,0(a0) # 40000000 <base+0x3fff0398>
    288a:	953a                	add	a0,a0,a4
    288c:	fef51de3          	bne	a0,a5,2886 <sbrkbasic+0x40>
    2890:	4505                	li	a0,1
    2892:	00003097          	auipc	ra,0x3
    2896:	2d0080e7          	jalr	720(ra) # 5b62 <exit>
    289a:	00004517          	auipc	a0,0x4
    289e:	62650513          	addi	a0,a0,1574 # 6ec0 <malloc+0xf00>
    28a2:	00003097          	auipc	ra,0x3
    28a6:	660080e7          	jalr	1632(ra) # 5f02 <printf>
    28aa:	4505                	li	a0,1
    28ac:	00003097          	auipc	ra,0x3
    28b0:	2b6080e7          	jalr	694(ra) # 5b62 <exit>
    28b4:	4501                	li	a0,0
    28b6:	00003097          	auipc	ra,0x3
    28ba:	2ac080e7          	jalr	684(ra) # 5b62 <exit>
    28be:	fbc40513          	addi	a0,s0,-68
    28c2:	00003097          	auipc	ra,0x3
    28c6:	2a8080e7          	jalr	680(ra) # 5b6a <wait>
    28ca:	fbc42703          	lw	a4,-68(s0)
    28ce:	4785                	li	a5,1
    28d0:	00f70e63          	beq	a4,a5,28ec <sbrkbasic+0xa6>
    28d4:	4501                	li	a0,0
    28d6:	00003097          	auipc	ra,0x3
    28da:	314080e7          	jalr	788(ra) # 5bea <sbrk>
    28de:	84aa                	mv	s1,a0
    28e0:	4901                	li	s2,0
    28e2:	4a85                	li	s5,1
    28e4:	6985                	lui	s3,0x1
    28e6:	38898993          	addi	s3,s3,904 # 1388 <badarg+0x3c>
    28ea:	a005                	j	290a <sbrkbasic+0xc4>
    28ec:	85d2                	mv	a1,s4
    28ee:	00004517          	auipc	a0,0x4
    28f2:	5f250513          	addi	a0,a0,1522 # 6ee0 <malloc+0xf20>
    28f6:	00003097          	auipc	ra,0x3
    28fa:	60c080e7          	jalr	1548(ra) # 5f02 <printf>
    28fe:	4505                	li	a0,1
    2900:	00003097          	auipc	ra,0x3
    2904:	262080e7          	jalr	610(ra) # 5b62 <exit>
    2908:	84be                	mv	s1,a5
    290a:	4505                	li	a0,1
    290c:	00003097          	auipc	ra,0x3
    2910:	2de080e7          	jalr	734(ra) # 5bea <sbrk>
    2914:	04951b63          	bne	a0,s1,296a <sbrkbasic+0x124>
    2918:	01548023          	sb	s5,0(s1)
    291c:	00148793          	addi	a5,s1,1
    2920:	2905                	addiw	s2,s2,1
    2922:	ff3913e3          	bne	s2,s3,2908 <sbrkbasic+0xc2>
    2926:	00003097          	auipc	ra,0x3
    292a:	234080e7          	jalr	564(ra) # 5b5a <fork>
    292e:	892a                	mv	s2,a0
    2930:	04054e63          	bltz	a0,298c <sbrkbasic+0x146>
    2934:	4505                	li	a0,1
    2936:	00003097          	auipc	ra,0x3
    293a:	2b4080e7          	jalr	692(ra) # 5bea <sbrk>
    293e:	4505                	li	a0,1
    2940:	00003097          	auipc	ra,0x3
    2944:	2aa080e7          	jalr	682(ra) # 5bea <sbrk>
    2948:	0489                	addi	s1,s1,2
    294a:	04a48f63          	beq	s1,a0,29a8 <sbrkbasic+0x162>
    294e:	85d2                	mv	a1,s4
    2950:	00004517          	auipc	a0,0x4
    2954:	5f050513          	addi	a0,a0,1520 # 6f40 <malloc+0xf80>
    2958:	00003097          	auipc	ra,0x3
    295c:	5aa080e7          	jalr	1450(ra) # 5f02 <printf>
    2960:	4505                	li	a0,1
    2962:	00003097          	auipc	ra,0x3
    2966:	200080e7          	jalr	512(ra) # 5b62 <exit>
    296a:	872a                	mv	a4,a0
    296c:	86a6                	mv	a3,s1
    296e:	864a                	mv	a2,s2
    2970:	85d2                	mv	a1,s4
    2972:	00004517          	auipc	a0,0x4
    2976:	58e50513          	addi	a0,a0,1422 # 6f00 <malloc+0xf40>
    297a:	00003097          	auipc	ra,0x3
    297e:	588080e7          	jalr	1416(ra) # 5f02 <printf>
    2982:	4505                	li	a0,1
    2984:	00003097          	auipc	ra,0x3
    2988:	1de080e7          	jalr	478(ra) # 5b62 <exit>
    298c:	85d2                	mv	a1,s4
    298e:	00004517          	auipc	a0,0x4
    2992:	59250513          	addi	a0,a0,1426 # 6f20 <malloc+0xf60>
    2996:	00003097          	auipc	ra,0x3
    299a:	56c080e7          	jalr	1388(ra) # 5f02 <printf>
    299e:	4505                	li	a0,1
    29a0:	00003097          	auipc	ra,0x3
    29a4:	1c2080e7          	jalr	450(ra) # 5b62 <exit>
    29a8:	00091763          	bnez	s2,29b6 <sbrkbasic+0x170>
    29ac:	4501                	li	a0,0
    29ae:	00003097          	auipc	ra,0x3
    29b2:	1b4080e7          	jalr	436(ra) # 5b62 <exit>
    29b6:	fbc40513          	addi	a0,s0,-68
    29ba:	00003097          	auipc	ra,0x3
    29be:	1b0080e7          	jalr	432(ra) # 5b6a <wait>
    29c2:	fbc42503          	lw	a0,-68(s0)
    29c6:	00003097          	auipc	ra,0x3
    29ca:	19c080e7          	jalr	412(ra) # 5b62 <exit>

00000000000029ce <sbrkmuch>:
    29ce:	7179                	addi	sp,sp,-48
    29d0:	f406                	sd	ra,40(sp)
    29d2:	f022                	sd	s0,32(sp)
    29d4:	ec26                	sd	s1,24(sp)
    29d6:	e84a                	sd	s2,16(sp)
    29d8:	e44e                	sd	s3,8(sp)
    29da:	e052                	sd	s4,0(sp)
    29dc:	1800                	addi	s0,sp,48
    29de:	89aa                	mv	s3,a0
    29e0:	4501                	li	a0,0
    29e2:	00003097          	auipc	ra,0x3
    29e6:	208080e7          	jalr	520(ra) # 5bea <sbrk>
    29ea:	892a                	mv	s2,a0
    29ec:	4501                	li	a0,0
    29ee:	00003097          	auipc	ra,0x3
    29f2:	1fc080e7          	jalr	508(ra) # 5bea <sbrk>
    29f6:	84aa                	mv	s1,a0
    29f8:	06400537          	lui	a0,0x6400
    29fc:	9d05                	subw	a0,a0,s1
    29fe:	00003097          	auipc	ra,0x3
    2a02:	1ec080e7          	jalr	492(ra) # 5bea <sbrk>
    2a06:	0ca49863          	bne	s1,a0,2ad6 <sbrkmuch+0x108>
    2a0a:	4501                	li	a0,0
    2a0c:	00003097          	auipc	ra,0x3
    2a10:	1de080e7          	jalr	478(ra) # 5bea <sbrk>
    2a14:	87aa                	mv	a5,a0
    2a16:	00a4f963          	bgeu	s1,a0,2a28 <sbrkmuch+0x5a>
    2a1a:	4685                	li	a3,1
    2a1c:	6705                	lui	a4,0x1
    2a1e:	00d48023          	sb	a3,0(s1)
    2a22:	94ba                	add	s1,s1,a4
    2a24:	fef4ede3          	bltu	s1,a5,2a1e <sbrkmuch+0x50>
    2a28:	064007b7          	lui	a5,0x6400
    2a2c:	06300713          	li	a4,99
    2a30:	fee78fa3          	sb	a4,-1(a5) # 63fffff <base+0x63f0397>
    2a34:	4501                	li	a0,0
    2a36:	00003097          	auipc	ra,0x3
    2a3a:	1b4080e7          	jalr	436(ra) # 5bea <sbrk>
    2a3e:	84aa                	mv	s1,a0
    2a40:	757d                	lui	a0,0xfffff
    2a42:	00003097          	auipc	ra,0x3
    2a46:	1a8080e7          	jalr	424(ra) # 5bea <sbrk>
    2a4a:	57fd                	li	a5,-1
    2a4c:	0af50363          	beq	a0,a5,2af2 <sbrkmuch+0x124>
    2a50:	4501                	li	a0,0
    2a52:	00003097          	auipc	ra,0x3
    2a56:	198080e7          	jalr	408(ra) # 5bea <sbrk>
    2a5a:	77fd                	lui	a5,0xfffff
    2a5c:	97a6                	add	a5,a5,s1
    2a5e:	0af51863          	bne	a0,a5,2b0e <sbrkmuch+0x140>
    2a62:	4501                	li	a0,0
    2a64:	00003097          	auipc	ra,0x3
    2a68:	186080e7          	jalr	390(ra) # 5bea <sbrk>
    2a6c:	84aa                	mv	s1,a0
    2a6e:	6505                	lui	a0,0x1
    2a70:	00003097          	auipc	ra,0x3
    2a74:	17a080e7          	jalr	378(ra) # 5bea <sbrk>
    2a78:	8a2a                	mv	s4,a0
    2a7a:	0aa49a63          	bne	s1,a0,2b2e <sbrkmuch+0x160>
    2a7e:	4501                	li	a0,0
    2a80:	00003097          	auipc	ra,0x3
    2a84:	16a080e7          	jalr	362(ra) # 5bea <sbrk>
    2a88:	6785                	lui	a5,0x1
    2a8a:	97a6                	add	a5,a5,s1
    2a8c:	0af51163          	bne	a0,a5,2b2e <sbrkmuch+0x160>
    2a90:	064007b7          	lui	a5,0x6400
    2a94:	fff7c703          	lbu	a4,-1(a5) # 63fffff <base+0x63f0397>
    2a98:	06300793          	li	a5,99
    2a9c:	0af70963          	beq	a4,a5,2b4e <sbrkmuch+0x180>
    2aa0:	4501                	li	a0,0
    2aa2:	00003097          	auipc	ra,0x3
    2aa6:	148080e7          	jalr	328(ra) # 5bea <sbrk>
    2aaa:	84aa                	mv	s1,a0
    2aac:	4501                	li	a0,0
    2aae:	00003097          	auipc	ra,0x3
    2ab2:	13c080e7          	jalr	316(ra) # 5bea <sbrk>
    2ab6:	40a9053b          	subw	a0,s2,a0
    2aba:	00003097          	auipc	ra,0x3
    2abe:	130080e7          	jalr	304(ra) # 5bea <sbrk>
    2ac2:	0aa49463          	bne	s1,a0,2b6a <sbrkmuch+0x19c>
    2ac6:	70a2                	ld	ra,40(sp)
    2ac8:	7402                	ld	s0,32(sp)
    2aca:	64e2                	ld	s1,24(sp)
    2acc:	6942                	ld	s2,16(sp)
    2ace:	69a2                	ld	s3,8(sp)
    2ad0:	6a02                	ld	s4,0(sp)
    2ad2:	6145                	addi	sp,sp,48
    2ad4:	8082                	ret
    2ad6:	85ce                	mv	a1,s3
    2ad8:	00004517          	auipc	a0,0x4
    2adc:	48850513          	addi	a0,a0,1160 # 6f60 <malloc+0xfa0>
    2ae0:	00003097          	auipc	ra,0x3
    2ae4:	422080e7          	jalr	1058(ra) # 5f02 <printf>
    2ae8:	4505                	li	a0,1
    2aea:	00003097          	auipc	ra,0x3
    2aee:	078080e7          	jalr	120(ra) # 5b62 <exit>
    2af2:	85ce                	mv	a1,s3
    2af4:	00004517          	auipc	a0,0x4
    2af8:	4b450513          	addi	a0,a0,1204 # 6fa8 <malloc+0xfe8>
    2afc:	00003097          	auipc	ra,0x3
    2b00:	406080e7          	jalr	1030(ra) # 5f02 <printf>
    2b04:	4505                	li	a0,1
    2b06:	00003097          	auipc	ra,0x3
    2b0a:	05c080e7          	jalr	92(ra) # 5b62 <exit>
    2b0e:	86aa                	mv	a3,a0
    2b10:	8626                	mv	a2,s1
    2b12:	85ce                	mv	a1,s3
    2b14:	00004517          	auipc	a0,0x4
    2b18:	4b450513          	addi	a0,a0,1204 # 6fc8 <malloc+0x1008>
    2b1c:	00003097          	auipc	ra,0x3
    2b20:	3e6080e7          	jalr	998(ra) # 5f02 <printf>
    2b24:	4505                	li	a0,1
    2b26:	00003097          	auipc	ra,0x3
    2b2a:	03c080e7          	jalr	60(ra) # 5b62 <exit>
    2b2e:	86d2                	mv	a3,s4
    2b30:	8626                	mv	a2,s1
    2b32:	85ce                	mv	a1,s3
    2b34:	00004517          	auipc	a0,0x4
    2b38:	4d450513          	addi	a0,a0,1236 # 7008 <malloc+0x1048>
    2b3c:	00003097          	auipc	ra,0x3
    2b40:	3c6080e7          	jalr	966(ra) # 5f02 <printf>
    2b44:	4505                	li	a0,1
    2b46:	00003097          	auipc	ra,0x3
    2b4a:	01c080e7          	jalr	28(ra) # 5b62 <exit>
    2b4e:	85ce                	mv	a1,s3
    2b50:	00004517          	auipc	a0,0x4
    2b54:	4e850513          	addi	a0,a0,1256 # 7038 <malloc+0x1078>
    2b58:	00003097          	auipc	ra,0x3
    2b5c:	3aa080e7          	jalr	938(ra) # 5f02 <printf>
    2b60:	4505                	li	a0,1
    2b62:	00003097          	auipc	ra,0x3
    2b66:	000080e7          	jalr	ra # 5b62 <exit>
    2b6a:	86aa                	mv	a3,a0
    2b6c:	8626                	mv	a2,s1
    2b6e:	85ce                	mv	a1,s3
    2b70:	00004517          	auipc	a0,0x4
    2b74:	50050513          	addi	a0,a0,1280 # 7070 <malloc+0x10b0>
    2b78:	00003097          	auipc	ra,0x3
    2b7c:	38a080e7          	jalr	906(ra) # 5f02 <printf>
    2b80:	4505                	li	a0,1
    2b82:	00003097          	auipc	ra,0x3
    2b86:	fe0080e7          	jalr	-32(ra) # 5b62 <exit>

0000000000002b8a <sbrkarg>:
    2b8a:	7179                	addi	sp,sp,-48
    2b8c:	f406                	sd	ra,40(sp)
    2b8e:	f022                	sd	s0,32(sp)
    2b90:	ec26                	sd	s1,24(sp)
    2b92:	e84a                	sd	s2,16(sp)
    2b94:	e44e                	sd	s3,8(sp)
    2b96:	1800                	addi	s0,sp,48
    2b98:	89aa                	mv	s3,a0
    2b9a:	6505                	lui	a0,0x1
    2b9c:	00003097          	auipc	ra,0x3
    2ba0:	04e080e7          	jalr	78(ra) # 5bea <sbrk>
    2ba4:	892a                	mv	s2,a0
    2ba6:	20100593          	li	a1,513
    2baa:	00004517          	auipc	a0,0x4
    2bae:	4ee50513          	addi	a0,a0,1262 # 7098 <malloc+0x10d8>
    2bb2:	00003097          	auipc	ra,0x3
    2bb6:	ff0080e7          	jalr	-16(ra) # 5ba2 <open>
    2bba:	84aa                	mv	s1,a0
    2bbc:	00004517          	auipc	a0,0x4
    2bc0:	4dc50513          	addi	a0,a0,1244 # 7098 <malloc+0x10d8>
    2bc4:	00003097          	auipc	ra,0x3
    2bc8:	fee080e7          	jalr	-18(ra) # 5bb2 <unlink>
    2bcc:	0404c163          	bltz	s1,2c0e <sbrkarg+0x84>
    2bd0:	6605                	lui	a2,0x1
    2bd2:	85ca                	mv	a1,s2
    2bd4:	8526                	mv	a0,s1
    2bd6:	00003097          	auipc	ra,0x3
    2bda:	fac080e7          	jalr	-84(ra) # 5b82 <write>
    2bde:	04054663          	bltz	a0,2c2a <sbrkarg+0xa0>
    2be2:	8526                	mv	a0,s1
    2be4:	00003097          	auipc	ra,0x3
    2be8:	fa6080e7          	jalr	-90(ra) # 5b8a <close>
    2bec:	6505                	lui	a0,0x1
    2bee:	00003097          	auipc	ra,0x3
    2bf2:	ffc080e7          	jalr	-4(ra) # 5bea <sbrk>
    2bf6:	00003097          	auipc	ra,0x3
    2bfa:	f7c080e7          	jalr	-132(ra) # 5b72 <pipe>
    2bfe:	e521                	bnez	a0,2c46 <sbrkarg+0xbc>
    2c00:	70a2                	ld	ra,40(sp)
    2c02:	7402                	ld	s0,32(sp)
    2c04:	64e2                	ld	s1,24(sp)
    2c06:	6942                	ld	s2,16(sp)
    2c08:	69a2                	ld	s3,8(sp)
    2c0a:	6145                	addi	sp,sp,48
    2c0c:	8082                	ret
    2c0e:	85ce                	mv	a1,s3
    2c10:	00004517          	auipc	a0,0x4
    2c14:	49050513          	addi	a0,a0,1168 # 70a0 <malloc+0x10e0>
    2c18:	00003097          	auipc	ra,0x3
    2c1c:	2ea080e7          	jalr	746(ra) # 5f02 <printf>
    2c20:	4505                	li	a0,1
    2c22:	00003097          	auipc	ra,0x3
    2c26:	f40080e7          	jalr	-192(ra) # 5b62 <exit>
    2c2a:	85ce                	mv	a1,s3
    2c2c:	00004517          	auipc	a0,0x4
    2c30:	48c50513          	addi	a0,a0,1164 # 70b8 <malloc+0x10f8>
    2c34:	00003097          	auipc	ra,0x3
    2c38:	2ce080e7          	jalr	718(ra) # 5f02 <printf>
    2c3c:	4505                	li	a0,1
    2c3e:	00003097          	auipc	ra,0x3
    2c42:	f24080e7          	jalr	-220(ra) # 5b62 <exit>
    2c46:	85ce                	mv	a1,s3
    2c48:	00004517          	auipc	a0,0x4
    2c4c:	e5050513          	addi	a0,a0,-432 # 6a98 <malloc+0xad8>
    2c50:	00003097          	auipc	ra,0x3
    2c54:	2b2080e7          	jalr	690(ra) # 5f02 <printf>
    2c58:	4505                	li	a0,1
    2c5a:	00003097          	auipc	ra,0x3
    2c5e:	f08080e7          	jalr	-248(ra) # 5b62 <exit>

0000000000002c62 <argptest>:
    2c62:	1101                	addi	sp,sp,-32
    2c64:	ec06                	sd	ra,24(sp)
    2c66:	e822                	sd	s0,16(sp)
    2c68:	e426                	sd	s1,8(sp)
    2c6a:	e04a                	sd	s2,0(sp)
    2c6c:	1000                	addi	s0,sp,32
    2c6e:	892a                	mv	s2,a0
    2c70:	4581                	li	a1,0
    2c72:	00004517          	auipc	a0,0x4
    2c76:	45e50513          	addi	a0,a0,1118 # 70d0 <malloc+0x1110>
    2c7a:	00003097          	auipc	ra,0x3
    2c7e:	f28080e7          	jalr	-216(ra) # 5ba2 <open>
    2c82:	02054b63          	bltz	a0,2cb8 <argptest+0x56>
    2c86:	84aa                	mv	s1,a0
    2c88:	4501                	li	a0,0
    2c8a:	00003097          	auipc	ra,0x3
    2c8e:	f60080e7          	jalr	-160(ra) # 5bea <sbrk>
    2c92:	567d                	li	a2,-1
    2c94:	fff50593          	addi	a1,a0,-1
    2c98:	8526                	mv	a0,s1
    2c9a:	00003097          	auipc	ra,0x3
    2c9e:	ee0080e7          	jalr	-288(ra) # 5b7a <read>
    2ca2:	8526                	mv	a0,s1
    2ca4:	00003097          	auipc	ra,0x3
    2ca8:	ee6080e7          	jalr	-282(ra) # 5b8a <close>
    2cac:	60e2                	ld	ra,24(sp)
    2cae:	6442                	ld	s0,16(sp)
    2cb0:	64a2                	ld	s1,8(sp)
    2cb2:	6902                	ld	s2,0(sp)
    2cb4:	6105                	addi	sp,sp,32
    2cb6:	8082                	ret
    2cb8:	85ca                	mv	a1,s2
    2cba:	00004517          	auipc	a0,0x4
    2cbe:	cee50513          	addi	a0,a0,-786 # 69a8 <malloc+0x9e8>
    2cc2:	00003097          	auipc	ra,0x3
    2cc6:	240080e7          	jalr	576(ra) # 5f02 <printf>
    2cca:	4505                	li	a0,1
    2ccc:	00003097          	auipc	ra,0x3
    2cd0:	e96080e7          	jalr	-362(ra) # 5b62 <exit>

0000000000002cd4 <sbrkbugs>:
    2cd4:	1141                	addi	sp,sp,-16
    2cd6:	e406                	sd	ra,8(sp)
    2cd8:	e022                	sd	s0,0(sp)
    2cda:	0800                	addi	s0,sp,16
    2cdc:	00003097          	auipc	ra,0x3
    2ce0:	e7e080e7          	jalr	-386(ra) # 5b5a <fork>
    2ce4:	02054263          	bltz	a0,2d08 <sbrkbugs+0x34>
    2ce8:	ed0d                	bnez	a0,2d22 <sbrkbugs+0x4e>
    2cea:	00003097          	auipc	ra,0x3
    2cee:	f00080e7          	jalr	-256(ra) # 5bea <sbrk>
    2cf2:	40a0053b          	negw	a0,a0
    2cf6:	00003097          	auipc	ra,0x3
    2cfa:	ef4080e7          	jalr	-268(ra) # 5bea <sbrk>
    2cfe:	4501                	li	a0,0
    2d00:	00003097          	auipc	ra,0x3
    2d04:	e62080e7          	jalr	-414(ra) # 5b62 <exit>
    2d08:	00004517          	auipc	a0,0x4
    2d0c:	09050513          	addi	a0,a0,144 # 6d98 <malloc+0xdd8>
    2d10:	00003097          	auipc	ra,0x3
    2d14:	1f2080e7          	jalr	498(ra) # 5f02 <printf>
    2d18:	4505                	li	a0,1
    2d1a:	00003097          	auipc	ra,0x3
    2d1e:	e48080e7          	jalr	-440(ra) # 5b62 <exit>
    2d22:	4501                	li	a0,0
    2d24:	00003097          	auipc	ra,0x3
    2d28:	e46080e7          	jalr	-442(ra) # 5b6a <wait>
    2d2c:	00003097          	auipc	ra,0x3
    2d30:	e2e080e7          	jalr	-466(ra) # 5b5a <fork>
    2d34:	02054563          	bltz	a0,2d5e <sbrkbugs+0x8a>
    2d38:	e121                	bnez	a0,2d78 <sbrkbugs+0xa4>
    2d3a:	00003097          	auipc	ra,0x3
    2d3e:	eb0080e7          	jalr	-336(ra) # 5bea <sbrk>
    2d42:	6785                	lui	a5,0x1
    2d44:	dac7879b          	addiw	a5,a5,-596
    2d48:	40a7853b          	subw	a0,a5,a0
    2d4c:	00003097          	auipc	ra,0x3
    2d50:	e9e080e7          	jalr	-354(ra) # 5bea <sbrk>
    2d54:	4501                	li	a0,0
    2d56:	00003097          	auipc	ra,0x3
    2d5a:	e0c080e7          	jalr	-500(ra) # 5b62 <exit>
    2d5e:	00004517          	auipc	a0,0x4
    2d62:	03a50513          	addi	a0,a0,58 # 6d98 <malloc+0xdd8>
    2d66:	00003097          	auipc	ra,0x3
    2d6a:	19c080e7          	jalr	412(ra) # 5f02 <printf>
    2d6e:	4505                	li	a0,1
    2d70:	00003097          	auipc	ra,0x3
    2d74:	df2080e7          	jalr	-526(ra) # 5b62 <exit>
    2d78:	4501                	li	a0,0
    2d7a:	00003097          	auipc	ra,0x3
    2d7e:	df0080e7          	jalr	-528(ra) # 5b6a <wait>
    2d82:	00003097          	auipc	ra,0x3
    2d86:	dd8080e7          	jalr	-552(ra) # 5b5a <fork>
    2d8a:	02054a63          	bltz	a0,2dbe <sbrkbugs+0xea>
    2d8e:	e529                	bnez	a0,2dd8 <sbrkbugs+0x104>
    2d90:	00003097          	auipc	ra,0x3
    2d94:	e5a080e7          	jalr	-422(ra) # 5bea <sbrk>
    2d98:	67ad                	lui	a5,0xb
    2d9a:	8007879b          	addiw	a5,a5,-2048
    2d9e:	40a7853b          	subw	a0,a5,a0
    2da2:	00003097          	auipc	ra,0x3
    2da6:	e48080e7          	jalr	-440(ra) # 5bea <sbrk>
    2daa:	5559                	li	a0,-10
    2dac:	00003097          	auipc	ra,0x3
    2db0:	e3e080e7          	jalr	-450(ra) # 5bea <sbrk>
    2db4:	4501                	li	a0,0
    2db6:	00003097          	auipc	ra,0x3
    2dba:	dac080e7          	jalr	-596(ra) # 5b62 <exit>
    2dbe:	00004517          	auipc	a0,0x4
    2dc2:	fda50513          	addi	a0,a0,-38 # 6d98 <malloc+0xdd8>
    2dc6:	00003097          	auipc	ra,0x3
    2dca:	13c080e7          	jalr	316(ra) # 5f02 <printf>
    2dce:	4505                	li	a0,1
    2dd0:	00003097          	auipc	ra,0x3
    2dd4:	d92080e7          	jalr	-622(ra) # 5b62 <exit>
    2dd8:	4501                	li	a0,0
    2dda:	00003097          	auipc	ra,0x3
    2dde:	d90080e7          	jalr	-624(ra) # 5b6a <wait>
    2de2:	4501                	li	a0,0
    2de4:	00003097          	auipc	ra,0x3
    2de8:	d7e080e7          	jalr	-642(ra) # 5b62 <exit>

0000000000002dec <sbrklast>:
    2dec:	7179                	addi	sp,sp,-48
    2dee:	f406                	sd	ra,40(sp)
    2df0:	f022                	sd	s0,32(sp)
    2df2:	ec26                	sd	s1,24(sp)
    2df4:	e84a                	sd	s2,16(sp)
    2df6:	e44e                	sd	s3,8(sp)
    2df8:	1800                	addi	s0,sp,48
    2dfa:	4501                	li	a0,0
    2dfc:	00003097          	auipc	ra,0x3
    2e00:	dee080e7          	jalr	-530(ra) # 5bea <sbrk>
    2e04:	03451793          	slli	a5,a0,0x34
    2e08:	efc1                	bnez	a5,2ea0 <sbrklast+0xb4>
    2e0a:	6505                	lui	a0,0x1
    2e0c:	00003097          	auipc	ra,0x3
    2e10:	dde080e7          	jalr	-546(ra) # 5bea <sbrk>
    2e14:	4529                	li	a0,10
    2e16:	00003097          	auipc	ra,0x3
    2e1a:	dd4080e7          	jalr	-556(ra) # 5bea <sbrk>
    2e1e:	5531                	li	a0,-20
    2e20:	00003097          	auipc	ra,0x3
    2e24:	dca080e7          	jalr	-566(ra) # 5bea <sbrk>
    2e28:	4501                	li	a0,0
    2e2a:	00003097          	auipc	ra,0x3
    2e2e:	dc0080e7          	jalr	-576(ra) # 5bea <sbrk>
    2e32:	84aa                	mv	s1,a0
    2e34:	fc050913          	addi	s2,a0,-64 # fc0 <linktest+0xca>
    2e38:	07800793          	li	a5,120
    2e3c:	fcf50023          	sb	a5,-64(a0)
    2e40:	fc0500a3          	sb	zero,-63(a0)
    2e44:	20200593          	li	a1,514
    2e48:	854a                	mv	a0,s2
    2e4a:	00003097          	auipc	ra,0x3
    2e4e:	d58080e7          	jalr	-680(ra) # 5ba2 <open>
    2e52:	89aa                	mv	s3,a0
    2e54:	4605                	li	a2,1
    2e56:	85ca                	mv	a1,s2
    2e58:	00003097          	auipc	ra,0x3
    2e5c:	d2a080e7          	jalr	-726(ra) # 5b82 <write>
    2e60:	854e                	mv	a0,s3
    2e62:	00003097          	auipc	ra,0x3
    2e66:	d28080e7          	jalr	-728(ra) # 5b8a <close>
    2e6a:	4589                	li	a1,2
    2e6c:	854a                	mv	a0,s2
    2e6e:	00003097          	auipc	ra,0x3
    2e72:	d34080e7          	jalr	-716(ra) # 5ba2 <open>
    2e76:	fc048023          	sb	zero,-64(s1)
    2e7a:	4605                	li	a2,1
    2e7c:	85ca                	mv	a1,s2
    2e7e:	00003097          	auipc	ra,0x3
    2e82:	cfc080e7          	jalr	-772(ra) # 5b7a <read>
    2e86:	fc04c703          	lbu	a4,-64(s1)
    2e8a:	07800793          	li	a5,120
    2e8e:	02f71363          	bne	a4,a5,2eb4 <sbrklast+0xc8>
    2e92:	70a2                	ld	ra,40(sp)
    2e94:	7402                	ld	s0,32(sp)
    2e96:	64e2                	ld	s1,24(sp)
    2e98:	6942                	ld	s2,16(sp)
    2e9a:	69a2                	ld	s3,8(sp)
    2e9c:	6145                	addi	sp,sp,48
    2e9e:	8082                	ret
    2ea0:	0347d513          	srli	a0,a5,0x34
    2ea4:	6785                	lui	a5,0x1
    2ea6:	40a7853b          	subw	a0,a5,a0
    2eaa:	00003097          	auipc	ra,0x3
    2eae:	d40080e7          	jalr	-704(ra) # 5bea <sbrk>
    2eb2:	bfa1                	j	2e0a <sbrklast+0x1e>
    2eb4:	4505                	li	a0,1
    2eb6:	00003097          	auipc	ra,0x3
    2eba:	cac080e7          	jalr	-852(ra) # 5b62 <exit>

0000000000002ebe <sbrk8000>:
    2ebe:	1141                	addi	sp,sp,-16
    2ec0:	e406                	sd	ra,8(sp)
    2ec2:	e022                	sd	s0,0(sp)
    2ec4:	0800                	addi	s0,sp,16
    2ec6:	80000537          	lui	a0,0x80000
    2eca:	0511                	addi	a0,a0,4
    2ecc:	00003097          	auipc	ra,0x3
    2ed0:	d1e080e7          	jalr	-738(ra) # 5bea <sbrk>
    2ed4:	4501                	li	a0,0
    2ed6:	00003097          	auipc	ra,0x3
    2eda:	d14080e7          	jalr	-748(ra) # 5bea <sbrk>
    2ede:	fff54783          	lbu	a5,-1(a0) # ffffffff7fffffff <base+0xffffffff7fff0397>
    2ee2:	0785                	addi	a5,a5,1
    2ee4:	0ff7f793          	andi	a5,a5,255
    2ee8:	fef50fa3          	sb	a5,-1(a0)
    2eec:	60a2                	ld	ra,8(sp)
    2eee:	6402                	ld	s0,0(sp)
    2ef0:	0141                	addi	sp,sp,16
    2ef2:	8082                	ret

0000000000002ef4 <execout>:
    2ef4:	715d                	addi	sp,sp,-80
    2ef6:	e486                	sd	ra,72(sp)
    2ef8:	e0a2                	sd	s0,64(sp)
    2efa:	fc26                	sd	s1,56(sp)
    2efc:	f84a                	sd	s2,48(sp)
    2efe:	f44e                	sd	s3,40(sp)
    2f00:	f052                	sd	s4,32(sp)
    2f02:	0880                	addi	s0,sp,80
    2f04:	4901                	li	s2,0
    2f06:	49bd                	li	s3,15
    2f08:	00003097          	auipc	ra,0x3
    2f0c:	c52080e7          	jalr	-942(ra) # 5b5a <fork>
    2f10:	84aa                	mv	s1,a0
    2f12:	02054063          	bltz	a0,2f32 <execout+0x3e>
    2f16:	c91d                	beqz	a0,2f4c <execout+0x58>
    2f18:	4501                	li	a0,0
    2f1a:	00003097          	auipc	ra,0x3
    2f1e:	c50080e7          	jalr	-944(ra) # 5b6a <wait>
    2f22:	2905                	addiw	s2,s2,1
    2f24:	ff3912e3          	bne	s2,s3,2f08 <execout+0x14>
    2f28:	4501                	li	a0,0
    2f2a:	00003097          	auipc	ra,0x3
    2f2e:	c38080e7          	jalr	-968(ra) # 5b62 <exit>
    2f32:	00004517          	auipc	a0,0x4
    2f36:	e6650513          	addi	a0,a0,-410 # 6d98 <malloc+0xdd8>
    2f3a:	00003097          	auipc	ra,0x3
    2f3e:	fc8080e7          	jalr	-56(ra) # 5f02 <printf>
    2f42:	4505                	li	a0,1
    2f44:	00003097          	auipc	ra,0x3
    2f48:	c1e080e7          	jalr	-994(ra) # 5b62 <exit>
    2f4c:	59fd                	li	s3,-1
    2f4e:	4a05                	li	s4,1
    2f50:	6505                	lui	a0,0x1
    2f52:	00003097          	auipc	ra,0x3
    2f56:	c98080e7          	jalr	-872(ra) # 5bea <sbrk>
    2f5a:	01350763          	beq	a0,s3,2f68 <execout+0x74>
    2f5e:	6785                	lui	a5,0x1
    2f60:	953e                	add	a0,a0,a5
    2f62:	ff450fa3          	sb	s4,-1(a0) # fff <linktest+0x109>
    2f66:	b7ed                	j	2f50 <execout+0x5c>
    2f68:	01205a63          	blez	s2,2f7c <execout+0x88>
    2f6c:	757d                	lui	a0,0xfffff
    2f6e:	00003097          	auipc	ra,0x3
    2f72:	c7c080e7          	jalr	-900(ra) # 5bea <sbrk>
    2f76:	2485                	addiw	s1,s1,1
    2f78:	ff249ae3          	bne	s1,s2,2f6c <execout+0x78>
    2f7c:	4505                	li	a0,1
    2f7e:	00003097          	auipc	ra,0x3
    2f82:	c0c080e7          	jalr	-1012(ra) # 5b8a <close>
    2f86:	00003517          	auipc	a0,0x3
    2f8a:	18250513          	addi	a0,a0,386 # 6108 <malloc+0x148>
    2f8e:	faa43c23          	sd	a0,-72(s0)
    2f92:	00003797          	auipc	a5,0x3
    2f96:	1e678793          	addi	a5,a5,486 # 6178 <malloc+0x1b8>
    2f9a:	fcf43023          	sd	a5,-64(s0)
    2f9e:	fc043423          	sd	zero,-56(s0)
    2fa2:	fb840593          	addi	a1,s0,-72
    2fa6:	00003097          	auipc	ra,0x3
    2faa:	bf4080e7          	jalr	-1036(ra) # 5b9a <exec>
    2fae:	4501                	li	a0,0
    2fb0:	00003097          	auipc	ra,0x3
    2fb4:	bb2080e7          	jalr	-1102(ra) # 5b62 <exit>

0000000000002fb8 <fourteen>:
    2fb8:	1101                	addi	sp,sp,-32
    2fba:	ec06                	sd	ra,24(sp)
    2fbc:	e822                	sd	s0,16(sp)
    2fbe:	e426                	sd	s1,8(sp)
    2fc0:	1000                	addi	s0,sp,32
    2fc2:	84aa                	mv	s1,a0
    2fc4:	00004517          	auipc	a0,0x4
    2fc8:	2e450513          	addi	a0,a0,740 # 72a8 <malloc+0x12e8>
    2fcc:	00003097          	auipc	ra,0x3
    2fd0:	bfe080e7          	jalr	-1026(ra) # 5bca <mkdir>
    2fd4:	e165                	bnez	a0,30b4 <fourteen+0xfc>
    2fd6:	00004517          	auipc	a0,0x4
    2fda:	12a50513          	addi	a0,a0,298 # 7100 <malloc+0x1140>
    2fde:	00003097          	auipc	ra,0x3
    2fe2:	bec080e7          	jalr	-1044(ra) # 5bca <mkdir>
    2fe6:	e56d                	bnez	a0,30d0 <fourteen+0x118>
    2fe8:	20000593          	li	a1,512
    2fec:	00004517          	auipc	a0,0x4
    2ff0:	16c50513          	addi	a0,a0,364 # 7158 <malloc+0x1198>
    2ff4:	00003097          	auipc	ra,0x3
    2ff8:	bae080e7          	jalr	-1106(ra) # 5ba2 <open>
    2ffc:	0e054863          	bltz	a0,30ec <fourteen+0x134>
    3000:	00003097          	auipc	ra,0x3
    3004:	b8a080e7          	jalr	-1142(ra) # 5b8a <close>
    3008:	4581                	li	a1,0
    300a:	00004517          	auipc	a0,0x4
    300e:	1c650513          	addi	a0,a0,454 # 71d0 <malloc+0x1210>
    3012:	00003097          	auipc	ra,0x3
    3016:	b90080e7          	jalr	-1136(ra) # 5ba2 <open>
    301a:	0e054763          	bltz	a0,3108 <fourteen+0x150>
    301e:	00003097          	auipc	ra,0x3
    3022:	b6c080e7          	jalr	-1172(ra) # 5b8a <close>
    3026:	00004517          	auipc	a0,0x4
    302a:	21a50513          	addi	a0,a0,538 # 7240 <malloc+0x1280>
    302e:	00003097          	auipc	ra,0x3
    3032:	b9c080e7          	jalr	-1124(ra) # 5bca <mkdir>
    3036:	c57d                	beqz	a0,3124 <fourteen+0x16c>
    3038:	00004517          	auipc	a0,0x4
    303c:	26050513          	addi	a0,a0,608 # 7298 <malloc+0x12d8>
    3040:	00003097          	auipc	ra,0x3
    3044:	b8a080e7          	jalr	-1142(ra) # 5bca <mkdir>
    3048:	cd65                	beqz	a0,3140 <fourteen+0x188>
    304a:	00004517          	auipc	a0,0x4
    304e:	24e50513          	addi	a0,a0,590 # 7298 <malloc+0x12d8>
    3052:	00003097          	auipc	ra,0x3
    3056:	b60080e7          	jalr	-1184(ra) # 5bb2 <unlink>
    305a:	00004517          	auipc	a0,0x4
    305e:	1e650513          	addi	a0,a0,486 # 7240 <malloc+0x1280>
    3062:	00003097          	auipc	ra,0x3
    3066:	b50080e7          	jalr	-1200(ra) # 5bb2 <unlink>
    306a:	00004517          	auipc	a0,0x4
    306e:	16650513          	addi	a0,a0,358 # 71d0 <malloc+0x1210>
    3072:	00003097          	auipc	ra,0x3
    3076:	b40080e7          	jalr	-1216(ra) # 5bb2 <unlink>
    307a:	00004517          	auipc	a0,0x4
    307e:	0de50513          	addi	a0,a0,222 # 7158 <malloc+0x1198>
    3082:	00003097          	auipc	ra,0x3
    3086:	b30080e7          	jalr	-1232(ra) # 5bb2 <unlink>
    308a:	00004517          	auipc	a0,0x4
    308e:	07650513          	addi	a0,a0,118 # 7100 <malloc+0x1140>
    3092:	00003097          	auipc	ra,0x3
    3096:	b20080e7          	jalr	-1248(ra) # 5bb2 <unlink>
    309a:	00004517          	auipc	a0,0x4
    309e:	20e50513          	addi	a0,a0,526 # 72a8 <malloc+0x12e8>
    30a2:	00003097          	auipc	ra,0x3
    30a6:	b10080e7          	jalr	-1264(ra) # 5bb2 <unlink>
    30aa:	60e2                	ld	ra,24(sp)
    30ac:	6442                	ld	s0,16(sp)
    30ae:	64a2                	ld	s1,8(sp)
    30b0:	6105                	addi	sp,sp,32
    30b2:	8082                	ret
    30b4:	85a6                	mv	a1,s1
    30b6:	00004517          	auipc	a0,0x4
    30ba:	02250513          	addi	a0,a0,34 # 70d8 <malloc+0x1118>
    30be:	00003097          	auipc	ra,0x3
    30c2:	e44080e7          	jalr	-444(ra) # 5f02 <printf>
    30c6:	4505                	li	a0,1
    30c8:	00003097          	auipc	ra,0x3
    30cc:	a9a080e7          	jalr	-1382(ra) # 5b62 <exit>
    30d0:	85a6                	mv	a1,s1
    30d2:	00004517          	auipc	a0,0x4
    30d6:	04e50513          	addi	a0,a0,78 # 7120 <malloc+0x1160>
    30da:	00003097          	auipc	ra,0x3
    30de:	e28080e7          	jalr	-472(ra) # 5f02 <printf>
    30e2:	4505                	li	a0,1
    30e4:	00003097          	auipc	ra,0x3
    30e8:	a7e080e7          	jalr	-1410(ra) # 5b62 <exit>
    30ec:	85a6                	mv	a1,s1
    30ee:	00004517          	auipc	a0,0x4
    30f2:	09a50513          	addi	a0,a0,154 # 7188 <malloc+0x11c8>
    30f6:	00003097          	auipc	ra,0x3
    30fa:	e0c080e7          	jalr	-500(ra) # 5f02 <printf>
    30fe:	4505                	li	a0,1
    3100:	00003097          	auipc	ra,0x3
    3104:	a62080e7          	jalr	-1438(ra) # 5b62 <exit>
    3108:	85a6                	mv	a1,s1
    310a:	00004517          	auipc	a0,0x4
    310e:	0f650513          	addi	a0,a0,246 # 7200 <malloc+0x1240>
    3112:	00003097          	auipc	ra,0x3
    3116:	df0080e7          	jalr	-528(ra) # 5f02 <printf>
    311a:	4505                	li	a0,1
    311c:	00003097          	auipc	ra,0x3
    3120:	a46080e7          	jalr	-1466(ra) # 5b62 <exit>
    3124:	85a6                	mv	a1,s1
    3126:	00004517          	auipc	a0,0x4
    312a:	13a50513          	addi	a0,a0,314 # 7260 <malloc+0x12a0>
    312e:	00003097          	auipc	ra,0x3
    3132:	dd4080e7          	jalr	-556(ra) # 5f02 <printf>
    3136:	4505                	li	a0,1
    3138:	00003097          	auipc	ra,0x3
    313c:	a2a080e7          	jalr	-1494(ra) # 5b62 <exit>
    3140:	85a6                	mv	a1,s1
    3142:	00004517          	auipc	a0,0x4
    3146:	17650513          	addi	a0,a0,374 # 72b8 <malloc+0x12f8>
    314a:	00003097          	auipc	ra,0x3
    314e:	db8080e7          	jalr	-584(ra) # 5f02 <printf>
    3152:	4505                	li	a0,1
    3154:	00003097          	auipc	ra,0x3
    3158:	a0e080e7          	jalr	-1522(ra) # 5b62 <exit>

000000000000315c <diskfull>:
    315c:	b9010113          	addi	sp,sp,-1136
    3160:	46113423          	sd	ra,1128(sp)
    3164:	46813023          	sd	s0,1120(sp)
    3168:	44913c23          	sd	s1,1112(sp)
    316c:	45213823          	sd	s2,1104(sp)
    3170:	45313423          	sd	s3,1096(sp)
    3174:	45413023          	sd	s4,1088(sp)
    3178:	43513c23          	sd	s5,1080(sp)
    317c:	43613823          	sd	s6,1072(sp)
    3180:	43713423          	sd	s7,1064(sp)
    3184:	43813023          	sd	s8,1056(sp)
    3188:	47010413          	addi	s0,sp,1136
    318c:	8c2a                	mv	s8,a0
    318e:	00004517          	auipc	a0,0x4
    3192:	16250513          	addi	a0,a0,354 # 72f0 <malloc+0x1330>
    3196:	00003097          	auipc	ra,0x3
    319a:	a1c080e7          	jalr	-1508(ra) # 5bb2 <unlink>
    319e:	4a01                	li	s4,0
    31a0:	06200b13          	li	s6,98
    31a4:	06900a93          	li	s5,105
    31a8:	06700993          	li	s3,103
    31ac:	10c00b93          	li	s7,268
    31b0:	aabd                	j	332e <diskfull+0x1d2>
    31b2:	b9040613          	addi	a2,s0,-1136
    31b6:	85e2                	mv	a1,s8
    31b8:	00004517          	auipc	a0,0x4
    31bc:	14850513          	addi	a0,a0,328 # 7300 <malloc+0x1340>
    31c0:	00003097          	auipc	ra,0x3
    31c4:	d42080e7          	jalr	-702(ra) # 5f02 <printf>
    31c8:	a821                	j	31e0 <diskfull+0x84>
    31ca:	854a                	mv	a0,s2
    31cc:	00003097          	auipc	ra,0x3
    31d0:	9be080e7          	jalr	-1602(ra) # 5b8a <close>
    31d4:	854a                	mv	a0,s2
    31d6:	00003097          	auipc	ra,0x3
    31da:	9b4080e7          	jalr	-1612(ra) # 5b8a <close>
    31de:	2a05                	addiw	s4,s4,1
    31e0:	4481                	li	s1,0
    31e2:	07a00913          	li	s2,122
    31e6:	08000993          	li	s3,128
    31ea:	bb240823          	sb	s2,-1104(s0)
    31ee:	bb2408a3          	sb	s2,-1103(s0)
    31f2:	41f4d79b          	sraiw	a5,s1,0x1f
    31f6:	01b7d71b          	srliw	a4,a5,0x1b
    31fa:	009707bb          	addw	a5,a4,s1
    31fe:	4057d69b          	sraiw	a3,a5,0x5
    3202:	0306869b          	addiw	a3,a3,48
    3206:	bad40923          	sb	a3,-1102(s0)
    320a:	8bfd                	andi	a5,a5,31
    320c:	9f99                	subw	a5,a5,a4
    320e:	0307879b          	addiw	a5,a5,48
    3212:	baf409a3          	sb	a5,-1101(s0)
    3216:	ba040a23          	sb	zero,-1100(s0)
    321a:	bb040513          	addi	a0,s0,-1104
    321e:	00003097          	auipc	ra,0x3
    3222:	994080e7          	jalr	-1644(ra) # 5bb2 <unlink>
    3226:	60200593          	li	a1,1538
    322a:	bb040513          	addi	a0,s0,-1104
    322e:	00003097          	auipc	ra,0x3
    3232:	974080e7          	jalr	-1676(ra) # 5ba2 <open>
    3236:	00054963          	bltz	a0,3248 <diskfull+0xec>
    323a:	00003097          	auipc	ra,0x3
    323e:	950080e7          	jalr	-1712(ra) # 5b8a <close>
    3242:	2485                	addiw	s1,s1,1
    3244:	fb3493e3          	bne	s1,s3,31ea <diskfull+0x8e>
    3248:	00004517          	auipc	a0,0x4
    324c:	0a850513          	addi	a0,a0,168 # 72f0 <malloc+0x1330>
    3250:	00003097          	auipc	ra,0x3
    3254:	97a080e7          	jalr	-1670(ra) # 5bca <mkdir>
    3258:	12050963          	beqz	a0,338a <diskfull+0x22e>
    325c:	00004517          	auipc	a0,0x4
    3260:	09450513          	addi	a0,a0,148 # 72f0 <malloc+0x1330>
    3264:	00003097          	auipc	ra,0x3
    3268:	94e080e7          	jalr	-1714(ra) # 5bb2 <unlink>
    326c:	4481                	li	s1,0
    326e:	07a00913          	li	s2,122
    3272:	08000993          	li	s3,128
    3276:	bb240823          	sb	s2,-1104(s0)
    327a:	bb2408a3          	sb	s2,-1103(s0)
    327e:	41f4d79b          	sraiw	a5,s1,0x1f
    3282:	01b7d71b          	srliw	a4,a5,0x1b
    3286:	009707bb          	addw	a5,a4,s1
    328a:	4057d69b          	sraiw	a3,a5,0x5
    328e:	0306869b          	addiw	a3,a3,48
    3292:	bad40923          	sb	a3,-1102(s0)
    3296:	8bfd                	andi	a5,a5,31
    3298:	9f99                	subw	a5,a5,a4
    329a:	0307879b          	addiw	a5,a5,48
    329e:	baf409a3          	sb	a5,-1101(s0)
    32a2:	ba040a23          	sb	zero,-1100(s0)
    32a6:	bb040513          	addi	a0,s0,-1104
    32aa:	00003097          	auipc	ra,0x3
    32ae:	908080e7          	jalr	-1784(ra) # 5bb2 <unlink>
    32b2:	2485                	addiw	s1,s1,1
    32b4:	fd3491e3          	bne	s1,s3,3276 <diskfull+0x11a>
    32b8:	03405e63          	blez	s4,32f4 <diskfull+0x198>
    32bc:	4481                	li	s1,0
    32be:	06200a93          	li	s5,98
    32c2:	06900993          	li	s3,105
    32c6:	06700913          	li	s2,103
    32ca:	bb540823          	sb	s5,-1104(s0)
    32ce:	bb3408a3          	sb	s3,-1103(s0)
    32d2:	bb240923          	sb	s2,-1102(s0)
    32d6:	0304879b          	addiw	a5,s1,48
    32da:	baf409a3          	sb	a5,-1101(s0)
    32de:	ba040a23          	sb	zero,-1100(s0)
    32e2:	bb040513          	addi	a0,s0,-1104
    32e6:	00003097          	auipc	ra,0x3
    32ea:	8cc080e7          	jalr	-1844(ra) # 5bb2 <unlink>
    32ee:	2485                	addiw	s1,s1,1
    32f0:	fd449de3          	bne	s1,s4,32ca <diskfull+0x16e>
    32f4:	46813083          	ld	ra,1128(sp)
    32f8:	46013403          	ld	s0,1120(sp)
    32fc:	45813483          	ld	s1,1112(sp)
    3300:	45013903          	ld	s2,1104(sp)
    3304:	44813983          	ld	s3,1096(sp)
    3308:	44013a03          	ld	s4,1088(sp)
    330c:	43813a83          	ld	s5,1080(sp)
    3310:	43013b03          	ld	s6,1072(sp)
    3314:	42813b83          	ld	s7,1064(sp)
    3318:	42013c03          	ld	s8,1056(sp)
    331c:	47010113          	addi	sp,sp,1136
    3320:	8082                	ret
    3322:	854a                	mv	a0,s2
    3324:	00003097          	auipc	ra,0x3
    3328:	866080e7          	jalr	-1946(ra) # 5b8a <close>
    332c:	2a05                	addiw	s4,s4,1
    332e:	b9640823          	sb	s6,-1136(s0)
    3332:	b95408a3          	sb	s5,-1135(s0)
    3336:	b9340923          	sb	s3,-1134(s0)
    333a:	030a079b          	addiw	a5,s4,48
    333e:	b8f409a3          	sb	a5,-1133(s0)
    3342:	b8040a23          	sb	zero,-1132(s0)
    3346:	b9040513          	addi	a0,s0,-1136
    334a:	00003097          	auipc	ra,0x3
    334e:	868080e7          	jalr	-1944(ra) # 5bb2 <unlink>
    3352:	60200593          	li	a1,1538
    3356:	b9040513          	addi	a0,s0,-1136
    335a:	00003097          	auipc	ra,0x3
    335e:	848080e7          	jalr	-1976(ra) # 5ba2 <open>
    3362:	892a                	mv	s2,a0
    3364:	e40547e3          	bltz	a0,31b2 <diskfull+0x56>
    3368:	84de                	mv	s1,s7
    336a:	40000613          	li	a2,1024
    336e:	bb040593          	addi	a1,s0,-1104
    3372:	854a                	mv	a0,s2
    3374:	00003097          	auipc	ra,0x3
    3378:	80e080e7          	jalr	-2034(ra) # 5b82 <write>
    337c:	40000793          	li	a5,1024
    3380:	e4f515e3          	bne	a0,a5,31ca <diskfull+0x6e>
    3384:	34fd                	addiw	s1,s1,-1
    3386:	f0f5                	bnez	s1,336a <diskfull+0x20e>
    3388:	bf69                	j	3322 <diskfull+0x1c6>
    338a:	00004517          	auipc	a0,0x4
    338e:	f9650513          	addi	a0,a0,-106 # 7320 <malloc+0x1360>
    3392:	00003097          	auipc	ra,0x3
    3396:	b70080e7          	jalr	-1168(ra) # 5f02 <printf>
    339a:	b5c9                	j	325c <diskfull+0x100>

000000000000339c <iputtest>:
    339c:	1101                	addi	sp,sp,-32
    339e:	ec06                	sd	ra,24(sp)
    33a0:	e822                	sd	s0,16(sp)
    33a2:	e426                	sd	s1,8(sp)
    33a4:	1000                	addi	s0,sp,32
    33a6:	84aa                	mv	s1,a0
    33a8:	00004517          	auipc	a0,0x4
    33ac:	fa850513          	addi	a0,a0,-88 # 7350 <malloc+0x1390>
    33b0:	00003097          	auipc	ra,0x3
    33b4:	81a080e7          	jalr	-2022(ra) # 5bca <mkdir>
    33b8:	04054563          	bltz	a0,3402 <iputtest+0x66>
    33bc:	00004517          	auipc	a0,0x4
    33c0:	f9450513          	addi	a0,a0,-108 # 7350 <malloc+0x1390>
    33c4:	00003097          	auipc	ra,0x3
    33c8:	80e080e7          	jalr	-2034(ra) # 5bd2 <chdir>
    33cc:	04054963          	bltz	a0,341e <iputtest+0x82>
    33d0:	00004517          	auipc	a0,0x4
    33d4:	fc050513          	addi	a0,a0,-64 # 7390 <malloc+0x13d0>
    33d8:	00002097          	auipc	ra,0x2
    33dc:	7da080e7          	jalr	2010(ra) # 5bb2 <unlink>
    33e0:	04054d63          	bltz	a0,343a <iputtest+0x9e>
    33e4:	00004517          	auipc	a0,0x4
    33e8:	fdc50513          	addi	a0,a0,-36 # 73c0 <malloc+0x1400>
    33ec:	00002097          	auipc	ra,0x2
    33f0:	7e6080e7          	jalr	2022(ra) # 5bd2 <chdir>
    33f4:	06054163          	bltz	a0,3456 <iputtest+0xba>
    33f8:	60e2                	ld	ra,24(sp)
    33fa:	6442                	ld	s0,16(sp)
    33fc:	64a2                	ld	s1,8(sp)
    33fe:	6105                	addi	sp,sp,32
    3400:	8082                	ret
    3402:	85a6                	mv	a1,s1
    3404:	00004517          	auipc	a0,0x4
    3408:	f5450513          	addi	a0,a0,-172 # 7358 <malloc+0x1398>
    340c:	00003097          	auipc	ra,0x3
    3410:	af6080e7          	jalr	-1290(ra) # 5f02 <printf>
    3414:	4505                	li	a0,1
    3416:	00002097          	auipc	ra,0x2
    341a:	74c080e7          	jalr	1868(ra) # 5b62 <exit>
    341e:	85a6                	mv	a1,s1
    3420:	00004517          	auipc	a0,0x4
    3424:	f5050513          	addi	a0,a0,-176 # 7370 <malloc+0x13b0>
    3428:	00003097          	auipc	ra,0x3
    342c:	ada080e7          	jalr	-1318(ra) # 5f02 <printf>
    3430:	4505                	li	a0,1
    3432:	00002097          	auipc	ra,0x2
    3436:	730080e7          	jalr	1840(ra) # 5b62 <exit>
    343a:	85a6                	mv	a1,s1
    343c:	00004517          	auipc	a0,0x4
    3440:	f6450513          	addi	a0,a0,-156 # 73a0 <malloc+0x13e0>
    3444:	00003097          	auipc	ra,0x3
    3448:	abe080e7          	jalr	-1346(ra) # 5f02 <printf>
    344c:	4505                	li	a0,1
    344e:	00002097          	auipc	ra,0x2
    3452:	714080e7          	jalr	1812(ra) # 5b62 <exit>
    3456:	85a6                	mv	a1,s1
    3458:	00004517          	auipc	a0,0x4
    345c:	f7050513          	addi	a0,a0,-144 # 73c8 <malloc+0x1408>
    3460:	00003097          	auipc	ra,0x3
    3464:	aa2080e7          	jalr	-1374(ra) # 5f02 <printf>
    3468:	4505                	li	a0,1
    346a:	00002097          	auipc	ra,0x2
    346e:	6f8080e7          	jalr	1784(ra) # 5b62 <exit>

0000000000003472 <exitiputtest>:
    3472:	7179                	addi	sp,sp,-48
    3474:	f406                	sd	ra,40(sp)
    3476:	f022                	sd	s0,32(sp)
    3478:	ec26                	sd	s1,24(sp)
    347a:	1800                	addi	s0,sp,48
    347c:	84aa                	mv	s1,a0
    347e:	00002097          	auipc	ra,0x2
    3482:	6dc080e7          	jalr	1756(ra) # 5b5a <fork>
    3486:	04054663          	bltz	a0,34d2 <exitiputtest+0x60>
    348a:	ed45                	bnez	a0,3542 <exitiputtest+0xd0>
    348c:	00004517          	auipc	a0,0x4
    3490:	ec450513          	addi	a0,a0,-316 # 7350 <malloc+0x1390>
    3494:	00002097          	auipc	ra,0x2
    3498:	736080e7          	jalr	1846(ra) # 5bca <mkdir>
    349c:	04054963          	bltz	a0,34ee <exitiputtest+0x7c>
    34a0:	00004517          	auipc	a0,0x4
    34a4:	eb050513          	addi	a0,a0,-336 # 7350 <malloc+0x1390>
    34a8:	00002097          	auipc	ra,0x2
    34ac:	72a080e7          	jalr	1834(ra) # 5bd2 <chdir>
    34b0:	04054d63          	bltz	a0,350a <exitiputtest+0x98>
    34b4:	00004517          	auipc	a0,0x4
    34b8:	edc50513          	addi	a0,a0,-292 # 7390 <malloc+0x13d0>
    34bc:	00002097          	auipc	ra,0x2
    34c0:	6f6080e7          	jalr	1782(ra) # 5bb2 <unlink>
    34c4:	06054163          	bltz	a0,3526 <exitiputtest+0xb4>
    34c8:	4501                	li	a0,0
    34ca:	00002097          	auipc	ra,0x2
    34ce:	698080e7          	jalr	1688(ra) # 5b62 <exit>
    34d2:	85a6                	mv	a1,s1
    34d4:	00003517          	auipc	a0,0x3
    34d8:	4bc50513          	addi	a0,a0,1212 # 6990 <malloc+0x9d0>
    34dc:	00003097          	auipc	ra,0x3
    34e0:	a26080e7          	jalr	-1498(ra) # 5f02 <printf>
    34e4:	4505                	li	a0,1
    34e6:	00002097          	auipc	ra,0x2
    34ea:	67c080e7          	jalr	1660(ra) # 5b62 <exit>
    34ee:	85a6                	mv	a1,s1
    34f0:	00004517          	auipc	a0,0x4
    34f4:	e6850513          	addi	a0,a0,-408 # 7358 <malloc+0x1398>
    34f8:	00003097          	auipc	ra,0x3
    34fc:	a0a080e7          	jalr	-1526(ra) # 5f02 <printf>
    3500:	4505                	li	a0,1
    3502:	00002097          	auipc	ra,0x2
    3506:	660080e7          	jalr	1632(ra) # 5b62 <exit>
    350a:	85a6                	mv	a1,s1
    350c:	00004517          	auipc	a0,0x4
    3510:	ed450513          	addi	a0,a0,-300 # 73e0 <malloc+0x1420>
    3514:	00003097          	auipc	ra,0x3
    3518:	9ee080e7          	jalr	-1554(ra) # 5f02 <printf>
    351c:	4505                	li	a0,1
    351e:	00002097          	auipc	ra,0x2
    3522:	644080e7          	jalr	1604(ra) # 5b62 <exit>
    3526:	85a6                	mv	a1,s1
    3528:	00004517          	auipc	a0,0x4
    352c:	e7850513          	addi	a0,a0,-392 # 73a0 <malloc+0x13e0>
    3530:	00003097          	auipc	ra,0x3
    3534:	9d2080e7          	jalr	-1582(ra) # 5f02 <printf>
    3538:	4505                	li	a0,1
    353a:	00002097          	auipc	ra,0x2
    353e:	628080e7          	jalr	1576(ra) # 5b62 <exit>
    3542:	fdc40513          	addi	a0,s0,-36
    3546:	00002097          	auipc	ra,0x2
    354a:	624080e7          	jalr	1572(ra) # 5b6a <wait>
    354e:	fdc42503          	lw	a0,-36(s0)
    3552:	00002097          	auipc	ra,0x2
    3556:	610080e7          	jalr	1552(ra) # 5b62 <exit>

000000000000355a <dirtest>:
    355a:	1101                	addi	sp,sp,-32
    355c:	ec06                	sd	ra,24(sp)
    355e:	e822                	sd	s0,16(sp)
    3560:	e426                	sd	s1,8(sp)
    3562:	1000                	addi	s0,sp,32
    3564:	84aa                	mv	s1,a0
    3566:	00004517          	auipc	a0,0x4
    356a:	e9250513          	addi	a0,a0,-366 # 73f8 <malloc+0x1438>
    356e:	00002097          	auipc	ra,0x2
    3572:	65c080e7          	jalr	1628(ra) # 5bca <mkdir>
    3576:	04054563          	bltz	a0,35c0 <dirtest+0x66>
    357a:	00004517          	auipc	a0,0x4
    357e:	e7e50513          	addi	a0,a0,-386 # 73f8 <malloc+0x1438>
    3582:	00002097          	auipc	ra,0x2
    3586:	650080e7          	jalr	1616(ra) # 5bd2 <chdir>
    358a:	04054963          	bltz	a0,35dc <dirtest+0x82>
    358e:	00004517          	auipc	a0,0x4
    3592:	e8a50513          	addi	a0,a0,-374 # 7418 <malloc+0x1458>
    3596:	00002097          	auipc	ra,0x2
    359a:	63c080e7          	jalr	1596(ra) # 5bd2 <chdir>
    359e:	04054d63          	bltz	a0,35f8 <dirtest+0x9e>
    35a2:	00004517          	auipc	a0,0x4
    35a6:	e5650513          	addi	a0,a0,-426 # 73f8 <malloc+0x1438>
    35aa:	00002097          	auipc	ra,0x2
    35ae:	608080e7          	jalr	1544(ra) # 5bb2 <unlink>
    35b2:	06054163          	bltz	a0,3614 <dirtest+0xba>
    35b6:	60e2                	ld	ra,24(sp)
    35b8:	6442                	ld	s0,16(sp)
    35ba:	64a2                	ld	s1,8(sp)
    35bc:	6105                	addi	sp,sp,32
    35be:	8082                	ret
    35c0:	85a6                	mv	a1,s1
    35c2:	00004517          	auipc	a0,0x4
    35c6:	d9650513          	addi	a0,a0,-618 # 7358 <malloc+0x1398>
    35ca:	00003097          	auipc	ra,0x3
    35ce:	938080e7          	jalr	-1736(ra) # 5f02 <printf>
    35d2:	4505                	li	a0,1
    35d4:	00002097          	auipc	ra,0x2
    35d8:	58e080e7          	jalr	1422(ra) # 5b62 <exit>
    35dc:	85a6                	mv	a1,s1
    35de:	00004517          	auipc	a0,0x4
    35e2:	e2250513          	addi	a0,a0,-478 # 7400 <malloc+0x1440>
    35e6:	00003097          	auipc	ra,0x3
    35ea:	91c080e7          	jalr	-1764(ra) # 5f02 <printf>
    35ee:	4505                	li	a0,1
    35f0:	00002097          	auipc	ra,0x2
    35f4:	572080e7          	jalr	1394(ra) # 5b62 <exit>
    35f8:	85a6                	mv	a1,s1
    35fa:	00004517          	auipc	a0,0x4
    35fe:	e2650513          	addi	a0,a0,-474 # 7420 <malloc+0x1460>
    3602:	00003097          	auipc	ra,0x3
    3606:	900080e7          	jalr	-1792(ra) # 5f02 <printf>
    360a:	4505                	li	a0,1
    360c:	00002097          	auipc	ra,0x2
    3610:	556080e7          	jalr	1366(ra) # 5b62 <exit>
    3614:	85a6                	mv	a1,s1
    3616:	00004517          	auipc	a0,0x4
    361a:	e2250513          	addi	a0,a0,-478 # 7438 <malloc+0x1478>
    361e:	00003097          	auipc	ra,0x3
    3622:	8e4080e7          	jalr	-1820(ra) # 5f02 <printf>
    3626:	4505                	li	a0,1
    3628:	00002097          	auipc	ra,0x2
    362c:	53a080e7          	jalr	1338(ra) # 5b62 <exit>

0000000000003630 <subdir>:
    3630:	1101                	addi	sp,sp,-32
    3632:	ec06                	sd	ra,24(sp)
    3634:	e822                	sd	s0,16(sp)
    3636:	e426                	sd	s1,8(sp)
    3638:	e04a                	sd	s2,0(sp)
    363a:	1000                	addi	s0,sp,32
    363c:	892a                	mv	s2,a0
    363e:	00004517          	auipc	a0,0x4
    3642:	f4250513          	addi	a0,a0,-190 # 7580 <malloc+0x15c0>
    3646:	00002097          	auipc	ra,0x2
    364a:	56c080e7          	jalr	1388(ra) # 5bb2 <unlink>
    364e:	00004517          	auipc	a0,0x4
    3652:	e0250513          	addi	a0,a0,-510 # 7450 <malloc+0x1490>
    3656:	00002097          	auipc	ra,0x2
    365a:	574080e7          	jalr	1396(ra) # 5bca <mkdir>
    365e:	38051663          	bnez	a0,39ea <subdir+0x3ba>
    3662:	20200593          	li	a1,514
    3666:	00004517          	auipc	a0,0x4
    366a:	e0a50513          	addi	a0,a0,-502 # 7470 <malloc+0x14b0>
    366e:	00002097          	auipc	ra,0x2
    3672:	534080e7          	jalr	1332(ra) # 5ba2 <open>
    3676:	84aa                	mv	s1,a0
    3678:	38054763          	bltz	a0,3a06 <subdir+0x3d6>
    367c:	4609                	li	a2,2
    367e:	00004597          	auipc	a1,0x4
    3682:	f0258593          	addi	a1,a1,-254 # 7580 <malloc+0x15c0>
    3686:	00002097          	auipc	ra,0x2
    368a:	4fc080e7          	jalr	1276(ra) # 5b82 <write>
    368e:	8526                	mv	a0,s1
    3690:	00002097          	auipc	ra,0x2
    3694:	4fa080e7          	jalr	1274(ra) # 5b8a <close>
    3698:	00004517          	auipc	a0,0x4
    369c:	db850513          	addi	a0,a0,-584 # 7450 <malloc+0x1490>
    36a0:	00002097          	auipc	ra,0x2
    36a4:	512080e7          	jalr	1298(ra) # 5bb2 <unlink>
    36a8:	36055d63          	bgez	a0,3a22 <subdir+0x3f2>
    36ac:	00004517          	auipc	a0,0x4
    36b0:	e1c50513          	addi	a0,a0,-484 # 74c8 <malloc+0x1508>
    36b4:	00002097          	auipc	ra,0x2
    36b8:	516080e7          	jalr	1302(ra) # 5bca <mkdir>
    36bc:	38051163          	bnez	a0,3a3e <subdir+0x40e>
    36c0:	20200593          	li	a1,514
    36c4:	00004517          	auipc	a0,0x4
    36c8:	e2c50513          	addi	a0,a0,-468 # 74f0 <malloc+0x1530>
    36cc:	00002097          	auipc	ra,0x2
    36d0:	4d6080e7          	jalr	1238(ra) # 5ba2 <open>
    36d4:	84aa                	mv	s1,a0
    36d6:	38054263          	bltz	a0,3a5a <subdir+0x42a>
    36da:	4609                	li	a2,2
    36dc:	00004597          	auipc	a1,0x4
    36e0:	e4458593          	addi	a1,a1,-444 # 7520 <malloc+0x1560>
    36e4:	00002097          	auipc	ra,0x2
    36e8:	49e080e7          	jalr	1182(ra) # 5b82 <write>
    36ec:	8526                	mv	a0,s1
    36ee:	00002097          	auipc	ra,0x2
    36f2:	49c080e7          	jalr	1180(ra) # 5b8a <close>
    36f6:	4581                	li	a1,0
    36f8:	00004517          	auipc	a0,0x4
    36fc:	e3050513          	addi	a0,a0,-464 # 7528 <malloc+0x1568>
    3700:	00002097          	auipc	ra,0x2
    3704:	4a2080e7          	jalr	1186(ra) # 5ba2 <open>
    3708:	84aa                	mv	s1,a0
    370a:	36054663          	bltz	a0,3a76 <subdir+0x446>
    370e:	660d                	lui	a2,0x3
    3710:	00009597          	auipc	a1,0x9
    3714:	55858593          	addi	a1,a1,1368 # cc68 <buf>
    3718:	00002097          	auipc	ra,0x2
    371c:	462080e7          	jalr	1122(ra) # 5b7a <read>
    3720:	4789                	li	a5,2
    3722:	36f51863          	bne	a0,a5,3a92 <subdir+0x462>
    3726:	00009717          	auipc	a4,0x9
    372a:	54274703          	lbu	a4,1346(a4) # cc68 <buf>
    372e:	06600793          	li	a5,102
    3732:	36f71063          	bne	a4,a5,3a92 <subdir+0x462>
    3736:	8526                	mv	a0,s1
    3738:	00002097          	auipc	ra,0x2
    373c:	452080e7          	jalr	1106(ra) # 5b8a <close>
    3740:	00004597          	auipc	a1,0x4
    3744:	e3858593          	addi	a1,a1,-456 # 7578 <malloc+0x15b8>
    3748:	00004517          	auipc	a0,0x4
    374c:	da850513          	addi	a0,a0,-600 # 74f0 <malloc+0x1530>
    3750:	00002097          	auipc	ra,0x2
    3754:	472080e7          	jalr	1138(ra) # 5bc2 <link>
    3758:	34051b63          	bnez	a0,3aae <subdir+0x47e>
    375c:	00004517          	auipc	a0,0x4
    3760:	d9450513          	addi	a0,a0,-620 # 74f0 <malloc+0x1530>
    3764:	00002097          	auipc	ra,0x2
    3768:	44e080e7          	jalr	1102(ra) # 5bb2 <unlink>
    376c:	34051f63          	bnez	a0,3aca <subdir+0x49a>
    3770:	4581                	li	a1,0
    3772:	00004517          	auipc	a0,0x4
    3776:	d7e50513          	addi	a0,a0,-642 # 74f0 <malloc+0x1530>
    377a:	00002097          	auipc	ra,0x2
    377e:	428080e7          	jalr	1064(ra) # 5ba2 <open>
    3782:	36055263          	bgez	a0,3ae6 <subdir+0x4b6>
    3786:	00004517          	auipc	a0,0x4
    378a:	cca50513          	addi	a0,a0,-822 # 7450 <malloc+0x1490>
    378e:	00002097          	auipc	ra,0x2
    3792:	444080e7          	jalr	1092(ra) # 5bd2 <chdir>
    3796:	36051663          	bnez	a0,3b02 <subdir+0x4d2>
    379a:	00004517          	auipc	a0,0x4
    379e:	e7650513          	addi	a0,a0,-394 # 7610 <malloc+0x1650>
    37a2:	00002097          	auipc	ra,0x2
    37a6:	430080e7          	jalr	1072(ra) # 5bd2 <chdir>
    37aa:	36051a63          	bnez	a0,3b1e <subdir+0x4ee>
    37ae:	00004517          	auipc	a0,0x4
    37b2:	e9250513          	addi	a0,a0,-366 # 7640 <malloc+0x1680>
    37b6:	00002097          	auipc	ra,0x2
    37ba:	41c080e7          	jalr	1052(ra) # 5bd2 <chdir>
    37be:	36051e63          	bnez	a0,3b3a <subdir+0x50a>
    37c2:	00004517          	auipc	a0,0x4
    37c6:	eae50513          	addi	a0,a0,-338 # 7670 <malloc+0x16b0>
    37ca:	00002097          	auipc	ra,0x2
    37ce:	408080e7          	jalr	1032(ra) # 5bd2 <chdir>
    37d2:	38051263          	bnez	a0,3b56 <subdir+0x526>
    37d6:	4581                	li	a1,0
    37d8:	00004517          	auipc	a0,0x4
    37dc:	da050513          	addi	a0,a0,-608 # 7578 <malloc+0x15b8>
    37e0:	00002097          	auipc	ra,0x2
    37e4:	3c2080e7          	jalr	962(ra) # 5ba2 <open>
    37e8:	84aa                	mv	s1,a0
    37ea:	38054463          	bltz	a0,3b72 <subdir+0x542>
    37ee:	660d                	lui	a2,0x3
    37f0:	00009597          	auipc	a1,0x9
    37f4:	47858593          	addi	a1,a1,1144 # cc68 <buf>
    37f8:	00002097          	auipc	ra,0x2
    37fc:	382080e7          	jalr	898(ra) # 5b7a <read>
    3800:	4789                	li	a5,2
    3802:	38f51663          	bne	a0,a5,3b8e <subdir+0x55e>
    3806:	8526                	mv	a0,s1
    3808:	00002097          	auipc	ra,0x2
    380c:	382080e7          	jalr	898(ra) # 5b8a <close>
    3810:	4581                	li	a1,0
    3812:	00004517          	auipc	a0,0x4
    3816:	cde50513          	addi	a0,a0,-802 # 74f0 <malloc+0x1530>
    381a:	00002097          	auipc	ra,0x2
    381e:	388080e7          	jalr	904(ra) # 5ba2 <open>
    3822:	38055463          	bgez	a0,3baa <subdir+0x57a>
    3826:	20200593          	li	a1,514
    382a:	00004517          	auipc	a0,0x4
    382e:	ed650513          	addi	a0,a0,-298 # 7700 <malloc+0x1740>
    3832:	00002097          	auipc	ra,0x2
    3836:	370080e7          	jalr	880(ra) # 5ba2 <open>
    383a:	38055663          	bgez	a0,3bc6 <subdir+0x596>
    383e:	20200593          	li	a1,514
    3842:	00004517          	auipc	a0,0x4
    3846:	eee50513          	addi	a0,a0,-274 # 7730 <malloc+0x1770>
    384a:	00002097          	auipc	ra,0x2
    384e:	358080e7          	jalr	856(ra) # 5ba2 <open>
    3852:	38055863          	bgez	a0,3be2 <subdir+0x5b2>
    3856:	20000593          	li	a1,512
    385a:	00004517          	auipc	a0,0x4
    385e:	bf650513          	addi	a0,a0,-1034 # 7450 <malloc+0x1490>
    3862:	00002097          	auipc	ra,0x2
    3866:	340080e7          	jalr	832(ra) # 5ba2 <open>
    386a:	38055a63          	bgez	a0,3bfe <subdir+0x5ce>
    386e:	4589                	li	a1,2
    3870:	00004517          	auipc	a0,0x4
    3874:	be050513          	addi	a0,a0,-1056 # 7450 <malloc+0x1490>
    3878:	00002097          	auipc	ra,0x2
    387c:	32a080e7          	jalr	810(ra) # 5ba2 <open>
    3880:	38055d63          	bgez	a0,3c1a <subdir+0x5ea>
    3884:	4585                	li	a1,1
    3886:	00004517          	auipc	a0,0x4
    388a:	bca50513          	addi	a0,a0,-1078 # 7450 <malloc+0x1490>
    388e:	00002097          	auipc	ra,0x2
    3892:	314080e7          	jalr	788(ra) # 5ba2 <open>
    3896:	3a055063          	bgez	a0,3c36 <subdir+0x606>
    389a:	00004597          	auipc	a1,0x4
    389e:	f2658593          	addi	a1,a1,-218 # 77c0 <malloc+0x1800>
    38a2:	00004517          	auipc	a0,0x4
    38a6:	e5e50513          	addi	a0,a0,-418 # 7700 <malloc+0x1740>
    38aa:	00002097          	auipc	ra,0x2
    38ae:	318080e7          	jalr	792(ra) # 5bc2 <link>
    38b2:	3a050063          	beqz	a0,3c52 <subdir+0x622>
    38b6:	00004597          	auipc	a1,0x4
    38ba:	f0a58593          	addi	a1,a1,-246 # 77c0 <malloc+0x1800>
    38be:	00004517          	auipc	a0,0x4
    38c2:	e7250513          	addi	a0,a0,-398 # 7730 <malloc+0x1770>
    38c6:	00002097          	auipc	ra,0x2
    38ca:	2fc080e7          	jalr	764(ra) # 5bc2 <link>
    38ce:	3a050063          	beqz	a0,3c6e <subdir+0x63e>
    38d2:	00004597          	auipc	a1,0x4
    38d6:	ca658593          	addi	a1,a1,-858 # 7578 <malloc+0x15b8>
    38da:	00004517          	auipc	a0,0x4
    38de:	b9650513          	addi	a0,a0,-1130 # 7470 <malloc+0x14b0>
    38e2:	00002097          	auipc	ra,0x2
    38e6:	2e0080e7          	jalr	736(ra) # 5bc2 <link>
    38ea:	3a050063          	beqz	a0,3c8a <subdir+0x65a>
    38ee:	00004517          	auipc	a0,0x4
    38f2:	e1250513          	addi	a0,a0,-494 # 7700 <malloc+0x1740>
    38f6:	00002097          	auipc	ra,0x2
    38fa:	2d4080e7          	jalr	724(ra) # 5bca <mkdir>
    38fe:	3a050463          	beqz	a0,3ca6 <subdir+0x676>
    3902:	00004517          	auipc	a0,0x4
    3906:	e2e50513          	addi	a0,a0,-466 # 7730 <malloc+0x1770>
    390a:	00002097          	auipc	ra,0x2
    390e:	2c0080e7          	jalr	704(ra) # 5bca <mkdir>
    3912:	3a050863          	beqz	a0,3cc2 <subdir+0x692>
    3916:	00004517          	auipc	a0,0x4
    391a:	c6250513          	addi	a0,a0,-926 # 7578 <malloc+0x15b8>
    391e:	00002097          	auipc	ra,0x2
    3922:	2ac080e7          	jalr	684(ra) # 5bca <mkdir>
    3926:	3a050c63          	beqz	a0,3cde <subdir+0x6ae>
    392a:	00004517          	auipc	a0,0x4
    392e:	e0650513          	addi	a0,a0,-506 # 7730 <malloc+0x1770>
    3932:	00002097          	auipc	ra,0x2
    3936:	280080e7          	jalr	640(ra) # 5bb2 <unlink>
    393a:	3c050063          	beqz	a0,3cfa <subdir+0x6ca>
    393e:	00004517          	auipc	a0,0x4
    3942:	dc250513          	addi	a0,a0,-574 # 7700 <malloc+0x1740>
    3946:	00002097          	auipc	ra,0x2
    394a:	26c080e7          	jalr	620(ra) # 5bb2 <unlink>
    394e:	3c050463          	beqz	a0,3d16 <subdir+0x6e6>
    3952:	00004517          	auipc	a0,0x4
    3956:	b1e50513          	addi	a0,a0,-1250 # 7470 <malloc+0x14b0>
    395a:	00002097          	auipc	ra,0x2
    395e:	278080e7          	jalr	632(ra) # 5bd2 <chdir>
    3962:	3c050863          	beqz	a0,3d32 <subdir+0x702>
    3966:	00004517          	auipc	a0,0x4
    396a:	faa50513          	addi	a0,a0,-86 # 7910 <malloc+0x1950>
    396e:	00002097          	auipc	ra,0x2
    3972:	264080e7          	jalr	612(ra) # 5bd2 <chdir>
    3976:	3c050c63          	beqz	a0,3d4e <subdir+0x71e>
    397a:	00004517          	auipc	a0,0x4
    397e:	bfe50513          	addi	a0,a0,-1026 # 7578 <malloc+0x15b8>
    3982:	00002097          	auipc	ra,0x2
    3986:	230080e7          	jalr	560(ra) # 5bb2 <unlink>
    398a:	3e051063          	bnez	a0,3d6a <subdir+0x73a>
    398e:	00004517          	auipc	a0,0x4
    3992:	ae250513          	addi	a0,a0,-1310 # 7470 <malloc+0x14b0>
    3996:	00002097          	auipc	ra,0x2
    399a:	21c080e7          	jalr	540(ra) # 5bb2 <unlink>
    399e:	3e051463          	bnez	a0,3d86 <subdir+0x756>
    39a2:	00004517          	auipc	a0,0x4
    39a6:	aae50513          	addi	a0,a0,-1362 # 7450 <malloc+0x1490>
    39aa:	00002097          	auipc	ra,0x2
    39ae:	208080e7          	jalr	520(ra) # 5bb2 <unlink>
    39b2:	3e050863          	beqz	a0,3da2 <subdir+0x772>
    39b6:	00004517          	auipc	a0,0x4
    39ba:	fca50513          	addi	a0,a0,-54 # 7980 <malloc+0x19c0>
    39be:	00002097          	auipc	ra,0x2
    39c2:	1f4080e7          	jalr	500(ra) # 5bb2 <unlink>
    39c6:	3e054c63          	bltz	a0,3dbe <subdir+0x78e>
    39ca:	00004517          	auipc	a0,0x4
    39ce:	a8650513          	addi	a0,a0,-1402 # 7450 <malloc+0x1490>
    39d2:	00002097          	auipc	ra,0x2
    39d6:	1e0080e7          	jalr	480(ra) # 5bb2 <unlink>
    39da:	40054063          	bltz	a0,3dda <subdir+0x7aa>
    39de:	60e2                	ld	ra,24(sp)
    39e0:	6442                	ld	s0,16(sp)
    39e2:	64a2                	ld	s1,8(sp)
    39e4:	6902                	ld	s2,0(sp)
    39e6:	6105                	addi	sp,sp,32
    39e8:	8082                	ret
    39ea:	85ca                	mv	a1,s2
    39ec:	00004517          	auipc	a0,0x4
    39f0:	a6c50513          	addi	a0,a0,-1428 # 7458 <malloc+0x1498>
    39f4:	00002097          	auipc	ra,0x2
    39f8:	50e080e7          	jalr	1294(ra) # 5f02 <printf>
    39fc:	4505                	li	a0,1
    39fe:	00002097          	auipc	ra,0x2
    3a02:	164080e7          	jalr	356(ra) # 5b62 <exit>
    3a06:	85ca                	mv	a1,s2
    3a08:	00004517          	auipc	a0,0x4
    3a0c:	a7050513          	addi	a0,a0,-1424 # 7478 <malloc+0x14b8>
    3a10:	00002097          	auipc	ra,0x2
    3a14:	4f2080e7          	jalr	1266(ra) # 5f02 <printf>
    3a18:	4505                	li	a0,1
    3a1a:	00002097          	auipc	ra,0x2
    3a1e:	148080e7          	jalr	328(ra) # 5b62 <exit>
    3a22:	85ca                	mv	a1,s2
    3a24:	00004517          	auipc	a0,0x4
    3a28:	a7450513          	addi	a0,a0,-1420 # 7498 <malloc+0x14d8>
    3a2c:	00002097          	auipc	ra,0x2
    3a30:	4d6080e7          	jalr	1238(ra) # 5f02 <printf>
    3a34:	4505                	li	a0,1
    3a36:	00002097          	auipc	ra,0x2
    3a3a:	12c080e7          	jalr	300(ra) # 5b62 <exit>
    3a3e:	85ca                	mv	a1,s2
    3a40:	00004517          	auipc	a0,0x4
    3a44:	a9050513          	addi	a0,a0,-1392 # 74d0 <malloc+0x1510>
    3a48:	00002097          	auipc	ra,0x2
    3a4c:	4ba080e7          	jalr	1210(ra) # 5f02 <printf>
    3a50:	4505                	li	a0,1
    3a52:	00002097          	auipc	ra,0x2
    3a56:	110080e7          	jalr	272(ra) # 5b62 <exit>
    3a5a:	85ca                	mv	a1,s2
    3a5c:	00004517          	auipc	a0,0x4
    3a60:	aa450513          	addi	a0,a0,-1372 # 7500 <malloc+0x1540>
    3a64:	00002097          	auipc	ra,0x2
    3a68:	49e080e7          	jalr	1182(ra) # 5f02 <printf>
    3a6c:	4505                	li	a0,1
    3a6e:	00002097          	auipc	ra,0x2
    3a72:	0f4080e7          	jalr	244(ra) # 5b62 <exit>
    3a76:	85ca                	mv	a1,s2
    3a78:	00004517          	auipc	a0,0x4
    3a7c:	ac050513          	addi	a0,a0,-1344 # 7538 <malloc+0x1578>
    3a80:	00002097          	auipc	ra,0x2
    3a84:	482080e7          	jalr	1154(ra) # 5f02 <printf>
    3a88:	4505                	li	a0,1
    3a8a:	00002097          	auipc	ra,0x2
    3a8e:	0d8080e7          	jalr	216(ra) # 5b62 <exit>
    3a92:	85ca                	mv	a1,s2
    3a94:	00004517          	auipc	a0,0x4
    3a98:	ac450513          	addi	a0,a0,-1340 # 7558 <malloc+0x1598>
    3a9c:	00002097          	auipc	ra,0x2
    3aa0:	466080e7          	jalr	1126(ra) # 5f02 <printf>
    3aa4:	4505                	li	a0,1
    3aa6:	00002097          	auipc	ra,0x2
    3aaa:	0bc080e7          	jalr	188(ra) # 5b62 <exit>
    3aae:	85ca                	mv	a1,s2
    3ab0:	00004517          	auipc	a0,0x4
    3ab4:	ad850513          	addi	a0,a0,-1320 # 7588 <malloc+0x15c8>
    3ab8:	00002097          	auipc	ra,0x2
    3abc:	44a080e7          	jalr	1098(ra) # 5f02 <printf>
    3ac0:	4505                	li	a0,1
    3ac2:	00002097          	auipc	ra,0x2
    3ac6:	0a0080e7          	jalr	160(ra) # 5b62 <exit>
    3aca:	85ca                	mv	a1,s2
    3acc:	00004517          	auipc	a0,0x4
    3ad0:	ae450513          	addi	a0,a0,-1308 # 75b0 <malloc+0x15f0>
    3ad4:	00002097          	auipc	ra,0x2
    3ad8:	42e080e7          	jalr	1070(ra) # 5f02 <printf>
    3adc:	4505                	li	a0,1
    3ade:	00002097          	auipc	ra,0x2
    3ae2:	084080e7          	jalr	132(ra) # 5b62 <exit>
    3ae6:	85ca                	mv	a1,s2
    3ae8:	00004517          	auipc	a0,0x4
    3aec:	ae850513          	addi	a0,a0,-1304 # 75d0 <malloc+0x1610>
    3af0:	00002097          	auipc	ra,0x2
    3af4:	412080e7          	jalr	1042(ra) # 5f02 <printf>
    3af8:	4505                	li	a0,1
    3afa:	00002097          	auipc	ra,0x2
    3afe:	068080e7          	jalr	104(ra) # 5b62 <exit>
    3b02:	85ca                	mv	a1,s2
    3b04:	00004517          	auipc	a0,0x4
    3b08:	af450513          	addi	a0,a0,-1292 # 75f8 <malloc+0x1638>
    3b0c:	00002097          	auipc	ra,0x2
    3b10:	3f6080e7          	jalr	1014(ra) # 5f02 <printf>
    3b14:	4505                	li	a0,1
    3b16:	00002097          	auipc	ra,0x2
    3b1a:	04c080e7          	jalr	76(ra) # 5b62 <exit>
    3b1e:	85ca                	mv	a1,s2
    3b20:	00004517          	auipc	a0,0x4
    3b24:	b0050513          	addi	a0,a0,-1280 # 7620 <malloc+0x1660>
    3b28:	00002097          	auipc	ra,0x2
    3b2c:	3da080e7          	jalr	986(ra) # 5f02 <printf>
    3b30:	4505                	li	a0,1
    3b32:	00002097          	auipc	ra,0x2
    3b36:	030080e7          	jalr	48(ra) # 5b62 <exit>
    3b3a:	85ca                	mv	a1,s2
    3b3c:	00004517          	auipc	a0,0x4
    3b40:	b1450513          	addi	a0,a0,-1260 # 7650 <malloc+0x1690>
    3b44:	00002097          	auipc	ra,0x2
    3b48:	3be080e7          	jalr	958(ra) # 5f02 <printf>
    3b4c:	4505                	li	a0,1
    3b4e:	00002097          	auipc	ra,0x2
    3b52:	014080e7          	jalr	20(ra) # 5b62 <exit>
    3b56:	85ca                	mv	a1,s2
    3b58:	00004517          	auipc	a0,0x4
    3b5c:	b2050513          	addi	a0,a0,-1248 # 7678 <malloc+0x16b8>
    3b60:	00002097          	auipc	ra,0x2
    3b64:	3a2080e7          	jalr	930(ra) # 5f02 <printf>
    3b68:	4505                	li	a0,1
    3b6a:	00002097          	auipc	ra,0x2
    3b6e:	ff8080e7          	jalr	-8(ra) # 5b62 <exit>
    3b72:	85ca                	mv	a1,s2
    3b74:	00004517          	auipc	a0,0x4
    3b78:	b1c50513          	addi	a0,a0,-1252 # 7690 <malloc+0x16d0>
    3b7c:	00002097          	auipc	ra,0x2
    3b80:	386080e7          	jalr	902(ra) # 5f02 <printf>
    3b84:	4505                	li	a0,1
    3b86:	00002097          	auipc	ra,0x2
    3b8a:	fdc080e7          	jalr	-36(ra) # 5b62 <exit>
    3b8e:	85ca                	mv	a1,s2
    3b90:	00004517          	auipc	a0,0x4
    3b94:	b2050513          	addi	a0,a0,-1248 # 76b0 <malloc+0x16f0>
    3b98:	00002097          	auipc	ra,0x2
    3b9c:	36a080e7          	jalr	874(ra) # 5f02 <printf>
    3ba0:	4505                	li	a0,1
    3ba2:	00002097          	auipc	ra,0x2
    3ba6:	fc0080e7          	jalr	-64(ra) # 5b62 <exit>
    3baa:	85ca                	mv	a1,s2
    3bac:	00004517          	auipc	a0,0x4
    3bb0:	b2450513          	addi	a0,a0,-1244 # 76d0 <malloc+0x1710>
    3bb4:	00002097          	auipc	ra,0x2
    3bb8:	34e080e7          	jalr	846(ra) # 5f02 <printf>
    3bbc:	4505                	li	a0,1
    3bbe:	00002097          	auipc	ra,0x2
    3bc2:	fa4080e7          	jalr	-92(ra) # 5b62 <exit>
    3bc6:	85ca                	mv	a1,s2
    3bc8:	00004517          	auipc	a0,0x4
    3bcc:	b4850513          	addi	a0,a0,-1208 # 7710 <malloc+0x1750>
    3bd0:	00002097          	auipc	ra,0x2
    3bd4:	332080e7          	jalr	818(ra) # 5f02 <printf>
    3bd8:	4505                	li	a0,1
    3bda:	00002097          	auipc	ra,0x2
    3bde:	f88080e7          	jalr	-120(ra) # 5b62 <exit>
    3be2:	85ca                	mv	a1,s2
    3be4:	00004517          	auipc	a0,0x4
    3be8:	b5c50513          	addi	a0,a0,-1188 # 7740 <malloc+0x1780>
    3bec:	00002097          	auipc	ra,0x2
    3bf0:	316080e7          	jalr	790(ra) # 5f02 <printf>
    3bf4:	4505                	li	a0,1
    3bf6:	00002097          	auipc	ra,0x2
    3bfa:	f6c080e7          	jalr	-148(ra) # 5b62 <exit>
    3bfe:	85ca                	mv	a1,s2
    3c00:	00004517          	auipc	a0,0x4
    3c04:	b6050513          	addi	a0,a0,-1184 # 7760 <malloc+0x17a0>
    3c08:	00002097          	auipc	ra,0x2
    3c0c:	2fa080e7          	jalr	762(ra) # 5f02 <printf>
    3c10:	4505                	li	a0,1
    3c12:	00002097          	auipc	ra,0x2
    3c16:	f50080e7          	jalr	-176(ra) # 5b62 <exit>
    3c1a:	85ca                	mv	a1,s2
    3c1c:	00004517          	auipc	a0,0x4
    3c20:	b6450513          	addi	a0,a0,-1180 # 7780 <malloc+0x17c0>
    3c24:	00002097          	auipc	ra,0x2
    3c28:	2de080e7          	jalr	734(ra) # 5f02 <printf>
    3c2c:	4505                	li	a0,1
    3c2e:	00002097          	auipc	ra,0x2
    3c32:	f34080e7          	jalr	-204(ra) # 5b62 <exit>
    3c36:	85ca                	mv	a1,s2
    3c38:	00004517          	auipc	a0,0x4
    3c3c:	b6850513          	addi	a0,a0,-1176 # 77a0 <malloc+0x17e0>
    3c40:	00002097          	auipc	ra,0x2
    3c44:	2c2080e7          	jalr	706(ra) # 5f02 <printf>
    3c48:	4505                	li	a0,1
    3c4a:	00002097          	auipc	ra,0x2
    3c4e:	f18080e7          	jalr	-232(ra) # 5b62 <exit>
    3c52:	85ca                	mv	a1,s2
    3c54:	00004517          	auipc	a0,0x4
    3c58:	b7c50513          	addi	a0,a0,-1156 # 77d0 <malloc+0x1810>
    3c5c:	00002097          	auipc	ra,0x2
    3c60:	2a6080e7          	jalr	678(ra) # 5f02 <printf>
    3c64:	4505                	li	a0,1
    3c66:	00002097          	auipc	ra,0x2
    3c6a:	efc080e7          	jalr	-260(ra) # 5b62 <exit>
    3c6e:	85ca                	mv	a1,s2
    3c70:	00004517          	auipc	a0,0x4
    3c74:	b8850513          	addi	a0,a0,-1144 # 77f8 <malloc+0x1838>
    3c78:	00002097          	auipc	ra,0x2
    3c7c:	28a080e7          	jalr	650(ra) # 5f02 <printf>
    3c80:	4505                	li	a0,1
    3c82:	00002097          	auipc	ra,0x2
    3c86:	ee0080e7          	jalr	-288(ra) # 5b62 <exit>
    3c8a:	85ca                	mv	a1,s2
    3c8c:	00004517          	auipc	a0,0x4
    3c90:	b9450513          	addi	a0,a0,-1132 # 7820 <malloc+0x1860>
    3c94:	00002097          	auipc	ra,0x2
    3c98:	26e080e7          	jalr	622(ra) # 5f02 <printf>
    3c9c:	4505                	li	a0,1
    3c9e:	00002097          	auipc	ra,0x2
    3ca2:	ec4080e7          	jalr	-316(ra) # 5b62 <exit>
    3ca6:	85ca                	mv	a1,s2
    3ca8:	00004517          	auipc	a0,0x4
    3cac:	ba050513          	addi	a0,a0,-1120 # 7848 <malloc+0x1888>
    3cb0:	00002097          	auipc	ra,0x2
    3cb4:	252080e7          	jalr	594(ra) # 5f02 <printf>
    3cb8:	4505                	li	a0,1
    3cba:	00002097          	auipc	ra,0x2
    3cbe:	ea8080e7          	jalr	-344(ra) # 5b62 <exit>
    3cc2:	85ca                	mv	a1,s2
    3cc4:	00004517          	auipc	a0,0x4
    3cc8:	ba450513          	addi	a0,a0,-1116 # 7868 <malloc+0x18a8>
    3ccc:	00002097          	auipc	ra,0x2
    3cd0:	236080e7          	jalr	566(ra) # 5f02 <printf>
    3cd4:	4505                	li	a0,1
    3cd6:	00002097          	auipc	ra,0x2
    3cda:	e8c080e7          	jalr	-372(ra) # 5b62 <exit>
    3cde:	85ca                	mv	a1,s2
    3ce0:	00004517          	auipc	a0,0x4
    3ce4:	ba850513          	addi	a0,a0,-1112 # 7888 <malloc+0x18c8>
    3ce8:	00002097          	auipc	ra,0x2
    3cec:	21a080e7          	jalr	538(ra) # 5f02 <printf>
    3cf0:	4505                	li	a0,1
    3cf2:	00002097          	auipc	ra,0x2
    3cf6:	e70080e7          	jalr	-400(ra) # 5b62 <exit>
    3cfa:	85ca                	mv	a1,s2
    3cfc:	00004517          	auipc	a0,0x4
    3d00:	bb450513          	addi	a0,a0,-1100 # 78b0 <malloc+0x18f0>
    3d04:	00002097          	auipc	ra,0x2
    3d08:	1fe080e7          	jalr	510(ra) # 5f02 <printf>
    3d0c:	4505                	li	a0,1
    3d0e:	00002097          	auipc	ra,0x2
    3d12:	e54080e7          	jalr	-428(ra) # 5b62 <exit>
    3d16:	85ca                	mv	a1,s2
    3d18:	00004517          	auipc	a0,0x4
    3d1c:	bb850513          	addi	a0,a0,-1096 # 78d0 <malloc+0x1910>
    3d20:	00002097          	auipc	ra,0x2
    3d24:	1e2080e7          	jalr	482(ra) # 5f02 <printf>
    3d28:	4505                	li	a0,1
    3d2a:	00002097          	auipc	ra,0x2
    3d2e:	e38080e7          	jalr	-456(ra) # 5b62 <exit>
    3d32:	85ca                	mv	a1,s2
    3d34:	00004517          	auipc	a0,0x4
    3d38:	bbc50513          	addi	a0,a0,-1092 # 78f0 <malloc+0x1930>
    3d3c:	00002097          	auipc	ra,0x2
    3d40:	1c6080e7          	jalr	454(ra) # 5f02 <printf>
    3d44:	4505                	li	a0,1
    3d46:	00002097          	auipc	ra,0x2
    3d4a:	e1c080e7          	jalr	-484(ra) # 5b62 <exit>
    3d4e:	85ca                	mv	a1,s2
    3d50:	00004517          	auipc	a0,0x4
    3d54:	bc850513          	addi	a0,a0,-1080 # 7918 <malloc+0x1958>
    3d58:	00002097          	auipc	ra,0x2
    3d5c:	1aa080e7          	jalr	426(ra) # 5f02 <printf>
    3d60:	4505                	li	a0,1
    3d62:	00002097          	auipc	ra,0x2
    3d66:	e00080e7          	jalr	-512(ra) # 5b62 <exit>
    3d6a:	85ca                	mv	a1,s2
    3d6c:	00004517          	auipc	a0,0x4
    3d70:	84450513          	addi	a0,a0,-1980 # 75b0 <malloc+0x15f0>
    3d74:	00002097          	auipc	ra,0x2
    3d78:	18e080e7          	jalr	398(ra) # 5f02 <printf>
    3d7c:	4505                	li	a0,1
    3d7e:	00002097          	auipc	ra,0x2
    3d82:	de4080e7          	jalr	-540(ra) # 5b62 <exit>
    3d86:	85ca                	mv	a1,s2
    3d88:	00004517          	auipc	a0,0x4
    3d8c:	bb050513          	addi	a0,a0,-1104 # 7938 <malloc+0x1978>
    3d90:	00002097          	auipc	ra,0x2
    3d94:	172080e7          	jalr	370(ra) # 5f02 <printf>
    3d98:	4505                	li	a0,1
    3d9a:	00002097          	auipc	ra,0x2
    3d9e:	dc8080e7          	jalr	-568(ra) # 5b62 <exit>
    3da2:	85ca                	mv	a1,s2
    3da4:	00004517          	auipc	a0,0x4
    3da8:	bb450513          	addi	a0,a0,-1100 # 7958 <malloc+0x1998>
    3dac:	00002097          	auipc	ra,0x2
    3db0:	156080e7          	jalr	342(ra) # 5f02 <printf>
    3db4:	4505                	li	a0,1
    3db6:	00002097          	auipc	ra,0x2
    3dba:	dac080e7          	jalr	-596(ra) # 5b62 <exit>
    3dbe:	85ca                	mv	a1,s2
    3dc0:	00004517          	auipc	a0,0x4
    3dc4:	bc850513          	addi	a0,a0,-1080 # 7988 <malloc+0x19c8>
    3dc8:	00002097          	auipc	ra,0x2
    3dcc:	13a080e7          	jalr	314(ra) # 5f02 <printf>
    3dd0:	4505                	li	a0,1
    3dd2:	00002097          	auipc	ra,0x2
    3dd6:	d90080e7          	jalr	-624(ra) # 5b62 <exit>
    3dda:	85ca                	mv	a1,s2
    3ddc:	00004517          	auipc	a0,0x4
    3de0:	bcc50513          	addi	a0,a0,-1076 # 79a8 <malloc+0x19e8>
    3de4:	00002097          	auipc	ra,0x2
    3de8:	11e080e7          	jalr	286(ra) # 5f02 <printf>
    3dec:	4505                	li	a0,1
    3dee:	00002097          	auipc	ra,0x2
    3df2:	d74080e7          	jalr	-652(ra) # 5b62 <exit>

0000000000003df6 <rmdot>:
    3df6:	1101                	addi	sp,sp,-32
    3df8:	ec06                	sd	ra,24(sp)
    3dfa:	e822                	sd	s0,16(sp)
    3dfc:	e426                	sd	s1,8(sp)
    3dfe:	1000                	addi	s0,sp,32
    3e00:	84aa                	mv	s1,a0
    3e02:	00004517          	auipc	a0,0x4
    3e06:	bbe50513          	addi	a0,a0,-1090 # 79c0 <malloc+0x1a00>
    3e0a:	00002097          	auipc	ra,0x2
    3e0e:	dc0080e7          	jalr	-576(ra) # 5bca <mkdir>
    3e12:	e549                	bnez	a0,3e9c <rmdot+0xa6>
    3e14:	00004517          	auipc	a0,0x4
    3e18:	bac50513          	addi	a0,a0,-1108 # 79c0 <malloc+0x1a00>
    3e1c:	00002097          	auipc	ra,0x2
    3e20:	db6080e7          	jalr	-586(ra) # 5bd2 <chdir>
    3e24:	e951                	bnez	a0,3eb8 <rmdot+0xc2>
    3e26:	00003517          	auipc	a0,0x3
    3e2a:	9ca50513          	addi	a0,a0,-1590 # 67f0 <malloc+0x830>
    3e2e:	00002097          	auipc	ra,0x2
    3e32:	d84080e7          	jalr	-636(ra) # 5bb2 <unlink>
    3e36:	cd59                	beqz	a0,3ed4 <rmdot+0xde>
    3e38:	00003517          	auipc	a0,0x3
    3e3c:	5e050513          	addi	a0,a0,1504 # 7418 <malloc+0x1458>
    3e40:	00002097          	auipc	ra,0x2
    3e44:	d72080e7          	jalr	-654(ra) # 5bb2 <unlink>
    3e48:	c545                	beqz	a0,3ef0 <rmdot+0xfa>
    3e4a:	00003517          	auipc	a0,0x3
    3e4e:	57650513          	addi	a0,a0,1398 # 73c0 <malloc+0x1400>
    3e52:	00002097          	auipc	ra,0x2
    3e56:	d80080e7          	jalr	-640(ra) # 5bd2 <chdir>
    3e5a:	e94d                	bnez	a0,3f0c <rmdot+0x116>
    3e5c:	00004517          	auipc	a0,0x4
    3e60:	bcc50513          	addi	a0,a0,-1076 # 7a28 <malloc+0x1a68>
    3e64:	00002097          	auipc	ra,0x2
    3e68:	d4e080e7          	jalr	-690(ra) # 5bb2 <unlink>
    3e6c:	cd55                	beqz	a0,3f28 <rmdot+0x132>
    3e6e:	00004517          	auipc	a0,0x4
    3e72:	be250513          	addi	a0,a0,-1054 # 7a50 <malloc+0x1a90>
    3e76:	00002097          	auipc	ra,0x2
    3e7a:	d3c080e7          	jalr	-708(ra) # 5bb2 <unlink>
    3e7e:	c179                	beqz	a0,3f44 <rmdot+0x14e>
    3e80:	00004517          	auipc	a0,0x4
    3e84:	b4050513          	addi	a0,a0,-1216 # 79c0 <malloc+0x1a00>
    3e88:	00002097          	auipc	ra,0x2
    3e8c:	d2a080e7          	jalr	-726(ra) # 5bb2 <unlink>
    3e90:	e961                	bnez	a0,3f60 <rmdot+0x16a>
    3e92:	60e2                	ld	ra,24(sp)
    3e94:	6442                	ld	s0,16(sp)
    3e96:	64a2                	ld	s1,8(sp)
    3e98:	6105                	addi	sp,sp,32
    3e9a:	8082                	ret
    3e9c:	85a6                	mv	a1,s1
    3e9e:	00004517          	auipc	a0,0x4
    3ea2:	b2a50513          	addi	a0,a0,-1238 # 79c8 <malloc+0x1a08>
    3ea6:	00002097          	auipc	ra,0x2
    3eaa:	05c080e7          	jalr	92(ra) # 5f02 <printf>
    3eae:	4505                	li	a0,1
    3eb0:	00002097          	auipc	ra,0x2
    3eb4:	cb2080e7          	jalr	-846(ra) # 5b62 <exit>
    3eb8:	85a6                	mv	a1,s1
    3eba:	00004517          	auipc	a0,0x4
    3ebe:	b2650513          	addi	a0,a0,-1242 # 79e0 <malloc+0x1a20>
    3ec2:	00002097          	auipc	ra,0x2
    3ec6:	040080e7          	jalr	64(ra) # 5f02 <printf>
    3eca:	4505                	li	a0,1
    3ecc:	00002097          	auipc	ra,0x2
    3ed0:	c96080e7          	jalr	-874(ra) # 5b62 <exit>
    3ed4:	85a6                	mv	a1,s1
    3ed6:	00004517          	auipc	a0,0x4
    3eda:	b2250513          	addi	a0,a0,-1246 # 79f8 <malloc+0x1a38>
    3ede:	00002097          	auipc	ra,0x2
    3ee2:	024080e7          	jalr	36(ra) # 5f02 <printf>
    3ee6:	4505                	li	a0,1
    3ee8:	00002097          	auipc	ra,0x2
    3eec:	c7a080e7          	jalr	-902(ra) # 5b62 <exit>
    3ef0:	85a6                	mv	a1,s1
    3ef2:	00004517          	auipc	a0,0x4
    3ef6:	b1e50513          	addi	a0,a0,-1250 # 7a10 <malloc+0x1a50>
    3efa:	00002097          	auipc	ra,0x2
    3efe:	008080e7          	jalr	8(ra) # 5f02 <printf>
    3f02:	4505                	li	a0,1
    3f04:	00002097          	auipc	ra,0x2
    3f08:	c5e080e7          	jalr	-930(ra) # 5b62 <exit>
    3f0c:	85a6                	mv	a1,s1
    3f0e:	00003517          	auipc	a0,0x3
    3f12:	4ba50513          	addi	a0,a0,1210 # 73c8 <malloc+0x1408>
    3f16:	00002097          	auipc	ra,0x2
    3f1a:	fec080e7          	jalr	-20(ra) # 5f02 <printf>
    3f1e:	4505                	li	a0,1
    3f20:	00002097          	auipc	ra,0x2
    3f24:	c42080e7          	jalr	-958(ra) # 5b62 <exit>
    3f28:	85a6                	mv	a1,s1
    3f2a:	00004517          	auipc	a0,0x4
    3f2e:	b0650513          	addi	a0,a0,-1274 # 7a30 <malloc+0x1a70>
    3f32:	00002097          	auipc	ra,0x2
    3f36:	fd0080e7          	jalr	-48(ra) # 5f02 <printf>
    3f3a:	4505                	li	a0,1
    3f3c:	00002097          	auipc	ra,0x2
    3f40:	c26080e7          	jalr	-986(ra) # 5b62 <exit>
    3f44:	85a6                	mv	a1,s1
    3f46:	00004517          	auipc	a0,0x4
    3f4a:	b1250513          	addi	a0,a0,-1262 # 7a58 <malloc+0x1a98>
    3f4e:	00002097          	auipc	ra,0x2
    3f52:	fb4080e7          	jalr	-76(ra) # 5f02 <printf>
    3f56:	4505                	li	a0,1
    3f58:	00002097          	auipc	ra,0x2
    3f5c:	c0a080e7          	jalr	-1014(ra) # 5b62 <exit>
    3f60:	85a6                	mv	a1,s1
    3f62:	00004517          	auipc	a0,0x4
    3f66:	b1650513          	addi	a0,a0,-1258 # 7a78 <malloc+0x1ab8>
    3f6a:	00002097          	auipc	ra,0x2
    3f6e:	f98080e7          	jalr	-104(ra) # 5f02 <printf>
    3f72:	4505                	li	a0,1
    3f74:	00002097          	auipc	ra,0x2
    3f78:	bee080e7          	jalr	-1042(ra) # 5b62 <exit>

0000000000003f7c <dirfile>:
    3f7c:	1101                	addi	sp,sp,-32
    3f7e:	ec06                	sd	ra,24(sp)
    3f80:	e822                	sd	s0,16(sp)
    3f82:	e426                	sd	s1,8(sp)
    3f84:	e04a                	sd	s2,0(sp)
    3f86:	1000                	addi	s0,sp,32
    3f88:	892a                	mv	s2,a0
    3f8a:	20000593          	li	a1,512
    3f8e:	00004517          	auipc	a0,0x4
    3f92:	b0a50513          	addi	a0,a0,-1270 # 7a98 <malloc+0x1ad8>
    3f96:	00002097          	auipc	ra,0x2
    3f9a:	c0c080e7          	jalr	-1012(ra) # 5ba2 <open>
    3f9e:	0e054d63          	bltz	a0,4098 <dirfile+0x11c>
    3fa2:	00002097          	auipc	ra,0x2
    3fa6:	be8080e7          	jalr	-1048(ra) # 5b8a <close>
    3faa:	00004517          	auipc	a0,0x4
    3fae:	aee50513          	addi	a0,a0,-1298 # 7a98 <malloc+0x1ad8>
    3fb2:	00002097          	auipc	ra,0x2
    3fb6:	c20080e7          	jalr	-992(ra) # 5bd2 <chdir>
    3fba:	cd6d                	beqz	a0,40b4 <dirfile+0x138>
    3fbc:	4581                	li	a1,0
    3fbe:	00004517          	auipc	a0,0x4
    3fc2:	b2250513          	addi	a0,a0,-1246 # 7ae0 <malloc+0x1b20>
    3fc6:	00002097          	auipc	ra,0x2
    3fca:	bdc080e7          	jalr	-1060(ra) # 5ba2 <open>
    3fce:	10055163          	bgez	a0,40d0 <dirfile+0x154>
    3fd2:	20000593          	li	a1,512
    3fd6:	00004517          	auipc	a0,0x4
    3fda:	b0a50513          	addi	a0,a0,-1270 # 7ae0 <malloc+0x1b20>
    3fde:	00002097          	auipc	ra,0x2
    3fe2:	bc4080e7          	jalr	-1084(ra) # 5ba2 <open>
    3fe6:	10055363          	bgez	a0,40ec <dirfile+0x170>
    3fea:	00004517          	auipc	a0,0x4
    3fee:	af650513          	addi	a0,a0,-1290 # 7ae0 <malloc+0x1b20>
    3ff2:	00002097          	auipc	ra,0x2
    3ff6:	bd8080e7          	jalr	-1064(ra) # 5bca <mkdir>
    3ffa:	10050763          	beqz	a0,4108 <dirfile+0x18c>
    3ffe:	00004517          	auipc	a0,0x4
    4002:	ae250513          	addi	a0,a0,-1310 # 7ae0 <malloc+0x1b20>
    4006:	00002097          	auipc	ra,0x2
    400a:	bac080e7          	jalr	-1108(ra) # 5bb2 <unlink>
    400e:	10050b63          	beqz	a0,4124 <dirfile+0x1a8>
    4012:	00004597          	auipc	a1,0x4
    4016:	ace58593          	addi	a1,a1,-1330 # 7ae0 <malloc+0x1b20>
    401a:	00002517          	auipc	a0,0x2
    401e:	2c650513          	addi	a0,a0,710 # 62e0 <malloc+0x320>
    4022:	00002097          	auipc	ra,0x2
    4026:	ba0080e7          	jalr	-1120(ra) # 5bc2 <link>
    402a:	10050b63          	beqz	a0,4140 <dirfile+0x1c4>
    402e:	00004517          	auipc	a0,0x4
    4032:	a6a50513          	addi	a0,a0,-1430 # 7a98 <malloc+0x1ad8>
    4036:	00002097          	auipc	ra,0x2
    403a:	b7c080e7          	jalr	-1156(ra) # 5bb2 <unlink>
    403e:	10051f63          	bnez	a0,415c <dirfile+0x1e0>
    4042:	4589                	li	a1,2
    4044:	00002517          	auipc	a0,0x2
    4048:	7ac50513          	addi	a0,a0,1964 # 67f0 <malloc+0x830>
    404c:	00002097          	auipc	ra,0x2
    4050:	b56080e7          	jalr	-1194(ra) # 5ba2 <open>
    4054:	12055263          	bgez	a0,4178 <dirfile+0x1fc>
    4058:	4581                	li	a1,0
    405a:	00002517          	auipc	a0,0x2
    405e:	79650513          	addi	a0,a0,1942 # 67f0 <malloc+0x830>
    4062:	00002097          	auipc	ra,0x2
    4066:	b40080e7          	jalr	-1216(ra) # 5ba2 <open>
    406a:	84aa                	mv	s1,a0
    406c:	4605                	li	a2,1
    406e:	00002597          	auipc	a1,0x2
    4072:	10a58593          	addi	a1,a1,266 # 6178 <malloc+0x1b8>
    4076:	00002097          	auipc	ra,0x2
    407a:	b0c080e7          	jalr	-1268(ra) # 5b82 <write>
    407e:	10a04b63          	bgtz	a0,4194 <dirfile+0x218>
    4082:	8526                	mv	a0,s1
    4084:	00002097          	auipc	ra,0x2
    4088:	b06080e7          	jalr	-1274(ra) # 5b8a <close>
    408c:	60e2                	ld	ra,24(sp)
    408e:	6442                	ld	s0,16(sp)
    4090:	64a2                	ld	s1,8(sp)
    4092:	6902                	ld	s2,0(sp)
    4094:	6105                	addi	sp,sp,32
    4096:	8082                	ret
    4098:	85ca                	mv	a1,s2
    409a:	00004517          	auipc	a0,0x4
    409e:	a0650513          	addi	a0,a0,-1530 # 7aa0 <malloc+0x1ae0>
    40a2:	00002097          	auipc	ra,0x2
    40a6:	e60080e7          	jalr	-416(ra) # 5f02 <printf>
    40aa:	4505                	li	a0,1
    40ac:	00002097          	auipc	ra,0x2
    40b0:	ab6080e7          	jalr	-1354(ra) # 5b62 <exit>
    40b4:	85ca                	mv	a1,s2
    40b6:	00004517          	auipc	a0,0x4
    40ba:	a0a50513          	addi	a0,a0,-1526 # 7ac0 <malloc+0x1b00>
    40be:	00002097          	auipc	ra,0x2
    40c2:	e44080e7          	jalr	-444(ra) # 5f02 <printf>
    40c6:	4505                	li	a0,1
    40c8:	00002097          	auipc	ra,0x2
    40cc:	a9a080e7          	jalr	-1382(ra) # 5b62 <exit>
    40d0:	85ca                	mv	a1,s2
    40d2:	00004517          	auipc	a0,0x4
    40d6:	a1e50513          	addi	a0,a0,-1506 # 7af0 <malloc+0x1b30>
    40da:	00002097          	auipc	ra,0x2
    40de:	e28080e7          	jalr	-472(ra) # 5f02 <printf>
    40e2:	4505                	li	a0,1
    40e4:	00002097          	auipc	ra,0x2
    40e8:	a7e080e7          	jalr	-1410(ra) # 5b62 <exit>
    40ec:	85ca                	mv	a1,s2
    40ee:	00004517          	auipc	a0,0x4
    40f2:	a0250513          	addi	a0,a0,-1534 # 7af0 <malloc+0x1b30>
    40f6:	00002097          	auipc	ra,0x2
    40fa:	e0c080e7          	jalr	-500(ra) # 5f02 <printf>
    40fe:	4505                	li	a0,1
    4100:	00002097          	auipc	ra,0x2
    4104:	a62080e7          	jalr	-1438(ra) # 5b62 <exit>
    4108:	85ca                	mv	a1,s2
    410a:	00004517          	auipc	a0,0x4
    410e:	a0e50513          	addi	a0,a0,-1522 # 7b18 <malloc+0x1b58>
    4112:	00002097          	auipc	ra,0x2
    4116:	df0080e7          	jalr	-528(ra) # 5f02 <printf>
    411a:	4505                	li	a0,1
    411c:	00002097          	auipc	ra,0x2
    4120:	a46080e7          	jalr	-1466(ra) # 5b62 <exit>
    4124:	85ca                	mv	a1,s2
    4126:	00004517          	auipc	a0,0x4
    412a:	a1a50513          	addi	a0,a0,-1510 # 7b40 <malloc+0x1b80>
    412e:	00002097          	auipc	ra,0x2
    4132:	dd4080e7          	jalr	-556(ra) # 5f02 <printf>
    4136:	4505                	li	a0,1
    4138:	00002097          	auipc	ra,0x2
    413c:	a2a080e7          	jalr	-1494(ra) # 5b62 <exit>
    4140:	85ca                	mv	a1,s2
    4142:	00004517          	auipc	a0,0x4
    4146:	a2650513          	addi	a0,a0,-1498 # 7b68 <malloc+0x1ba8>
    414a:	00002097          	auipc	ra,0x2
    414e:	db8080e7          	jalr	-584(ra) # 5f02 <printf>
    4152:	4505                	li	a0,1
    4154:	00002097          	auipc	ra,0x2
    4158:	a0e080e7          	jalr	-1522(ra) # 5b62 <exit>
    415c:	85ca                	mv	a1,s2
    415e:	00004517          	auipc	a0,0x4
    4162:	a3250513          	addi	a0,a0,-1486 # 7b90 <malloc+0x1bd0>
    4166:	00002097          	auipc	ra,0x2
    416a:	d9c080e7          	jalr	-612(ra) # 5f02 <printf>
    416e:	4505                	li	a0,1
    4170:	00002097          	auipc	ra,0x2
    4174:	9f2080e7          	jalr	-1550(ra) # 5b62 <exit>
    4178:	85ca                	mv	a1,s2
    417a:	00004517          	auipc	a0,0x4
    417e:	a3650513          	addi	a0,a0,-1482 # 7bb0 <malloc+0x1bf0>
    4182:	00002097          	auipc	ra,0x2
    4186:	d80080e7          	jalr	-640(ra) # 5f02 <printf>
    418a:	4505                	li	a0,1
    418c:	00002097          	auipc	ra,0x2
    4190:	9d6080e7          	jalr	-1578(ra) # 5b62 <exit>
    4194:	85ca                	mv	a1,s2
    4196:	00004517          	auipc	a0,0x4
    419a:	a4250513          	addi	a0,a0,-1470 # 7bd8 <malloc+0x1c18>
    419e:	00002097          	auipc	ra,0x2
    41a2:	d64080e7          	jalr	-668(ra) # 5f02 <printf>
    41a6:	4505                	li	a0,1
    41a8:	00002097          	auipc	ra,0x2
    41ac:	9ba080e7          	jalr	-1606(ra) # 5b62 <exit>

00000000000041b0 <iref>:
    41b0:	7139                	addi	sp,sp,-64
    41b2:	fc06                	sd	ra,56(sp)
    41b4:	f822                	sd	s0,48(sp)
    41b6:	f426                	sd	s1,40(sp)
    41b8:	f04a                	sd	s2,32(sp)
    41ba:	ec4e                	sd	s3,24(sp)
    41bc:	e852                	sd	s4,16(sp)
    41be:	e456                	sd	s5,8(sp)
    41c0:	e05a                	sd	s6,0(sp)
    41c2:	0080                	addi	s0,sp,64
    41c4:	8b2a                	mv	s6,a0
    41c6:	03300913          	li	s2,51
    41ca:	00004a17          	auipc	s4,0x4
    41ce:	a26a0a13          	addi	s4,s4,-1498 # 7bf0 <malloc+0x1c30>
    41d2:	00003497          	auipc	s1,0x3
    41d6:	52648493          	addi	s1,s1,1318 # 76f8 <malloc+0x1738>
    41da:	00002a97          	auipc	s5,0x2
    41de:	106a8a93          	addi	s5,s5,262 # 62e0 <malloc+0x320>
    41e2:	00004997          	auipc	s3,0x4
    41e6:	90698993          	addi	s3,s3,-1786 # 7ae8 <malloc+0x1b28>
    41ea:	a891                	j	423e <iref+0x8e>
    41ec:	85da                	mv	a1,s6
    41ee:	00004517          	auipc	a0,0x4
    41f2:	a0a50513          	addi	a0,a0,-1526 # 7bf8 <malloc+0x1c38>
    41f6:	00002097          	auipc	ra,0x2
    41fa:	d0c080e7          	jalr	-756(ra) # 5f02 <printf>
    41fe:	4505                	li	a0,1
    4200:	00002097          	auipc	ra,0x2
    4204:	962080e7          	jalr	-1694(ra) # 5b62 <exit>
    4208:	85da                	mv	a1,s6
    420a:	00004517          	auipc	a0,0x4
    420e:	a0650513          	addi	a0,a0,-1530 # 7c10 <malloc+0x1c50>
    4212:	00002097          	auipc	ra,0x2
    4216:	cf0080e7          	jalr	-784(ra) # 5f02 <printf>
    421a:	4505                	li	a0,1
    421c:	00002097          	auipc	ra,0x2
    4220:	946080e7          	jalr	-1722(ra) # 5b62 <exit>
    4224:	00002097          	auipc	ra,0x2
    4228:	966080e7          	jalr	-1690(ra) # 5b8a <close>
    422c:	a889                	j	427e <iref+0xce>
    422e:	854e                	mv	a0,s3
    4230:	00002097          	auipc	ra,0x2
    4234:	982080e7          	jalr	-1662(ra) # 5bb2 <unlink>
    4238:	397d                	addiw	s2,s2,-1
    423a:	06090063          	beqz	s2,429a <iref+0xea>
    423e:	8552                	mv	a0,s4
    4240:	00002097          	auipc	ra,0x2
    4244:	98a080e7          	jalr	-1654(ra) # 5bca <mkdir>
    4248:	f155                	bnez	a0,41ec <iref+0x3c>
    424a:	8552                	mv	a0,s4
    424c:	00002097          	auipc	ra,0x2
    4250:	986080e7          	jalr	-1658(ra) # 5bd2 <chdir>
    4254:	f955                	bnez	a0,4208 <iref+0x58>
    4256:	8526                	mv	a0,s1
    4258:	00002097          	auipc	ra,0x2
    425c:	972080e7          	jalr	-1678(ra) # 5bca <mkdir>
    4260:	85a6                	mv	a1,s1
    4262:	8556                	mv	a0,s5
    4264:	00002097          	auipc	ra,0x2
    4268:	95e080e7          	jalr	-1698(ra) # 5bc2 <link>
    426c:	20000593          	li	a1,512
    4270:	8526                	mv	a0,s1
    4272:	00002097          	auipc	ra,0x2
    4276:	930080e7          	jalr	-1744(ra) # 5ba2 <open>
    427a:	fa0555e3          	bgez	a0,4224 <iref+0x74>
    427e:	20000593          	li	a1,512
    4282:	854e                	mv	a0,s3
    4284:	00002097          	auipc	ra,0x2
    4288:	91e080e7          	jalr	-1762(ra) # 5ba2 <open>
    428c:	fa0541e3          	bltz	a0,422e <iref+0x7e>
    4290:	00002097          	auipc	ra,0x2
    4294:	8fa080e7          	jalr	-1798(ra) # 5b8a <close>
    4298:	bf59                	j	422e <iref+0x7e>
    429a:	03300493          	li	s1,51
    429e:	00003997          	auipc	s3,0x3
    42a2:	17a98993          	addi	s3,s3,378 # 7418 <malloc+0x1458>
    42a6:	00004917          	auipc	s2,0x4
    42aa:	94a90913          	addi	s2,s2,-1718 # 7bf0 <malloc+0x1c30>
    42ae:	854e                	mv	a0,s3
    42b0:	00002097          	auipc	ra,0x2
    42b4:	922080e7          	jalr	-1758(ra) # 5bd2 <chdir>
    42b8:	854a                	mv	a0,s2
    42ba:	00002097          	auipc	ra,0x2
    42be:	8f8080e7          	jalr	-1800(ra) # 5bb2 <unlink>
    42c2:	34fd                	addiw	s1,s1,-1
    42c4:	f4ed                	bnez	s1,42ae <iref+0xfe>
    42c6:	00003517          	auipc	a0,0x3
    42ca:	0fa50513          	addi	a0,a0,250 # 73c0 <malloc+0x1400>
    42ce:	00002097          	auipc	ra,0x2
    42d2:	904080e7          	jalr	-1788(ra) # 5bd2 <chdir>
    42d6:	70e2                	ld	ra,56(sp)
    42d8:	7442                	ld	s0,48(sp)
    42da:	74a2                	ld	s1,40(sp)
    42dc:	7902                	ld	s2,32(sp)
    42de:	69e2                	ld	s3,24(sp)
    42e0:	6a42                	ld	s4,16(sp)
    42e2:	6aa2                	ld	s5,8(sp)
    42e4:	6b02                	ld	s6,0(sp)
    42e6:	6121                	addi	sp,sp,64
    42e8:	8082                	ret

00000000000042ea <openiputtest>:
    42ea:	7179                	addi	sp,sp,-48
    42ec:	f406                	sd	ra,40(sp)
    42ee:	f022                	sd	s0,32(sp)
    42f0:	ec26                	sd	s1,24(sp)
    42f2:	1800                	addi	s0,sp,48
    42f4:	84aa                	mv	s1,a0
    42f6:	00004517          	auipc	a0,0x4
    42fa:	93250513          	addi	a0,a0,-1742 # 7c28 <malloc+0x1c68>
    42fe:	00002097          	auipc	ra,0x2
    4302:	8cc080e7          	jalr	-1844(ra) # 5bca <mkdir>
    4306:	04054263          	bltz	a0,434a <openiputtest+0x60>
    430a:	00002097          	auipc	ra,0x2
    430e:	850080e7          	jalr	-1968(ra) # 5b5a <fork>
    4312:	04054a63          	bltz	a0,4366 <openiputtest+0x7c>
    4316:	e93d                	bnez	a0,438c <openiputtest+0xa2>
    4318:	4589                	li	a1,2
    431a:	00004517          	auipc	a0,0x4
    431e:	90e50513          	addi	a0,a0,-1778 # 7c28 <malloc+0x1c68>
    4322:	00002097          	auipc	ra,0x2
    4326:	880080e7          	jalr	-1920(ra) # 5ba2 <open>
    432a:	04054c63          	bltz	a0,4382 <openiputtest+0x98>
    432e:	85a6                	mv	a1,s1
    4330:	00004517          	auipc	a0,0x4
    4334:	91850513          	addi	a0,a0,-1768 # 7c48 <malloc+0x1c88>
    4338:	00002097          	auipc	ra,0x2
    433c:	bca080e7          	jalr	-1078(ra) # 5f02 <printf>
    4340:	4505                	li	a0,1
    4342:	00002097          	auipc	ra,0x2
    4346:	820080e7          	jalr	-2016(ra) # 5b62 <exit>
    434a:	85a6                	mv	a1,s1
    434c:	00004517          	auipc	a0,0x4
    4350:	8e450513          	addi	a0,a0,-1820 # 7c30 <malloc+0x1c70>
    4354:	00002097          	auipc	ra,0x2
    4358:	bae080e7          	jalr	-1106(ra) # 5f02 <printf>
    435c:	4505                	li	a0,1
    435e:	00002097          	auipc	ra,0x2
    4362:	804080e7          	jalr	-2044(ra) # 5b62 <exit>
    4366:	85a6                	mv	a1,s1
    4368:	00002517          	auipc	a0,0x2
    436c:	62850513          	addi	a0,a0,1576 # 6990 <malloc+0x9d0>
    4370:	00002097          	auipc	ra,0x2
    4374:	b92080e7          	jalr	-1134(ra) # 5f02 <printf>
    4378:	4505                	li	a0,1
    437a:	00001097          	auipc	ra,0x1
    437e:	7e8080e7          	jalr	2024(ra) # 5b62 <exit>
    4382:	4501                	li	a0,0
    4384:	00001097          	auipc	ra,0x1
    4388:	7de080e7          	jalr	2014(ra) # 5b62 <exit>
    438c:	4505                	li	a0,1
    438e:	00002097          	auipc	ra,0x2
    4392:	864080e7          	jalr	-1948(ra) # 5bf2 <sleep>
    4396:	00004517          	auipc	a0,0x4
    439a:	89250513          	addi	a0,a0,-1902 # 7c28 <malloc+0x1c68>
    439e:	00002097          	auipc	ra,0x2
    43a2:	814080e7          	jalr	-2028(ra) # 5bb2 <unlink>
    43a6:	cd19                	beqz	a0,43c4 <openiputtest+0xda>
    43a8:	85a6                	mv	a1,s1
    43aa:	00002517          	auipc	a0,0x2
    43ae:	7d650513          	addi	a0,a0,2006 # 6b80 <malloc+0xbc0>
    43b2:	00002097          	auipc	ra,0x2
    43b6:	b50080e7          	jalr	-1200(ra) # 5f02 <printf>
    43ba:	4505                	li	a0,1
    43bc:	00001097          	auipc	ra,0x1
    43c0:	7a6080e7          	jalr	1958(ra) # 5b62 <exit>
    43c4:	fdc40513          	addi	a0,s0,-36
    43c8:	00001097          	auipc	ra,0x1
    43cc:	7a2080e7          	jalr	1954(ra) # 5b6a <wait>
    43d0:	fdc42503          	lw	a0,-36(s0)
    43d4:	00001097          	auipc	ra,0x1
    43d8:	78e080e7          	jalr	1934(ra) # 5b62 <exit>

00000000000043dc <forkforkfork>:
    43dc:	1101                	addi	sp,sp,-32
    43de:	ec06                	sd	ra,24(sp)
    43e0:	e822                	sd	s0,16(sp)
    43e2:	e426                	sd	s1,8(sp)
    43e4:	1000                	addi	s0,sp,32
    43e6:	84aa                	mv	s1,a0
    43e8:	00004517          	auipc	a0,0x4
    43ec:	88850513          	addi	a0,a0,-1912 # 7c70 <malloc+0x1cb0>
    43f0:	00001097          	auipc	ra,0x1
    43f4:	7c2080e7          	jalr	1986(ra) # 5bb2 <unlink>
    43f8:	00001097          	auipc	ra,0x1
    43fc:	762080e7          	jalr	1890(ra) # 5b5a <fork>
    4400:	04054563          	bltz	a0,444a <forkforkfork+0x6e>
    4404:	c12d                	beqz	a0,4466 <forkforkfork+0x8a>
    4406:	4551                	li	a0,20
    4408:	00001097          	auipc	ra,0x1
    440c:	7ea080e7          	jalr	2026(ra) # 5bf2 <sleep>
    4410:	20200593          	li	a1,514
    4414:	00004517          	auipc	a0,0x4
    4418:	85c50513          	addi	a0,a0,-1956 # 7c70 <malloc+0x1cb0>
    441c:	00001097          	auipc	ra,0x1
    4420:	786080e7          	jalr	1926(ra) # 5ba2 <open>
    4424:	00001097          	auipc	ra,0x1
    4428:	766080e7          	jalr	1894(ra) # 5b8a <close>
    442c:	4501                	li	a0,0
    442e:	00001097          	auipc	ra,0x1
    4432:	73c080e7          	jalr	1852(ra) # 5b6a <wait>
    4436:	4529                	li	a0,10
    4438:	00001097          	auipc	ra,0x1
    443c:	7ba080e7          	jalr	1978(ra) # 5bf2 <sleep>
    4440:	60e2                	ld	ra,24(sp)
    4442:	6442                	ld	s0,16(sp)
    4444:	64a2                	ld	s1,8(sp)
    4446:	6105                	addi	sp,sp,32
    4448:	8082                	ret
    444a:	85a6                	mv	a1,s1
    444c:	00002517          	auipc	a0,0x2
    4450:	70450513          	addi	a0,a0,1796 # 6b50 <malloc+0xb90>
    4454:	00002097          	auipc	ra,0x2
    4458:	aae080e7          	jalr	-1362(ra) # 5f02 <printf>
    445c:	4505                	li	a0,1
    445e:	00001097          	auipc	ra,0x1
    4462:	704080e7          	jalr	1796(ra) # 5b62 <exit>
    4466:	00004497          	auipc	s1,0x4
    446a:	80a48493          	addi	s1,s1,-2038 # 7c70 <malloc+0x1cb0>
    446e:	4581                	li	a1,0
    4470:	8526                	mv	a0,s1
    4472:	00001097          	auipc	ra,0x1
    4476:	730080e7          	jalr	1840(ra) # 5ba2 <open>
    447a:	02055463          	bgez	a0,44a2 <forkforkfork+0xc6>
    447e:	00001097          	auipc	ra,0x1
    4482:	6dc080e7          	jalr	1756(ra) # 5b5a <fork>
    4486:	fe0554e3          	bgez	a0,446e <forkforkfork+0x92>
    448a:	20200593          	li	a1,514
    448e:	8526                	mv	a0,s1
    4490:	00001097          	auipc	ra,0x1
    4494:	712080e7          	jalr	1810(ra) # 5ba2 <open>
    4498:	00001097          	auipc	ra,0x1
    449c:	6f2080e7          	jalr	1778(ra) # 5b8a <close>
    44a0:	b7f9                	j	446e <forkforkfork+0x92>
    44a2:	4501                	li	a0,0
    44a4:	00001097          	auipc	ra,0x1
    44a8:	6be080e7          	jalr	1726(ra) # 5b62 <exit>

00000000000044ac <killstatus>:
    44ac:	7139                	addi	sp,sp,-64
    44ae:	fc06                	sd	ra,56(sp)
    44b0:	f822                	sd	s0,48(sp)
    44b2:	f426                	sd	s1,40(sp)
    44b4:	f04a                	sd	s2,32(sp)
    44b6:	ec4e                	sd	s3,24(sp)
    44b8:	e852                	sd	s4,16(sp)
    44ba:	0080                	addi	s0,sp,64
    44bc:	8a2a                	mv	s4,a0
    44be:	06400913          	li	s2,100
    44c2:	59fd                	li	s3,-1
    44c4:	00001097          	auipc	ra,0x1
    44c8:	696080e7          	jalr	1686(ra) # 5b5a <fork>
    44cc:	84aa                	mv	s1,a0
    44ce:	02054f63          	bltz	a0,450c <killstatus+0x60>
    44d2:	c939                	beqz	a0,4528 <killstatus+0x7c>
    44d4:	4505                	li	a0,1
    44d6:	00001097          	auipc	ra,0x1
    44da:	71c080e7          	jalr	1820(ra) # 5bf2 <sleep>
    44de:	8526                	mv	a0,s1
    44e0:	00001097          	auipc	ra,0x1
    44e4:	6b2080e7          	jalr	1714(ra) # 5b92 <kill>
    44e8:	fcc40513          	addi	a0,s0,-52
    44ec:	00001097          	auipc	ra,0x1
    44f0:	67e080e7          	jalr	1662(ra) # 5b6a <wait>
    44f4:	fcc42783          	lw	a5,-52(s0)
    44f8:	03379d63          	bne	a5,s3,4532 <killstatus+0x86>
    44fc:	397d                	addiw	s2,s2,-1
    44fe:	fc0913e3          	bnez	s2,44c4 <killstatus+0x18>
    4502:	4501                	li	a0,0
    4504:	00001097          	auipc	ra,0x1
    4508:	65e080e7          	jalr	1630(ra) # 5b62 <exit>
    450c:	85d2                	mv	a1,s4
    450e:	00002517          	auipc	a0,0x2
    4512:	48250513          	addi	a0,a0,1154 # 6990 <malloc+0x9d0>
    4516:	00002097          	auipc	ra,0x2
    451a:	9ec080e7          	jalr	-1556(ra) # 5f02 <printf>
    451e:	4505                	li	a0,1
    4520:	00001097          	auipc	ra,0x1
    4524:	642080e7          	jalr	1602(ra) # 5b62 <exit>
    4528:	00001097          	auipc	ra,0x1
    452c:	6ba080e7          	jalr	1722(ra) # 5be2 <getpid>
    4530:	bfe5                	j	4528 <killstatus+0x7c>
    4532:	85d2                	mv	a1,s4
    4534:	00003517          	auipc	a0,0x3
    4538:	74c50513          	addi	a0,a0,1868 # 7c80 <malloc+0x1cc0>
    453c:	00002097          	auipc	ra,0x2
    4540:	9c6080e7          	jalr	-1594(ra) # 5f02 <printf>
    4544:	4505                	li	a0,1
    4546:	00001097          	auipc	ra,0x1
    454a:	61c080e7          	jalr	1564(ra) # 5b62 <exit>

000000000000454e <preempt>:
    454e:	7139                	addi	sp,sp,-64
    4550:	fc06                	sd	ra,56(sp)
    4552:	f822                	sd	s0,48(sp)
    4554:	f426                	sd	s1,40(sp)
    4556:	f04a                	sd	s2,32(sp)
    4558:	ec4e                	sd	s3,24(sp)
    455a:	e852                	sd	s4,16(sp)
    455c:	0080                	addi	s0,sp,64
    455e:	84aa                	mv	s1,a0
    4560:	00001097          	auipc	ra,0x1
    4564:	5fa080e7          	jalr	1530(ra) # 5b5a <fork>
    4568:	00054563          	bltz	a0,4572 <preempt+0x24>
    456c:	8a2a                	mv	s4,a0
    456e:	e105                	bnez	a0,458e <preempt+0x40>
    4570:	a001                	j	4570 <preempt+0x22>
    4572:	85a6                	mv	a1,s1
    4574:	00002517          	auipc	a0,0x2
    4578:	5dc50513          	addi	a0,a0,1500 # 6b50 <malloc+0xb90>
    457c:	00002097          	auipc	ra,0x2
    4580:	986080e7          	jalr	-1658(ra) # 5f02 <printf>
    4584:	4505                	li	a0,1
    4586:	00001097          	auipc	ra,0x1
    458a:	5dc080e7          	jalr	1500(ra) # 5b62 <exit>
    458e:	00001097          	auipc	ra,0x1
    4592:	5cc080e7          	jalr	1484(ra) # 5b5a <fork>
    4596:	89aa                	mv	s3,a0
    4598:	00054463          	bltz	a0,45a0 <preempt+0x52>
    459c:	e105                	bnez	a0,45bc <preempt+0x6e>
    459e:	a001                	j	459e <preempt+0x50>
    45a0:	85a6                	mv	a1,s1
    45a2:	00002517          	auipc	a0,0x2
    45a6:	3ee50513          	addi	a0,a0,1006 # 6990 <malloc+0x9d0>
    45aa:	00002097          	auipc	ra,0x2
    45ae:	958080e7          	jalr	-1704(ra) # 5f02 <printf>
    45b2:	4505                	li	a0,1
    45b4:	00001097          	auipc	ra,0x1
    45b8:	5ae080e7          	jalr	1454(ra) # 5b62 <exit>
    45bc:	fc840513          	addi	a0,s0,-56
    45c0:	00001097          	auipc	ra,0x1
    45c4:	5b2080e7          	jalr	1458(ra) # 5b72 <pipe>
    45c8:	00001097          	auipc	ra,0x1
    45cc:	592080e7          	jalr	1426(ra) # 5b5a <fork>
    45d0:	892a                	mv	s2,a0
    45d2:	02054e63          	bltz	a0,460e <preempt+0xc0>
    45d6:	e525                	bnez	a0,463e <preempt+0xf0>
    45d8:	fc842503          	lw	a0,-56(s0)
    45dc:	00001097          	auipc	ra,0x1
    45e0:	5ae080e7          	jalr	1454(ra) # 5b8a <close>
    45e4:	4605                	li	a2,1
    45e6:	00002597          	auipc	a1,0x2
    45ea:	b9258593          	addi	a1,a1,-1134 # 6178 <malloc+0x1b8>
    45ee:	fcc42503          	lw	a0,-52(s0)
    45f2:	00001097          	auipc	ra,0x1
    45f6:	590080e7          	jalr	1424(ra) # 5b82 <write>
    45fa:	4785                	li	a5,1
    45fc:	02f51763          	bne	a0,a5,462a <preempt+0xdc>
    4600:	fcc42503          	lw	a0,-52(s0)
    4604:	00001097          	auipc	ra,0x1
    4608:	586080e7          	jalr	1414(ra) # 5b8a <close>
    460c:	a001                	j	460c <preempt+0xbe>
    460e:	85a6                	mv	a1,s1
    4610:	00002517          	auipc	a0,0x2
    4614:	38050513          	addi	a0,a0,896 # 6990 <malloc+0x9d0>
    4618:	00002097          	auipc	ra,0x2
    461c:	8ea080e7          	jalr	-1814(ra) # 5f02 <printf>
    4620:	4505                	li	a0,1
    4622:	00001097          	auipc	ra,0x1
    4626:	540080e7          	jalr	1344(ra) # 5b62 <exit>
    462a:	85a6                	mv	a1,s1
    462c:	00003517          	auipc	a0,0x3
    4630:	67450513          	addi	a0,a0,1652 # 7ca0 <malloc+0x1ce0>
    4634:	00002097          	auipc	ra,0x2
    4638:	8ce080e7          	jalr	-1842(ra) # 5f02 <printf>
    463c:	b7d1                	j	4600 <preempt+0xb2>
    463e:	fcc42503          	lw	a0,-52(s0)
    4642:	00001097          	auipc	ra,0x1
    4646:	548080e7          	jalr	1352(ra) # 5b8a <close>
    464a:	660d                	lui	a2,0x3
    464c:	00008597          	auipc	a1,0x8
    4650:	61c58593          	addi	a1,a1,1564 # cc68 <buf>
    4654:	fc842503          	lw	a0,-56(s0)
    4658:	00001097          	auipc	ra,0x1
    465c:	522080e7          	jalr	1314(ra) # 5b7a <read>
    4660:	4785                	li	a5,1
    4662:	02f50363          	beq	a0,a5,4688 <preempt+0x13a>
    4666:	85a6                	mv	a1,s1
    4668:	00003517          	auipc	a0,0x3
    466c:	65050513          	addi	a0,a0,1616 # 7cb8 <malloc+0x1cf8>
    4670:	00002097          	auipc	ra,0x2
    4674:	892080e7          	jalr	-1902(ra) # 5f02 <printf>
    4678:	70e2                	ld	ra,56(sp)
    467a:	7442                	ld	s0,48(sp)
    467c:	74a2                	ld	s1,40(sp)
    467e:	7902                	ld	s2,32(sp)
    4680:	69e2                	ld	s3,24(sp)
    4682:	6a42                	ld	s4,16(sp)
    4684:	6121                	addi	sp,sp,64
    4686:	8082                	ret
    4688:	fc842503          	lw	a0,-56(s0)
    468c:	00001097          	auipc	ra,0x1
    4690:	4fe080e7          	jalr	1278(ra) # 5b8a <close>
    4694:	00003517          	auipc	a0,0x3
    4698:	63c50513          	addi	a0,a0,1596 # 7cd0 <malloc+0x1d10>
    469c:	00002097          	auipc	ra,0x2
    46a0:	866080e7          	jalr	-1946(ra) # 5f02 <printf>
    46a4:	8552                	mv	a0,s4
    46a6:	00001097          	auipc	ra,0x1
    46aa:	4ec080e7          	jalr	1260(ra) # 5b92 <kill>
    46ae:	854e                	mv	a0,s3
    46b0:	00001097          	auipc	ra,0x1
    46b4:	4e2080e7          	jalr	1250(ra) # 5b92 <kill>
    46b8:	854a                	mv	a0,s2
    46ba:	00001097          	auipc	ra,0x1
    46be:	4d8080e7          	jalr	1240(ra) # 5b92 <kill>
    46c2:	00003517          	auipc	a0,0x3
    46c6:	61e50513          	addi	a0,a0,1566 # 7ce0 <malloc+0x1d20>
    46ca:	00002097          	auipc	ra,0x2
    46ce:	838080e7          	jalr	-1992(ra) # 5f02 <printf>
    46d2:	4501                	li	a0,0
    46d4:	00001097          	auipc	ra,0x1
    46d8:	496080e7          	jalr	1174(ra) # 5b6a <wait>
    46dc:	4501                	li	a0,0
    46de:	00001097          	auipc	ra,0x1
    46e2:	48c080e7          	jalr	1164(ra) # 5b6a <wait>
    46e6:	4501                	li	a0,0
    46e8:	00001097          	auipc	ra,0x1
    46ec:	482080e7          	jalr	1154(ra) # 5b6a <wait>
    46f0:	b761                	j	4678 <preempt+0x12a>

00000000000046f2 <reparent>:
    46f2:	7179                	addi	sp,sp,-48
    46f4:	f406                	sd	ra,40(sp)
    46f6:	f022                	sd	s0,32(sp)
    46f8:	ec26                	sd	s1,24(sp)
    46fa:	e84a                	sd	s2,16(sp)
    46fc:	e44e                	sd	s3,8(sp)
    46fe:	e052                	sd	s4,0(sp)
    4700:	1800                	addi	s0,sp,48
    4702:	89aa                	mv	s3,a0
    4704:	00001097          	auipc	ra,0x1
    4708:	4de080e7          	jalr	1246(ra) # 5be2 <getpid>
    470c:	8a2a                	mv	s4,a0
    470e:	0c800913          	li	s2,200
    4712:	00001097          	auipc	ra,0x1
    4716:	448080e7          	jalr	1096(ra) # 5b5a <fork>
    471a:	84aa                	mv	s1,a0
    471c:	02054263          	bltz	a0,4740 <reparent+0x4e>
    4720:	cd21                	beqz	a0,4778 <reparent+0x86>
    4722:	4501                	li	a0,0
    4724:	00001097          	auipc	ra,0x1
    4728:	446080e7          	jalr	1094(ra) # 5b6a <wait>
    472c:	02951863          	bne	a0,s1,475c <reparent+0x6a>
    4730:	397d                	addiw	s2,s2,-1
    4732:	fe0910e3          	bnez	s2,4712 <reparent+0x20>
    4736:	4501                	li	a0,0
    4738:	00001097          	auipc	ra,0x1
    473c:	42a080e7          	jalr	1066(ra) # 5b62 <exit>
    4740:	85ce                	mv	a1,s3
    4742:	00002517          	auipc	a0,0x2
    4746:	24e50513          	addi	a0,a0,590 # 6990 <malloc+0x9d0>
    474a:	00001097          	auipc	ra,0x1
    474e:	7b8080e7          	jalr	1976(ra) # 5f02 <printf>
    4752:	4505                	li	a0,1
    4754:	00001097          	auipc	ra,0x1
    4758:	40e080e7          	jalr	1038(ra) # 5b62 <exit>
    475c:	85ce                	mv	a1,s3
    475e:	00002517          	auipc	a0,0x2
    4762:	3ba50513          	addi	a0,a0,954 # 6b18 <malloc+0xb58>
    4766:	00001097          	auipc	ra,0x1
    476a:	79c080e7          	jalr	1948(ra) # 5f02 <printf>
    476e:	4505                	li	a0,1
    4770:	00001097          	auipc	ra,0x1
    4774:	3f2080e7          	jalr	1010(ra) # 5b62 <exit>
    4778:	00001097          	auipc	ra,0x1
    477c:	3e2080e7          	jalr	994(ra) # 5b5a <fork>
    4780:	00054763          	bltz	a0,478e <reparent+0x9c>
    4784:	4501                	li	a0,0
    4786:	00001097          	auipc	ra,0x1
    478a:	3dc080e7          	jalr	988(ra) # 5b62 <exit>
    478e:	8552                	mv	a0,s4
    4790:	00001097          	auipc	ra,0x1
    4794:	402080e7          	jalr	1026(ra) # 5b92 <kill>
    4798:	4505                	li	a0,1
    479a:	00001097          	auipc	ra,0x1
    479e:	3c8080e7          	jalr	968(ra) # 5b62 <exit>

00000000000047a2 <sbrkfail>:
    47a2:	7119                	addi	sp,sp,-128
    47a4:	fc86                	sd	ra,120(sp)
    47a6:	f8a2                	sd	s0,112(sp)
    47a8:	f4a6                	sd	s1,104(sp)
    47aa:	f0ca                	sd	s2,96(sp)
    47ac:	ecce                	sd	s3,88(sp)
    47ae:	e8d2                	sd	s4,80(sp)
    47b0:	e4d6                	sd	s5,72(sp)
    47b2:	0100                	addi	s0,sp,128
    47b4:	892a                	mv	s2,a0
    47b6:	fb040513          	addi	a0,s0,-80
    47ba:	00001097          	auipc	ra,0x1
    47be:	3b8080e7          	jalr	952(ra) # 5b72 <pipe>
    47c2:	e901                	bnez	a0,47d2 <sbrkfail+0x30>
    47c4:	f8040493          	addi	s1,s0,-128
    47c8:	fa840a13          	addi	s4,s0,-88
    47cc:	89a6                	mv	s3,s1
    47ce:	5afd                	li	s5,-1
    47d0:	a08d                	j	4832 <sbrkfail+0x90>
    47d2:	85ca                	mv	a1,s2
    47d4:	00002517          	auipc	a0,0x2
    47d8:	2c450513          	addi	a0,a0,708 # 6a98 <malloc+0xad8>
    47dc:	00001097          	auipc	ra,0x1
    47e0:	726080e7          	jalr	1830(ra) # 5f02 <printf>
    47e4:	4505                	li	a0,1
    47e6:	00001097          	auipc	ra,0x1
    47ea:	37c080e7          	jalr	892(ra) # 5b62 <exit>
    47ee:	4501                	li	a0,0
    47f0:	00001097          	auipc	ra,0x1
    47f4:	3fa080e7          	jalr	1018(ra) # 5bea <sbrk>
    47f8:	064007b7          	lui	a5,0x6400
    47fc:	40a7853b          	subw	a0,a5,a0
    4800:	00001097          	auipc	ra,0x1
    4804:	3ea080e7          	jalr	1002(ra) # 5bea <sbrk>
    4808:	4605                	li	a2,1
    480a:	00002597          	auipc	a1,0x2
    480e:	96e58593          	addi	a1,a1,-1682 # 6178 <malloc+0x1b8>
    4812:	fb442503          	lw	a0,-76(s0)
    4816:	00001097          	auipc	ra,0x1
    481a:	36c080e7          	jalr	876(ra) # 5b82 <write>
    481e:	3e800513          	li	a0,1000
    4822:	00001097          	auipc	ra,0x1
    4826:	3d0080e7          	jalr	976(ra) # 5bf2 <sleep>
    482a:	bfd5                	j	481e <sbrkfail+0x7c>
    482c:	0991                	addi	s3,s3,4
    482e:	03498563          	beq	s3,s4,4858 <sbrkfail+0xb6>
    4832:	00001097          	auipc	ra,0x1
    4836:	328080e7          	jalr	808(ra) # 5b5a <fork>
    483a:	00a9a023          	sw	a0,0(s3)
    483e:	d945                	beqz	a0,47ee <sbrkfail+0x4c>
    4840:	ff5506e3          	beq	a0,s5,482c <sbrkfail+0x8a>
    4844:	4605                	li	a2,1
    4846:	faf40593          	addi	a1,s0,-81
    484a:	fb042503          	lw	a0,-80(s0)
    484e:	00001097          	auipc	ra,0x1
    4852:	32c080e7          	jalr	812(ra) # 5b7a <read>
    4856:	bfd9                	j	482c <sbrkfail+0x8a>
    4858:	6505                	lui	a0,0x1
    485a:	00001097          	auipc	ra,0x1
    485e:	390080e7          	jalr	912(ra) # 5bea <sbrk>
    4862:	89aa                	mv	s3,a0
    4864:	5afd                	li	s5,-1
    4866:	a021                	j	486e <sbrkfail+0xcc>
    4868:	0491                	addi	s1,s1,4
    486a:	01448f63          	beq	s1,s4,4888 <sbrkfail+0xe6>
    486e:	4088                	lw	a0,0(s1)
    4870:	ff550ce3          	beq	a0,s5,4868 <sbrkfail+0xc6>
    4874:	00001097          	auipc	ra,0x1
    4878:	31e080e7          	jalr	798(ra) # 5b92 <kill>
    487c:	4501                	li	a0,0
    487e:	00001097          	auipc	ra,0x1
    4882:	2ec080e7          	jalr	748(ra) # 5b6a <wait>
    4886:	b7cd                	j	4868 <sbrkfail+0xc6>
    4888:	57fd                	li	a5,-1
    488a:	04f98163          	beq	s3,a5,48cc <sbrkfail+0x12a>
    488e:	00001097          	auipc	ra,0x1
    4892:	2cc080e7          	jalr	716(ra) # 5b5a <fork>
    4896:	84aa                	mv	s1,a0
    4898:	04054863          	bltz	a0,48e8 <sbrkfail+0x146>
    489c:	c525                	beqz	a0,4904 <sbrkfail+0x162>
    489e:	fbc40513          	addi	a0,s0,-68
    48a2:	00001097          	auipc	ra,0x1
    48a6:	2c8080e7          	jalr	712(ra) # 5b6a <wait>
    48aa:	fbc42783          	lw	a5,-68(s0)
    48ae:	577d                	li	a4,-1
    48b0:	00e78563          	beq	a5,a4,48ba <sbrkfail+0x118>
    48b4:	4709                	li	a4,2
    48b6:	08e79d63          	bne	a5,a4,4950 <sbrkfail+0x1ae>
    48ba:	70e6                	ld	ra,120(sp)
    48bc:	7446                	ld	s0,112(sp)
    48be:	74a6                	ld	s1,104(sp)
    48c0:	7906                	ld	s2,96(sp)
    48c2:	69e6                	ld	s3,88(sp)
    48c4:	6a46                	ld	s4,80(sp)
    48c6:	6aa6                	ld	s5,72(sp)
    48c8:	6109                	addi	sp,sp,128
    48ca:	8082                	ret
    48cc:	85ca                	mv	a1,s2
    48ce:	00003517          	auipc	a0,0x3
    48d2:	42250513          	addi	a0,a0,1058 # 7cf0 <malloc+0x1d30>
    48d6:	00001097          	auipc	ra,0x1
    48da:	62c080e7          	jalr	1580(ra) # 5f02 <printf>
    48de:	4505                	li	a0,1
    48e0:	00001097          	auipc	ra,0x1
    48e4:	282080e7          	jalr	642(ra) # 5b62 <exit>
    48e8:	85ca                	mv	a1,s2
    48ea:	00002517          	auipc	a0,0x2
    48ee:	0a650513          	addi	a0,a0,166 # 6990 <malloc+0x9d0>
    48f2:	00001097          	auipc	ra,0x1
    48f6:	610080e7          	jalr	1552(ra) # 5f02 <printf>
    48fa:	4505                	li	a0,1
    48fc:	00001097          	auipc	ra,0x1
    4900:	266080e7          	jalr	614(ra) # 5b62 <exit>
    4904:	4501                	li	a0,0
    4906:	00001097          	auipc	ra,0x1
    490a:	2e4080e7          	jalr	740(ra) # 5bea <sbrk>
    490e:	89aa                	mv	s3,a0
    4910:	3e800537          	lui	a0,0x3e800
    4914:	00001097          	auipc	ra,0x1
    4918:	2d6080e7          	jalr	726(ra) # 5bea <sbrk>
    491c:	874e                	mv	a4,s3
    491e:	3e8007b7          	lui	a5,0x3e800
    4922:	97ce                	add	a5,a5,s3
    4924:	6685                	lui	a3,0x1
    4926:	00074603          	lbu	a2,0(a4)
    492a:	9cb1                	addw	s1,s1,a2
    492c:	9736                	add	a4,a4,a3
    492e:	fef71ce3          	bne	a4,a5,4926 <sbrkfail+0x184>
    4932:	8626                	mv	a2,s1
    4934:	85ca                	mv	a1,s2
    4936:	00003517          	auipc	a0,0x3
    493a:	3da50513          	addi	a0,a0,986 # 7d10 <malloc+0x1d50>
    493e:	00001097          	auipc	ra,0x1
    4942:	5c4080e7          	jalr	1476(ra) # 5f02 <printf>
    4946:	4505                	li	a0,1
    4948:	00001097          	auipc	ra,0x1
    494c:	21a080e7          	jalr	538(ra) # 5b62 <exit>
    4950:	4505                	li	a0,1
    4952:	00001097          	auipc	ra,0x1
    4956:	210080e7          	jalr	528(ra) # 5b62 <exit>

000000000000495a <mem>:
    495a:	7139                	addi	sp,sp,-64
    495c:	fc06                	sd	ra,56(sp)
    495e:	f822                	sd	s0,48(sp)
    4960:	f426                	sd	s1,40(sp)
    4962:	f04a                	sd	s2,32(sp)
    4964:	ec4e                	sd	s3,24(sp)
    4966:	0080                	addi	s0,sp,64
    4968:	89aa                	mv	s3,a0
    496a:	00001097          	auipc	ra,0x1
    496e:	1f0080e7          	jalr	496(ra) # 5b5a <fork>
    4972:	4481                	li	s1,0
    4974:	6909                	lui	s2,0x2
    4976:	71190913          	addi	s2,s2,1809 # 2711 <rwsbrk+0x25>
    497a:	ed39                	bnez	a0,49d8 <mem+0x7e>
    497c:	854a                	mv	a0,s2
    497e:	00001097          	auipc	ra,0x1
    4982:	642080e7          	jalr	1602(ra) # 5fc0 <malloc>
    4986:	c501                	beqz	a0,498e <mem+0x34>
    4988:	e104                	sd	s1,0(a0)
    498a:	84aa                	mv	s1,a0
    498c:	bfc5                	j	497c <mem+0x22>
    498e:	c881                	beqz	s1,499e <mem+0x44>
    4990:	8526                	mv	a0,s1
    4992:	6084                	ld	s1,0(s1)
    4994:	00001097          	auipc	ra,0x1
    4998:	5a4080e7          	jalr	1444(ra) # 5f38 <free>
    499c:	f8f5                	bnez	s1,4990 <mem+0x36>
    499e:	6515                	lui	a0,0x5
    49a0:	00001097          	auipc	ra,0x1
    49a4:	620080e7          	jalr	1568(ra) # 5fc0 <malloc>
    49a8:	c911                	beqz	a0,49bc <mem+0x62>
    49aa:	00001097          	auipc	ra,0x1
    49ae:	58e080e7          	jalr	1422(ra) # 5f38 <free>
    49b2:	4501                	li	a0,0
    49b4:	00001097          	auipc	ra,0x1
    49b8:	1ae080e7          	jalr	430(ra) # 5b62 <exit>
    49bc:	85ce                	mv	a1,s3
    49be:	00003517          	auipc	a0,0x3
    49c2:	38250513          	addi	a0,a0,898 # 7d40 <malloc+0x1d80>
    49c6:	00001097          	auipc	ra,0x1
    49ca:	53c080e7          	jalr	1340(ra) # 5f02 <printf>
    49ce:	4505                	li	a0,1
    49d0:	00001097          	auipc	ra,0x1
    49d4:	192080e7          	jalr	402(ra) # 5b62 <exit>
    49d8:	fcc40513          	addi	a0,s0,-52
    49dc:	00001097          	auipc	ra,0x1
    49e0:	18e080e7          	jalr	398(ra) # 5b6a <wait>
    49e4:	fcc42503          	lw	a0,-52(s0)
    49e8:	57fd                	li	a5,-1
    49ea:	00f50663          	beq	a0,a5,49f6 <mem+0x9c>
    49ee:	00001097          	auipc	ra,0x1
    49f2:	174080e7          	jalr	372(ra) # 5b62 <exit>
    49f6:	4501                	li	a0,0
    49f8:	00001097          	auipc	ra,0x1
    49fc:	16a080e7          	jalr	362(ra) # 5b62 <exit>

0000000000004a00 <sharedfd>:
    4a00:	7159                	addi	sp,sp,-112
    4a02:	f486                	sd	ra,104(sp)
    4a04:	f0a2                	sd	s0,96(sp)
    4a06:	eca6                	sd	s1,88(sp)
    4a08:	e8ca                	sd	s2,80(sp)
    4a0a:	e4ce                	sd	s3,72(sp)
    4a0c:	e0d2                	sd	s4,64(sp)
    4a0e:	fc56                	sd	s5,56(sp)
    4a10:	f85a                	sd	s6,48(sp)
    4a12:	f45e                	sd	s7,40(sp)
    4a14:	1880                	addi	s0,sp,112
    4a16:	8a2a                	mv	s4,a0
    4a18:	00003517          	auipc	a0,0x3
    4a1c:	34850513          	addi	a0,a0,840 # 7d60 <malloc+0x1da0>
    4a20:	00001097          	auipc	ra,0x1
    4a24:	192080e7          	jalr	402(ra) # 5bb2 <unlink>
    4a28:	20200593          	li	a1,514
    4a2c:	00003517          	auipc	a0,0x3
    4a30:	33450513          	addi	a0,a0,820 # 7d60 <malloc+0x1da0>
    4a34:	00001097          	auipc	ra,0x1
    4a38:	16e080e7          	jalr	366(ra) # 5ba2 <open>
    4a3c:	04054a63          	bltz	a0,4a90 <sharedfd+0x90>
    4a40:	892a                	mv	s2,a0
    4a42:	00001097          	auipc	ra,0x1
    4a46:	118080e7          	jalr	280(ra) # 5b5a <fork>
    4a4a:	89aa                	mv	s3,a0
    4a4c:	06300593          	li	a1,99
    4a50:	c119                	beqz	a0,4a56 <sharedfd+0x56>
    4a52:	07000593          	li	a1,112
    4a56:	4629                	li	a2,10
    4a58:	fa040513          	addi	a0,s0,-96
    4a5c:	00001097          	auipc	ra,0x1
    4a60:	f02080e7          	jalr	-254(ra) # 595e <memset>
    4a64:	3e800493          	li	s1,1000
    4a68:	4629                	li	a2,10
    4a6a:	fa040593          	addi	a1,s0,-96
    4a6e:	854a                	mv	a0,s2
    4a70:	00001097          	auipc	ra,0x1
    4a74:	112080e7          	jalr	274(ra) # 5b82 <write>
    4a78:	47a9                	li	a5,10
    4a7a:	02f51963          	bne	a0,a5,4aac <sharedfd+0xac>
    4a7e:	34fd                	addiw	s1,s1,-1
    4a80:	f4e5                	bnez	s1,4a68 <sharedfd+0x68>
    4a82:	04099363          	bnez	s3,4ac8 <sharedfd+0xc8>
    4a86:	4501                	li	a0,0
    4a88:	00001097          	auipc	ra,0x1
    4a8c:	0da080e7          	jalr	218(ra) # 5b62 <exit>
    4a90:	85d2                	mv	a1,s4
    4a92:	00003517          	auipc	a0,0x3
    4a96:	2de50513          	addi	a0,a0,734 # 7d70 <malloc+0x1db0>
    4a9a:	00001097          	auipc	ra,0x1
    4a9e:	468080e7          	jalr	1128(ra) # 5f02 <printf>
    4aa2:	4505                	li	a0,1
    4aa4:	00001097          	auipc	ra,0x1
    4aa8:	0be080e7          	jalr	190(ra) # 5b62 <exit>
    4aac:	85d2                	mv	a1,s4
    4aae:	00003517          	auipc	a0,0x3
    4ab2:	2ea50513          	addi	a0,a0,746 # 7d98 <malloc+0x1dd8>
    4ab6:	00001097          	auipc	ra,0x1
    4aba:	44c080e7          	jalr	1100(ra) # 5f02 <printf>
    4abe:	4505                	li	a0,1
    4ac0:	00001097          	auipc	ra,0x1
    4ac4:	0a2080e7          	jalr	162(ra) # 5b62 <exit>
    4ac8:	f9c40513          	addi	a0,s0,-100
    4acc:	00001097          	auipc	ra,0x1
    4ad0:	09e080e7          	jalr	158(ra) # 5b6a <wait>
    4ad4:	f9c42983          	lw	s3,-100(s0)
    4ad8:	00098763          	beqz	s3,4ae6 <sharedfd+0xe6>
    4adc:	854e                	mv	a0,s3
    4ade:	00001097          	auipc	ra,0x1
    4ae2:	084080e7          	jalr	132(ra) # 5b62 <exit>
    4ae6:	854a                	mv	a0,s2
    4ae8:	00001097          	auipc	ra,0x1
    4aec:	0a2080e7          	jalr	162(ra) # 5b8a <close>
    4af0:	4581                	li	a1,0
    4af2:	00003517          	auipc	a0,0x3
    4af6:	26e50513          	addi	a0,a0,622 # 7d60 <malloc+0x1da0>
    4afa:	00001097          	auipc	ra,0x1
    4afe:	0a8080e7          	jalr	168(ra) # 5ba2 <open>
    4b02:	8baa                	mv	s7,a0
    4b04:	8ace                	mv	s5,s3
    4b06:	02054563          	bltz	a0,4b30 <sharedfd+0x130>
    4b0a:	faa40913          	addi	s2,s0,-86
    4b0e:	06300493          	li	s1,99
    4b12:	07000b13          	li	s6,112
    4b16:	4629                	li	a2,10
    4b18:	fa040593          	addi	a1,s0,-96
    4b1c:	855e                	mv	a0,s7
    4b1e:	00001097          	auipc	ra,0x1
    4b22:	05c080e7          	jalr	92(ra) # 5b7a <read>
    4b26:	02a05f63          	blez	a0,4b64 <sharedfd+0x164>
    4b2a:	fa040793          	addi	a5,s0,-96
    4b2e:	a01d                	j	4b54 <sharedfd+0x154>
    4b30:	85d2                	mv	a1,s4
    4b32:	00003517          	auipc	a0,0x3
    4b36:	28650513          	addi	a0,a0,646 # 7db8 <malloc+0x1df8>
    4b3a:	00001097          	auipc	ra,0x1
    4b3e:	3c8080e7          	jalr	968(ra) # 5f02 <printf>
    4b42:	4505                	li	a0,1
    4b44:	00001097          	auipc	ra,0x1
    4b48:	01e080e7          	jalr	30(ra) # 5b62 <exit>
    4b4c:	2985                	addiw	s3,s3,1
    4b4e:	0785                	addi	a5,a5,1
    4b50:	fd2783e3          	beq	a5,s2,4b16 <sharedfd+0x116>
    4b54:	0007c703          	lbu	a4,0(a5) # 3e800000 <base+0x3e7f0398>
    4b58:	fe970ae3          	beq	a4,s1,4b4c <sharedfd+0x14c>
    4b5c:	ff6719e3          	bne	a4,s6,4b4e <sharedfd+0x14e>
    4b60:	2a85                	addiw	s5,s5,1
    4b62:	b7f5                	j	4b4e <sharedfd+0x14e>
    4b64:	855e                	mv	a0,s7
    4b66:	00001097          	auipc	ra,0x1
    4b6a:	024080e7          	jalr	36(ra) # 5b8a <close>
    4b6e:	00003517          	auipc	a0,0x3
    4b72:	1f250513          	addi	a0,a0,498 # 7d60 <malloc+0x1da0>
    4b76:	00001097          	auipc	ra,0x1
    4b7a:	03c080e7          	jalr	60(ra) # 5bb2 <unlink>
    4b7e:	6789                	lui	a5,0x2
    4b80:	71078793          	addi	a5,a5,1808 # 2710 <rwsbrk+0x24>
    4b84:	00f99763          	bne	s3,a5,4b92 <sharedfd+0x192>
    4b88:	6789                	lui	a5,0x2
    4b8a:	71078793          	addi	a5,a5,1808 # 2710 <rwsbrk+0x24>
    4b8e:	02fa8063          	beq	s5,a5,4bae <sharedfd+0x1ae>
    4b92:	85d2                	mv	a1,s4
    4b94:	00003517          	auipc	a0,0x3
    4b98:	24c50513          	addi	a0,a0,588 # 7de0 <malloc+0x1e20>
    4b9c:	00001097          	auipc	ra,0x1
    4ba0:	366080e7          	jalr	870(ra) # 5f02 <printf>
    4ba4:	4505                	li	a0,1
    4ba6:	00001097          	auipc	ra,0x1
    4baa:	fbc080e7          	jalr	-68(ra) # 5b62 <exit>
    4bae:	4501                	li	a0,0
    4bb0:	00001097          	auipc	ra,0x1
    4bb4:	fb2080e7          	jalr	-78(ra) # 5b62 <exit>

0000000000004bb8 <fourfiles>:
    4bb8:	7171                	addi	sp,sp,-176
    4bba:	f506                	sd	ra,168(sp)
    4bbc:	f122                	sd	s0,160(sp)
    4bbe:	ed26                	sd	s1,152(sp)
    4bc0:	e94a                	sd	s2,144(sp)
    4bc2:	e54e                	sd	s3,136(sp)
    4bc4:	e152                	sd	s4,128(sp)
    4bc6:	fcd6                	sd	s5,120(sp)
    4bc8:	f8da                	sd	s6,112(sp)
    4bca:	f4de                	sd	s7,104(sp)
    4bcc:	f0e2                	sd	s8,96(sp)
    4bce:	ece6                	sd	s9,88(sp)
    4bd0:	e8ea                	sd	s10,80(sp)
    4bd2:	e4ee                	sd	s11,72(sp)
    4bd4:	1900                	addi	s0,sp,176
    4bd6:	8caa                	mv	s9,a0
    4bd8:	00001797          	auipc	a5,0x1
    4bdc:	4d878793          	addi	a5,a5,1240 # 60b0 <malloc+0xf0>
    4be0:	f6f43823          	sd	a5,-144(s0)
    4be4:	00001797          	auipc	a5,0x1
    4be8:	4d478793          	addi	a5,a5,1236 # 60b8 <malloc+0xf8>
    4bec:	f6f43c23          	sd	a5,-136(s0)
    4bf0:	00001797          	auipc	a5,0x1
    4bf4:	4d078793          	addi	a5,a5,1232 # 60c0 <malloc+0x100>
    4bf8:	f8f43023          	sd	a5,-128(s0)
    4bfc:	00001797          	auipc	a5,0x1
    4c00:	4cc78793          	addi	a5,a5,1228 # 60c8 <malloc+0x108>
    4c04:	f8f43423          	sd	a5,-120(s0)
    4c08:	f7040b93          	addi	s7,s0,-144
    4c0c:	895e                	mv	s2,s7
    4c0e:	4481                	li	s1,0
    4c10:	4a11                	li	s4,4
    4c12:	00093983          	ld	s3,0(s2)
    4c16:	854e                	mv	a0,s3
    4c18:	00001097          	auipc	ra,0x1
    4c1c:	f9a080e7          	jalr	-102(ra) # 5bb2 <unlink>
    4c20:	00001097          	auipc	ra,0x1
    4c24:	f3a080e7          	jalr	-198(ra) # 5b5a <fork>
    4c28:	04054563          	bltz	a0,4c72 <fourfiles+0xba>
    4c2c:	c12d                	beqz	a0,4c8e <fourfiles+0xd6>
    4c2e:	2485                	addiw	s1,s1,1
    4c30:	0921                	addi	s2,s2,8
    4c32:	ff4490e3          	bne	s1,s4,4c12 <fourfiles+0x5a>
    4c36:	4491                	li	s1,4
    4c38:	f6c40513          	addi	a0,s0,-148
    4c3c:	00001097          	auipc	ra,0x1
    4c40:	f2e080e7          	jalr	-210(ra) # 5b6a <wait>
    4c44:	f6c42503          	lw	a0,-148(s0)
    4c48:	ed69                	bnez	a0,4d22 <fourfiles+0x16a>
    4c4a:	34fd                	addiw	s1,s1,-1
    4c4c:	f4f5                	bnez	s1,4c38 <fourfiles+0x80>
    4c4e:	03000b13          	li	s6,48
    4c52:	f4a43c23          	sd	a0,-168(s0)
    4c56:	00008a17          	auipc	s4,0x8
    4c5a:	012a0a13          	addi	s4,s4,18 # cc68 <buf>
    4c5e:	00008a97          	auipc	s5,0x8
    4c62:	00ba8a93          	addi	s5,s5,11 # cc69 <buf+0x1>
    4c66:	6d05                	lui	s10,0x1
    4c68:	770d0d13          	addi	s10,s10,1904 # 1770 <exectest+0x2e>
    4c6c:	03400d93          	li	s11,52
    4c70:	a23d                	j	4d9e <fourfiles+0x1e6>
    4c72:	85e6                	mv	a1,s9
    4c74:	00002517          	auipc	a0,0x2
    4c78:	12450513          	addi	a0,a0,292 # 6d98 <malloc+0xdd8>
    4c7c:	00001097          	auipc	ra,0x1
    4c80:	286080e7          	jalr	646(ra) # 5f02 <printf>
    4c84:	4505                	li	a0,1
    4c86:	00001097          	auipc	ra,0x1
    4c8a:	edc080e7          	jalr	-292(ra) # 5b62 <exit>
    4c8e:	20200593          	li	a1,514
    4c92:	854e                	mv	a0,s3
    4c94:	00001097          	auipc	ra,0x1
    4c98:	f0e080e7          	jalr	-242(ra) # 5ba2 <open>
    4c9c:	892a                	mv	s2,a0
    4c9e:	04054763          	bltz	a0,4cec <fourfiles+0x134>
    4ca2:	1f400613          	li	a2,500
    4ca6:	0304859b          	addiw	a1,s1,48
    4caa:	00008517          	auipc	a0,0x8
    4cae:	fbe50513          	addi	a0,a0,-66 # cc68 <buf>
    4cb2:	00001097          	auipc	ra,0x1
    4cb6:	cac080e7          	jalr	-852(ra) # 595e <memset>
    4cba:	44b1                	li	s1,12
    4cbc:	00008997          	auipc	s3,0x8
    4cc0:	fac98993          	addi	s3,s3,-84 # cc68 <buf>
    4cc4:	1f400613          	li	a2,500
    4cc8:	85ce                	mv	a1,s3
    4cca:	854a                	mv	a0,s2
    4ccc:	00001097          	auipc	ra,0x1
    4cd0:	eb6080e7          	jalr	-330(ra) # 5b82 <write>
    4cd4:	85aa                	mv	a1,a0
    4cd6:	1f400793          	li	a5,500
    4cda:	02f51763          	bne	a0,a5,4d08 <fourfiles+0x150>
    4cde:	34fd                	addiw	s1,s1,-1
    4ce0:	f0f5                	bnez	s1,4cc4 <fourfiles+0x10c>
    4ce2:	4501                	li	a0,0
    4ce4:	00001097          	auipc	ra,0x1
    4ce8:	e7e080e7          	jalr	-386(ra) # 5b62 <exit>
    4cec:	85e6                	mv	a1,s9
    4cee:	00003517          	auipc	a0,0x3
    4cf2:	10a50513          	addi	a0,a0,266 # 7df8 <malloc+0x1e38>
    4cf6:	00001097          	auipc	ra,0x1
    4cfa:	20c080e7          	jalr	524(ra) # 5f02 <printf>
    4cfe:	4505                	li	a0,1
    4d00:	00001097          	auipc	ra,0x1
    4d04:	e62080e7          	jalr	-414(ra) # 5b62 <exit>
    4d08:	00003517          	auipc	a0,0x3
    4d0c:	10050513          	addi	a0,a0,256 # 7e08 <malloc+0x1e48>
    4d10:	00001097          	auipc	ra,0x1
    4d14:	1f2080e7          	jalr	498(ra) # 5f02 <printf>
    4d18:	4505                	li	a0,1
    4d1a:	00001097          	auipc	ra,0x1
    4d1e:	e48080e7          	jalr	-440(ra) # 5b62 <exit>
    4d22:	00001097          	auipc	ra,0x1
    4d26:	e40080e7          	jalr	-448(ra) # 5b62 <exit>
    4d2a:	85e6                	mv	a1,s9
    4d2c:	00003517          	auipc	a0,0x3
    4d30:	0f450513          	addi	a0,a0,244 # 7e20 <malloc+0x1e60>
    4d34:	00001097          	auipc	ra,0x1
    4d38:	1ce080e7          	jalr	462(ra) # 5f02 <printf>
    4d3c:	4505                	li	a0,1
    4d3e:	00001097          	auipc	ra,0x1
    4d42:	e24080e7          	jalr	-476(ra) # 5b62 <exit>
    4d46:	00a9093b          	addw	s2,s2,a0
    4d4a:	660d                	lui	a2,0x3
    4d4c:	85d2                	mv	a1,s4
    4d4e:	854e                	mv	a0,s3
    4d50:	00001097          	auipc	ra,0x1
    4d54:	e2a080e7          	jalr	-470(ra) # 5b7a <read>
    4d58:	02a05363          	blez	a0,4d7e <fourfiles+0x1c6>
    4d5c:	00008797          	auipc	a5,0x8
    4d60:	f0c78793          	addi	a5,a5,-244 # cc68 <buf>
    4d64:	fff5069b          	addiw	a3,a0,-1
    4d68:	1682                	slli	a3,a3,0x20
    4d6a:	9281                	srli	a3,a3,0x20
    4d6c:	96d6                	add	a3,a3,s5
    4d6e:	0007c703          	lbu	a4,0(a5)
    4d72:	fa971ce3          	bne	a4,s1,4d2a <fourfiles+0x172>
    4d76:	0785                	addi	a5,a5,1
    4d78:	fed79be3          	bne	a5,a3,4d6e <fourfiles+0x1b6>
    4d7c:	b7e9                	j	4d46 <fourfiles+0x18e>
    4d7e:	854e                	mv	a0,s3
    4d80:	00001097          	auipc	ra,0x1
    4d84:	e0a080e7          	jalr	-502(ra) # 5b8a <close>
    4d88:	03a91963          	bne	s2,s10,4dba <fourfiles+0x202>
    4d8c:	8562                	mv	a0,s8
    4d8e:	00001097          	auipc	ra,0x1
    4d92:	e24080e7          	jalr	-476(ra) # 5bb2 <unlink>
    4d96:	0ba1                	addi	s7,s7,8
    4d98:	2b05                	addiw	s6,s6,1
    4d9a:	03bb0e63          	beq	s6,s11,4dd6 <fourfiles+0x21e>
    4d9e:	000bbc03          	ld	s8,0(s7)
    4da2:	4581                	li	a1,0
    4da4:	8562                	mv	a0,s8
    4da6:	00001097          	auipc	ra,0x1
    4daa:	dfc080e7          	jalr	-516(ra) # 5ba2 <open>
    4dae:	89aa                	mv	s3,a0
    4db0:	f5843903          	ld	s2,-168(s0)
    4db4:	000b049b          	sext.w	s1,s6
    4db8:	bf49                	j	4d4a <fourfiles+0x192>
    4dba:	85ca                	mv	a1,s2
    4dbc:	00003517          	auipc	a0,0x3
    4dc0:	07450513          	addi	a0,a0,116 # 7e30 <malloc+0x1e70>
    4dc4:	00001097          	auipc	ra,0x1
    4dc8:	13e080e7          	jalr	318(ra) # 5f02 <printf>
    4dcc:	4505                	li	a0,1
    4dce:	00001097          	auipc	ra,0x1
    4dd2:	d94080e7          	jalr	-620(ra) # 5b62 <exit>
    4dd6:	70aa                	ld	ra,168(sp)
    4dd8:	740a                	ld	s0,160(sp)
    4dda:	64ea                	ld	s1,152(sp)
    4ddc:	694a                	ld	s2,144(sp)
    4dde:	69aa                	ld	s3,136(sp)
    4de0:	6a0a                	ld	s4,128(sp)
    4de2:	7ae6                	ld	s5,120(sp)
    4de4:	7b46                	ld	s6,112(sp)
    4de6:	7ba6                	ld	s7,104(sp)
    4de8:	7c06                	ld	s8,96(sp)
    4dea:	6ce6                	ld	s9,88(sp)
    4dec:	6d46                	ld	s10,80(sp)
    4dee:	6da6                	ld	s11,72(sp)
    4df0:	614d                	addi	sp,sp,176
    4df2:	8082                	ret

0000000000004df4 <concreate>:
    4df4:	7135                	addi	sp,sp,-160
    4df6:	ed06                	sd	ra,152(sp)
    4df8:	e922                	sd	s0,144(sp)
    4dfa:	e526                	sd	s1,136(sp)
    4dfc:	e14a                	sd	s2,128(sp)
    4dfe:	fcce                	sd	s3,120(sp)
    4e00:	f8d2                	sd	s4,112(sp)
    4e02:	f4d6                	sd	s5,104(sp)
    4e04:	f0da                	sd	s6,96(sp)
    4e06:	ecde                	sd	s7,88(sp)
    4e08:	1100                	addi	s0,sp,160
    4e0a:	89aa                	mv	s3,a0
    4e0c:	04300793          	li	a5,67
    4e10:	faf40423          	sb	a5,-88(s0)
    4e14:	fa040523          	sb	zero,-86(s0)
    4e18:	4901                	li	s2,0
    4e1a:	4b0d                	li	s6,3
    4e1c:	4a85                	li	s5,1
    4e1e:	00003b97          	auipc	s7,0x3
    4e22:	02ab8b93          	addi	s7,s7,42 # 7e48 <malloc+0x1e88>
    4e26:	02800a13          	li	s4,40
    4e2a:	acc1                	j	50fa <concreate+0x306>
    4e2c:	fa840593          	addi	a1,s0,-88
    4e30:	855e                	mv	a0,s7
    4e32:	00001097          	auipc	ra,0x1
    4e36:	d90080e7          	jalr	-624(ra) # 5bc2 <link>
    4e3a:	a45d                	j	50e0 <concreate+0x2ec>
    4e3c:	4795                	li	a5,5
    4e3e:	02f9693b          	remw	s2,s2,a5
    4e42:	4785                	li	a5,1
    4e44:	02f90b63          	beq	s2,a5,4e7a <concreate+0x86>
    4e48:	20200593          	li	a1,514
    4e4c:	fa840513          	addi	a0,s0,-88
    4e50:	00001097          	auipc	ra,0x1
    4e54:	d52080e7          	jalr	-686(ra) # 5ba2 <open>
    4e58:	26055b63          	bgez	a0,50ce <concreate+0x2da>
    4e5c:	fa840593          	addi	a1,s0,-88
    4e60:	00003517          	auipc	a0,0x3
    4e64:	ff050513          	addi	a0,a0,-16 # 7e50 <malloc+0x1e90>
    4e68:	00001097          	auipc	ra,0x1
    4e6c:	09a080e7          	jalr	154(ra) # 5f02 <printf>
    4e70:	4505                	li	a0,1
    4e72:	00001097          	auipc	ra,0x1
    4e76:	cf0080e7          	jalr	-784(ra) # 5b62 <exit>
    4e7a:	fa840593          	addi	a1,s0,-88
    4e7e:	00003517          	auipc	a0,0x3
    4e82:	fca50513          	addi	a0,a0,-54 # 7e48 <malloc+0x1e88>
    4e86:	00001097          	auipc	ra,0x1
    4e8a:	d3c080e7          	jalr	-708(ra) # 5bc2 <link>
    4e8e:	4501                	li	a0,0
    4e90:	00001097          	auipc	ra,0x1
    4e94:	cd2080e7          	jalr	-814(ra) # 5b62 <exit>
    4e98:	4505                	li	a0,1
    4e9a:	00001097          	auipc	ra,0x1
    4e9e:	cc8080e7          	jalr	-824(ra) # 5b62 <exit>
    4ea2:	02800613          	li	a2,40
    4ea6:	4581                	li	a1,0
    4ea8:	f8040513          	addi	a0,s0,-128
    4eac:	00001097          	auipc	ra,0x1
    4eb0:	ab2080e7          	jalr	-1358(ra) # 595e <memset>
    4eb4:	4581                	li	a1,0
    4eb6:	00002517          	auipc	a0,0x2
    4eba:	93a50513          	addi	a0,a0,-1734 # 67f0 <malloc+0x830>
    4ebe:	00001097          	auipc	ra,0x1
    4ec2:	ce4080e7          	jalr	-796(ra) # 5ba2 <open>
    4ec6:	892a                	mv	s2,a0
    4ec8:	8aa6                	mv	s5,s1
    4eca:	04300a13          	li	s4,67
    4ece:	02700b13          	li	s6,39
    4ed2:	4b85                	li	s7,1
    4ed4:	a03d                	j	4f02 <concreate+0x10e>
    4ed6:	f7240613          	addi	a2,s0,-142
    4eda:	85ce                	mv	a1,s3
    4edc:	00003517          	auipc	a0,0x3
    4ee0:	f9450513          	addi	a0,a0,-108 # 7e70 <malloc+0x1eb0>
    4ee4:	00001097          	auipc	ra,0x1
    4ee8:	01e080e7          	jalr	30(ra) # 5f02 <printf>
    4eec:	4505                	li	a0,1
    4eee:	00001097          	auipc	ra,0x1
    4ef2:	c74080e7          	jalr	-908(ra) # 5b62 <exit>
    4ef6:	fb040793          	addi	a5,s0,-80
    4efa:	973e                	add	a4,a4,a5
    4efc:	fd770823          	sb	s7,-48(a4)
    4f00:	2a85                	addiw	s5,s5,1
    4f02:	4641                	li	a2,16
    4f04:	f7040593          	addi	a1,s0,-144
    4f08:	854a                	mv	a0,s2
    4f0a:	00001097          	auipc	ra,0x1
    4f0e:	c70080e7          	jalr	-912(ra) # 5b7a <read>
    4f12:	04a05a63          	blez	a0,4f66 <concreate+0x172>
    4f16:	f7045783          	lhu	a5,-144(s0)
    4f1a:	d7e5                	beqz	a5,4f02 <concreate+0x10e>
    4f1c:	f7244783          	lbu	a5,-142(s0)
    4f20:	ff4791e3          	bne	a5,s4,4f02 <concreate+0x10e>
    4f24:	f7444783          	lbu	a5,-140(s0)
    4f28:	ffe9                	bnez	a5,4f02 <concreate+0x10e>
    4f2a:	f7344783          	lbu	a5,-141(s0)
    4f2e:	fd07879b          	addiw	a5,a5,-48
    4f32:	0007871b          	sext.w	a4,a5
    4f36:	faeb60e3          	bltu	s6,a4,4ed6 <concreate+0xe2>
    4f3a:	fb040793          	addi	a5,s0,-80
    4f3e:	97ba                	add	a5,a5,a4
    4f40:	fd07c783          	lbu	a5,-48(a5)
    4f44:	dbcd                	beqz	a5,4ef6 <concreate+0x102>
    4f46:	f7240613          	addi	a2,s0,-142
    4f4a:	85ce                	mv	a1,s3
    4f4c:	00003517          	auipc	a0,0x3
    4f50:	f4450513          	addi	a0,a0,-188 # 7e90 <malloc+0x1ed0>
    4f54:	00001097          	auipc	ra,0x1
    4f58:	fae080e7          	jalr	-82(ra) # 5f02 <printf>
    4f5c:	4505                	li	a0,1
    4f5e:	00001097          	auipc	ra,0x1
    4f62:	c04080e7          	jalr	-1020(ra) # 5b62 <exit>
    4f66:	854a                	mv	a0,s2
    4f68:	00001097          	auipc	ra,0x1
    4f6c:	c22080e7          	jalr	-990(ra) # 5b8a <close>
    4f70:	02800793          	li	a5,40
    4f74:	00fa9763          	bne	s5,a5,4f82 <concreate+0x18e>
    4f78:	4a8d                	li	s5,3
    4f7a:	4b05                	li	s6,1
    4f7c:	02800a13          	li	s4,40
    4f80:	a8c9                	j	5052 <concreate+0x25e>
    4f82:	85ce                	mv	a1,s3
    4f84:	00003517          	auipc	a0,0x3
    4f88:	f3450513          	addi	a0,a0,-204 # 7eb8 <malloc+0x1ef8>
    4f8c:	00001097          	auipc	ra,0x1
    4f90:	f76080e7          	jalr	-138(ra) # 5f02 <printf>
    4f94:	4505                	li	a0,1
    4f96:	00001097          	auipc	ra,0x1
    4f9a:	bcc080e7          	jalr	-1076(ra) # 5b62 <exit>
    4f9e:	85ce                	mv	a1,s3
    4fa0:	00002517          	auipc	a0,0x2
    4fa4:	9f050513          	addi	a0,a0,-1552 # 6990 <malloc+0x9d0>
    4fa8:	00001097          	auipc	ra,0x1
    4fac:	f5a080e7          	jalr	-166(ra) # 5f02 <printf>
    4fb0:	4505                	li	a0,1
    4fb2:	00001097          	auipc	ra,0x1
    4fb6:	bb0080e7          	jalr	-1104(ra) # 5b62 <exit>
    4fba:	4581                	li	a1,0
    4fbc:	fa840513          	addi	a0,s0,-88
    4fc0:	00001097          	auipc	ra,0x1
    4fc4:	be2080e7          	jalr	-1054(ra) # 5ba2 <open>
    4fc8:	00001097          	auipc	ra,0x1
    4fcc:	bc2080e7          	jalr	-1086(ra) # 5b8a <close>
    4fd0:	4581                	li	a1,0
    4fd2:	fa840513          	addi	a0,s0,-88
    4fd6:	00001097          	auipc	ra,0x1
    4fda:	bcc080e7          	jalr	-1076(ra) # 5ba2 <open>
    4fde:	00001097          	auipc	ra,0x1
    4fe2:	bac080e7          	jalr	-1108(ra) # 5b8a <close>
    4fe6:	4581                	li	a1,0
    4fe8:	fa840513          	addi	a0,s0,-88
    4fec:	00001097          	auipc	ra,0x1
    4ff0:	bb6080e7          	jalr	-1098(ra) # 5ba2 <open>
    4ff4:	00001097          	auipc	ra,0x1
    4ff8:	b96080e7          	jalr	-1130(ra) # 5b8a <close>
    4ffc:	4581                	li	a1,0
    4ffe:	fa840513          	addi	a0,s0,-88
    5002:	00001097          	auipc	ra,0x1
    5006:	ba0080e7          	jalr	-1120(ra) # 5ba2 <open>
    500a:	00001097          	auipc	ra,0x1
    500e:	b80080e7          	jalr	-1152(ra) # 5b8a <close>
    5012:	4581                	li	a1,0
    5014:	fa840513          	addi	a0,s0,-88
    5018:	00001097          	auipc	ra,0x1
    501c:	b8a080e7          	jalr	-1142(ra) # 5ba2 <open>
    5020:	00001097          	auipc	ra,0x1
    5024:	b6a080e7          	jalr	-1174(ra) # 5b8a <close>
    5028:	4581                	li	a1,0
    502a:	fa840513          	addi	a0,s0,-88
    502e:	00001097          	auipc	ra,0x1
    5032:	b74080e7          	jalr	-1164(ra) # 5ba2 <open>
    5036:	00001097          	auipc	ra,0x1
    503a:	b54080e7          	jalr	-1196(ra) # 5b8a <close>
    503e:	08090363          	beqz	s2,50c4 <concreate+0x2d0>
    5042:	4501                	li	a0,0
    5044:	00001097          	auipc	ra,0x1
    5048:	b26080e7          	jalr	-1242(ra) # 5b6a <wait>
    504c:	2485                	addiw	s1,s1,1
    504e:	0f448563          	beq	s1,s4,5138 <concreate+0x344>
    5052:	0304879b          	addiw	a5,s1,48
    5056:	faf404a3          	sb	a5,-87(s0)
    505a:	00001097          	auipc	ra,0x1
    505e:	b00080e7          	jalr	-1280(ra) # 5b5a <fork>
    5062:	892a                	mv	s2,a0
    5064:	f2054de3          	bltz	a0,4f9e <concreate+0x1aa>
    5068:	0354e73b          	remw	a4,s1,s5
    506c:	00a767b3          	or	a5,a4,a0
    5070:	2781                	sext.w	a5,a5
    5072:	d7a1                	beqz	a5,4fba <concreate+0x1c6>
    5074:	01671363          	bne	a4,s6,507a <concreate+0x286>
    5078:	f129                	bnez	a0,4fba <concreate+0x1c6>
    507a:	fa840513          	addi	a0,s0,-88
    507e:	00001097          	auipc	ra,0x1
    5082:	b34080e7          	jalr	-1228(ra) # 5bb2 <unlink>
    5086:	fa840513          	addi	a0,s0,-88
    508a:	00001097          	auipc	ra,0x1
    508e:	b28080e7          	jalr	-1240(ra) # 5bb2 <unlink>
    5092:	fa840513          	addi	a0,s0,-88
    5096:	00001097          	auipc	ra,0x1
    509a:	b1c080e7          	jalr	-1252(ra) # 5bb2 <unlink>
    509e:	fa840513          	addi	a0,s0,-88
    50a2:	00001097          	auipc	ra,0x1
    50a6:	b10080e7          	jalr	-1264(ra) # 5bb2 <unlink>
    50aa:	fa840513          	addi	a0,s0,-88
    50ae:	00001097          	auipc	ra,0x1
    50b2:	b04080e7          	jalr	-1276(ra) # 5bb2 <unlink>
    50b6:	fa840513          	addi	a0,s0,-88
    50ba:	00001097          	auipc	ra,0x1
    50be:	af8080e7          	jalr	-1288(ra) # 5bb2 <unlink>
    50c2:	bfb5                	j	503e <concreate+0x24a>
    50c4:	4501                	li	a0,0
    50c6:	00001097          	auipc	ra,0x1
    50ca:	a9c080e7          	jalr	-1380(ra) # 5b62 <exit>
    50ce:	00001097          	auipc	ra,0x1
    50d2:	abc080e7          	jalr	-1348(ra) # 5b8a <close>
    50d6:	bb65                	j	4e8e <concreate+0x9a>
    50d8:	00001097          	auipc	ra,0x1
    50dc:	ab2080e7          	jalr	-1358(ra) # 5b8a <close>
    50e0:	f6c40513          	addi	a0,s0,-148
    50e4:	00001097          	auipc	ra,0x1
    50e8:	a86080e7          	jalr	-1402(ra) # 5b6a <wait>
    50ec:	f6c42483          	lw	s1,-148(s0)
    50f0:	da0494e3          	bnez	s1,4e98 <concreate+0xa4>
    50f4:	2905                	addiw	s2,s2,1
    50f6:	db4906e3          	beq	s2,s4,4ea2 <concreate+0xae>
    50fa:	0309079b          	addiw	a5,s2,48
    50fe:	faf404a3          	sb	a5,-87(s0)
    5102:	fa840513          	addi	a0,s0,-88
    5106:	00001097          	auipc	ra,0x1
    510a:	aac080e7          	jalr	-1364(ra) # 5bb2 <unlink>
    510e:	00001097          	auipc	ra,0x1
    5112:	a4c080e7          	jalr	-1460(ra) # 5b5a <fork>
    5116:	d20503e3          	beqz	a0,4e3c <concreate+0x48>
    511a:	036967bb          	remw	a5,s2,s6
    511e:	d15787e3          	beq	a5,s5,4e2c <concreate+0x38>
    5122:	20200593          	li	a1,514
    5126:	fa840513          	addi	a0,s0,-88
    512a:	00001097          	auipc	ra,0x1
    512e:	a78080e7          	jalr	-1416(ra) # 5ba2 <open>
    5132:	fa0553e3          	bgez	a0,50d8 <concreate+0x2e4>
    5136:	b31d                	j	4e5c <concreate+0x68>
    5138:	60ea                	ld	ra,152(sp)
    513a:	644a                	ld	s0,144(sp)
    513c:	64aa                	ld	s1,136(sp)
    513e:	690a                	ld	s2,128(sp)
    5140:	79e6                	ld	s3,120(sp)
    5142:	7a46                	ld	s4,112(sp)
    5144:	7aa6                	ld	s5,104(sp)
    5146:	7b06                	ld	s6,96(sp)
    5148:	6be6                	ld	s7,88(sp)
    514a:	610d                	addi	sp,sp,160
    514c:	8082                	ret

000000000000514e <bigfile>:
    514e:	7139                	addi	sp,sp,-64
    5150:	fc06                	sd	ra,56(sp)
    5152:	f822                	sd	s0,48(sp)
    5154:	f426                	sd	s1,40(sp)
    5156:	f04a                	sd	s2,32(sp)
    5158:	ec4e                	sd	s3,24(sp)
    515a:	e852                	sd	s4,16(sp)
    515c:	e456                	sd	s5,8(sp)
    515e:	0080                	addi	s0,sp,64
    5160:	8aaa                	mv	s5,a0
    5162:	00003517          	auipc	a0,0x3
    5166:	d8e50513          	addi	a0,a0,-626 # 7ef0 <malloc+0x1f30>
    516a:	00001097          	auipc	ra,0x1
    516e:	a48080e7          	jalr	-1464(ra) # 5bb2 <unlink>
    5172:	20200593          	li	a1,514
    5176:	00003517          	auipc	a0,0x3
    517a:	d7a50513          	addi	a0,a0,-646 # 7ef0 <malloc+0x1f30>
    517e:	00001097          	auipc	ra,0x1
    5182:	a24080e7          	jalr	-1500(ra) # 5ba2 <open>
    5186:	89aa                	mv	s3,a0
    5188:	4481                	li	s1,0
    518a:	00008917          	auipc	s2,0x8
    518e:	ade90913          	addi	s2,s2,-1314 # cc68 <buf>
    5192:	4a51                	li	s4,20
    5194:	0a054063          	bltz	a0,5234 <bigfile+0xe6>
    5198:	25800613          	li	a2,600
    519c:	85a6                	mv	a1,s1
    519e:	854a                	mv	a0,s2
    51a0:	00000097          	auipc	ra,0x0
    51a4:	7be080e7          	jalr	1982(ra) # 595e <memset>
    51a8:	25800613          	li	a2,600
    51ac:	85ca                	mv	a1,s2
    51ae:	854e                	mv	a0,s3
    51b0:	00001097          	auipc	ra,0x1
    51b4:	9d2080e7          	jalr	-1582(ra) # 5b82 <write>
    51b8:	25800793          	li	a5,600
    51bc:	08f51a63          	bne	a0,a5,5250 <bigfile+0x102>
    51c0:	2485                	addiw	s1,s1,1
    51c2:	fd449be3          	bne	s1,s4,5198 <bigfile+0x4a>
    51c6:	854e                	mv	a0,s3
    51c8:	00001097          	auipc	ra,0x1
    51cc:	9c2080e7          	jalr	-1598(ra) # 5b8a <close>
    51d0:	4581                	li	a1,0
    51d2:	00003517          	auipc	a0,0x3
    51d6:	d1e50513          	addi	a0,a0,-738 # 7ef0 <malloc+0x1f30>
    51da:	00001097          	auipc	ra,0x1
    51de:	9c8080e7          	jalr	-1592(ra) # 5ba2 <open>
    51e2:	8a2a                	mv	s4,a0
    51e4:	4981                	li	s3,0
    51e6:	4481                	li	s1,0
    51e8:	00008917          	auipc	s2,0x8
    51ec:	a8090913          	addi	s2,s2,-1408 # cc68 <buf>
    51f0:	06054e63          	bltz	a0,526c <bigfile+0x11e>
    51f4:	12c00613          	li	a2,300
    51f8:	85ca                	mv	a1,s2
    51fa:	8552                	mv	a0,s4
    51fc:	00001097          	auipc	ra,0x1
    5200:	97e080e7          	jalr	-1666(ra) # 5b7a <read>
    5204:	08054263          	bltz	a0,5288 <bigfile+0x13a>
    5208:	c971                	beqz	a0,52dc <bigfile+0x18e>
    520a:	12c00793          	li	a5,300
    520e:	08f51b63          	bne	a0,a5,52a4 <bigfile+0x156>
    5212:	01f4d79b          	srliw	a5,s1,0x1f
    5216:	9fa5                	addw	a5,a5,s1
    5218:	4017d79b          	sraiw	a5,a5,0x1
    521c:	00094703          	lbu	a4,0(s2)
    5220:	0af71063          	bne	a4,a5,52c0 <bigfile+0x172>
    5224:	12b94703          	lbu	a4,299(s2)
    5228:	08f71c63          	bne	a4,a5,52c0 <bigfile+0x172>
    522c:	12c9899b          	addiw	s3,s3,300
    5230:	2485                	addiw	s1,s1,1
    5232:	b7c9                	j	51f4 <bigfile+0xa6>
    5234:	85d6                	mv	a1,s5
    5236:	00003517          	auipc	a0,0x3
    523a:	cca50513          	addi	a0,a0,-822 # 7f00 <malloc+0x1f40>
    523e:	00001097          	auipc	ra,0x1
    5242:	cc4080e7          	jalr	-828(ra) # 5f02 <printf>
    5246:	4505                	li	a0,1
    5248:	00001097          	auipc	ra,0x1
    524c:	91a080e7          	jalr	-1766(ra) # 5b62 <exit>
    5250:	85d6                	mv	a1,s5
    5252:	00003517          	auipc	a0,0x3
    5256:	cce50513          	addi	a0,a0,-818 # 7f20 <malloc+0x1f60>
    525a:	00001097          	auipc	ra,0x1
    525e:	ca8080e7          	jalr	-856(ra) # 5f02 <printf>
    5262:	4505                	li	a0,1
    5264:	00001097          	auipc	ra,0x1
    5268:	8fe080e7          	jalr	-1794(ra) # 5b62 <exit>
    526c:	85d6                	mv	a1,s5
    526e:	00003517          	auipc	a0,0x3
    5272:	cd250513          	addi	a0,a0,-814 # 7f40 <malloc+0x1f80>
    5276:	00001097          	auipc	ra,0x1
    527a:	c8c080e7          	jalr	-884(ra) # 5f02 <printf>
    527e:	4505                	li	a0,1
    5280:	00001097          	auipc	ra,0x1
    5284:	8e2080e7          	jalr	-1822(ra) # 5b62 <exit>
    5288:	85d6                	mv	a1,s5
    528a:	00003517          	auipc	a0,0x3
    528e:	cd650513          	addi	a0,a0,-810 # 7f60 <malloc+0x1fa0>
    5292:	00001097          	auipc	ra,0x1
    5296:	c70080e7          	jalr	-912(ra) # 5f02 <printf>
    529a:	4505                	li	a0,1
    529c:	00001097          	auipc	ra,0x1
    52a0:	8c6080e7          	jalr	-1850(ra) # 5b62 <exit>
    52a4:	85d6                	mv	a1,s5
    52a6:	00003517          	auipc	a0,0x3
    52aa:	cda50513          	addi	a0,a0,-806 # 7f80 <malloc+0x1fc0>
    52ae:	00001097          	auipc	ra,0x1
    52b2:	c54080e7          	jalr	-940(ra) # 5f02 <printf>
    52b6:	4505                	li	a0,1
    52b8:	00001097          	auipc	ra,0x1
    52bc:	8aa080e7          	jalr	-1878(ra) # 5b62 <exit>
    52c0:	85d6                	mv	a1,s5
    52c2:	00003517          	auipc	a0,0x3
    52c6:	cd650513          	addi	a0,a0,-810 # 7f98 <malloc+0x1fd8>
    52ca:	00001097          	auipc	ra,0x1
    52ce:	c38080e7          	jalr	-968(ra) # 5f02 <printf>
    52d2:	4505                	li	a0,1
    52d4:	00001097          	auipc	ra,0x1
    52d8:	88e080e7          	jalr	-1906(ra) # 5b62 <exit>
    52dc:	8552                	mv	a0,s4
    52de:	00001097          	auipc	ra,0x1
    52e2:	8ac080e7          	jalr	-1876(ra) # 5b8a <close>
    52e6:	678d                	lui	a5,0x3
    52e8:	ee078793          	addi	a5,a5,-288 # 2ee0 <sbrk8000+0x22>
    52ec:	02f99363          	bne	s3,a5,5312 <bigfile+0x1c4>
    52f0:	00003517          	auipc	a0,0x3
    52f4:	c0050513          	addi	a0,a0,-1024 # 7ef0 <malloc+0x1f30>
    52f8:	00001097          	auipc	ra,0x1
    52fc:	8ba080e7          	jalr	-1862(ra) # 5bb2 <unlink>
    5300:	70e2                	ld	ra,56(sp)
    5302:	7442                	ld	s0,48(sp)
    5304:	74a2                	ld	s1,40(sp)
    5306:	7902                	ld	s2,32(sp)
    5308:	69e2                	ld	s3,24(sp)
    530a:	6a42                	ld	s4,16(sp)
    530c:	6aa2                	ld	s5,8(sp)
    530e:	6121                	addi	sp,sp,64
    5310:	8082                	ret
    5312:	85d6                	mv	a1,s5
    5314:	00003517          	auipc	a0,0x3
    5318:	ca450513          	addi	a0,a0,-860 # 7fb8 <malloc+0x1ff8>
    531c:	00001097          	auipc	ra,0x1
    5320:	be6080e7          	jalr	-1050(ra) # 5f02 <printf>
    5324:	4505                	li	a0,1
    5326:	00001097          	auipc	ra,0x1
    532a:	83c080e7          	jalr	-1988(ra) # 5b62 <exit>

000000000000532e <fsfull>:
    532e:	7171                	addi	sp,sp,-176
    5330:	f506                	sd	ra,168(sp)
    5332:	f122                	sd	s0,160(sp)
    5334:	ed26                	sd	s1,152(sp)
    5336:	e94a                	sd	s2,144(sp)
    5338:	e54e                	sd	s3,136(sp)
    533a:	e152                	sd	s4,128(sp)
    533c:	fcd6                	sd	s5,120(sp)
    533e:	f8da                	sd	s6,112(sp)
    5340:	f4de                	sd	s7,104(sp)
    5342:	f0e2                	sd	s8,96(sp)
    5344:	ece6                	sd	s9,88(sp)
    5346:	e8ea                	sd	s10,80(sp)
    5348:	e4ee                	sd	s11,72(sp)
    534a:	1900                	addi	s0,sp,176
    534c:	00003517          	auipc	a0,0x3
    5350:	c8c50513          	addi	a0,a0,-884 # 7fd8 <malloc+0x2018>
    5354:	00001097          	auipc	ra,0x1
    5358:	bae080e7          	jalr	-1106(ra) # 5f02 <printf>
    535c:	4481                	li	s1,0
    535e:	06600d13          	li	s10,102
    5362:	3e800c13          	li	s8,1000
    5366:	06400b93          	li	s7,100
    536a:	4b29                	li	s6,10
    536c:	00003c97          	auipc	s9,0x3
    5370:	c7cc8c93          	addi	s9,s9,-900 # 7fe8 <malloc+0x2028>
    5374:	4d81                	li	s11,0
    5376:	00008a17          	auipc	s4,0x8
    537a:	8f2a0a13          	addi	s4,s4,-1806 # cc68 <buf>
    537e:	f5a40823          	sb	s10,-176(s0)
    5382:	0384c7bb          	divw	a5,s1,s8
    5386:	0307879b          	addiw	a5,a5,48
    538a:	f4f408a3          	sb	a5,-175(s0)
    538e:	0384e7bb          	remw	a5,s1,s8
    5392:	0377c7bb          	divw	a5,a5,s7
    5396:	0307879b          	addiw	a5,a5,48
    539a:	f4f40923          	sb	a5,-174(s0)
    539e:	0374e7bb          	remw	a5,s1,s7
    53a2:	0367c7bb          	divw	a5,a5,s6
    53a6:	0307879b          	addiw	a5,a5,48
    53aa:	f4f409a3          	sb	a5,-173(s0)
    53ae:	0364e7bb          	remw	a5,s1,s6
    53b2:	0307879b          	addiw	a5,a5,48
    53b6:	f4f40a23          	sb	a5,-172(s0)
    53ba:	f4040aa3          	sb	zero,-171(s0)
    53be:	f5040593          	addi	a1,s0,-176
    53c2:	8566                	mv	a0,s9
    53c4:	00001097          	auipc	ra,0x1
    53c8:	b3e080e7          	jalr	-1218(ra) # 5f02 <printf>
    53cc:	20200593          	li	a1,514
    53d0:	f5040513          	addi	a0,s0,-176
    53d4:	00000097          	auipc	ra,0x0
    53d8:	7ce080e7          	jalr	1998(ra) # 5ba2 <open>
    53dc:	892a                	mv	s2,a0
    53de:	0a055663          	bgez	a0,548a <fsfull+0x15c>
    53e2:	f5040593          	addi	a1,s0,-176
    53e6:	00003517          	auipc	a0,0x3
    53ea:	c1250513          	addi	a0,a0,-1006 # 7ff8 <malloc+0x2038>
    53ee:	00001097          	auipc	ra,0x1
    53f2:	b14080e7          	jalr	-1260(ra) # 5f02 <printf>
    53f6:	0604c363          	bltz	s1,545c <fsfull+0x12e>
    53fa:	06600b13          	li	s6,102
    53fe:	3e800a13          	li	s4,1000
    5402:	06400993          	li	s3,100
    5406:	4929                	li	s2,10
    5408:	5afd                	li	s5,-1
    540a:	f5640823          	sb	s6,-176(s0)
    540e:	0344c7bb          	divw	a5,s1,s4
    5412:	0307879b          	addiw	a5,a5,48
    5416:	f4f408a3          	sb	a5,-175(s0)
    541a:	0344e7bb          	remw	a5,s1,s4
    541e:	0337c7bb          	divw	a5,a5,s3
    5422:	0307879b          	addiw	a5,a5,48
    5426:	f4f40923          	sb	a5,-174(s0)
    542a:	0334e7bb          	remw	a5,s1,s3
    542e:	0327c7bb          	divw	a5,a5,s2
    5432:	0307879b          	addiw	a5,a5,48
    5436:	f4f409a3          	sb	a5,-173(s0)
    543a:	0324e7bb          	remw	a5,s1,s2
    543e:	0307879b          	addiw	a5,a5,48
    5442:	f4f40a23          	sb	a5,-172(s0)
    5446:	f4040aa3          	sb	zero,-171(s0)
    544a:	f5040513          	addi	a0,s0,-176
    544e:	00000097          	auipc	ra,0x0
    5452:	764080e7          	jalr	1892(ra) # 5bb2 <unlink>
    5456:	34fd                	addiw	s1,s1,-1
    5458:	fb5499e3          	bne	s1,s5,540a <fsfull+0xdc>
    545c:	00003517          	auipc	a0,0x3
    5460:	bbc50513          	addi	a0,a0,-1092 # 8018 <malloc+0x2058>
    5464:	00001097          	auipc	ra,0x1
    5468:	a9e080e7          	jalr	-1378(ra) # 5f02 <printf>
    546c:	70aa                	ld	ra,168(sp)
    546e:	740a                	ld	s0,160(sp)
    5470:	64ea                	ld	s1,152(sp)
    5472:	694a                	ld	s2,144(sp)
    5474:	69aa                	ld	s3,136(sp)
    5476:	6a0a                	ld	s4,128(sp)
    5478:	7ae6                	ld	s5,120(sp)
    547a:	7b46                	ld	s6,112(sp)
    547c:	7ba6                	ld	s7,104(sp)
    547e:	7c06                	ld	s8,96(sp)
    5480:	6ce6                	ld	s9,88(sp)
    5482:	6d46                	ld	s10,80(sp)
    5484:	6da6                	ld	s11,72(sp)
    5486:	614d                	addi	sp,sp,176
    5488:	8082                	ret
    548a:	89ee                	mv	s3,s11
    548c:	3ff00a93          	li	s5,1023
    5490:	40000613          	li	a2,1024
    5494:	85d2                	mv	a1,s4
    5496:	854a                	mv	a0,s2
    5498:	00000097          	auipc	ra,0x0
    549c:	6ea080e7          	jalr	1770(ra) # 5b82 <write>
    54a0:	00aad563          	bge	s5,a0,54aa <fsfull+0x17c>
    54a4:	00a989bb          	addw	s3,s3,a0
    54a8:	b7e5                	j	5490 <fsfull+0x162>
    54aa:	85ce                	mv	a1,s3
    54ac:	00003517          	auipc	a0,0x3
    54b0:	b5c50513          	addi	a0,a0,-1188 # 8008 <malloc+0x2048>
    54b4:	00001097          	auipc	ra,0x1
    54b8:	a4e080e7          	jalr	-1458(ra) # 5f02 <printf>
    54bc:	854a                	mv	a0,s2
    54be:	00000097          	auipc	ra,0x0
    54c2:	6cc080e7          	jalr	1740(ra) # 5b8a <close>
    54c6:	f20988e3          	beqz	s3,53f6 <fsfull+0xc8>
    54ca:	2485                	addiw	s1,s1,1
    54cc:	bd4d                	j	537e <fsfull+0x50>

00000000000054ce <run>:
    54ce:	7179                	addi	sp,sp,-48
    54d0:	f406                	sd	ra,40(sp)
    54d2:	f022                	sd	s0,32(sp)
    54d4:	ec26                	sd	s1,24(sp)
    54d6:	e84a                	sd	s2,16(sp)
    54d8:	1800                	addi	s0,sp,48
    54da:	84aa                	mv	s1,a0
    54dc:	892e                	mv	s2,a1
    54de:	00003517          	auipc	a0,0x3
    54e2:	b5250513          	addi	a0,a0,-1198 # 8030 <malloc+0x2070>
    54e6:	00001097          	auipc	ra,0x1
    54ea:	a1c080e7          	jalr	-1508(ra) # 5f02 <printf>
    54ee:	00000097          	auipc	ra,0x0
    54f2:	66c080e7          	jalr	1644(ra) # 5b5a <fork>
    54f6:	02054e63          	bltz	a0,5532 <run+0x64>
    54fa:	c929                	beqz	a0,554c <run+0x7e>
    54fc:	fdc40513          	addi	a0,s0,-36
    5500:	00000097          	auipc	ra,0x0
    5504:	66a080e7          	jalr	1642(ra) # 5b6a <wait>
    5508:	fdc42783          	lw	a5,-36(s0)
    550c:	c7b9                	beqz	a5,555a <run+0x8c>
    550e:	00003517          	auipc	a0,0x3
    5512:	b4a50513          	addi	a0,a0,-1206 # 8058 <malloc+0x2098>
    5516:	00001097          	auipc	ra,0x1
    551a:	9ec080e7          	jalr	-1556(ra) # 5f02 <printf>
    551e:	fdc42503          	lw	a0,-36(s0)
    5522:	00153513          	seqz	a0,a0
    5526:	70a2                	ld	ra,40(sp)
    5528:	7402                	ld	s0,32(sp)
    552a:	64e2                	ld	s1,24(sp)
    552c:	6942                	ld	s2,16(sp)
    552e:	6145                	addi	sp,sp,48
    5530:	8082                	ret
    5532:	00003517          	auipc	a0,0x3
    5536:	b0e50513          	addi	a0,a0,-1266 # 8040 <malloc+0x2080>
    553a:	00001097          	auipc	ra,0x1
    553e:	9c8080e7          	jalr	-1592(ra) # 5f02 <printf>
    5542:	4505                	li	a0,1
    5544:	00000097          	auipc	ra,0x0
    5548:	61e080e7          	jalr	1566(ra) # 5b62 <exit>
    554c:	854a                	mv	a0,s2
    554e:	9482                	jalr	s1
    5550:	4501                	li	a0,0
    5552:	00000097          	auipc	ra,0x0
    5556:	610080e7          	jalr	1552(ra) # 5b62 <exit>
    555a:	00003517          	auipc	a0,0x3
    555e:	b0650513          	addi	a0,a0,-1274 # 8060 <malloc+0x20a0>
    5562:	00001097          	auipc	ra,0x1
    5566:	9a0080e7          	jalr	-1632(ra) # 5f02 <printf>
    556a:	bf55                	j	551e <run+0x50>

000000000000556c <runtests>:
    556c:	1101                	addi	sp,sp,-32
    556e:	ec06                	sd	ra,24(sp)
    5570:	e822                	sd	s0,16(sp)
    5572:	e426                	sd	s1,8(sp)
    5574:	e04a                	sd	s2,0(sp)
    5576:	1000                	addi	s0,sp,32
    5578:	84aa                	mv	s1,a0
    557a:	892e                	mv	s2,a1
    557c:	6508                	ld	a0,8(a0)
    557e:	ed09                	bnez	a0,5598 <runtests+0x2c>
    5580:	4501                	li	a0,0
    5582:	a82d                	j	55bc <runtests+0x50>
    5584:	648c                	ld	a1,8(s1)
    5586:	6088                	ld	a0,0(s1)
    5588:	00000097          	auipc	ra,0x0
    558c:	f46080e7          	jalr	-186(ra) # 54ce <run>
    5590:	cd09                	beqz	a0,55aa <runtests+0x3e>
    5592:	04c1                	addi	s1,s1,16
    5594:	6488                	ld	a0,8(s1)
    5596:	c11d                	beqz	a0,55bc <runtests+0x50>
    5598:	fe0906e3          	beqz	s2,5584 <runtests+0x18>
    559c:	85ca                	mv	a1,s2
    559e:	00000097          	auipc	ra,0x0
    55a2:	36a080e7          	jalr	874(ra) # 5908 <strcmp>
    55a6:	f575                	bnez	a0,5592 <runtests+0x26>
    55a8:	bff1                	j	5584 <runtests+0x18>
    55aa:	00003517          	auipc	a0,0x3
    55ae:	abe50513          	addi	a0,a0,-1346 # 8068 <malloc+0x20a8>
    55b2:	00001097          	auipc	ra,0x1
    55b6:	950080e7          	jalr	-1712(ra) # 5f02 <printf>
    55ba:	4505                	li	a0,1
    55bc:	60e2                	ld	ra,24(sp)
    55be:	6442                	ld	s0,16(sp)
    55c0:	64a2                	ld	s1,8(sp)
    55c2:	6902                	ld	s2,0(sp)
    55c4:	6105                	addi	sp,sp,32
    55c6:	8082                	ret

00000000000055c8 <countfree>:
    55c8:	7139                	addi	sp,sp,-64
    55ca:	fc06                	sd	ra,56(sp)
    55cc:	f822                	sd	s0,48(sp)
    55ce:	f426                	sd	s1,40(sp)
    55d0:	f04a                	sd	s2,32(sp)
    55d2:	ec4e                	sd	s3,24(sp)
    55d4:	0080                	addi	s0,sp,64
    55d6:	fc840513          	addi	a0,s0,-56
    55da:	00000097          	auipc	ra,0x0
    55de:	598080e7          	jalr	1432(ra) # 5b72 <pipe>
    55e2:	06054863          	bltz	a0,5652 <countfree+0x8a>
    55e6:	00000097          	auipc	ra,0x0
    55ea:	574080e7          	jalr	1396(ra) # 5b5a <fork>
    55ee:	06054f63          	bltz	a0,566c <countfree+0xa4>
    55f2:	ed59                	bnez	a0,5690 <countfree+0xc8>
    55f4:	fc842503          	lw	a0,-56(s0)
    55f8:	00000097          	auipc	ra,0x0
    55fc:	592080e7          	jalr	1426(ra) # 5b8a <close>
    5600:	54fd                	li	s1,-1
    5602:	4985                	li	s3,1
    5604:	00001917          	auipc	s2,0x1
    5608:	b7490913          	addi	s2,s2,-1164 # 6178 <malloc+0x1b8>
    560c:	6505                	lui	a0,0x1
    560e:	00000097          	auipc	ra,0x0
    5612:	5dc080e7          	jalr	1500(ra) # 5bea <sbrk>
    5616:	06950863          	beq	a0,s1,5686 <countfree+0xbe>
    561a:	6785                	lui	a5,0x1
    561c:	953e                	add	a0,a0,a5
    561e:	ff350fa3          	sb	s3,-1(a0) # fff <linktest+0x109>
    5622:	4605                	li	a2,1
    5624:	85ca                	mv	a1,s2
    5626:	fcc42503          	lw	a0,-52(s0)
    562a:	00000097          	auipc	ra,0x0
    562e:	558080e7          	jalr	1368(ra) # 5b82 <write>
    5632:	4785                	li	a5,1
    5634:	fcf50ce3          	beq	a0,a5,560c <countfree+0x44>
    5638:	00003517          	auipc	a0,0x3
    563c:	a8850513          	addi	a0,a0,-1400 # 80c0 <malloc+0x2100>
    5640:	00001097          	auipc	ra,0x1
    5644:	8c2080e7          	jalr	-1854(ra) # 5f02 <printf>
    5648:	4505                	li	a0,1
    564a:	00000097          	auipc	ra,0x0
    564e:	518080e7          	jalr	1304(ra) # 5b62 <exit>
    5652:	00003517          	auipc	a0,0x3
    5656:	a2e50513          	addi	a0,a0,-1490 # 8080 <malloc+0x20c0>
    565a:	00001097          	auipc	ra,0x1
    565e:	8a8080e7          	jalr	-1880(ra) # 5f02 <printf>
    5662:	4505                	li	a0,1
    5664:	00000097          	auipc	ra,0x0
    5668:	4fe080e7          	jalr	1278(ra) # 5b62 <exit>
    566c:	00003517          	auipc	a0,0x3
    5670:	a3450513          	addi	a0,a0,-1484 # 80a0 <malloc+0x20e0>
    5674:	00001097          	auipc	ra,0x1
    5678:	88e080e7          	jalr	-1906(ra) # 5f02 <printf>
    567c:	4505                	li	a0,1
    567e:	00000097          	auipc	ra,0x0
    5682:	4e4080e7          	jalr	1252(ra) # 5b62 <exit>
    5686:	4501                	li	a0,0
    5688:	00000097          	auipc	ra,0x0
    568c:	4da080e7          	jalr	1242(ra) # 5b62 <exit>
    5690:	fcc42503          	lw	a0,-52(s0)
    5694:	00000097          	auipc	ra,0x0
    5698:	4f6080e7          	jalr	1270(ra) # 5b8a <close>
    569c:	4481                	li	s1,0
    569e:	4605                	li	a2,1
    56a0:	fc740593          	addi	a1,s0,-57
    56a4:	fc842503          	lw	a0,-56(s0)
    56a8:	00000097          	auipc	ra,0x0
    56ac:	4d2080e7          	jalr	1234(ra) # 5b7a <read>
    56b0:	00054563          	bltz	a0,56ba <countfree+0xf2>
    56b4:	c105                	beqz	a0,56d4 <countfree+0x10c>
    56b6:	2485                	addiw	s1,s1,1
    56b8:	b7dd                	j	569e <countfree+0xd6>
    56ba:	00003517          	auipc	a0,0x3
    56be:	a2650513          	addi	a0,a0,-1498 # 80e0 <malloc+0x2120>
    56c2:	00001097          	auipc	ra,0x1
    56c6:	840080e7          	jalr	-1984(ra) # 5f02 <printf>
    56ca:	4505                	li	a0,1
    56cc:	00000097          	auipc	ra,0x0
    56d0:	496080e7          	jalr	1174(ra) # 5b62 <exit>
    56d4:	fc842503          	lw	a0,-56(s0)
    56d8:	00000097          	auipc	ra,0x0
    56dc:	4b2080e7          	jalr	1202(ra) # 5b8a <close>
    56e0:	4501                	li	a0,0
    56e2:	00000097          	auipc	ra,0x0
    56e6:	488080e7          	jalr	1160(ra) # 5b6a <wait>
    56ea:	8526                	mv	a0,s1
    56ec:	70e2                	ld	ra,56(sp)
    56ee:	7442                	ld	s0,48(sp)
    56f0:	74a2                	ld	s1,40(sp)
    56f2:	7902                	ld	s2,32(sp)
    56f4:	69e2                	ld	s3,24(sp)
    56f6:	6121                	addi	sp,sp,64
    56f8:	8082                	ret

00000000000056fa <drivetests>:
    56fa:	711d                	addi	sp,sp,-96
    56fc:	ec86                	sd	ra,88(sp)
    56fe:	e8a2                	sd	s0,80(sp)
    5700:	e4a6                	sd	s1,72(sp)
    5702:	e0ca                	sd	s2,64(sp)
    5704:	fc4e                	sd	s3,56(sp)
    5706:	f852                	sd	s4,48(sp)
    5708:	f456                	sd	s5,40(sp)
    570a:	f05a                	sd	s6,32(sp)
    570c:	ec5e                	sd	s7,24(sp)
    570e:	e862                	sd	s8,16(sp)
    5710:	e466                	sd	s9,8(sp)
    5712:	e06a                	sd	s10,0(sp)
    5714:	1080                	addi	s0,sp,96
    5716:	8a2a                	mv	s4,a0
    5718:	89ae                	mv	s3,a1
    571a:	8932                	mv	s2,a2
    571c:	00003b97          	auipc	s7,0x3
    5720:	9e4b8b93          	addi	s7,s7,-1564 # 8100 <malloc+0x2140>
    5724:	00004b17          	auipc	s6,0x4
    5728:	8ecb0b13          	addi	s6,s6,-1812 # 9010 <quicktests>
    572c:	4a89                	li	s5,2
    572e:	00003c97          	auipc	s9,0x3
    5732:	a0ac8c93          	addi	s9,s9,-1526 # 8138 <malloc+0x2178>
    5736:	00004c17          	auipc	s8,0x4
    573a:	c9ac0c13          	addi	s8,s8,-870 # 93d0 <slowtests>
    573e:	00003d17          	auipc	s10,0x3
    5742:	9dad0d13          	addi	s10,s10,-1574 # 8118 <malloc+0x2158>
    5746:	a839                	j	5764 <drivetests+0x6a>
    5748:	856a                	mv	a0,s10
    574a:	00000097          	auipc	ra,0x0
    574e:	7b8080e7          	jalr	1976(ra) # 5f02 <printf>
    5752:	a081                	j	5792 <drivetests+0x98>
    5754:	00000097          	auipc	ra,0x0
    5758:	e74080e7          	jalr	-396(ra) # 55c8 <countfree>
    575c:	06954263          	blt	a0,s1,57c0 <drivetests+0xc6>
    5760:	06098f63          	beqz	s3,57de <drivetests+0xe4>
    5764:	855e                	mv	a0,s7
    5766:	00000097          	auipc	ra,0x0
    576a:	79c080e7          	jalr	1948(ra) # 5f02 <printf>
    576e:	00000097          	auipc	ra,0x0
    5772:	e5a080e7          	jalr	-422(ra) # 55c8 <countfree>
    5776:	84aa                	mv	s1,a0
    5778:	85ca                	mv	a1,s2
    577a:	855a                	mv	a0,s6
    577c:	00000097          	auipc	ra,0x0
    5780:	df0080e7          	jalr	-528(ra) # 556c <runtests>
    5784:	c119                	beqz	a0,578a <drivetests+0x90>
    5786:	05599863          	bne	s3,s5,57d6 <drivetests+0xdc>
    578a:	fc0a15e3          	bnez	s4,5754 <drivetests+0x5a>
    578e:	fa090de3          	beqz	s2,5748 <drivetests+0x4e>
    5792:	85ca                	mv	a1,s2
    5794:	8562                	mv	a0,s8
    5796:	00000097          	auipc	ra,0x0
    579a:	dd6080e7          	jalr	-554(ra) # 556c <runtests>
    579e:	d95d                	beqz	a0,5754 <drivetests+0x5a>
    57a0:	03599d63          	bne	s3,s5,57da <drivetests+0xe0>
    57a4:	00000097          	auipc	ra,0x0
    57a8:	e24080e7          	jalr	-476(ra) # 55c8 <countfree>
    57ac:	fa955ae3          	bge	a0,s1,5760 <drivetests+0x66>
    57b0:	8626                	mv	a2,s1
    57b2:	85aa                	mv	a1,a0
    57b4:	8566                	mv	a0,s9
    57b6:	00000097          	auipc	ra,0x0
    57ba:	74c080e7          	jalr	1868(ra) # 5f02 <printf>
    57be:	b75d                	j	5764 <drivetests+0x6a>
    57c0:	8626                	mv	a2,s1
    57c2:	85aa                	mv	a1,a0
    57c4:	8566                	mv	a0,s9
    57c6:	00000097          	auipc	ra,0x0
    57ca:	73c080e7          	jalr	1852(ra) # 5f02 <printf>
    57ce:	f9598be3          	beq	s3,s5,5764 <drivetests+0x6a>
    57d2:	4505                	li	a0,1
    57d4:	a031                	j	57e0 <drivetests+0xe6>
    57d6:	4505                	li	a0,1
    57d8:	a021                	j	57e0 <drivetests+0xe6>
    57da:	4505                	li	a0,1
    57dc:	a011                	j	57e0 <drivetests+0xe6>
    57de:	854e                	mv	a0,s3
    57e0:	60e6                	ld	ra,88(sp)
    57e2:	6446                	ld	s0,80(sp)
    57e4:	64a6                	ld	s1,72(sp)
    57e6:	6906                	ld	s2,64(sp)
    57e8:	79e2                	ld	s3,56(sp)
    57ea:	7a42                	ld	s4,48(sp)
    57ec:	7aa2                	ld	s5,40(sp)
    57ee:	7b02                	ld	s6,32(sp)
    57f0:	6be2                	ld	s7,24(sp)
    57f2:	6c42                	ld	s8,16(sp)
    57f4:	6ca2                	ld	s9,8(sp)
    57f6:	6d02                	ld	s10,0(sp)
    57f8:	6125                	addi	sp,sp,96
    57fa:	8082                	ret

00000000000057fc <main>:
    57fc:	1101                	addi	sp,sp,-32
    57fe:	ec06                	sd	ra,24(sp)
    5800:	e822                	sd	s0,16(sp)
    5802:	e426                	sd	s1,8(sp)
    5804:	e04a                	sd	s2,0(sp)
    5806:	1000                	addi	s0,sp,32
    5808:	84aa                	mv	s1,a0
    580a:	4789                	li	a5,2
    580c:	02f50363          	beq	a0,a5,5832 <main+0x36>
    5810:	4785                	li	a5,1
    5812:	06a7cd63          	blt	a5,a0,588c <main+0x90>
    5816:	4601                	li	a2,0
    5818:	4501                	li	a0,0
    581a:	4481                	li	s1,0
    581c:	85a6                	mv	a1,s1
    581e:	00000097          	auipc	ra,0x0
    5822:	edc080e7          	jalr	-292(ra) # 56fa <drivetests>
    5826:	c949                	beqz	a0,58b8 <main+0xbc>
    5828:	4505                	li	a0,1
    582a:	00000097          	auipc	ra,0x0
    582e:	338080e7          	jalr	824(ra) # 5b62 <exit>
    5832:	892e                	mv	s2,a1
    5834:	00003597          	auipc	a1,0x3
    5838:	93458593          	addi	a1,a1,-1740 # 8168 <malloc+0x21a8>
    583c:	00893503          	ld	a0,8(s2)
    5840:	00000097          	auipc	ra,0x0
    5844:	0c8080e7          	jalr	200(ra) # 5908 <strcmp>
    5848:	cd39                	beqz	a0,58a6 <main+0xaa>
    584a:	00003597          	auipc	a1,0x3
    584e:	97658593          	addi	a1,a1,-1674 # 81c0 <malloc+0x2200>
    5852:	00893503          	ld	a0,8(s2)
    5856:	00000097          	auipc	ra,0x0
    585a:	0b2080e7          	jalr	178(ra) # 5908 <strcmp>
    585e:	c931                	beqz	a0,58b2 <main+0xb6>
    5860:	00003597          	auipc	a1,0x3
    5864:	95858593          	addi	a1,a1,-1704 # 81b8 <malloc+0x21f8>
    5868:	00893503          	ld	a0,8(s2)
    586c:	00000097          	auipc	ra,0x0
    5870:	09c080e7          	jalr	156(ra) # 5908 <strcmp>
    5874:	cd0d                	beqz	a0,58ae <main+0xb2>
    5876:	00893603          	ld	a2,8(s2)
    587a:	00064703          	lbu	a4,0(a2) # 3000 <fourteen+0x48>
    587e:	02d00793          	li	a5,45
    5882:	00f70563          	beq	a4,a5,588c <main+0x90>
    5886:	4501                	li	a0,0
    5888:	4481                	li	s1,0
    588a:	bf49                	j	581c <main+0x20>
    588c:	00003517          	auipc	a0,0x3
    5890:	8e450513          	addi	a0,a0,-1820 # 8170 <malloc+0x21b0>
    5894:	00000097          	auipc	ra,0x0
    5898:	66e080e7          	jalr	1646(ra) # 5f02 <printf>
    589c:	4505                	li	a0,1
    589e:	00000097          	auipc	ra,0x0
    58a2:	2c4080e7          	jalr	708(ra) # 5b62 <exit>
    58a6:	84aa                	mv	s1,a0
    58a8:	4601                	li	a2,0
    58aa:	4505                	li	a0,1
    58ac:	bf85                	j	581c <main+0x20>
    58ae:	4601                	li	a2,0
    58b0:	b7b5                	j	581c <main+0x20>
    58b2:	4601                	li	a2,0
    58b4:	4485                	li	s1,1
    58b6:	b79d                	j	581c <main+0x20>
    58b8:	00003517          	auipc	a0,0x3
    58bc:	8e850513          	addi	a0,a0,-1816 # 81a0 <malloc+0x21e0>
    58c0:	00000097          	auipc	ra,0x0
    58c4:	642080e7          	jalr	1602(ra) # 5f02 <printf>
    58c8:	4501                	li	a0,0
    58ca:	00000097          	auipc	ra,0x0
    58ce:	298080e7          	jalr	664(ra) # 5b62 <exit>

00000000000058d2 <_main>:
    58d2:	1141                	addi	sp,sp,-16
    58d4:	e406                	sd	ra,8(sp)
    58d6:	e022                	sd	s0,0(sp)
    58d8:	0800                	addi	s0,sp,16
    58da:	00000097          	auipc	ra,0x0
    58de:	f22080e7          	jalr	-222(ra) # 57fc <main>
    58e2:	4501                	li	a0,0
    58e4:	00000097          	auipc	ra,0x0
    58e8:	27e080e7          	jalr	638(ra) # 5b62 <exit>

00000000000058ec <strcpy>:
    58ec:	1141                	addi	sp,sp,-16
    58ee:	e422                	sd	s0,8(sp)
    58f0:	0800                	addi	s0,sp,16
    58f2:	87aa                	mv	a5,a0
    58f4:	0585                	addi	a1,a1,1
    58f6:	0785                	addi	a5,a5,1
    58f8:	fff5c703          	lbu	a4,-1(a1)
    58fc:	fee78fa3          	sb	a4,-1(a5) # fff <linktest+0x109>
    5900:	fb75                	bnez	a4,58f4 <strcpy+0x8>
    5902:	6422                	ld	s0,8(sp)
    5904:	0141                	addi	sp,sp,16
    5906:	8082                	ret

0000000000005908 <strcmp>:
    5908:	1141                	addi	sp,sp,-16
    590a:	e422                	sd	s0,8(sp)
    590c:	0800                	addi	s0,sp,16
    590e:	00054783          	lbu	a5,0(a0)
    5912:	cb91                	beqz	a5,5926 <strcmp+0x1e>
    5914:	0005c703          	lbu	a4,0(a1)
    5918:	00f71763          	bne	a4,a5,5926 <strcmp+0x1e>
    591c:	0505                	addi	a0,a0,1
    591e:	0585                	addi	a1,a1,1
    5920:	00054783          	lbu	a5,0(a0)
    5924:	fbe5                	bnez	a5,5914 <strcmp+0xc>
    5926:	0005c503          	lbu	a0,0(a1)
    592a:	40a7853b          	subw	a0,a5,a0
    592e:	6422                	ld	s0,8(sp)
    5930:	0141                	addi	sp,sp,16
    5932:	8082                	ret

0000000000005934 <strlen>:
    5934:	1141                	addi	sp,sp,-16
    5936:	e422                	sd	s0,8(sp)
    5938:	0800                	addi	s0,sp,16
    593a:	00054783          	lbu	a5,0(a0)
    593e:	cf91                	beqz	a5,595a <strlen+0x26>
    5940:	0505                	addi	a0,a0,1
    5942:	87aa                	mv	a5,a0
    5944:	4685                	li	a3,1
    5946:	9e89                	subw	a3,a3,a0
    5948:	00f6853b          	addw	a0,a3,a5
    594c:	0785                	addi	a5,a5,1
    594e:	fff7c703          	lbu	a4,-1(a5)
    5952:	fb7d                	bnez	a4,5948 <strlen+0x14>
    5954:	6422                	ld	s0,8(sp)
    5956:	0141                	addi	sp,sp,16
    5958:	8082                	ret
    595a:	4501                	li	a0,0
    595c:	bfe5                	j	5954 <strlen+0x20>

000000000000595e <memset>:
    595e:	1141                	addi	sp,sp,-16
    5960:	e422                	sd	s0,8(sp)
    5962:	0800                	addi	s0,sp,16
    5964:	ce09                	beqz	a2,597e <memset+0x20>
    5966:	87aa                	mv	a5,a0
    5968:	fff6071b          	addiw	a4,a2,-1
    596c:	1702                	slli	a4,a4,0x20
    596e:	9301                	srli	a4,a4,0x20
    5970:	0705                	addi	a4,a4,1
    5972:	972a                	add	a4,a4,a0
    5974:	00b78023          	sb	a1,0(a5)
    5978:	0785                	addi	a5,a5,1
    597a:	fee79de3          	bne	a5,a4,5974 <memset+0x16>
    597e:	6422                	ld	s0,8(sp)
    5980:	0141                	addi	sp,sp,16
    5982:	8082                	ret

0000000000005984 <strchr>:
    5984:	1141                	addi	sp,sp,-16
    5986:	e422                	sd	s0,8(sp)
    5988:	0800                	addi	s0,sp,16
    598a:	00054783          	lbu	a5,0(a0)
    598e:	cb99                	beqz	a5,59a4 <strchr+0x20>
    5990:	00f58763          	beq	a1,a5,599e <strchr+0x1a>
    5994:	0505                	addi	a0,a0,1
    5996:	00054783          	lbu	a5,0(a0)
    599a:	fbfd                	bnez	a5,5990 <strchr+0xc>
    599c:	4501                	li	a0,0
    599e:	6422                	ld	s0,8(sp)
    59a0:	0141                	addi	sp,sp,16
    59a2:	8082                	ret
    59a4:	4501                	li	a0,0
    59a6:	bfe5                	j	599e <strchr+0x1a>

00000000000059a8 <gets>:
    59a8:	711d                	addi	sp,sp,-96
    59aa:	ec86                	sd	ra,88(sp)
    59ac:	e8a2                	sd	s0,80(sp)
    59ae:	e4a6                	sd	s1,72(sp)
    59b0:	e0ca                	sd	s2,64(sp)
    59b2:	fc4e                	sd	s3,56(sp)
    59b4:	f852                	sd	s4,48(sp)
    59b6:	f456                	sd	s5,40(sp)
    59b8:	f05a                	sd	s6,32(sp)
    59ba:	ec5e                	sd	s7,24(sp)
    59bc:	1080                	addi	s0,sp,96
    59be:	8baa                	mv	s7,a0
    59c0:	8a2e                	mv	s4,a1
    59c2:	892a                	mv	s2,a0
    59c4:	4481                	li	s1,0
    59c6:	4aa9                	li	s5,10
    59c8:	4b35                	li	s6,13
    59ca:	89a6                	mv	s3,s1
    59cc:	2485                	addiw	s1,s1,1
    59ce:	0344d863          	bge	s1,s4,59fe <gets+0x56>
    59d2:	4605                	li	a2,1
    59d4:	faf40593          	addi	a1,s0,-81
    59d8:	4501                	li	a0,0
    59da:	00000097          	auipc	ra,0x0
    59de:	1a0080e7          	jalr	416(ra) # 5b7a <read>
    59e2:	00a05e63          	blez	a0,59fe <gets+0x56>
    59e6:	faf44783          	lbu	a5,-81(s0)
    59ea:	00f90023          	sb	a5,0(s2)
    59ee:	01578763          	beq	a5,s5,59fc <gets+0x54>
    59f2:	0905                	addi	s2,s2,1
    59f4:	fd679be3          	bne	a5,s6,59ca <gets+0x22>
    59f8:	89a6                	mv	s3,s1
    59fa:	a011                	j	59fe <gets+0x56>
    59fc:	89a6                	mv	s3,s1
    59fe:	99de                	add	s3,s3,s7
    5a00:	00098023          	sb	zero,0(s3)
    5a04:	855e                	mv	a0,s7
    5a06:	60e6                	ld	ra,88(sp)
    5a08:	6446                	ld	s0,80(sp)
    5a0a:	64a6                	ld	s1,72(sp)
    5a0c:	6906                	ld	s2,64(sp)
    5a0e:	79e2                	ld	s3,56(sp)
    5a10:	7a42                	ld	s4,48(sp)
    5a12:	7aa2                	ld	s5,40(sp)
    5a14:	7b02                	ld	s6,32(sp)
    5a16:	6be2                	ld	s7,24(sp)
    5a18:	6125                	addi	sp,sp,96
    5a1a:	8082                	ret

0000000000005a1c <stat>:
    5a1c:	1101                	addi	sp,sp,-32
    5a1e:	ec06                	sd	ra,24(sp)
    5a20:	e822                	sd	s0,16(sp)
    5a22:	e426                	sd	s1,8(sp)
    5a24:	e04a                	sd	s2,0(sp)
    5a26:	1000                	addi	s0,sp,32
    5a28:	892e                	mv	s2,a1
    5a2a:	4581                	li	a1,0
    5a2c:	00000097          	auipc	ra,0x0
    5a30:	176080e7          	jalr	374(ra) # 5ba2 <open>
    5a34:	02054563          	bltz	a0,5a5e <stat+0x42>
    5a38:	84aa                	mv	s1,a0
    5a3a:	85ca                	mv	a1,s2
    5a3c:	00000097          	auipc	ra,0x0
    5a40:	17e080e7          	jalr	382(ra) # 5bba <fstat>
    5a44:	892a                	mv	s2,a0
    5a46:	8526                	mv	a0,s1
    5a48:	00000097          	auipc	ra,0x0
    5a4c:	142080e7          	jalr	322(ra) # 5b8a <close>
    5a50:	854a                	mv	a0,s2
    5a52:	60e2                	ld	ra,24(sp)
    5a54:	6442                	ld	s0,16(sp)
    5a56:	64a2                	ld	s1,8(sp)
    5a58:	6902                	ld	s2,0(sp)
    5a5a:	6105                	addi	sp,sp,32
    5a5c:	8082                	ret
    5a5e:	597d                	li	s2,-1
    5a60:	bfc5                	j	5a50 <stat+0x34>

0000000000005a62 <atoi>:
    5a62:	1141                	addi	sp,sp,-16
    5a64:	e422                	sd	s0,8(sp)
    5a66:	0800                	addi	s0,sp,16
    5a68:	00054603          	lbu	a2,0(a0)
    5a6c:	fd06079b          	addiw	a5,a2,-48
    5a70:	0ff7f793          	andi	a5,a5,255
    5a74:	4725                	li	a4,9
    5a76:	02f76963          	bltu	a4,a5,5aa8 <atoi+0x46>
    5a7a:	86aa                	mv	a3,a0
    5a7c:	4501                	li	a0,0
    5a7e:	45a5                	li	a1,9
    5a80:	0685                	addi	a3,a3,1
    5a82:	0025179b          	slliw	a5,a0,0x2
    5a86:	9fa9                	addw	a5,a5,a0
    5a88:	0017979b          	slliw	a5,a5,0x1
    5a8c:	9fb1                	addw	a5,a5,a2
    5a8e:	fd07851b          	addiw	a0,a5,-48
    5a92:	0006c603          	lbu	a2,0(a3) # 1000 <linktest+0x10a>
    5a96:	fd06071b          	addiw	a4,a2,-48
    5a9a:	0ff77713          	andi	a4,a4,255
    5a9e:	fee5f1e3          	bgeu	a1,a4,5a80 <atoi+0x1e>
    5aa2:	6422                	ld	s0,8(sp)
    5aa4:	0141                	addi	sp,sp,16
    5aa6:	8082                	ret
    5aa8:	4501                	li	a0,0
    5aaa:	bfe5                	j	5aa2 <atoi+0x40>

0000000000005aac <memmove>:
    5aac:	1141                	addi	sp,sp,-16
    5aae:	e422                	sd	s0,8(sp)
    5ab0:	0800                	addi	s0,sp,16
    5ab2:	02b57663          	bgeu	a0,a1,5ade <memmove+0x32>
    5ab6:	02c05163          	blez	a2,5ad8 <memmove+0x2c>
    5aba:	fff6079b          	addiw	a5,a2,-1
    5abe:	1782                	slli	a5,a5,0x20
    5ac0:	9381                	srli	a5,a5,0x20
    5ac2:	0785                	addi	a5,a5,1
    5ac4:	97aa                	add	a5,a5,a0
    5ac6:	872a                	mv	a4,a0
    5ac8:	0585                	addi	a1,a1,1
    5aca:	0705                	addi	a4,a4,1
    5acc:	fff5c683          	lbu	a3,-1(a1)
    5ad0:	fed70fa3          	sb	a3,-1(a4)
    5ad4:	fee79ae3          	bne	a5,a4,5ac8 <memmove+0x1c>
    5ad8:	6422                	ld	s0,8(sp)
    5ada:	0141                	addi	sp,sp,16
    5adc:	8082                	ret
    5ade:	00c50733          	add	a4,a0,a2
    5ae2:	95b2                	add	a1,a1,a2
    5ae4:	fec05ae3          	blez	a2,5ad8 <memmove+0x2c>
    5ae8:	fff6079b          	addiw	a5,a2,-1
    5aec:	1782                	slli	a5,a5,0x20
    5aee:	9381                	srli	a5,a5,0x20
    5af0:	fff7c793          	not	a5,a5
    5af4:	97ba                	add	a5,a5,a4
    5af6:	15fd                	addi	a1,a1,-1
    5af8:	177d                	addi	a4,a4,-1
    5afa:	0005c683          	lbu	a3,0(a1)
    5afe:	00d70023          	sb	a3,0(a4)
    5b02:	fee79ae3          	bne	a5,a4,5af6 <memmove+0x4a>
    5b06:	bfc9                	j	5ad8 <memmove+0x2c>

0000000000005b08 <memcmp>:
    5b08:	1141                	addi	sp,sp,-16
    5b0a:	e422                	sd	s0,8(sp)
    5b0c:	0800                	addi	s0,sp,16
    5b0e:	ca05                	beqz	a2,5b3e <memcmp+0x36>
    5b10:	fff6069b          	addiw	a3,a2,-1
    5b14:	1682                	slli	a3,a3,0x20
    5b16:	9281                	srli	a3,a3,0x20
    5b18:	0685                	addi	a3,a3,1
    5b1a:	96aa                	add	a3,a3,a0
    5b1c:	00054783          	lbu	a5,0(a0)
    5b20:	0005c703          	lbu	a4,0(a1)
    5b24:	00e79863          	bne	a5,a4,5b34 <memcmp+0x2c>
    5b28:	0505                	addi	a0,a0,1
    5b2a:	0585                	addi	a1,a1,1
    5b2c:	fed518e3          	bne	a0,a3,5b1c <memcmp+0x14>
    5b30:	4501                	li	a0,0
    5b32:	a019                	j	5b38 <memcmp+0x30>
    5b34:	40e7853b          	subw	a0,a5,a4
    5b38:	6422                	ld	s0,8(sp)
    5b3a:	0141                	addi	sp,sp,16
    5b3c:	8082                	ret
    5b3e:	4501                	li	a0,0
    5b40:	bfe5                	j	5b38 <memcmp+0x30>

0000000000005b42 <memcpy>:
    5b42:	1141                	addi	sp,sp,-16
    5b44:	e406                	sd	ra,8(sp)
    5b46:	e022                	sd	s0,0(sp)
    5b48:	0800                	addi	s0,sp,16
    5b4a:	00000097          	auipc	ra,0x0
    5b4e:	f62080e7          	jalr	-158(ra) # 5aac <memmove>
    5b52:	60a2                	ld	ra,8(sp)
    5b54:	6402                	ld	s0,0(sp)
    5b56:	0141                	addi	sp,sp,16
    5b58:	8082                	ret

0000000000005b5a <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
    5b5a:	4885                	li	a7,1
 ecall
    5b5c:	00000073          	ecall
 ret
    5b60:	8082                	ret

0000000000005b62 <exit>:
.global exit
exit:
 li a7, SYS_exit
    5b62:	4889                	li	a7,2
 ecall
    5b64:	00000073          	ecall
 ret
    5b68:	8082                	ret

0000000000005b6a <wait>:
.global wait
wait:
 li a7, SYS_wait
    5b6a:	488d                	li	a7,3
 ecall
    5b6c:	00000073          	ecall
 ret
    5b70:	8082                	ret

0000000000005b72 <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
    5b72:	4891                	li	a7,4
 ecall
    5b74:	00000073          	ecall
 ret
    5b78:	8082                	ret

0000000000005b7a <read>:
.global read
read:
 li a7, SYS_read
    5b7a:	4895                	li	a7,5
 ecall
    5b7c:	00000073          	ecall
 ret
    5b80:	8082                	ret

0000000000005b82 <write>:
.global write
write:
 li a7, SYS_write
    5b82:	48c1                	li	a7,16
 ecall
    5b84:	00000073          	ecall
 ret
    5b88:	8082                	ret

0000000000005b8a <close>:
.global close
close:
 li a7, SYS_close
    5b8a:	48d5                	li	a7,21
 ecall
    5b8c:	00000073          	ecall
 ret
    5b90:	8082                	ret

0000000000005b92 <kill>:
.global kill
kill:
 li a7, SYS_kill
    5b92:	4899                	li	a7,6
 ecall
    5b94:	00000073          	ecall
 ret
    5b98:	8082                	ret

0000000000005b9a <exec>:
.global exec
exec:
 li a7, SYS_exec
    5b9a:	489d                	li	a7,7
 ecall
    5b9c:	00000073          	ecall
 ret
    5ba0:	8082                	ret

0000000000005ba2 <open>:
.global open
open:
 li a7, SYS_open
    5ba2:	48bd                	li	a7,15
 ecall
    5ba4:	00000073          	ecall
 ret
    5ba8:	8082                	ret

0000000000005baa <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
    5baa:	48c5                	li	a7,17
 ecall
    5bac:	00000073          	ecall
 ret
    5bb0:	8082                	ret

0000000000005bb2 <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
    5bb2:	48c9                	li	a7,18
 ecall
    5bb4:	00000073          	ecall
 ret
    5bb8:	8082                	ret

0000000000005bba <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
    5bba:	48a1                	li	a7,8
 ecall
    5bbc:	00000073          	ecall
 ret
    5bc0:	8082                	ret

0000000000005bc2 <link>:
.global link
link:
 li a7, SYS_link
    5bc2:	48cd                	li	a7,19
 ecall
    5bc4:	00000073          	ecall
 ret
    5bc8:	8082                	ret

0000000000005bca <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
    5bca:	48d1                	li	a7,20
 ecall
    5bcc:	00000073          	ecall
 ret
    5bd0:	8082                	ret

0000000000005bd2 <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
    5bd2:	48a5                	li	a7,9
 ecall
    5bd4:	00000073          	ecall
 ret
    5bd8:	8082                	ret

0000000000005bda <dup>:
.global dup
dup:
 li a7, SYS_dup
    5bda:	48a9                	li	a7,10
 ecall
    5bdc:	00000073          	ecall
 ret
    5be0:	8082                	ret

0000000000005be2 <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
    5be2:	48ad                	li	a7,11
 ecall
    5be4:	00000073          	ecall
 ret
    5be8:	8082                	ret

0000000000005bea <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
    5bea:	48b1                	li	a7,12
 ecall
    5bec:	00000073          	ecall
 ret
    5bf0:	8082                	ret

0000000000005bf2 <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
    5bf2:	48b5                	li	a7,13
 ecall
    5bf4:	00000073          	ecall
 ret
    5bf8:	8082                	ret

0000000000005bfa <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
    5bfa:	48b9                	li	a7,14
 ecall
    5bfc:	00000073          	ecall
 ret
    5c00:	8082                	ret

0000000000005c02 <trace>:
.global trace
trace:
 li a7, SYS_trace
    5c02:	48d9                	li	a7,22
 ecall
    5c04:	00000073          	ecall
 ret
    5c08:	8082                	ret

0000000000005c0a <waitx>:
.global waitx
waitx:
 li a7, SYS_waitx
    5c0a:	48e1                	li	a7,24
 ecall
    5c0c:	00000073          	ecall
 ret
    5c10:	8082                	ret

0000000000005c12 <set_priority>:
.global set_priority
set_priority:
 li a7, SYS_set_priority
    5c12:	48dd                	li	a7,23
 ecall
    5c14:	00000073          	ecall
 ret
    5c18:	8082                	ret

0000000000005c1a <sigalarm>:
.global sigalarm
sigalarm:
 li a7, SYS_sigalarm
    5c1a:	48e5                	li	a7,25
 ecall
    5c1c:	00000073          	ecall
 ret
    5c20:	8082                	ret

0000000000005c22 <sigreturn>:
.global sigreturn
sigreturn:
 li a7, SYS_sigreturn
    5c22:	48e9                	li	a7,26
 ecall
    5c24:	00000073          	ecall
 ret
    5c28:	8082                	ret

0000000000005c2a <putc>:
    5c2a:	1101                	addi	sp,sp,-32
    5c2c:	ec06                	sd	ra,24(sp)
    5c2e:	e822                	sd	s0,16(sp)
    5c30:	1000                	addi	s0,sp,32
    5c32:	feb407a3          	sb	a1,-17(s0)
    5c36:	4605                	li	a2,1
    5c38:	fef40593          	addi	a1,s0,-17
    5c3c:	00000097          	auipc	ra,0x0
    5c40:	f46080e7          	jalr	-186(ra) # 5b82 <write>
    5c44:	60e2                	ld	ra,24(sp)
    5c46:	6442                	ld	s0,16(sp)
    5c48:	6105                	addi	sp,sp,32
    5c4a:	8082                	ret

0000000000005c4c <printint>:
    5c4c:	7139                	addi	sp,sp,-64
    5c4e:	fc06                	sd	ra,56(sp)
    5c50:	f822                	sd	s0,48(sp)
    5c52:	f426                	sd	s1,40(sp)
    5c54:	f04a                	sd	s2,32(sp)
    5c56:	ec4e                	sd	s3,24(sp)
    5c58:	0080                	addi	s0,sp,64
    5c5a:	84aa                	mv	s1,a0
    5c5c:	c299                	beqz	a3,5c62 <printint+0x16>
    5c5e:	0805c863          	bltz	a1,5cee <printint+0xa2>
    5c62:	2581                	sext.w	a1,a1
    5c64:	4881                	li	a7,0
    5c66:	fc040693          	addi	a3,s0,-64
    5c6a:	4701                	li	a4,0
    5c6c:	2601                	sext.w	a2,a2
    5c6e:	00003517          	auipc	a0,0x3
    5c72:	8b250513          	addi	a0,a0,-1870 # 8520 <digits>
    5c76:	883a                	mv	a6,a4
    5c78:	2705                	addiw	a4,a4,1
    5c7a:	02c5f7bb          	remuw	a5,a1,a2
    5c7e:	1782                	slli	a5,a5,0x20
    5c80:	9381                	srli	a5,a5,0x20
    5c82:	97aa                	add	a5,a5,a0
    5c84:	0007c783          	lbu	a5,0(a5)
    5c88:	00f68023          	sb	a5,0(a3)
    5c8c:	0005879b          	sext.w	a5,a1
    5c90:	02c5d5bb          	divuw	a1,a1,a2
    5c94:	0685                	addi	a3,a3,1
    5c96:	fec7f0e3          	bgeu	a5,a2,5c76 <printint+0x2a>
    5c9a:	00088b63          	beqz	a7,5cb0 <printint+0x64>
    5c9e:	fd040793          	addi	a5,s0,-48
    5ca2:	973e                	add	a4,a4,a5
    5ca4:	02d00793          	li	a5,45
    5ca8:	fef70823          	sb	a5,-16(a4)
    5cac:	0028071b          	addiw	a4,a6,2
    5cb0:	02e05863          	blez	a4,5ce0 <printint+0x94>
    5cb4:	fc040793          	addi	a5,s0,-64
    5cb8:	00e78933          	add	s2,a5,a4
    5cbc:	fff78993          	addi	s3,a5,-1
    5cc0:	99ba                	add	s3,s3,a4
    5cc2:	377d                	addiw	a4,a4,-1
    5cc4:	1702                	slli	a4,a4,0x20
    5cc6:	9301                	srli	a4,a4,0x20
    5cc8:	40e989b3          	sub	s3,s3,a4
    5ccc:	fff94583          	lbu	a1,-1(s2)
    5cd0:	8526                	mv	a0,s1
    5cd2:	00000097          	auipc	ra,0x0
    5cd6:	f58080e7          	jalr	-168(ra) # 5c2a <putc>
    5cda:	197d                	addi	s2,s2,-1
    5cdc:	ff3918e3          	bne	s2,s3,5ccc <printint+0x80>
    5ce0:	70e2                	ld	ra,56(sp)
    5ce2:	7442                	ld	s0,48(sp)
    5ce4:	74a2                	ld	s1,40(sp)
    5ce6:	7902                	ld	s2,32(sp)
    5ce8:	69e2                	ld	s3,24(sp)
    5cea:	6121                	addi	sp,sp,64
    5cec:	8082                	ret
    5cee:	40b005bb          	negw	a1,a1
    5cf2:	4885                	li	a7,1
    5cf4:	bf8d                	j	5c66 <printint+0x1a>

0000000000005cf6 <vprintf>:
    5cf6:	7119                	addi	sp,sp,-128
    5cf8:	fc86                	sd	ra,120(sp)
    5cfa:	f8a2                	sd	s0,112(sp)
    5cfc:	f4a6                	sd	s1,104(sp)
    5cfe:	f0ca                	sd	s2,96(sp)
    5d00:	ecce                	sd	s3,88(sp)
    5d02:	e8d2                	sd	s4,80(sp)
    5d04:	e4d6                	sd	s5,72(sp)
    5d06:	e0da                	sd	s6,64(sp)
    5d08:	fc5e                	sd	s7,56(sp)
    5d0a:	f862                	sd	s8,48(sp)
    5d0c:	f466                	sd	s9,40(sp)
    5d0e:	f06a                	sd	s10,32(sp)
    5d10:	ec6e                	sd	s11,24(sp)
    5d12:	0100                	addi	s0,sp,128
    5d14:	0005c903          	lbu	s2,0(a1)
    5d18:	18090f63          	beqz	s2,5eb6 <vprintf+0x1c0>
    5d1c:	8aaa                	mv	s5,a0
    5d1e:	8b32                	mv	s6,a2
    5d20:	00158493          	addi	s1,a1,1
    5d24:	4981                	li	s3,0
    5d26:	02500a13          	li	s4,37
    5d2a:	06400c13          	li	s8,100
    5d2e:	06c00c93          	li	s9,108
    5d32:	07800d13          	li	s10,120
    5d36:	07000d93          	li	s11,112
    5d3a:	00002b97          	auipc	s7,0x2
    5d3e:	7e6b8b93          	addi	s7,s7,2022 # 8520 <digits>
    5d42:	a839                	j	5d60 <vprintf+0x6a>
    5d44:	85ca                	mv	a1,s2
    5d46:	8556                	mv	a0,s5
    5d48:	00000097          	auipc	ra,0x0
    5d4c:	ee2080e7          	jalr	-286(ra) # 5c2a <putc>
    5d50:	a019                	j	5d56 <vprintf+0x60>
    5d52:	01498f63          	beq	s3,s4,5d70 <vprintf+0x7a>
    5d56:	0485                	addi	s1,s1,1
    5d58:	fff4c903          	lbu	s2,-1(s1)
    5d5c:	14090d63          	beqz	s2,5eb6 <vprintf+0x1c0>
    5d60:	0009079b          	sext.w	a5,s2
    5d64:	fe0997e3          	bnez	s3,5d52 <vprintf+0x5c>
    5d68:	fd479ee3          	bne	a5,s4,5d44 <vprintf+0x4e>
    5d6c:	89be                	mv	s3,a5
    5d6e:	b7e5                	j	5d56 <vprintf+0x60>
    5d70:	05878063          	beq	a5,s8,5db0 <vprintf+0xba>
    5d74:	05978c63          	beq	a5,s9,5dcc <vprintf+0xd6>
    5d78:	07a78863          	beq	a5,s10,5de8 <vprintf+0xf2>
    5d7c:	09b78463          	beq	a5,s11,5e04 <vprintf+0x10e>
    5d80:	07300713          	li	a4,115
    5d84:	0ce78663          	beq	a5,a4,5e50 <vprintf+0x15a>
    5d88:	06300713          	li	a4,99
    5d8c:	0ee78e63          	beq	a5,a4,5e88 <vprintf+0x192>
    5d90:	11478863          	beq	a5,s4,5ea0 <vprintf+0x1aa>
    5d94:	85d2                	mv	a1,s4
    5d96:	8556                	mv	a0,s5
    5d98:	00000097          	auipc	ra,0x0
    5d9c:	e92080e7          	jalr	-366(ra) # 5c2a <putc>
    5da0:	85ca                	mv	a1,s2
    5da2:	8556                	mv	a0,s5
    5da4:	00000097          	auipc	ra,0x0
    5da8:	e86080e7          	jalr	-378(ra) # 5c2a <putc>
    5dac:	4981                	li	s3,0
    5dae:	b765                	j	5d56 <vprintf+0x60>
    5db0:	008b0913          	addi	s2,s6,8
    5db4:	4685                	li	a3,1
    5db6:	4629                	li	a2,10
    5db8:	000b2583          	lw	a1,0(s6)
    5dbc:	8556                	mv	a0,s5
    5dbe:	00000097          	auipc	ra,0x0
    5dc2:	e8e080e7          	jalr	-370(ra) # 5c4c <printint>
    5dc6:	8b4a                	mv	s6,s2
    5dc8:	4981                	li	s3,0
    5dca:	b771                	j	5d56 <vprintf+0x60>
    5dcc:	008b0913          	addi	s2,s6,8
    5dd0:	4681                	li	a3,0
    5dd2:	4629                	li	a2,10
    5dd4:	000b2583          	lw	a1,0(s6)
    5dd8:	8556                	mv	a0,s5
    5dda:	00000097          	auipc	ra,0x0
    5dde:	e72080e7          	jalr	-398(ra) # 5c4c <printint>
    5de2:	8b4a                	mv	s6,s2
    5de4:	4981                	li	s3,0
    5de6:	bf85                	j	5d56 <vprintf+0x60>
    5de8:	008b0913          	addi	s2,s6,8
    5dec:	4681                	li	a3,0
    5dee:	4641                	li	a2,16
    5df0:	000b2583          	lw	a1,0(s6)
    5df4:	8556                	mv	a0,s5
    5df6:	00000097          	auipc	ra,0x0
    5dfa:	e56080e7          	jalr	-426(ra) # 5c4c <printint>
    5dfe:	8b4a                	mv	s6,s2
    5e00:	4981                	li	s3,0
    5e02:	bf91                	j	5d56 <vprintf+0x60>
    5e04:	008b0793          	addi	a5,s6,8
    5e08:	f8f43423          	sd	a5,-120(s0)
    5e0c:	000b3983          	ld	s3,0(s6)
    5e10:	03000593          	li	a1,48
    5e14:	8556                	mv	a0,s5
    5e16:	00000097          	auipc	ra,0x0
    5e1a:	e14080e7          	jalr	-492(ra) # 5c2a <putc>
    5e1e:	85ea                	mv	a1,s10
    5e20:	8556                	mv	a0,s5
    5e22:	00000097          	auipc	ra,0x0
    5e26:	e08080e7          	jalr	-504(ra) # 5c2a <putc>
    5e2a:	4941                	li	s2,16
    5e2c:	03c9d793          	srli	a5,s3,0x3c
    5e30:	97de                	add	a5,a5,s7
    5e32:	0007c583          	lbu	a1,0(a5)
    5e36:	8556                	mv	a0,s5
    5e38:	00000097          	auipc	ra,0x0
    5e3c:	df2080e7          	jalr	-526(ra) # 5c2a <putc>
    5e40:	0992                	slli	s3,s3,0x4
    5e42:	397d                	addiw	s2,s2,-1
    5e44:	fe0914e3          	bnez	s2,5e2c <vprintf+0x136>
    5e48:	f8843b03          	ld	s6,-120(s0)
    5e4c:	4981                	li	s3,0
    5e4e:	b721                	j	5d56 <vprintf+0x60>
    5e50:	008b0993          	addi	s3,s6,8
    5e54:	000b3903          	ld	s2,0(s6)
    5e58:	02090163          	beqz	s2,5e7a <vprintf+0x184>
    5e5c:	00094583          	lbu	a1,0(s2)
    5e60:	c9a1                	beqz	a1,5eb0 <vprintf+0x1ba>
    5e62:	8556                	mv	a0,s5
    5e64:	00000097          	auipc	ra,0x0
    5e68:	dc6080e7          	jalr	-570(ra) # 5c2a <putc>
    5e6c:	0905                	addi	s2,s2,1
    5e6e:	00094583          	lbu	a1,0(s2)
    5e72:	f9e5                	bnez	a1,5e62 <vprintf+0x16c>
    5e74:	8b4e                	mv	s6,s3
    5e76:	4981                	li	s3,0
    5e78:	bdf9                	j	5d56 <vprintf+0x60>
    5e7a:	00002917          	auipc	s2,0x2
    5e7e:	69e90913          	addi	s2,s2,1694 # 8518 <malloc+0x2558>
    5e82:	02800593          	li	a1,40
    5e86:	bff1                	j	5e62 <vprintf+0x16c>
    5e88:	008b0913          	addi	s2,s6,8
    5e8c:	000b4583          	lbu	a1,0(s6)
    5e90:	8556                	mv	a0,s5
    5e92:	00000097          	auipc	ra,0x0
    5e96:	d98080e7          	jalr	-616(ra) # 5c2a <putc>
    5e9a:	8b4a                	mv	s6,s2
    5e9c:	4981                	li	s3,0
    5e9e:	bd65                	j	5d56 <vprintf+0x60>
    5ea0:	85d2                	mv	a1,s4
    5ea2:	8556                	mv	a0,s5
    5ea4:	00000097          	auipc	ra,0x0
    5ea8:	d86080e7          	jalr	-634(ra) # 5c2a <putc>
    5eac:	4981                	li	s3,0
    5eae:	b565                	j	5d56 <vprintf+0x60>
    5eb0:	8b4e                	mv	s6,s3
    5eb2:	4981                	li	s3,0
    5eb4:	b54d                	j	5d56 <vprintf+0x60>
    5eb6:	70e6                	ld	ra,120(sp)
    5eb8:	7446                	ld	s0,112(sp)
    5eba:	74a6                	ld	s1,104(sp)
    5ebc:	7906                	ld	s2,96(sp)
    5ebe:	69e6                	ld	s3,88(sp)
    5ec0:	6a46                	ld	s4,80(sp)
    5ec2:	6aa6                	ld	s5,72(sp)
    5ec4:	6b06                	ld	s6,64(sp)
    5ec6:	7be2                	ld	s7,56(sp)
    5ec8:	7c42                	ld	s8,48(sp)
    5eca:	7ca2                	ld	s9,40(sp)
    5ecc:	7d02                	ld	s10,32(sp)
    5ece:	6de2                	ld	s11,24(sp)
    5ed0:	6109                	addi	sp,sp,128
    5ed2:	8082                	ret

0000000000005ed4 <fprintf>:
    5ed4:	715d                	addi	sp,sp,-80
    5ed6:	ec06                	sd	ra,24(sp)
    5ed8:	e822                	sd	s0,16(sp)
    5eda:	1000                	addi	s0,sp,32
    5edc:	e010                	sd	a2,0(s0)
    5ede:	e414                	sd	a3,8(s0)
    5ee0:	e818                	sd	a4,16(s0)
    5ee2:	ec1c                	sd	a5,24(s0)
    5ee4:	03043023          	sd	a6,32(s0)
    5ee8:	03143423          	sd	a7,40(s0)
    5eec:	fe843423          	sd	s0,-24(s0)
    5ef0:	8622                	mv	a2,s0
    5ef2:	00000097          	auipc	ra,0x0
    5ef6:	e04080e7          	jalr	-508(ra) # 5cf6 <vprintf>
    5efa:	60e2                	ld	ra,24(sp)
    5efc:	6442                	ld	s0,16(sp)
    5efe:	6161                	addi	sp,sp,80
    5f00:	8082                	ret

0000000000005f02 <printf>:
    5f02:	711d                	addi	sp,sp,-96
    5f04:	ec06                	sd	ra,24(sp)
    5f06:	e822                	sd	s0,16(sp)
    5f08:	1000                	addi	s0,sp,32
    5f0a:	e40c                	sd	a1,8(s0)
    5f0c:	e810                	sd	a2,16(s0)
    5f0e:	ec14                	sd	a3,24(s0)
    5f10:	f018                	sd	a4,32(s0)
    5f12:	f41c                	sd	a5,40(s0)
    5f14:	03043823          	sd	a6,48(s0)
    5f18:	03143c23          	sd	a7,56(s0)
    5f1c:	00840613          	addi	a2,s0,8
    5f20:	fec43423          	sd	a2,-24(s0)
    5f24:	85aa                	mv	a1,a0
    5f26:	4505                	li	a0,1
    5f28:	00000097          	auipc	ra,0x0
    5f2c:	dce080e7          	jalr	-562(ra) # 5cf6 <vprintf>
    5f30:	60e2                	ld	ra,24(sp)
    5f32:	6442                	ld	s0,16(sp)
    5f34:	6125                	addi	sp,sp,96
    5f36:	8082                	ret

0000000000005f38 <free>:
    5f38:	1141                	addi	sp,sp,-16
    5f3a:	e422                	sd	s0,8(sp)
    5f3c:	0800                	addi	s0,sp,16
    5f3e:	ff050693          	addi	a3,a0,-16
    5f42:	00003797          	auipc	a5,0x3
    5f46:	4fe7b783          	ld	a5,1278(a5) # 9440 <freep>
    5f4a:	a805                	j	5f7a <free+0x42>
    5f4c:	4618                	lw	a4,8(a2)
    5f4e:	9db9                	addw	a1,a1,a4
    5f50:	feb52c23          	sw	a1,-8(a0)
    5f54:	6398                	ld	a4,0(a5)
    5f56:	6318                	ld	a4,0(a4)
    5f58:	fee53823          	sd	a4,-16(a0)
    5f5c:	a091                	j	5fa0 <free+0x68>
    5f5e:	ff852703          	lw	a4,-8(a0)
    5f62:	9e39                	addw	a2,a2,a4
    5f64:	c790                	sw	a2,8(a5)
    5f66:	ff053703          	ld	a4,-16(a0)
    5f6a:	e398                	sd	a4,0(a5)
    5f6c:	a099                	j	5fb2 <free+0x7a>
    5f6e:	6398                	ld	a4,0(a5)
    5f70:	00e7e463          	bltu	a5,a4,5f78 <free+0x40>
    5f74:	00e6ea63          	bltu	a3,a4,5f88 <free+0x50>
    5f78:	87ba                	mv	a5,a4
    5f7a:	fed7fae3          	bgeu	a5,a3,5f6e <free+0x36>
    5f7e:	6398                	ld	a4,0(a5)
    5f80:	00e6e463          	bltu	a3,a4,5f88 <free+0x50>
    5f84:	fee7eae3          	bltu	a5,a4,5f78 <free+0x40>
    5f88:	ff852583          	lw	a1,-8(a0)
    5f8c:	6390                	ld	a2,0(a5)
    5f8e:	02059713          	slli	a4,a1,0x20
    5f92:	9301                	srli	a4,a4,0x20
    5f94:	0712                	slli	a4,a4,0x4
    5f96:	9736                	add	a4,a4,a3
    5f98:	fae60ae3          	beq	a2,a4,5f4c <free+0x14>
    5f9c:	fec53823          	sd	a2,-16(a0)
    5fa0:	4790                	lw	a2,8(a5)
    5fa2:	02061713          	slli	a4,a2,0x20
    5fa6:	9301                	srli	a4,a4,0x20
    5fa8:	0712                	slli	a4,a4,0x4
    5faa:	973e                	add	a4,a4,a5
    5fac:	fae689e3          	beq	a3,a4,5f5e <free+0x26>
    5fb0:	e394                	sd	a3,0(a5)
    5fb2:	00003717          	auipc	a4,0x3
    5fb6:	48f73723          	sd	a5,1166(a4) # 9440 <freep>
    5fba:	6422                	ld	s0,8(sp)
    5fbc:	0141                	addi	sp,sp,16
    5fbe:	8082                	ret

0000000000005fc0 <malloc>:
    5fc0:	7139                	addi	sp,sp,-64
    5fc2:	fc06                	sd	ra,56(sp)
    5fc4:	f822                	sd	s0,48(sp)
    5fc6:	f426                	sd	s1,40(sp)
    5fc8:	f04a                	sd	s2,32(sp)
    5fca:	ec4e                	sd	s3,24(sp)
    5fcc:	e852                	sd	s4,16(sp)
    5fce:	e456                	sd	s5,8(sp)
    5fd0:	e05a                	sd	s6,0(sp)
    5fd2:	0080                	addi	s0,sp,64
    5fd4:	02051493          	slli	s1,a0,0x20
    5fd8:	9081                	srli	s1,s1,0x20
    5fda:	04bd                	addi	s1,s1,15
    5fdc:	8091                	srli	s1,s1,0x4
    5fde:	0014899b          	addiw	s3,s1,1
    5fe2:	0485                	addi	s1,s1,1
    5fe4:	00003517          	auipc	a0,0x3
    5fe8:	45c53503          	ld	a0,1116(a0) # 9440 <freep>
    5fec:	c515                	beqz	a0,6018 <malloc+0x58>
    5fee:	611c                	ld	a5,0(a0)
    5ff0:	4798                	lw	a4,8(a5)
    5ff2:	02977f63          	bgeu	a4,s1,6030 <malloc+0x70>
    5ff6:	8a4e                	mv	s4,s3
    5ff8:	0009871b          	sext.w	a4,s3
    5ffc:	6685                	lui	a3,0x1
    5ffe:	00d77363          	bgeu	a4,a3,6004 <malloc+0x44>
    6002:	6a05                	lui	s4,0x1
    6004:	000a0b1b          	sext.w	s6,s4
    6008:	004a1a1b          	slliw	s4,s4,0x4
    600c:	00003917          	auipc	s2,0x3
    6010:	43490913          	addi	s2,s2,1076 # 9440 <freep>
    6014:	5afd                	li	s5,-1
    6016:	a88d                	j	6088 <malloc+0xc8>
    6018:	0000a797          	auipc	a5,0xa
    601c:	c5078793          	addi	a5,a5,-944 # fc68 <base>
    6020:	00003717          	auipc	a4,0x3
    6024:	42f73023          	sd	a5,1056(a4) # 9440 <freep>
    6028:	e39c                	sd	a5,0(a5)
    602a:	0007a423          	sw	zero,8(a5)
    602e:	b7e1                	j	5ff6 <malloc+0x36>
    6030:	02e48b63          	beq	s1,a4,6066 <malloc+0xa6>
    6034:	4137073b          	subw	a4,a4,s3
    6038:	c798                	sw	a4,8(a5)
    603a:	1702                	slli	a4,a4,0x20
    603c:	9301                	srli	a4,a4,0x20
    603e:	0712                	slli	a4,a4,0x4
    6040:	97ba                	add	a5,a5,a4
    6042:	0137a423          	sw	s3,8(a5)
    6046:	00003717          	auipc	a4,0x3
    604a:	3ea73d23          	sd	a0,1018(a4) # 9440 <freep>
    604e:	01078513          	addi	a0,a5,16
    6052:	70e2                	ld	ra,56(sp)
    6054:	7442                	ld	s0,48(sp)
    6056:	74a2                	ld	s1,40(sp)
    6058:	7902                	ld	s2,32(sp)
    605a:	69e2                	ld	s3,24(sp)
    605c:	6a42                	ld	s4,16(sp)
    605e:	6aa2                	ld	s5,8(sp)
    6060:	6b02                	ld	s6,0(sp)
    6062:	6121                	addi	sp,sp,64
    6064:	8082                	ret
    6066:	6398                	ld	a4,0(a5)
    6068:	e118                	sd	a4,0(a0)
    606a:	bff1                	j	6046 <malloc+0x86>
    606c:	01652423          	sw	s6,8(a0)
    6070:	0541                	addi	a0,a0,16
    6072:	00000097          	auipc	ra,0x0
    6076:	ec6080e7          	jalr	-314(ra) # 5f38 <free>
    607a:	00093503          	ld	a0,0(s2)
    607e:	d971                	beqz	a0,6052 <malloc+0x92>
    6080:	611c                	ld	a5,0(a0)
    6082:	4798                	lw	a4,8(a5)
    6084:	fa9776e3          	bgeu	a4,s1,6030 <malloc+0x70>
    6088:	00093703          	ld	a4,0(s2)
    608c:	853e                	mv	a0,a5
    608e:	fef719e3          	bne	a4,a5,6080 <malloc+0xc0>
    6092:	8552                	mv	a0,s4
    6094:	00000097          	auipc	ra,0x0
    6098:	b56080e7          	jalr	-1194(ra) # 5bea <sbrk>
    609c:	fd5518e3          	bne	a0,s5,606c <malloc+0xac>
    60a0:	4501                	li	a0,0
    60a2:	bf45                	j	6052 <malloc+0x92>
