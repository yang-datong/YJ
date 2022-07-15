
.YJ/libttheif_dec.so:     file format elf32-littlearm


Disassembly of section .text:

000067a4 <bytevc1_decoder_init@@Base-0x3c>:
    67a4:	e59f0004 	ldr	r0, [pc, #4]	; 67b0 <__aeabi_llsr@plt+0x18>
    67a8:	e08f0000 	add	r0, pc, r0
    67ac:	eafffc5a 	b	591c <__cxa_finalize@plt>
    67b0:	00010850 	andeq	r0, r1, r0, asr r8
    67b4:	e3500000 	cmp	r0, #0
    67b8:	012fff1e 	bxeq	lr
    67bc:	e12fff10 	bx	r0
    67c0:	e1a01000 	mov	r1, r0
    67c4:	e59f200c 	ldr	r2, [pc, #12]	; 67d8 <__aeabi_llsr@plt+0x40>
    67c8:	e59f000c 	ldr	r0, [pc, #12]	; 67dc <__aeabi_llsr@plt+0x44>
    67cc:	e08f2002 	add	r2, pc, r2
    67d0:	e08f0000 	add	r0, pc, r0
    67d4:	eafffc4d 	b	5910 <__cxa_atexit@plt>
    67d8:	0001082c 	andeq	r0, r1, ip, lsr #16
    67dc:	ffffffdc 			; <UNDEFINED> instruction: 0xffffffdc

000067e0 <bytevc1_decoder_init@@Base>:
    67e0:	b538      	push	{r3, r4, r5, lr}
    67e2:	4604      	mov	r4, r0
    67e4:	f7ff e8a0 	blx	5928 <ByteVC1_alloc_default_param@plt>
    67e8:	2300      	movs	r3, #0
    67ea:	7323      	strb	r3, [r4, #12]
    67ec:	7363      	strb	r3, [r4, #13]
    67ee:	4605      	mov	r5, r0
    67f0:	f7ff e8a0 	blx	5934 <ByteVC1_alloc_frame@plt>
    67f4:	6060      	str	r0, [r4, #4]
    67f6:	4628      	mov	r0, r5
    67f8:	f7ff e8a2 	blx	5940 <ByteVC1_dec_create@plt>
    67fc:	6020      	str	r0, [r4, #0]
    67fe:	4628      	mov	r0, r5
    6800:	f7ff e8a4 	blx	594c <ByteVC1_free_param@plt>
    6804:	6820      	ldr	r0, [r4, #0]
    6806:	fab0 f080 	clz	r0, r0
    680a:	0940      	lsrs	r0, r0, #5
    680c:	bd38      	pop	{r3, r4, r5, pc}
    680e:	bf00      	nop

00006810 <bytevc1_get_one_packet@@Base>:
    6810:	2905      	cmp	r1, #5
    6812:	d92f      	bls.n	6874 <bytevc1_get_one_packet@@Base+0x64>
    6814:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    6818:	1f8e      	subs	r6, r1, #6
    681a:	d063      	beq.n	68e4 <bytevc1_get_one_packet@@Base+0xd4>
    681c:	4604      	mov	r4, r0
    681e:	4637      	mov	r7, r6
    6820:	2300      	movs	r3, #0
    6822:	e002      	b.n	682a <bytevc1_get_one_packet@@Base+0x1a>
    6824:	3301      	adds	r3, #1
    6826:	42b3      	cmp	r3, r6
    6828:	d028      	beq.n	687c <bytevc1_get_one_packet@@Base+0x6c>
    682a:	f814 5b01 	ldrb.w	r5, [r4], #1
    682e:	2d00      	cmp	r5, #0
    6830:	d1f8      	bne.n	6824 <bytevc1_get_one_packet@@Base+0x14>
    6832:	7825      	ldrb	r5, [r4, #0]
    6834:	2d00      	cmp	r5, #0
    6836:	d1f5      	bne.n	6824 <bytevc1_get_one_packet@@Base+0x14>
    6838:	f894 e001 	ldrb.w	lr, [r4, #1]
    683c:	f1be 0f01 	cmp.w	lr, #1
    6840:	d1f0      	bne.n	6824 <bytevc1_get_one_packet@@Base+0x14>
    6842:	f894 c002 	ldrb.w	ip, [r4, #2]
    6846:	f3cc 0c45 	ubfx	ip, ip, #1, #6
    684a:	f1bc 0f15 	cmp.w	ip, #21
    684e:	f1ac 0820 	sub.w	r8, ip, #32
    6852:	dc04      	bgt.n	685e <bytevc1_get_one_packet@@Base+0x4e>
    6854:	f894 9004 	ldrb.w	r9, [r4, #4]
    6858:	ea5f 19d9 	movs.w	r9, r9, lsr #7
    685c:	d14b      	bne.n	68f6 <bytevc1_get_one_packet@@Base+0xe6>
    685e:	f1b8 0f02 	cmp.w	r8, #2
    6862:	d944      	bls.n	68ee <bytevc1_get_one_packet@@Base+0xde>
    6864:	f1bc 0f24 	cmp.w	ip, #36	; 0x24
    6868:	d1dc      	bne.n	6824 <bytevc1_get_one_packet@@Base+0x14>
    686a:	461f      	mov	r7, r3
    686c:	2501      	movs	r5, #1
    686e:	f04f 0e00 	mov.w	lr, #0
    6872:	e005      	b.n	6880 <bytevc1_get_one_packet@@Base+0x70>
    6874:	2300      	movs	r3, #0
    6876:	4608      	mov	r0, r1
    6878:	6013      	str	r3, [r2, #0]
    687a:	4770      	bx	lr
    687c:	2500      	movs	r5, #0
    687e:	46ae      	mov	lr, r5
    6880:	42b3      	cmp	r3, r6
    6882:	d02f      	beq.n	68e4 <bytevc1_get_one_packet@@Base+0xd4>
    6884:	1cfc      	adds	r4, r7, #3
    6886:	42a1      	cmp	r1, r4
    6888:	d91b      	bls.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    688a:	2d00      	cmp	r5, #0
    688c:	d135      	bne.n	68fa <bytevc1_get_one_packet@@Base+0xea>
    688e:	1903      	adds	r3, r0, r4
    6890:	e002      	b.n	6898 <bytevc1_get_one_packet@@Base+0x88>
    6892:	3401      	adds	r4, #1
    6894:	42a1      	cmp	r1, r4
    6896:	d914      	bls.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    6898:	f813 5b01 	ldrb.w	r5, [r3], #1
    689c:	2d00      	cmp	r5, #0
    689e:	d1f8      	bne.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68a0:	7818      	ldrb	r0, [r3, #0]
    68a2:	2800      	cmp	r0, #0
    68a4:	d1f5      	bne.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68a6:	7858      	ldrb	r0, [r3, #1]
    68a8:	2801      	cmp	r0, #1
    68aa:	d1f2      	bne.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68ac:	789d      	ldrb	r5, [r3, #2]
    68ae:	f3c5 0545 	ubfx	r5, r5, #1, #6
    68b2:	2d15      	cmp	r5, #21
    68b4:	dd0a      	ble.n	68cc <bytevc1_get_one_packet@@Base+0xbc>
    68b6:	f1a5 0020 	sub.w	r0, r5, #32
    68ba:	2802      	cmp	r0, #2
    68bc:	d90e      	bls.n	68dc <bytevc1_get_one_packet@@Base+0xcc>
    68be:	2d24      	cmp	r5, #36	; 0x24
    68c0:	d1e7      	bne.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68c2:	1be4      	subs	r4, r4, r7
    68c4:	4638      	mov	r0, r7
    68c6:	6014      	str	r4, [r2, #0]
    68c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    68cc:	791d      	ldrb	r5, [r3, #4]
    68ce:	09ed      	lsrs	r5, r5, #7
    68d0:	d0df      	beq.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68d2:	f1be 0f00 	cmp.w	lr, #0
    68d6:	d1f4      	bne.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    68d8:	4686      	mov	lr, r0
    68da:	e7da      	b.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68dc:	f1be 0f00 	cmp.w	lr, #0
    68e0:	d0d7      	beq.n	6892 <bytevc1_get_one_packet@@Base+0x82>
    68e2:	e7ee      	b.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    68e4:	2300      	movs	r3, #0
    68e6:	4608      	mov	r0, r1
    68e8:	6013      	str	r3, [r2, #0]
    68ea:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    68ee:	2500      	movs	r5, #0
    68f0:	461f      	mov	r7, r3
    68f2:	46ae      	mov	lr, r5
    68f4:	e7c4      	b.n	6880 <bytevc1_get_one_packet@@Base+0x70>
    68f6:	461f      	mov	r7, r3
    68f8:	e7c2      	b.n	6880 <bytevc1_get_one_packet@@Base+0x70>
    68fa:	4420      	add	r0, r4
    68fc:	e002      	b.n	6904 <bytevc1_get_one_packet@@Base+0xf4>
    68fe:	3401      	adds	r4, #1
    6900:	42a1      	cmp	r1, r4
    6902:	d9de      	bls.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    6904:	f810 3b01 	ldrb.w	r3, [r0], #1
    6908:	2b00      	cmp	r3, #0
    690a:	d1f8      	bne.n	68fe <bytevc1_get_one_packet@@Base+0xee>
    690c:	7803      	ldrb	r3, [r0, #0]
    690e:	2b00      	cmp	r3, #0
    6910:	d1f5      	bne.n	68fe <bytevc1_get_one_packet@@Base+0xee>
    6912:	7843      	ldrb	r3, [r0, #1]
    6914:	2b01      	cmp	r3, #1
    6916:	d1f2      	bne.n	68fe <bytevc1_get_one_packet@@Base+0xee>
    6918:	e7d3      	b.n	68c2 <bytevc1_get_one_packet@@Base+0xb2>
    691a:	bf00      	nop

0000691c <bytevc1_get_ttframe_infos@@Base>:
    691c:	2900      	cmp	r1, #0
    691e:	bf18      	it	ne
    6920:	2800      	cmpne	r0, #0
    6922:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6924:	bf0c      	ite	eq
    6926:	2501      	moveq	r5, #1
    6928:	2500      	movne	r5, #0
    692a:	d101      	bne.n	6930 <bytevc1_get_ttframe_infos@@Base+0x14>
    692c:	2001      	movs	r0, #1
    692e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6930:	4606      	mov	r6, r0
    6932:	4608      	mov	r0, r1
    6934:	460c      	mov	r4, r1
    6936:	f7ff e810 	blx	5958 <ByteVC1_get_frame_width@plt>
    693a:	1f37      	subs	r7, r6, #4
    693c:	60f0      	str	r0, [r6, #12]
    693e:	4620      	mov	r0, r4
    6940:	f7ff e810 	blx	5964 <ByteVC1_get_frame_height@plt>
    6944:	6130      	str	r0, [r6, #16]
    6946:	4620      	mov	r0, r4
    6948:	f7ff e812 	blx	5970 <ByteVC1_get_frame_bit_depth@plt>
    694c:	f886 002c 	strb.w	r0, [r6, #44]	; 0x2c
    6950:	4620      	mov	r0, r4
    6952:	f7ff e814 	blx	597c <ByteVC1_get_frame_pix_fmt@plt>
    6956:	6330      	str	r0, [r6, #48]	; 0x30
    6958:	4629      	mov	r1, r5
    695a:	4620      	mov	r0, r4
    695c:	f7ff e814 	blx	5988 <ByteVC1_get_frame_data@plt>
    6960:	4629      	mov	r1, r5
    6962:	f847 0f04 	str.w	r0, [r7, #4]!
    6966:	4620      	mov	r0, r4
    6968:	f7ff e814 	blx	5994 <ByteVC1_get_frame_linesize@plt>
    696c:	4629      	mov	r1, r5
    696e:	3501      	adds	r5, #1
    6970:	6238      	str	r0, [r7, #32]
    6972:	4620      	mov	r0, r4
    6974:	f7ff e814 	blx	59a0 <ByteVC1_get_frame_stride@plt>
    6978:	2d03      	cmp	r5, #3
    697a:	6178      	str	r0, [r7, #20]
    697c:	d1ec      	bne.n	6958 <bytevc1_get_ttframe_infos@@Base+0x3c>
    697e:	2000      	movs	r0, #0
    6980:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6982:	bf00      	nop

00006984 <bytevc1_decoder_decode2@@Base>:
    6984:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    6988:	4614      	mov	r4, r2
    698a:	461f      	mov	r7, r3
    698c:	4605      	mov	r5, r0
    698e:	4688      	mov	r8, r1
    6990:	f7ff e80c 	blx	59ac <ByteVC1_alloc_packet@plt>
    6994:	4641      	mov	r1, r8
    6996:	4606      	mov	r6, r0
    6998:	f7ff e80e 	blx	59b8 <ByteVC1_set_packet_bs@plt>
    699c:	4621      	mov	r1, r4
    699e:	4630      	mov	r0, r6
    69a0:	f7ff e810 	blx	59c4 <ByteVC1_set_packet_bs_len@plt>
    69a4:	6828      	ldr	r0, [r5, #0]
    69a6:	4631      	mov	r1, r6
    69a8:	686a      	ldr	r2, [r5, #4]
    69aa:	f7ff e812 	blx	59d0 <ByteVC1_dec_decode@plt>
    69ae:	4604      	mov	r4, r0
    69b0:	4630      	mov	r0, r6
    69b2:	f7ff e814 	blx	59dc <ByteVC1_free_packet@plt>
    69b6:	b114      	cbz	r4, 69be <bytevc1_decoder_decode2@@Base+0x3a>
    69b8:	2001      	movs	r0, #1
    69ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    69be:	6868      	ldr	r0, [r5, #4]
    69c0:	1f3e      	subs	r6, r7, #4
    69c2:	f7fe efca 	blx	5958 <ByteVC1_get_frame_width@plt>
    69c6:	60f8      	str	r0, [r7, #12]
    69c8:	6868      	ldr	r0, [r5, #4]
    69ca:	f7fe efcc 	blx	5964 <ByteVC1_get_frame_height@plt>
    69ce:	6138      	str	r0, [r7, #16]
    69d0:	6868      	ldr	r0, [r5, #4]
    69d2:	f7fe efce 	blx	5970 <ByteVC1_get_frame_bit_depth@plt>
    69d6:	f887 002c 	strb.w	r0, [r7, #44]	; 0x2c
    69da:	4621      	mov	r1, r4
    69dc:	6868      	ldr	r0, [r5, #4]
    69de:	f7fe efd4 	blx	5988 <ByteVC1_get_frame_data@plt>
    69e2:	4621      	mov	r1, r4
    69e4:	f846 0f04 	str.w	r0, [r6, #4]!
    69e8:	6868      	ldr	r0, [r5, #4]
    69ea:	f7fe efd4 	blx	5994 <ByteVC1_get_frame_linesize@plt>
    69ee:	4621      	mov	r1, r4
    69f0:	3401      	adds	r4, #1
    69f2:	6230      	str	r0, [r6, #32]
    69f4:	6868      	ldr	r0, [r5, #4]
    69f6:	f7fe efd4 	blx	59a0 <ByteVC1_get_frame_stride@plt>
    69fa:	2c03      	cmp	r4, #3
    69fc:	6170      	str	r0, [r6, #20]
    69fe:	d1ec      	bne.n	69da <bytevc1_decoder_decode2@@Base+0x56>
    6a00:	683b      	ldr	r3, [r7, #0]
    6a02:	2b00      	cmp	r3, #0
    6a04:	d0d8      	beq.n	69b8 <bytevc1_decoder_decode2@@Base+0x34>
    6a06:	687b      	ldr	r3, [r7, #4]
    6a08:	2b00      	cmp	r3, #0
    6a0a:	d0d5      	beq.n	69b8 <bytevc1_decoder_decode2@@Base+0x34>
    6a0c:	68bb      	ldr	r3, [r7, #8]
    6a0e:	2b00      	cmp	r3, #0
    6a10:	d0d2      	beq.n	69b8 <bytevc1_decoder_decode2@@Base+0x34>
    6a12:	6a3b      	ldr	r3, [r7, #32]
    6a14:	2b00      	cmp	r3, #0
    6a16:	ddcf      	ble.n	69b8 <bytevc1_decoder_decode2@@Base+0x34>
    6a18:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    6a1a:	2b00      	cmp	r3, #0
    6a1c:	ddcc      	ble.n	69b8 <bytevc1_decoder_decode2@@Base+0x34>
    6a1e:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    6a20:	2800      	cmp	r0, #0
    6a22:	bfcc      	ite	gt
    6a24:	2000      	movgt	r0, #0
    6a26:	2001      	movle	r0, #1
    6a28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00006a2c <bytevc1_decoder_close@@Base>:
    6a2c:	b510      	push	{r4, lr}
    6a2e:	4604      	mov	r4, r0
    6a30:	6840      	ldr	r0, [r0, #4]
    6a32:	f7fe efda 	blx	59e8 <ByteVC1_release_frame@plt>
    6a36:	6820      	ldr	r0, [r4, #0]
    6a38:	f7fe efdc 	blx	59f4 <ByteVC1_dec_destroy@plt>
    6a3c:	2000      	movs	r0, #0
    6a3e:	bd10      	pop	{r4, pc}

00006a40 <extract_yuv_data@@Base>:
    6a40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6a44:	b08f      	sub	sp, #60	; 0x3c
    6a46:	aa07      	add	r2, sp, #28
    6a48:	4b46      	ldr	r3, [pc, #280]	; (6b64 <extract_yuv_data@@Base+0x124>)
    6a4a:	9204      	str	r2, [sp, #16]
    6a4c:	4606      	mov	r6, r0
    6a4e:	4617      	mov	r7, r2
    6a50:	4a45      	ldr	r2, [pc, #276]	; (6b68 <extract_yuv_data@@Base+0x128>)
    6a52:	447b      	add	r3, pc
    6a54:	4689      	mov	r9, r1
    6a56:	4614      	mov	r4, r2
    6a58:	447c      	add	r4, pc
    6a5a:	6824      	ldr	r4, [r4, #0]
    6a5c:	aa0a      	add	r2, sp, #40	; 0x28
    6a5e:	9202      	str	r2, [sp, #8]
    6a60:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
    6a64:	4625      	mov	r5, r4
    6a66:	9405      	str	r4, [sp, #20]
    6a68:	6b34      	ldr	r4, [r6, #48]	; 0x30
    6a6a:	682d      	ldr	r5, [r5, #0]
    6a6c:	9b02      	ldr	r3, [sp, #8]
    6a6e:	2c01      	cmp	r4, #1
    6a70:	e887 0007 	stmia.w	r7, {r0, r1, r2}
    6a74:	950d      	str	r5, [sp, #52]	; 0x34
    6a76:	e883 0007 	stmia.w	r3, {r0, r1, r2}
    6a7a:	d052      	beq.n	6b22 <extract_yuv_data@@Base+0xe2>
    6a7c:	2c02      	cmp	r4, #2
    6a7e:	d05a      	beq.n	6b36 <extract_yuv_data@@Base+0xf6>
    6a80:	2c03      	cmp	r4, #3
    6a82:	d063      	beq.n	6b4c <extract_yuv_data@@Base+0x10c>
    6a84:	2c00      	cmp	r4, #0
    6a86:	bf14      	ite	ne
    6a88:	2303      	movne	r3, #3
    6a8a:	2301      	moveq	r3, #1
    6a8c:	9303      	str	r3, [sp, #12]
    6a8e:	f896 702c 	ldrb.w	r7, [r6, #44]	; 0x2c
    6a92:	2300      	movs	r3, #0
    6a94:	6931      	ldr	r1, [r6, #16]
    6a96:	461d      	mov	r5, r3
    6a98:	2f08      	cmp	r7, #8
    6a9a:	46b2      	mov	sl, r6
    6a9c:	bf18      	it	ne
    6a9e:	3f08      	subne	r7, #8
    6aa0:	46b0      	mov	r8, r6
    6aa2:	bf08      	it	eq
    6aa4:	2701      	moveq	r7, #1
    6aa6:	9301      	str	r3, [sp, #4]
    6aa8:	9b02      	ldr	r3, [sp, #8]
    6aaa:	9801      	ldr	r0, [sp, #4]
    6aac:	461a      	mov	r2, r3
    6aae:	f852 6020 	ldr.w	r6, [r2, r0, lsl #2]
    6ab2:	fa41 f306 	asr.w	r3, r1, r6
    6ab6:	2b00      	cmp	r3, #0
    6ab8:	dd22      	ble.n	6b00 <extract_yuv_data@@Base+0xc0>
    6aba:	f8d8 200c 	ldr.w	r2, [r8, #12]
    6abe:	2400      	movs	r4, #0
    6ac0:	9b04      	ldr	r3, [sp, #16]
    6ac2:	fb02 f207 	mul.w	r2, r2, r7
    6ac6:	4619      	mov	r1, r3
    6ac8:	f851 b020 	ldr.w	fp, [r1, r0, lsl #2]
    6acc:	f8da 3000 	ldr.w	r3, [sl]
    6ad0:	fa42 f20b 	asr.w	r2, r2, fp
    6ad4:	f8da 1020 	ldr.w	r1, [sl, #32]
    6ad8:	eb09 0005 	add.w	r0, r9, r5
    6adc:	fb01 3104 	mla	r1, r1, r4, r3
    6ae0:	f7fe ef8e 	blx	5a00 <memcpy@plt>
    6ae4:	f8d8 200c 	ldr.w	r2, [r8, #12]
    6ae8:	f8d8 1010 	ldr.w	r1, [r8, #16]
    6aec:	3401      	adds	r4, #1
    6aee:	fb02 f207 	mul.w	r2, r2, r7
    6af2:	fa41 f306 	asr.w	r3, r1, r6
    6af6:	42a3      	cmp	r3, r4
    6af8:	fa42 f00b 	asr.w	r0, r2, fp
    6afc:	4405      	add	r5, r0
    6afe:	dce5      	bgt.n	6acc <extract_yuv_data@@Base+0x8c>
    6b00:	9b01      	ldr	r3, [sp, #4]
    6b02:	f10a 0a04 	add.w	sl, sl, #4
    6b06:	9a03      	ldr	r2, [sp, #12]
    6b08:	3301      	adds	r3, #1
    6b0a:	9301      	str	r3, [sp, #4]
    6b0c:	4293      	cmp	r3, r2
    6b0e:	d1cb      	bne.n	6aa8 <extract_yuv_data@@Base+0x68>
    6b10:	9b05      	ldr	r3, [sp, #20]
    6b12:	4628      	mov	r0, r5
    6b14:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    6b16:	681b      	ldr	r3, [r3, #0]
    6b18:	429a      	cmp	r2, r3
    6b1a:	d120      	bne.n	6b5e <extract_yuv_data@@Base+0x11e>
    6b1c:	b00f      	add	sp, #60	; 0x3c
    6b1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6b22:	2300      	movs	r3, #0
    6b24:	2203      	movs	r2, #3
    6b26:	9408      	str	r4, [sp, #32]
    6b28:	9409      	str	r4, [sp, #36]	; 0x24
    6b2a:	9203      	str	r2, [sp, #12]
    6b2c:	940b      	str	r4, [sp, #44]	; 0x2c
    6b2e:	940c      	str	r4, [sp, #48]	; 0x30
    6b30:	9307      	str	r3, [sp, #28]
    6b32:	930a      	str	r3, [sp, #40]	; 0x28
    6b34:	e7ab      	b.n	6a8e <extract_yuv_data@@Base+0x4e>
    6b36:	2300      	movs	r3, #0
    6b38:	2201      	movs	r2, #1
    6b3a:	2103      	movs	r1, #3
    6b3c:	9307      	str	r3, [sp, #28]
    6b3e:	9103      	str	r1, [sp, #12]
    6b40:	930a      	str	r3, [sp, #40]	; 0x28
    6b42:	930b      	str	r3, [sp, #44]	; 0x2c
    6b44:	930c      	str	r3, [sp, #48]	; 0x30
    6b46:	9208      	str	r2, [sp, #32]
    6b48:	9209      	str	r2, [sp, #36]	; 0x24
    6b4a:	e7a0      	b.n	6a8e <extract_yuv_data@@Base+0x4e>
    6b4c:	2300      	movs	r3, #0
    6b4e:	9403      	str	r4, [sp, #12]
    6b50:	9307      	str	r3, [sp, #28]
    6b52:	9308      	str	r3, [sp, #32]
    6b54:	9309      	str	r3, [sp, #36]	; 0x24
    6b56:	930a      	str	r3, [sp, #40]	; 0x28
    6b58:	930b      	str	r3, [sp, #44]	; 0x2c
    6b5a:	930c      	str	r3, [sp, #48]	; 0x30
    6b5c:	e797      	b.n	6a8e <extract_yuv_data@@Base+0x4e>
    6b5e:	f7fe ef56 	blx	5a0c <__stack_chk_fail@plt>
    6b62:	bf00      	nop
    6b64:	e1ba      	b.n	6edc <bytevc1_decoder_decode@@Base+0x1d0>
    6b66:	0000      	movs	r0, r0
    6b68:	0064      	lsls	r4, r4, #1
    6b6a:	0001      	movs	r1, r0

00006b6c <bytevc1_decoder_decode_sequence@@Base>:
    6b6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6b70:	b099      	sub	sp, #100	; 0x64
    6b72:	4c65      	ldr	r4, [pc, #404]	; (6d08 <bytevc1_decoder_decode_sequence@@Base+0x19c>)
    6b74:	4691      	mov	r9, r2
    6b76:	9303      	str	r3, [sp, #12]
    6b78:	4605      	mov	r5, r0
    6b7a:	447c      	add	r4, pc
    6b7c:	6824      	ldr	r4, [r4, #0]
    6b7e:	9104      	str	r1, [sp, #16]
    6b80:	9407      	str	r4, [sp, #28]
    6b82:	6823      	ldr	r3, [r4, #0]
    6b84:	2400      	movs	r4, #0
    6b86:	9e22      	ldr	r6, [sp, #136]	; 0x88
    6b88:	f8dd a08c 	ldr.w	sl, [sp, #140]	; 0x8c
    6b8c:	9317      	str	r3, [sp, #92]	; 0x5c
    6b8e:	9b25      	ldr	r3, [sp, #148]	; 0x94
    6b90:	f8dd b090 	ldr.w	fp, [sp, #144]	; 0x90
    6b94:	9306      	str	r3, [sp, #24]
    6b96:	f7fe ef0a 	blx	59ac <ByteVC1_alloc_packet@plt>
    6b9a:	45a1      	cmp	r9, r4
    6b9c:	9409      	str	r4, [sp, #36]	; 0x24
    6b9e:	bfc4      	itt	gt
    6ba0:	ab09      	addgt	r3, sp, #36	; 0x24
    6ba2:	f10d 0828 	addgt.w	r8, sp, #40	; 0x28
    6ba6:	4607      	mov	r7, r0
    6ba8:	bfc4      	itt	gt
    6baa:	9305      	strgt	r3, [sp, #20]
    6bac:	9000      	strgt	r0, [sp, #0]
    6bae:	dd72      	ble.n	6c96 <bytevc1_decoder_decode_sequence@@Base+0x12a>
    6bb0:	ebc4 0309 	rsb	r3, r4, r9
    6bb4:	9f04      	ldr	r7, [sp, #16]
    6bb6:	9a05      	ldr	r2, [sp, #20]
    6bb8:	4619      	mov	r1, r3
    6bba:	1938      	adds	r0, r7, r4
    6bbc:	9302      	str	r3, [sp, #8]
    6bbe:	f7fe ef2c 	blx	5a18 <bytevc1_get_one_packet@plt>
    6bc2:	4404      	add	r4, r0
    6bc4:	9001      	str	r0, [sp, #4]
    6bc6:	1939      	adds	r1, r7, r4
    6bc8:	9800      	ldr	r0, [sp, #0]
    6bca:	f7fe eef6 	blx	59b8 <ByteVC1_set_packet_bs@plt>
    6bce:	9800      	ldr	r0, [sp, #0]
    6bd0:	9909      	ldr	r1, [sp, #36]	; 0x24
    6bd2:	f7fe eef8 	blx	59c4 <ByteVC1_set_packet_bs_len@plt>
    6bd6:	9a01      	ldr	r2, [sp, #4]
    6bd8:	9b02      	ldr	r3, [sp, #8]
    6bda:	4293      	cmp	r3, r2
    6bdc:	d05a      	beq.n	6c94 <bytevc1_decoder_decode_sequence@@Base+0x128>
    6bde:	6828      	ldr	r0, [r5, #0]
    6be0:	9900      	ldr	r1, [sp, #0]
    6be2:	686a      	ldr	r2, [r5, #4]
    6be4:	f7fe eef4 	blx	59d0 <ByteVC1_dec_decode@plt>
    6be8:	4603      	mov	r3, r0
    6bea:	2800      	cmp	r0, #0
    6bec:	f040 8088 	bne.w	6d00 <bytevc1_decoder_decode_sequence@@Base+0x194>
    6bf0:	4640      	mov	r0, r8
    6bf2:	6869      	ldr	r1, [r5, #4]
    6bf4:	f8c8 3000 	str.w	r3, [r8]
    6bf8:	930b      	str	r3, [sp, #44]	; 0x2c
    6bfa:	930c      	str	r3, [sp, #48]	; 0x30
    6bfc:	930d      	str	r3, [sp, #52]	; 0x34
    6bfe:	930e      	str	r3, [sp, #56]	; 0x38
    6c00:	930f      	str	r3, [sp, #60]	; 0x3c
    6c02:	9310      	str	r3, [sp, #64]	; 0x40
    6c04:	9311      	str	r3, [sp, #68]	; 0x44
    6c06:	9312      	str	r3, [sp, #72]	; 0x48
    6c08:	9313      	str	r3, [sp, #76]	; 0x4c
    6c0a:	9314      	str	r3, [sp, #80]	; 0x50
    6c0c:	9315      	str	r3, [sp, #84]	; 0x54
    6c0e:	9316      	str	r3, [sp, #88]	; 0x58
    6c10:	f7fe ef08 	blx	5a24 <bytevc1_get_ttframe_infos@plt>
    6c14:	4603      	mov	r3, r0
    6c16:	2800      	cmp	r0, #0
    6c18:	d172      	bne.n	6d00 <bytevc1_decoder_decode_sequence@@Base+0x194>
    6c1a:	7b6b      	ldrb	r3, [r5, #13]
    6c1c:	2b00      	cmp	r3, #0
    6c1e:	d149      	bne.n	6cb4 <bytevc1_decoder_decode_sequence@@Base+0x148>
    6c20:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
    6c24:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    6c26:	f89d 1054 	ldrb.w	r1, [sp, #84]	; 0x54
    6c2a:	9b06      	ldr	r3, [sp, #24]
    6c2c:	f8ca e000 	str.w	lr, [sl]
    6c30:	2908      	cmp	r1, #8
    6c32:	f8cb 2000 	str.w	r2, [fp]
    6c36:	7019      	strb	r1, [r3, #0]
    6c38:	bf18      	it	ne
    6c3a:	3908      	subne	r1, #8
    6c3c:	f8da c000 	ldr.w	ip, [sl]
    6c40:	bf08      	it	eq
    6c42:	2101      	moveq	r1, #1
    6c44:	9a03      	ldr	r2, [sp, #12]
    6c46:	f8db 3000 	ldr.w	r3, [fp]
    6c4a:	f10c 0e01 	add.w	lr, ip, #1
    6c4e:	6810      	ldr	r0, [r2, #0]
    6c50:	1c5a      	adds	r2, r3, #1
    6c52:	ea4f 0e5e 	mov.w	lr, lr, lsr #1
    6c56:	f022 0201 	bic.w	r2, r2, #1
    6c5a:	fb03 f30c 	mul.w	r3, r3, ip
    6c5e:	fb0e 3302 	mla	r3, lr, r2, r3
    6c62:	fb03 f301 	mul.w	r3, r3, r1
    6c66:	2800      	cmp	r0, #0
    6c68:	d03f      	beq.n	6cea <bytevc1_decoder_decode_sequence@@Base+0x17e>
    6c6a:	6831      	ldr	r1, [r6, #0]
    6c6c:	4419      	add	r1, r3
    6c6e:	f7fe eee0 	blx	5a30 <realloc@plt>
    6c72:	9b03      	ldr	r3, [sp, #12]
    6c74:	4601      	mov	r1, r0
    6c76:	6018      	str	r0, [r3, #0]
    6c78:	2900      	cmp	r1, #0
    6c7a:	d03e      	beq.n	6cfa <bytevc1_decoder_decode_sequence@@Base+0x18e>
    6c7c:	6833      	ldr	r3, [r6, #0]
    6c7e:	4640      	mov	r0, r8
    6c80:	4419      	add	r1, r3
    6c82:	f7fe eedc 	blx	5a3c <extract_yuv_data@plt>
    6c86:	9a09      	ldr	r2, [sp, #36]	; 0x24
    6c88:	6833      	ldr	r3, [r6, #0]
    6c8a:	4414      	add	r4, r2
    6c8c:	45a1      	cmp	r9, r4
    6c8e:	4418      	add	r0, r3
    6c90:	6030      	str	r0, [r6, #0]
    6c92:	dc8d      	bgt.n	6bb0 <bytevc1_decoder_decode_sequence@@Base+0x44>
    6c94:	9f00      	ldr	r7, [sp, #0]
    6c96:	2300      	movs	r3, #0
    6c98:	4638      	mov	r0, r7
    6c9a:	9300      	str	r3, [sp, #0]
    6c9c:	f7fe ee9e 	blx	59dc <ByteVC1_free_packet@plt>
    6ca0:	9b00      	ldr	r3, [sp, #0]
    6ca2:	9a17      	ldr	r2, [sp, #92]	; 0x5c
    6ca4:	4618      	mov	r0, r3
    6ca6:	9b07      	ldr	r3, [sp, #28]
    6ca8:	681b      	ldr	r3, [r3, #0]
    6caa:	429a      	cmp	r2, r3
    6cac:	d12a      	bne.n	6d04 <bytevc1_decoder_decode_sequence@@Base+0x198>
    6cae:	b019      	add	sp, #100	; 0x64
    6cb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6cb4:	6968      	ldr	r0, [r5, #20]
    6cb6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    6cb8:	692a      	ldr	r2, [r5, #16]
    6cba:	9f12      	ldr	r7, [sp, #72]	; 0x48
    6cbc:	fb03 f300 	mul.w	r3, r3, r0
    6cc0:	0851      	lsrs	r1, r2, #1
    6cc2:	fb07 2c00 	mla	ip, r7, r0, r2
    6cc6:	980a      	ldr	r0, [sp, #40]	; 0x28
    6cc8:	f8d5 e018 	ldr.w	lr, [r5, #24]
    6ccc:	69ea      	ldr	r2, [r5, #28]
    6cce:	eb01 0353 	add.w	r3, r1, r3, lsr #1
    6cd2:	4460      	add	r0, ip
    6cd4:	990b      	ldr	r1, [sp, #44]	; 0x2c
    6cd6:	900a      	str	r0, [sp, #40]	; 0x28
    6cd8:	980c      	ldr	r0, [sp, #48]	; 0x30
    6cda:	4419      	add	r1, r3
    6cdc:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
    6ce0:	4403      	add	r3, r0
    6ce2:	910b      	str	r1, [sp, #44]	; 0x2c
    6ce4:	920e      	str	r2, [sp, #56]	; 0x38
    6ce6:	930c      	str	r3, [sp, #48]	; 0x30
    6ce8:	e79d      	b.n	6c26 <bytevc1_decoder_decode_sequence@@Base+0xba>
    6cea:	4618      	mov	r0, r3
    6cec:	f7fe eeac 	blx	5a48 <malloc@plt>
    6cf0:	9b03      	ldr	r3, [sp, #12]
    6cf2:	4601      	mov	r1, r0
    6cf4:	6018      	str	r0, [r3, #0]
    6cf6:	2900      	cmp	r1, #0
    6cf8:	d1c0      	bne.n	6c7c <bytevc1_decoder_decode_sequence@@Base+0x110>
    6cfa:	9f00      	ldr	r7, [sp, #0]
    6cfc:	2301      	movs	r3, #1
    6cfe:	e7cb      	b.n	6c98 <bytevc1_decoder_decode_sequence@@Base+0x12c>
    6d00:	9f00      	ldr	r7, [sp, #0]
    6d02:	e7c9      	b.n	6c98 <bytevc1_decoder_decode_sequence@@Base+0x12c>
    6d04:	f7fe ee82 	blx	5a0c <__stack_chk_fail@plt>
    6d08:	ff42 0000 	vhadd.u8	d16, d2, d0

00006d0c <bytevc1_decoder_decode@@Base>:
    6d0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6d10:	b091      	sub	sp, #68	; 0x44
    6d12:	4c44      	ldr	r4, [pc, #272]	; (6e24 <bytevc1_decoder_decode@@Base+0x118>)
    6d14:	4699      	mov	r9, r3
    6d16:	9b1a      	ldr	r3, [sp, #104]	; 0x68
    6d18:	4617      	mov	r7, r2
    6d1a:	447c      	add	r4, pc
    6d1c:	6824      	ldr	r4, [r4, #0]
    6d1e:	9a1c      	ldr	r2, [sp, #112]	; 0x70
    6d20:	4605      	mov	r5, r0
    6d22:	468a      	mov	sl, r1
    6d24:	9301      	str	r3, [sp, #4]
    6d26:	6823      	ldr	r3, [r4, #0]
    6d28:	9200      	str	r2, [sp, #0]
    6d2a:	9e1b      	ldr	r6, [sp, #108]	; 0x6c
    6d2c:	930f      	str	r3, [sp, #60]	; 0x3c
    6d2e:	f8dd 8074 	ldr.w	r8, [sp, #116]	; 0x74
    6d32:	f7fe ee3c 	blx	59ac <ByteVC1_alloc_packet@plt>
    6d36:	4651      	mov	r1, sl
    6d38:	4683      	mov	fp, r0
    6d3a:	f7fe ee3e 	blx	59b8 <ByteVC1_set_packet_bs@plt>
    6d3e:	4639      	mov	r1, r7
    6d40:	4658      	mov	r0, fp
    6d42:	f7fe ee40 	blx	59c4 <ByteVC1_set_packet_bs_len@plt>
    6d46:	6828      	ldr	r0, [r5, #0]
    6d48:	4659      	mov	r1, fp
    6d4a:	686a      	ldr	r2, [r5, #4]
    6d4c:	f7fe ee40 	blx	59d0 <ByteVC1_dec_decode@plt>
    6d50:	4607      	mov	r7, r0
    6d52:	4658      	mov	r0, fp
    6d54:	f7fe ee42 	blx	59dc <ByteVC1_free_packet@plt>
    6d58:	b147      	cbz	r7, 6d6c <bytevc1_decoder_decode@@Base+0x60>
    6d5a:	2301      	movs	r3, #1
    6d5c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    6d5e:	4618      	mov	r0, r3
    6d60:	6823      	ldr	r3, [r4, #0]
    6d62:	429a      	cmp	r2, r3
    6d64:	d15b      	bne.n	6e1e <bytevc1_decoder_decode@@Base+0x112>
    6d66:	b011      	add	sp, #68	; 0x44
    6d68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6d6c:	f10d 0b08 	add.w	fp, sp, #8
    6d70:	6869      	ldr	r1, [r5, #4]
    6d72:	9702      	str	r7, [sp, #8]
    6d74:	4658      	mov	r0, fp
    6d76:	9703      	str	r7, [sp, #12]
    6d78:	9704      	str	r7, [sp, #16]
    6d7a:	9705      	str	r7, [sp, #20]
    6d7c:	9706      	str	r7, [sp, #24]
    6d7e:	9707      	str	r7, [sp, #28]
    6d80:	9708      	str	r7, [sp, #32]
    6d82:	9709      	str	r7, [sp, #36]	; 0x24
    6d84:	970a      	str	r7, [sp, #40]	; 0x28
    6d86:	970b      	str	r7, [sp, #44]	; 0x2c
    6d88:	970c      	str	r7, [sp, #48]	; 0x30
    6d8a:	970d      	str	r7, [sp, #52]	; 0x34
    6d8c:	970e      	str	r7, [sp, #56]	; 0x38
    6d8e:	f7fe ee4a 	blx	5a24 <bytevc1_get_ttframe_infos@plt>
    6d92:	2800      	cmp	r0, #0
    6d94:	d1e1      	bne.n	6d5a <bytevc1_decoder_decode@@Base+0x4e>
    6d96:	7b6b      	ldrb	r3, [r5, #13]
    6d98:	bb13      	cbnz	r3, 6de0 <bytevc1_decoder_decode@@Base+0xd4>
    6d9a:	9a05      	ldr	r2, [sp, #20]
    6d9c:	9d06      	ldr	r5, [sp, #24]
    6d9e:	f89d 3034 	ldrb.w	r3, [sp, #52]	; 0x34
    6da2:	f888 3000 	strb.w	r3, [r8]
    6da6:	9b00      	ldr	r3, [sp, #0]
    6da8:	6032      	str	r2, [r6, #0]
    6daa:	601d      	str	r5, [r3, #0]
    6dac:	6830      	ldr	r0, [r6, #0]
    6dae:	2800      	cmp	r0, #0
    6db0:	bf18      	it	ne
    6db2:	2d00      	cmpne	r5, #0
    6db4:	bf0c      	ite	eq
    6db6:	2601      	moveq	r6, #1
    6db8:	2600      	movne	r6, #0
    6dba:	d0ce      	beq.n	6d5a <bytevc1_decoder_decode@@Base+0x4e>
    6dbc:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    6dc0:	fb05 f000 	mul.w	r0, r5, r0
    6dc4:	f7fe ee40 	blx	5a48 <malloc@plt>
    6dc8:	4601      	mov	r1, r0
    6dca:	f8c9 0000 	str.w	r0, [r9]
    6dce:	2800      	cmp	r0, #0
    6dd0:	d0c3      	beq.n	6d5a <bytevc1_decoder_decode@@Base+0x4e>
    6dd2:	4658      	mov	r0, fp
    6dd4:	f7fe ee32 	blx	5a3c <extract_yuv_data@plt>
    6dd8:	9a01      	ldr	r2, [sp, #4]
    6dda:	4633      	mov	r3, r6
    6ddc:	6010      	str	r0, [r2, #0]
    6dde:	e7bd      	b.n	6d5c <bytevc1_decoder_decode@@Base+0x50>
    6de0:	f8d5 e014 	ldr.w	lr, [r5, #20]
    6de4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    6de6:	980c      	ldr	r0, [sp, #48]	; 0x30
    6de8:	692a      	ldr	r2, [r5, #16]
    6dea:	fb03 f30e 	mul.w	r3, r3, lr
    6dee:	9f0a      	ldr	r7, [sp, #40]	; 0x28
    6df0:	fb00 f00e 	mul.w	r0, r0, lr
    6df4:	0851      	lsrs	r1, r2, #1
    6df6:	fb07 2e0e 	mla	lr, r7, lr, r2
    6dfa:	9f03      	ldr	r7, [sp, #12]
    6dfc:	69aa      	ldr	r2, [r5, #24]
    6dfe:	eb01 0353 	add.w	r3, r1, r3, lsr #1
    6e02:	69ed      	ldr	r5, [r5, #28]
    6e04:	443b      	add	r3, r7
    6e06:	eb01 0050 	add.w	r0, r1, r0, lsr #1
    6e0a:	9303      	str	r3, [sp, #12]
    6e0c:	9904      	ldr	r1, [sp, #16]
    6e0e:	9b02      	ldr	r3, [sp, #8]
    6e10:	4401      	add	r1, r0
    6e12:	9205      	str	r2, [sp, #20]
    6e14:	4473      	add	r3, lr
    6e16:	9104      	str	r1, [sp, #16]
    6e18:	9302      	str	r3, [sp, #8]
    6e1a:	9506      	str	r5, [sp, #24]
    6e1c:	e7bf      	b.n	6d9e <bytevc1_decoder_decode@@Base+0x92>
    6e1e:	f7fe edf6 	blx	5a0c <__stack_chk_fail@plt>
    6e22:	bf00      	nop
    6e24:	fda2 0000 	stc2	0, cr0, [r2]
    6e28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6e2c:	b08d      	sub	sp, #52	; 0x34
    6e2e:	461f      	mov	r7, r3
    6e30:	4682      	mov	sl, r0
    6e32:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    6e34:	4689      	mov	r9, r1
    6e36:	4693      	mov	fp, r2
    6e38:	781e      	ldrb	r6, [r3, #0]
    6e3a:	2e08      	cmp	r6, #8
    6e3c:	d075      	beq.n	6f2a <bytevc1_decoder_decode@@Base+0x21e>
    6e3e:	3101      	adds	r1, #1
    6e40:	1c50      	adds	r0, r2, #1
    6e42:	fb02 f309 	mul.w	r3, r2, r9
    6e46:	ea4f 0861 	mov.w	r8, r1, asr #1
    6e4a:	1040      	asrs	r0, r0, #1
    6e4c:	f1a6 0408 	sub.w	r4, r6, #8
    6e50:	2e0a      	cmp	r6, #10
    6e52:	fb00 f008 	mul.w	r0, r0, r8
    6e56:	bf18      	it	ne
    6e58:	2600      	movne	r6, #0
    6e5a:	fb03 f504 	mul.w	r5, r3, r4
    6e5e:	fb00 5404 	mla	r4, r0, r4, r5
    6e62:	4455      	add	r5, sl
    6e64:	4454      	add	r4, sl
    6e66:	d02f      	beq.n	6ec8 <bytevc1_decoder_decode@@Base+0x1bc>
    6e68:	9916      	ldr	r1, [sp, #88]	; 0x58
    6e6a:	4648      	mov	r0, r9
    6e6c:	f7fe edf2 	blx	5a54 <__aeabi_uidiv@plt>
    6e70:	9916      	ldr	r1, [sp, #88]	; 0x58
    6e72:	f100 0801 	add.w	r8, r0, #1
    6e76:	4658      	mov	r0, fp
    6e78:	f7fe edec 	blx	5a54 <__aeabi_uidiv@plt>
    6e7c:	4622      	mov	r2, r4
    6e7e:	f028 0801 	bic.w	r8, r8, #1
    6e82:	4629      	mov	r1, r5
    6e84:	463b      	mov	r3, r7
    6e86:	f8cd 8010 	str.w	r8, [sp, #16]
    6e8a:	ea4f 0568 	mov.w	r5, r8, asr #1
    6e8e:	f8cd 9008 	str.w	r9, [sp, #8]
    6e92:	f8cd b00c 	str.w	fp, [sp, #12]
    6e96:	1c44      	adds	r4, r0, #1
    6e98:	4650      	mov	r0, sl
    6e9a:	f024 0401 	bic.w	r4, r4, #1
    6e9e:	9405      	str	r4, [sp, #20]
    6ea0:	ea4f 0e64 	mov.w	lr, r4, asr #1
    6ea4:	fb04 f408 	mul.w	r4, r4, r8
    6ea8:	fb0e 4505 	mla	r5, lr, r5, r4
    6eac:	443c      	add	r4, r7
    6eae:	9400      	str	r4, [sp, #0]
    6eb0:	442f      	add	r7, r5
    6eb2:	9701      	str	r7, [sp, #4]
    6eb4:	f7fe edd4 	blx	5a60 <rescaleYUV2@plt>
    6eb8:	4630      	mov	r0, r6
    6eba:	b116      	cbz	r6, 6ec2 <bytevc1_decoder_decode@@Base+0x1b6>
    6ebc:	f7fe edd6 	blx	5a6c <free@plt>
    6ec0:	2000      	movs	r0, #0
    6ec2:	b00d      	add	sp, #52	; 0x34
    6ec4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6ec8:	eb03 0040 	add.w	r0, r3, r0, lsl #1
    6ecc:	930b      	str	r3, [sp, #44]	; 0x2c
    6ece:	f7fe edbc 	blx	5a48 <malloc@plt>
    6ed2:	4606      	mov	r6, r0
    6ed4:	2001      	movs	r0, #1
    6ed6:	2e00      	cmp	r6, #0
    6ed8:	d0f3      	beq.n	6ec2 <bytevc1_decoder_decode@@Base+0x1b6>
    6eda:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    6edc:	4650      	mov	r0, sl
    6ede:	e88d 0110 	stmia.w	sp, {r4, r8}
    6ee2:	4649      	mov	r1, r9
    6ee4:	1cda      	adds	r2, r3, #3
    6ee6:	eb06 0e03 	add.w	lr, r6, r3
    6eea:	ea33 0323 	bics.w	r3, r3, r3, asr #32
    6eee:	bf28      	it	cs
    6ef0:	4613      	movcs	r3, r2
    6ef2:	9602      	str	r6, [sp, #8]
    6ef4:	462a      	mov	r2, r5
    6ef6:	f8cd 900c 	str.w	r9, [sp, #12]
    6efa:	eb0e 0ca3 	add.w	ip, lr, r3, asr #2
    6efe:	f8cd 8014 	str.w	r8, [sp, #20]
    6f02:	4643      	mov	r3, r8
    6f04:	f8cd 801c 	str.w	r8, [sp, #28]
    6f08:	f8cd 9020 	str.w	r9, [sp, #32]
    6f0c:	4664      	mov	r4, ip
    6f0e:	f8cd b024 	str.w	fp, [sp, #36]	; 0x24
    6f12:	4675      	mov	r5, lr
    6f14:	f8cd c018 	str.w	ip, [sp, #24]
    6f18:	46b2      	mov	sl, r6
    6f1a:	f8cd e010 	str.w	lr, [sp, #16]
    6f1e:	f7fe edac 	blx	5a78 <tt_I010ToI420@plt>
    6f22:	9a17      	ldr	r2, [sp, #92]	; 0x5c
    6f24:	2308      	movs	r3, #8
    6f26:	7013      	strb	r3, [r2, #0]
    6f28:	e79e      	b.n	6e68 <bytevc1_decoder_decode@@Base+0x15c>
    6f2a:	1c4c      	adds	r4, r1, #1
    6f2c:	1c53      	adds	r3, r2, #1
    6f2e:	fb02 f501 	mul.w	r5, r2, r1
    6f32:	1064      	asrs	r4, r4, #1
    6f34:	105b      	asrs	r3, r3, #1
    6f36:	2600      	movs	r6, #0
    6f38:	fb03 5404 	mla	r4, r3, r4, r5
    6f3c:	4405      	add	r5, r0
    6f3e:	4404      	add	r4, r0
    6f40:	e792      	b.n	6e68 <bytevc1_decoder_decode@@Base+0x15c>
    6f42:	bf00      	nop

00006f44 <heif_decode_to_yuv420p_inner@@Base>:
    6f44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6f48:	b0f1      	sub	sp, #452	; 0x1c4
    6f4a:	f8df b79c 	ldr.w	fp, [pc, #1948]	; 76e8 <heif_decode_to_yuv420p_inner@@Base+0x7a4>
    6f4e:	f10d 08b8 	add.w	r8, sp, #184	; 0xb8
    6f52:	930d      	str	r3, [sp, #52]	; 0x34
    6f54:	ac2a      	add	r4, sp, #168	; 0xa8
    6f56:	44fb      	add	fp, pc
    6f58:	f8db b000 	ldr.w	fp, [fp]
    6f5c:	9b7a      	ldr	r3, [sp, #488]	; 0x1e8
    6f5e:	9009      	str	r0, [sp, #36]	; 0x24
    6f60:	4640      	mov	r0, r8
    6f62:	f8db 7000 	ldr.w	r7, [fp]
    6f66:	ad2b      	add	r5, sp, #172	; 0xac
    6f68:	940c      	str	r4, [sp, #48]	; 0x30
    6f6a:	ae54      	add	r6, sp, #336	; 0x150
    6f6c:	2400      	movs	r4, #0
    6f6e:	950b      	str	r5, [sp, #44]	; 0x2c
    6f70:	960a      	str	r6, [sp, #40]	; 0x28
    6f72:	4615      	mov	r5, r2
    6f74:	460e      	mov	r6, r1
    6f76:	930e      	str	r3, [sp, #56]	; 0x38
    6f78:	976f      	str	r7, [sp, #444]	; 0x1bc
    6f7a:	943a      	str	r4, [sp, #232]	; 0xe8
    6f7c:	943b      	str	r4, [sp, #236]	; 0xec
    6f7e:	943c      	str	r4, [sp, #240]	; 0xf0
    6f80:	943d      	str	r4, [sp, #244]	; 0xf4
    6f82:	943e      	str	r4, [sp, #248]	; 0xf8
    6f84:	943f      	str	r4, [sp, #252]	; 0xfc
    6f86:	9440      	str	r4, [sp, #256]	; 0x100
    6f88:	9441      	str	r4, [sp, #260]	; 0x104
    6f8a:	9442      	str	r4, [sp, #264]	; 0x108
    6f8c:	9443      	str	r4, [sp, #268]	; 0x10c
    6f8e:	9444      	str	r4, [sp, #272]	; 0x110
    6f90:	9445      	str	r4, [sp, #276]	; 0x114
    6f92:	9446      	str	r4, [sp, #280]	; 0x118
    6f94:	9f7b      	ldr	r7, [sp, #492]	; 0x1ec
    6f96:	f7fe ed76 	blx	5a84 <Bitstream_init@plt>
    6f9a:	f8dd c030 	ldr.w	ip, [sp, #48]	; 0x30
    6f9e:	4641      	mov	r1, r8
    6fa0:	f8dd e02c 	ldr.w	lr, [sp, #44]	; 0x2c
    6fa4:	f8c8 5004 	str.w	r5, [r8, #4]
    6fa8:	2501      	movs	r5, #1
    6faa:	4663      	mov	r3, ip
    6fac:	f8c8 6000 	str.w	r6, [r8]
    6fb0:	4672      	mov	r2, lr
    6fb2:	9500      	str	r5, [sp, #0]
    6fb4:	980a      	ldr	r0, [sp, #40]	; 0x28
    6fb6:	f8cc 4000 	str.w	r4, [ip]
    6fba:	f8ce 4000 	str.w	r4, [lr]
    6fbe:	f7fe ed68 	blx	5a90 <parse_bytevc1_from_heif_bitstream@plt>
    6fc2:	9b54      	ldr	r3, [sp, #336]	; 0x150
    6fc4:	b10b      	cbz	r3, 6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    6fc6:	9b55      	ldr	r3, [sp, #340]	; 0x154
    6fc8:	b9b3      	cbnz	r3, 6ff8 <heif_decode_to_yuv420p_inner@@Base+0xb4>
    6fca:	ac3a      	add	r4, sp, #232	; 0xe8
    6fcc:	980a      	ldr	r0, [sp, #40]	; 0x28
    6fce:	f7fe ed66 	blx	5a9c <Bytevc1Bitstream_release@plt>
    6fd2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    6fd4:	9d09      	ldr	r5, [sp, #36]	; 0x24
    6fd6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    6fd8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    6fda:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    6fdc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    6fde:	6824      	ldr	r4, [r4, #0]
    6fe0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    6fe2:	602c      	str	r4, [r5, #0]
    6fe4:	9a6f      	ldr	r2, [sp, #444]	; 0x1bc
    6fe6:	f8db 3000 	ldr.w	r3, [fp]
    6fea:	9809      	ldr	r0, [sp, #36]	; 0x24
    6fec:	429a      	cmp	r2, r3
    6fee:	f040 835e 	bne.w	76ae <heif_decode_to_yuv420p_inner@@Base+0x76a>
    6ff2:	b071      	add	sp, #452	; 0x1c4
    6ff4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6ff8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    6ffa:	6812      	ldr	r2, [r2, #0]
    6ffc:	2a00      	cmp	r2, #0
    6ffe:	d0e4      	beq.n	6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    7000:	990c      	ldr	r1, [sp, #48]	; 0x30
    7002:	6809      	ldr	r1, [r1, #0]
    7004:	2900      	cmp	r1, #0
    7006:	d0e0      	beq.n	6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    7008:	f89d 015b 	ldrb.w	r0, [sp, #347]	; 0x15b
    700c:	2800      	cmp	r0, #0
    700e:	d0dc      	beq.n	6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    7010:	f89d 01a0 	ldrb.w	r0, [sp, #416]	; 0x1a0
    7014:	f000 00fd 	and.w	r0, r0, #253	; 0xfd
    7018:	2808      	cmp	r0, #8
    701a:	d1d6      	bne.n	6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    701c:	9106      	str	r1, [sp, #24]
    701e:	2004      	movs	r0, #4
    7020:	9958      	ldr	r1, [sp, #352]	; 0x160
    7022:	9205      	str	r2, [sp, #20]
    7024:	9a60      	ldr	r2, [sp, #384]	; 0x180
    7026:	9103      	str	r1, [sp, #12]
    7028:	9959      	ldr	r1, [sp, #356]	; 0x164
    702a:	f89d e159 	ldrb.w	lr, [sp, #345]	; 0x159
    702e:	f89d 615a 	ldrb.w	r6, [sp, #346]	; 0x15a
    7032:	f89d 5158 	ldrb.w	r5, [sp, #344]	; 0x158
    7036:	9104      	str	r1, [sp, #16]
    7038:	9207      	str	r2, [sp, #28]
    703a:	f8df 16b0 	ldr.w	r1, [pc, #1712]	; 76ec <heif_decode_to_yuv420p_inner@@Base+0x7a8>
    703e:	f8df 26b0 	ldr.w	r2, [pc, #1712]	; 76f0 <heif_decode_to_yuv420p_inner@@Base+0x7ac>
    7042:	f8cd e000 	str.w	lr, [sp]
    7046:	4479      	add	r1, pc
    7048:	447a      	add	r2, pc
    704a:	9601      	str	r6, [sp, #4]
    704c:	9502      	str	r5, [sp, #8]
    704e:	f7fe ed2c 	blx	5aa8 <__android_log_print@plt>
    7052:	683a      	ldr	r2, [r7, #0]
    7054:	797b      	ldrb	r3, [r7, #5]
    7056:	9225      	str	r2, [sp, #148]	; 0x94
    7058:	793a      	ldrb	r2, [r7, #4]
    705a:	9324      	str	r3, [sp, #144]	; 0x90
    705c:	921a      	str	r2, [sp, #104]	; 0x68
    705e:	68ba      	ldr	r2, [r7, #8]
    7060:	9220      	str	r2, [sp, #128]	; 0x80
    7062:	68fa      	ldr	r2, [r7, #12]
    7064:	9222      	str	r2, [sp, #136]	; 0x88
    7066:	693a      	ldr	r2, [r7, #16]
    7068:	9223      	str	r2, [sp, #140]	; 0x8c
    706a:	697a      	ldr	r2, [r7, #20]
    706c:	9221      	str	r2, [sp, #132]	; 0x84
    706e:	2b00      	cmp	r3, #0
    7070:	d02e      	beq.n	70d0 <heif_decode_to_yuv420p_inner@@Base+0x18c>
    7072:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7074:	9a20      	ldr	r2, [sp, #128]	; 0x80
    7076:	f88d 415a 	strb.w	r4, [sp, #346]	; 0x15a
    707a:	681b      	ldr	r3, [r3, #0]
    707c:	4293      	cmp	r3, r2
    707e:	d90e      	bls.n	709e <heif_decode_to_yuv420p_inner@@Base+0x15a>
    7080:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    7082:	9922      	ldr	r1, [sp, #136]	; 0x88
    7084:	6812      	ldr	r2, [r2, #0]
    7086:	428a      	cmp	r2, r1
    7088:	d909      	bls.n	709e <heif_decode_to_yuv420p_inner@@Base+0x15a>
    708a:	9923      	ldr	r1, [sp, #140]	; 0x8c
    708c:	9820      	ldr	r0, [sp, #128]	; 0x80
    708e:	4401      	add	r1, r0
    7090:	428b      	cmp	r3, r1
    7092:	d304      	bcc.n	709e <heif_decode_to_yuv420p_inner@@Base+0x15a>
    7094:	9b21      	ldr	r3, [sp, #132]	; 0x84
    7096:	9922      	ldr	r1, [sp, #136]	; 0x88
    7098:	440b      	add	r3, r1
    709a:	429a      	cmp	r2, r3
    709c:	d202      	bcs.n	70a4 <heif_decode_to_yuv420p_inner@@Base+0x160>
    709e:	2100      	movs	r1, #0
    70a0:	7179      	strb	r1, [r7, #5]
    70a2:	9124      	str	r1, [sp, #144]	; 0x90
    70a4:	9b20      	ldr	r3, [sp, #128]	; 0x80
    70a6:	07dc      	lsls	r4, r3, #31
    70a8:	bf44      	itt	mi
    70aa:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
    70ae:	9320      	strmi	r3, [sp, #128]	; 0x80
    70b0:	9b22      	ldr	r3, [sp, #136]	; 0x88
    70b2:	07d8      	lsls	r0, r3, #31
    70b4:	bf44      	itt	mi
    70b6:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
    70ba:	9322      	strmi	r3, [sp, #136]	; 0x88
    70bc:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    70be:	07d9      	lsls	r1, r3, #31
    70c0:	bf44      	itt	mi
    70c2:	3301      	addmi	r3, #1
    70c4:	9323      	strmi	r3, [sp, #140]	; 0x8c
    70c6:	9b21      	ldr	r3, [sp, #132]	; 0x84
    70c8:	07da      	lsls	r2, r3, #31
    70ca:	bf44      	itt	mi
    70cc:	3301      	addmi	r3, #1
    70ce:	9321      	strmi	r3, [sp, #132]	; 0x84
    70d0:	f89d 31a0 	ldrb.w	r3, [sp, #416]	; 0x1a0
    70d4:	2b08      	cmp	r3, #8
    70d6:	bf18      	it	ne
    70d8:	f1a3 0208 	subne.w	r2, r3, #8
    70dc:	f88d 3111 	strb.w	r3, [sp, #273]	; 0x111
    70e0:	bf08      	it	eq
    70e2:	2201      	moveq	r2, #1
    70e4:	9219      	str	r2, [sp, #100]	; 0x64
    70e6:	f89d 2159 	ldrb.w	r2, [sp, #345]	; 0x159
    70ea:	2a00      	cmp	r2, #0
    70ec:	f000 8162 	beq.w	73b4 <heif_decode_to_yuv420p_inner@@Base+0x470>
    70f0:	ab2d      	add	r3, sp, #180	; 0xb4
    70f2:	9318      	str	r3, [sp, #96]	; 0x60
    70f4:	9c5c      	ldr	r4, [sp, #368]	; 0x170
    70f6:	2700      	movs	r7, #0
    70f8:	461a      	mov	r2, r3
    70fa:	9b55      	ldr	r3, [sp, #340]	; 0x154
    70fc:	6017      	str	r7, [r2, #0]
    70fe:	9a54      	ldr	r2, [sp, #336]	; 0x150
    7100:	9311      	str	r3, [sp, #68]	; 0x44
    7102:	9b19      	ldr	r3, [sp, #100]	; 0x64
    7104:	9d5d      	ldr	r5, [sp, #372]	; 0x174
    7106:	921c      	str	r2, [sp, #112]	; 0x70
    7108:	fb04 f303 	mul.w	r3, r4, r3
    710c:	1c6e      	adds	r6, r5, #1
    710e:	1076      	asrs	r6, r6, #1
    7110:	1c5a      	adds	r2, r3, #1
    7112:	1052      	asrs	r2, r2, #1
    7114:	9314      	str	r3, [sp, #80]	; 0x50
    7116:	fb06 fe02 	mul.w	lr, r6, r2
    711a:	4690      	mov	r8, r2
    711c:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
    7120:	fb05 e303 	mla	r3, r5, r3, lr
    7124:	4618      	mov	r0, r3
    7126:	9326      	str	r3, [sp, #152]	; 0x98
    7128:	f7fe ec8e 	blx	5a48 <malloc@plt>
    712c:	901b      	str	r0, [sp, #108]	; 0x6c
    712e:	2800      	cmp	r0, #0
    7130:	f43f af4b 	beq.w	6fca <heif_decode_to_yuv420p_inner@@Base+0x86>
    7134:	1c63      	adds	r3, r4, #1
    7136:	9a19      	ldr	r2, [sp, #100]	; 0x64
    7138:	fb05 f404 	mul.w	r4, r5, r4
    713c:	105b      	asrs	r3, r3, #1
    713e:	fb03 f606 	mul.w	r6, r3, r6
    7142:	4613      	mov	r3, r2
    7144:	fb04 f303 	mul.w	r3, r4, r3
    7148:	931e      	str	r3, [sp, #120]	; 0x78
    714a:	fb06 3302 	mla	r3, r6, r2, r3
    714e:	931f      	str	r3, [sp, #124]	; 0x7c
    7150:	9b11      	ldr	r3, [sp, #68]	; 0x44
    7152:	2b00      	cmp	r3, #0
    7154:	f340 80cf 	ble.w	72f6 <heif_decode_to_yuv420p_inner@@Base+0x3b2>
    7158:	f8cd b09c 	str.w	fp, [sp, #156]	; 0x9c
    715c:	46c3      	mov	fp, r8
    715e:	ab32      	add	r3, sp, #200	; 0xc8
    7160:	9710      	str	r7, [sp, #64]	; 0x40
    7162:	9312      	str	r3, [sp, #72]	; 0x48
    7164:	ab47      	add	r3, sp, #284	; 0x11c
    7166:	970f      	str	r7, [sp, #60]	; 0x3c
    7168:	931d      	str	r3, [sp, #116]	; 0x74
    716a:	9a1c      	ldr	r2, [sp, #112]	; 0x70
    716c:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
    716e:	f8dd 8060 	ldr.w	r8, [sp, #96]	; 0x60
    7172:	19d4      	adds	r4, r2, r7
    7174:	9a11      	ldr	r2, [sp, #68]	; 0x44
    7176:	1bd6      	subs	r6, r2, r7
    7178:	4620      	mov	r0, r4
    717a:	4642      	mov	r2, r8
    717c:	4631      	mov	r1, r6
    717e:	f7fe ec4c 	blx	5a18 <bytevc1_get_one_packet@plt>
    7182:	4286      	cmp	r6, r0
    7184:	4605      	mov	r5, r0
    7186:	f000 80b4 	beq.w	72f2 <heif_decode_to_yuv420p_inner@@Base+0x3ae>
    718a:	9e12      	ldr	r6, [sp, #72]	; 0x48
    718c:	f89d 3068 	ldrb.w	r3, [sp, #104]	; 0x68
    7190:	4630      	mov	r0, r6
    7192:	f88d 30d4 	strb.w	r3, [sp, #212]	; 0xd4
    7196:	f7fe ec8e 	blx	5ab4 <bytevc1_decoder_init@plt>
    719a:	f8d8 2000 	ldr.w	r2, [r8]
    719e:	4630      	mov	r0, r6
    71a0:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    71a2:	4621      	mov	r1, r4
    71a4:	f7fe ec8c 	blx	5ac0 <bytevc1_decoder_decode2@plt>
    71a8:	f8d8 3000 	ldr.w	r3, [r8]
    71ac:	463a      	mov	r2, r7
    71ae:	442a      	add	r2, r5
    71b0:	18d3      	adds	r3, r2, r3
    71b2:	930f      	str	r3, [sp, #60]	; 0x3c
    71b4:	2800      	cmp	r0, #0
    71b6:	f040 81d5 	bne.w	7564 <heif_decode_to_yuv420p_inner@@Base+0x620>
    71ba:	9c58      	ldr	r4, [sp, #352]	; 0x160
    71bc:	9d10      	ldr	r5, [sp, #64]	; 0x40
    71be:	9013      	str	r0, [sp, #76]	; 0x4c
    71c0:	4621      	mov	r1, r4
    71c2:	4628      	mov	r0, r5
    71c4:	f7fe ec82 	blx	5acc <__aeabi_idivmod@plt>
    71c8:	4628      	mov	r0, r5
    71ca:	4689      	mov	r9, r1
    71cc:	4621      	mov	r1, r4
    71ce:	f7fe ec84 	blx	5ad8 <__aeabi_idiv@plt>
    71d2:	9b5e      	ldr	r3, [sp, #376]	; 0x178
    71d4:	9a5f      	ldr	r2, [sp, #380]	; 0x17c
    71d6:	9d5c      	ldr	r5, [sp, #368]	; 0x170
    71d8:	fb09 f703 	mul.w	r7, r9, r3
    71dc:	ea4f 0862 	mov.w	r8, r2, asr #1
    71e0:	105c      	asrs	r4, r3, #1
    71e2:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
    71e6:	ebc7 0a05 	rsb	sl, r7, r5
    71ea:	459a      	cmp	sl, r3
    71ec:	fb09 f404 	mul.w	r4, r9, r4
    71f0:	bfa8      	it	ge
    71f2:	469a      	movge	sl, r3
    71f4:	9b5d      	ldr	r3, [sp, #372]	; 0x174
    71f6:	fb00 f602 	mul.w	r6, r0, r2
    71fa:	fb00 f808 	mul.w	r8, r0, r8
    71fe:	9819      	ldr	r0, [sp, #100]	; 0x64
    7200:	fb0a f100 	mul.w	r1, sl, r0
    7204:	ebc6 0a03 	rsb	sl, r6, r3
    7208:	4592      	cmp	sl, r2
    720a:	4653      	mov	r3, sl
    720c:	bfa8      	it	ge
    720e:	4613      	movge	r3, r2
    7210:	461a      	mov	r2, r3
    7212:	9b14      	ldr	r3, [sp, #80]	; 0x50
    7214:	fb08 f80b 	mul.w	r8, r8, fp
    7218:	460d      	mov	r5, r1
    721a:	fb04 8400 	mla	r4, r4, r0, r8
    721e:	468e      	mov	lr, r1
    7220:	fb06 f303 	mul.w	r3, r6, r3
    7224:	4601      	mov	r1, r0
    7226:	fb07 3301 	mla	r3, r7, r1, r3
    722a:	991e      	ldr	r1, [sp, #120]	; 0x78
    722c:	981b      	ldr	r0, [sp, #108]	; 0x6c
    722e:	f105 0801 	add.w	r8, r5, #1
    7232:	1866      	adds	r6, r4, r1
    7234:	991f      	ldr	r1, [sp, #124]	; 0x7c
    7236:	1c57      	adds	r7, r2, #1
    7238:	2a00      	cmp	r2, #0
    723a:	eb04 0501 	add.w	r5, r4, r1
    723e:	ea4f 0868 	mov.w	r8, r8, asr #1
    7242:	4406      	add	r6, r0
    7244:	eb00 0a03 	add.w	sl, r0, r3
    7248:	4405      	add	r5, r0
    724a:	ea4f 0767 	mov.w	r7, r7, asr #1
    724e:	dd1f      	ble.n	7290 <heif_decode_to_yuv420p_inner@@Base+0x34c>
    7250:	9b4f      	ldr	r3, [sp, #316]	; 0x13c
    7252:	4691      	mov	r9, r2
    7254:	f8cd 8054 	str.w	r8, [sp, #84]	; 0x54
    7258:	9c47      	ldr	r4, [sp, #284]	; 0x11c
    725a:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
    725e:	f8cd b04c 	str.w	fp, [sp, #76]	; 0x4c
    7262:	46f3      	mov	fp, lr
    7264:	9616      	str	r6, [sp, #88]	; 0x58
    7266:	4666      	mov	r6, ip
    7268:	9517      	str	r5, [sp, #92]	; 0x5c
    726a:	4655      	mov	r5, sl
    726c:	469a      	mov	sl, r3
    726e:	4628      	mov	r0, r5
    7270:	4621      	mov	r1, r4
    7272:	3601      	adds	r6, #1
    7274:	465a      	mov	r2, fp
    7276:	f7fe ebc4 	blx	5a00 <memcpy@plt>
    727a:	454e      	cmp	r6, r9
    727c:	4454      	add	r4, sl
    727e:	4445      	add	r5, r8
    7280:	9447      	str	r4, [sp, #284]	; 0x11c
    7282:	d1f4      	bne.n	726e <heif_decode_to_yuv420p_inner@@Base+0x32a>
    7284:	f8dd b04c 	ldr.w	fp, [sp, #76]	; 0x4c
    7288:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
    728c:	9e16      	ldr	r6, [sp, #88]	; 0x58
    728e:	9d17      	ldr	r5, [sp, #92]	; 0x5c
    7290:	2f00      	cmp	r7, #0
    7292:	dd23      	ble.n	72dc <heif_decode_to_yuv420p_inner@@Base+0x398>
    7294:	9c50      	ldr	r4, [sp, #320]	; 0x140
    7296:	f04f 0a00 	mov.w	sl, #0
    729a:	f8dd 9120 	ldr.w	r9, [sp, #288]	; 0x120
    729e:	4623      	mov	r3, r4
    72a0:	464c      	mov	r4, r9
    72a2:	4699      	mov	r9, r3
    72a4:	4630      	mov	r0, r6
    72a6:	4621      	mov	r1, r4
    72a8:	f10a 0a01 	add.w	sl, sl, #1
    72ac:	4642      	mov	r2, r8
    72ae:	f7fe eba8 	blx	5a00 <memcpy@plt>
    72b2:	45ba      	cmp	sl, r7
    72b4:	444c      	add	r4, r9
    72b6:	445e      	add	r6, fp
    72b8:	9448      	str	r4, [sp, #288]	; 0x120
    72ba:	d1f3      	bne.n	72a4 <heif_decode_to_yuv420p_inner@@Base+0x360>
    72bc:	9e49      	ldr	r6, [sp, #292]	; 0x124
    72be:	f04f 0900 	mov.w	r9, #0
    72c2:	9c51      	ldr	r4, [sp, #324]	; 0x144
    72c4:	4628      	mov	r0, r5
    72c6:	4631      	mov	r1, r6
    72c8:	f109 0901 	add.w	r9, r9, #1
    72cc:	4642      	mov	r2, r8
    72ce:	f7fe eb98 	blx	5a00 <memcpy@plt>
    72d2:	45b9      	cmp	r9, r7
    72d4:	4426      	add	r6, r4
    72d6:	445d      	add	r5, fp
    72d8:	9649      	str	r6, [sp, #292]	; 0x124
    72da:	d1f3      	bne.n	72c4 <heif_decode_to_yuv420p_inner@@Base+0x380>
    72dc:	9b10      	ldr	r3, [sp, #64]	; 0x40
    72de:	9812      	ldr	r0, [sp, #72]	; 0x48
    72e0:	3301      	adds	r3, #1
    72e2:	9310      	str	r3, [sp, #64]	; 0x40
    72e4:	f7fe ebfe 	blx	5ae4 <bytevc1_decoder_close@plt>
    72e8:	9b11      	ldr	r3, [sp, #68]	; 0x44
    72ea:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    72ec:	4293      	cmp	r3, r2
    72ee:	f73f af3c 	bgt.w	716a <heif_decode_to_yuv420p_inner@@Base+0x226>
    72f2:	f8dd b09c 	ldr.w	fp, [sp, #156]	; 0x9c
    72f6:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    72f8:	9f5c      	ldr	r7, [sp, #368]	; 0x170
    72fa:	9e5d      	ldr	r6, [sp, #372]	; 0x174
    72fc:	601f      	str	r7, [r3, #0]
    72fe:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    7300:	4634      	mov	r4, r6
    7302:	601e      	str	r6, [r3, #0]
    7304:	9b24      	ldr	r3, [sp, #144]	; 0x90
    7306:	2b00      	cmp	r3, #0
    7308:	f040 8136 	bne.w	7578 <heif_decode_to_yuv420p_inner@@Base+0x634>
    730c:	9b25      	ldr	r3, [sp, #148]	; 0x94
    730e:	2b01      	cmp	r3, #1
    7310:	f240 811f 	bls.w	7552 <heif_decode_to_yuv420p_inner@@Base+0x60e>
    7314:	4619      	mov	r1, r3
    7316:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    7318:	681d      	ldr	r5, [r3, #0]
    731a:	4628      	mov	r0, r5
    731c:	f7fe eb9a 	blx	5a54 <__aeabi_uidiv@plt>
    7320:	4606      	mov	r6, r0
    7322:	2800      	cmp	r0, #0
    7324:	f000 8115 	beq.w	7552 <heif_decode_to_yuv420p_inner@@Base+0x60e>
    7328:	4620      	mov	r0, r4
    732a:	9925      	ldr	r1, [sp, #148]	; 0x94
    732c:	f7fe eb92 	blx	5a54 <__aeabi_uidiv@plt>
    7330:	2800      	cmp	r0, #0
    7332:	f000 810e 	beq.w	7552 <heif_decode_to_yuv420p_inner@@Base+0x60e>
    7336:	f100 0a01 	add.w	sl, r0, #1
    733a:	1c77      	adds	r7, r6, #1
    733c:	f03a 0a01 	bics.w	sl, sl, #1
    7340:	bf0c      	ite	eq
    7342:	2601      	moveq	r6, #1
    7344:	2600      	movne	r6, #0
    7346:	f037 0701 	bics.w	r7, r7, #1
    734a:	bf08      	it	eq
    734c:	f046 0601 	orreq.w	r6, r6, #1
    7350:	2e00      	cmp	r6, #0
    7352:	f040 81ae 	bne.w	76b2 <heif_decode_to_yuv420p_inner@@Base+0x76e>
    7356:	ea4f 036a 	mov.w	r3, sl, asr #1
    735a:	ea4f 0e67 	mov.w	lr, r7, asr #1
    735e:	fb03 fe0e 	mul.w	lr, r3, lr
    7362:	ea4f 0e4e 	mov.w	lr, lr, lsl #1
    7366:	fb0a e307 	mla	r3, sl, r7, lr
    736a:	4618      	mov	r0, r3
    736c:	9326      	str	r3, [sp, #152]	; 0x98
    736e:	f7fe eb6c 	blx	5a48 <malloc@plt>
    7372:	4680      	mov	r8, r0
    7374:	2800      	cmp	r0, #0
    7376:	f000 819c 	beq.w	76b2 <heif_decode_to_yuv420p_inner@@Base+0x76e>
    737a:	9b25      	ldr	r3, [sp, #148]	; 0x94
    737c:	4629      	mov	r1, r5
    737e:	f8dd 906c 	ldr.w	r9, [sp, #108]	; 0x6c
    7382:	4622      	mov	r2, r4
    7384:	ac3a      	add	r4, sp, #232	; 0xe8
    7386:	9300      	str	r3, [sp, #0]
    7388:	f20d 1311 	addw	r3, sp, #273	; 0x111
    738c:	4648      	mov	r0, r9
    738e:	9301      	str	r3, [sp, #4]
    7390:	4643      	mov	r3, r8
    7392:	f7ff fd49 	bl	6e28 <bytevc1_decoder_decode@@Base+0x11c>
    7396:	4605      	mov	r5, r0
    7398:	4648      	mov	r0, r9
    739a:	f7fe eb68 	blx	5a6c <free@plt>
    739e:	2d00      	cmp	r5, #0
    73a0:	f000 8195 	beq.w	76ce <heif_decode_to_yuv420p_inner@@Base+0x78a>
    73a4:	4640      	mov	r0, r8
    73a6:	f7fe eb62 	blx	5a6c <free@plt>
    73aa:	963a      	str	r6, [sp, #232]	; 0xe8
    73ac:	963b      	str	r6, [sp, #236]	; 0xec
    73ae:	9d09      	ldr	r5, [sp, #36]	; 0x24
    73b0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    73b2:	e610      	b.n	6fd6 <heif_decode_to_yuv420p_inner@@Base+0x92>
    73b4:	ac32      	add	r4, sp, #200	; 0xc8
    73b6:	ae2c      	add	r6, sp, #176	; 0xb0
    73b8:	f10d 05a7 	add.w	r5, sp, #167	; 0xa7
    73bc:	ab2d      	add	r3, sp, #180	; 0xb4
    73be:	4620      	mov	r0, r4
    73c0:	9318      	str	r3, [sp, #96]	; 0x60
    73c2:	6032      	str	r2, [r6, #0]
    73c4:	2308      	movs	r3, #8
    73c6:	922d      	str	r2, [sp, #180]	; 0xb4
    73c8:	702b      	strb	r3, [r5, #0]
    73ca:	f7fe eb74 	blx	5ab4 <bytevc1_decoder_init@plt>
    73ce:	f89d 2068 	ldrb.w	r2, [sp, #104]	; 0x68
    73d2:	4620      	mov	r0, r4
    73d4:	f89d 3198 	ldrb.w	r3, [sp, #408]	; 0x198
    73d8:	9954      	ldr	r1, [sp, #336]	; 0x150
    73da:	f88d 20d4 	strb.w	r2, [sp, #212]	; 0xd4
    73de:	f89d 2090 	ldrb.w	r2, [sp, #144]	; 0x90
    73e2:	f88d 20d5 	strb.w	r2, [sp, #213]	; 0xd5
    73e6:	9a20      	ldr	r2, [sp, #128]	; 0x80
    73e8:	9236      	str	r2, [sp, #216]	; 0xd8
    73ea:	9a22      	ldr	r2, [sp, #136]	; 0x88
    73ec:	9237      	str	r2, [sp, #220]	; 0xdc
    73ee:	9a23      	ldr	r2, [sp, #140]	; 0x8c
    73f0:	9238      	str	r2, [sp, #224]	; 0xe0
    73f2:	9a21      	ldr	r2, [sp, #132]	; 0x84
    73f4:	9239      	str	r2, [sp, #228]	; 0xe4
    73f6:	9a55      	ldr	r2, [sp, #340]	; 0x154
    73f8:	b9b3      	cbnz	r3, 7428 <heif_decode_to_yuv420p_inner@@Base+0x4e4>
    73fa:	9f18      	ldr	r7, [sp, #96]	; 0x60
    73fc:	4633      	mov	r3, r6
    73fe:	9503      	str	r5, [sp, #12]
    7400:	9700      	str	r7, [sp, #0]
    7402:	9f0d      	ldr	r7, [sp, #52]	; 0x34
    7404:	9701      	str	r7, [sp, #4]
    7406:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    7408:	9702      	str	r7, [sp, #8]
    740a:	f7fe eb72 	blx	5af0 <bytevc1_decoder_decode@plt>
    740e:	4605      	mov	r5, r0
    7410:	4620      	mov	r0, r4
    7412:	f7fe eb68 	blx	5ae4 <bytevc1_decoder_close@plt>
    7416:	b19d      	cbz	r5, 7440 <heif_decode_to_yuv420p_inner@@Base+0x4fc>
    7418:	6830      	ldr	r0, [r6, #0]
    741a:	ac3a      	add	r4, sp, #232	; 0xe8
    741c:	2800      	cmp	r0, #0
    741e:	f43f add5 	beq.w	6fcc <heif_decode_to_yuv420p_inner@@Base+0x88>
    7422:	f7fe eb24 	blx	5a6c <free@plt>
    7426:	e5d1      	b.n	6fcc <heif_decode_to_yuv420p_inner@@Base+0x88>
    7428:	9f18      	ldr	r7, [sp, #96]	; 0x60
    742a:	4633      	mov	r3, r6
    742c:	9503      	str	r5, [sp, #12]
    742e:	9700      	str	r7, [sp, #0]
    7430:	9f0d      	ldr	r7, [sp, #52]	; 0x34
    7432:	9701      	str	r7, [sp, #4]
    7434:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    7436:	9702      	str	r7, [sp, #8]
    7438:	f7fe eb60 	blx	5afc <bytevc1_decoder_decode_sequence@plt>
    743c:	4605      	mov	r5, r0
    743e:	e7e7      	b.n	7410 <heif_decode_to_yuv420p_inner@@Base+0x4cc>
    7440:	9b25      	ldr	r3, [sp, #148]	; 0x94
    7442:	f8d6 9000 	ldr.w	r9, [r6]
    7446:	2b01      	cmp	r3, #1
    7448:	f89d 7198 	ldrb.w	r7, [sp, #408]	; 0x198
    744c:	d960      	bls.n	7510 <heif_decode_to_yuv420p_inner@@Base+0x5cc>
    744e:	f1b9 0f00 	cmp.w	r9, #0
    7452:	d05d      	beq.n	7510 <heif_decode_to_yuv420p_inner@@Base+0x5cc>
    7454:	2f00      	cmp	r7, #0
    7456:	d15b      	bne.n	7510 <heif_decode_to_yuv420p_inner@@Base+0x5cc>
    7458:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    745a:	9925      	ldr	r1, [sp, #148]	; 0x94
    745c:	681b      	ldr	r3, [r3, #0]
    745e:	4618      	mov	r0, r3
    7460:	930f      	str	r3, [sp, #60]	; 0x3c
    7462:	f7fe eaf8 	blx	5a54 <__aeabi_uidiv@plt>
    7466:	4605      	mov	r5, r0
    7468:	2800      	cmp	r0, #0
    746a:	d051      	beq.n	7510 <heif_decode_to_yuv420p_inner@@Base+0x5cc>
    746c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    746e:	9925      	ldr	r1, [sp, #148]	; 0x94
    7470:	f8d3 a000 	ldr.w	sl, [r3]
    7474:	4650      	mov	r0, sl
    7476:	f7fe eaee 	blx	5a54 <__aeabi_uidiv@plt>
    747a:	2800      	cmp	r0, #0
    747c:	d048      	beq.n	7510 <heif_decode_to_yuv420p_inner@@Base+0x5cc>
    747e:	f100 0801 	add.w	r8, r0, #1
    7482:	3501      	adds	r5, #1
    7484:	f038 0801 	bics.w	r8, r8, #1
    7488:	f025 0501 	bic.w	r5, r5, #1
    748c:	f000 8128 	beq.w	76e0 <heif_decode_to_yuv420p_inner@@Base+0x79c>
    7490:	2d00      	cmp	r5, #0
    7492:	f000 8125 	beq.w	76e0 <heif_decode_to_yuv420p_inner@@Base+0x79c>
    7496:	ea4f 0268 	mov.w	r2, r8, asr #1
    749a:	106f      	asrs	r7, r5, #1
    749c:	fb02 f707 	mul.w	r7, r2, r7
    74a0:	007f      	lsls	r7, r7, #1
    74a2:	fb08 7305 	mla	r3, r8, r5, r7
    74a6:	4618      	mov	r0, r3
    74a8:	9310      	str	r3, [sp, #64]	; 0x40
    74aa:	f7fe eace 	blx	5a48 <malloc@plt>
    74ae:	4604      	mov	r4, r0
    74b0:	2800      	cmp	r0, #0
    74b2:	f000 8115 	beq.w	76e0 <heif_decode_to_yuv420p_inner@@Base+0x79c>
    74b6:	9b25      	ldr	r3, [sp, #148]	; 0x94
    74b8:	4648      	mov	r0, r9
    74ba:	990f      	ldr	r1, [sp, #60]	; 0x3c
    74bc:	4652      	mov	r2, sl
    74be:	9300      	str	r3, [sp, #0]
    74c0:	f20d 1311 	addw	r3, sp, #273	; 0x111
    74c4:	9301      	str	r3, [sp, #4]
    74c6:	4623      	mov	r3, r4
    74c8:	f7ff fcae 	bl	6e28 <bytevc1_decoder_decode@@Base+0x11c>
    74cc:	4607      	mov	r7, r0
    74ce:	6830      	ldr	r0, [r6, #0]
    74d0:	f7fe eacc 	blx	5a6c <free@plt>
    74d4:	b187      	cbz	r7, 74f8 <heif_decode_to_yuv420p_inner@@Base+0x5b4>
    74d6:	4620      	mov	r0, r4
    74d8:	ad3a      	add	r5, sp, #232	; 0xe8
    74da:	f7fe eac8 	blx	5a6c <free@plt>
    74de:	9c09      	ldr	r4, [sp, #36]	; 0x24
    74e0:	2300      	movs	r3, #0
    74e2:	933a      	str	r3, [sp, #232]	; 0xe8
    74e4:	933b      	str	r3, [sp, #236]	; 0xec
    74e6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
    74e8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    74ea:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
    74ec:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    74ee:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
    74f0:	682d      	ldr	r5, [r5, #0]
    74f2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    74f4:	6025      	str	r5, [r4, #0]
    74f6:	e575      	b.n	6fe4 <heif_decode_to_yuv420p_inner@@Base+0xa0>
    74f8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    74fa:	46a1      	mov	r9, r4
    74fc:	f89d 7198 	ldrb.w	r7, [sp, #408]	; 0x198
    7500:	601d      	str	r5, [r3, #0]
    7502:	9b18      	ldr	r3, [sp, #96]	; 0x60
    7504:	461a      	mov	r2, r3
    7506:	9b10      	ldr	r3, [sp, #64]	; 0x40
    7508:	6013      	str	r3, [r2, #0]
    750a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    750c:	f8c3 8000 	str.w	r8, [r3]
    7510:	9b18      	ldr	r3, [sp, #96]	; 0x60
    7512:	ac3a      	add	r4, sp, #232	; 0xe8
    7514:	f8cd 90ec 	str.w	r9, [sp, #236]	; 0xec
    7518:	681a      	ldr	r2, [r3, #0]
    751a:	923a      	str	r2, [sp, #232]	; 0xe8
    751c:	b172      	cbz	r2, 753c <heif_decode_to_yuv420p_inner@@Base+0x5f8>
    751e:	f89d 315a 	ldrb.w	r3, [sp, #346]	; 0x15a
    7522:	b15b      	cbz	r3, 753c <heif_decode_to_yuv420p_inner@@Base+0x5f8>
    7524:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7526:	2501      	movs	r5, #1
    7528:	985b      	ldr	r0, [sp, #364]	; 0x16c
    752a:	953c      	str	r5, [sp, #240]	; 0xf0
    752c:	6819      	ldr	r1, [r3, #0]
    752e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    7530:	903e      	str	r0, [sp, #248]	; 0xf8
    7532:	913f      	str	r1, [sp, #252]	; 0xfc
    7534:	681a      	ldr	r2, [r3, #0]
    7536:	9b5a      	ldr	r3, [sp, #360]	; 0x168
    7538:	9240      	str	r2, [sp, #256]	; 0x100
    753a:	933d      	str	r3, [sp, #244]	; 0xf4
    753c:	9961      	ldr	r1, [sp, #388]	; 0x184
    753e:	9a62      	ldr	r2, [sp, #392]	; 0x188
    7540:	9b6b      	ldr	r3, [sp, #428]	; 0x1ac
    7542:	986c      	ldr	r0, [sp, #432]	; 0x1b0
    7544:	f88d 7110 	strb.w	r7, [sp, #272]	; 0x110
    7548:	9142      	str	r1, [sp, #264]	; 0x108
    754a:	9243      	str	r2, [sp, #268]	; 0x10c
    754c:	9345      	str	r3, [sp, #276]	; 0x114
    754e:	9046      	str	r0, [sp, #280]	; 0x118
    7550:	e53c      	b.n	6fcc <heif_decode_to_yuv420p_inner@@Base+0x88>
    7552:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    7554:	ac3a      	add	r4, sp, #232	; 0xe8
    7556:	933b      	str	r3, [sp, #236]	; 0xec
    7558:	9b26      	ldr	r3, [sp, #152]	; 0x98
    755a:	f89d 7198 	ldrb.w	r7, [sp, #408]	; 0x198
    755e:	461a      	mov	r2, r3
    7560:	933a      	str	r3, [sp, #232]	; 0xe8
    7562:	e7db      	b.n	751c <heif_decode_to_yuv420p_inner@@Base+0x5d8>
    7564:	981b      	ldr	r0, [sp, #108]	; 0x6c
    7566:	ac3a      	add	r4, sp, #232	; 0xe8
    7568:	f8dd b09c 	ldr.w	fp, [sp, #156]	; 0x9c
    756c:	f7fe ea7e 	blx	5a6c <free@plt>
    7570:	9812      	ldr	r0, [sp, #72]	; 0x48
    7572:	f7fe eab8 	blx	5ae4 <bytevc1_decoder_close@plt>
    7576:	e529      	b.n	6fcc <heif_decode_to_yuv420p_inner@@Base+0x88>
    7578:	9921      	ldr	r1, [sp, #132]	; 0x84
    757a:	9a23      	ldr	r2, [sp, #140]	; 0x8c
    757c:	460b      	mov	r3, r1
    757e:	f102 0e01 	add.w	lr, r2, #1
    7582:	3301      	adds	r3, #1
    7584:	ea4f 0e5e 	mov.w	lr, lr, lsr #1
    7588:	085b      	lsrs	r3, r3, #1
    758a:	fb01 f802 	mul.w	r8, r1, r2
    758e:	fb03 fe0e 	mul.w	lr, r3, lr
    7592:	9b19      	ldr	r3, [sp, #100]	; 0x64
    7594:	eb08 0e4e 	add.w	lr, r8, lr, lsl #1
    7598:	fb0e f303 	mul.w	r3, lr, r3
    759c:	4618      	mov	r0, r3
    759e:	9326      	str	r3, [sp, #152]	; 0x98
    75a0:	f7fe ea52 	blx	5a48 <malloc@plt>
    75a4:	900f      	str	r0, [sp, #60]	; 0x3c
    75a6:	2800      	cmp	r0, #0
    75a8:	f000 8088 	beq.w	76bc <heif_decode_to_yuv420p_inner@@Base+0x778>
    75ac:	9922      	ldr	r1, [sp, #136]	; 0x88
    75ae:	1c7b      	adds	r3, r7, #1
    75b0:	1c74      	adds	r4, r6, #1
    75b2:	f89d 5111 	ldrb.w	r5, [sp, #273]	; 0x111
    75b6:	105b      	asrs	r3, r3, #1
    75b8:	9820      	ldr	r0, [sp, #128]	; 0x80
    75ba:	fb07 f101 	mul.w	r1, r7, r1
    75be:	1064      	asrs	r4, r4, #1
    75c0:	fb06 f607 	mul.w	r6, r6, r7
    75c4:	2d08      	cmp	r5, #8
    75c6:	fb04 f303 	mul.w	r3, r4, r3
    75ca:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    75cc:	bf14      	ite	ne
    75ce:	3d08      	subne	r5, #8
    75d0:	2501      	moveq	r5, #1
    75d2:	ea4f 0a50 	mov.w	sl, r0, lsr #1
    75d6:	eb01 0e00 	add.w	lr, r1, r0
    75da:	fb08 2905 	mla	r9, r8, r5, r2
    75de:	eb0a 0191 	add.w	r1, sl, r1, lsr #2
    75e2:	fb05 f207 	mul.w	r2, r5, r7
    75e6:	ea4f 0a98 	mov.w	sl, r8, lsr #2
    75ea:	fb06 f605 	mul.w	r6, r6, r5
    75ee:	fb01 f105 	mul.w	r1, r1, r5
    75f2:	fb03 6305 	mla	r3, r3, r5, r6
    75f6:	9210      	str	r2, [sp, #64]	; 0x40
    75f8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
    75fa:	fb0a 9a05 	mla	sl, sl, r5, r9
    75fe:	440b      	add	r3, r1
    7600:	18d3      	adds	r3, r2, r3
    7602:	9311      	str	r3, [sp, #68]	; 0x44
    7604:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    7606:	4431      	add	r1, r6
    7608:	eb02 0801 	add.w	r8, r2, r1
    760c:	fb0e 2405 	mla	r4, lr, r5, r2
    7610:	fb03 f705 	mul.w	r7, r3, r5
    7614:	9b21      	ldr	r3, [sp, #132]	; 0x84
    7616:	2b00      	cmp	r3, #0
    7618:	dd1a      	ble.n	7650 <heif_decode_to_yuv420p_inner@@Base+0x70c>
    761a:	2500      	movs	r5, #0
    761c:	f8cd 9048 	str.w	r9, [sp, #72]	; 0x48
    7620:	f8cd 804c 	str.w	r8, [sp, #76]	; 0x4c
    7624:	46a9      	mov	r9, r5
    7626:	46b8      	mov	r8, r7
    7628:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
    762a:	9d10      	ldr	r5, [sp, #64]	; 0x40
    762c:	9f21      	ldr	r7, [sp, #132]	; 0x84
    762e:	4630      	mov	r0, r6
    7630:	4621      	mov	r1, r4
    7632:	f109 0901 	add.w	r9, r9, #1
    7636:	4642      	mov	r2, r8
    7638:	f7fe e9e2 	blx	5a00 <memcpy@plt>
    763c:	454f      	cmp	r7, r9
    763e:	4446      	add	r6, r8
    7640:	442c      	add	r4, r5
    7642:	d1f4      	bne.n	762e <heif_decode_to_yuv420p_inner@@Base+0x6ea>
    7644:	4647      	mov	r7, r8
    7646:	f8dd 9048 	ldr.w	r9, [sp, #72]	; 0x48
    764a:	f8dd 804c 	ldr.w	r8, [sp, #76]	; 0x4c
    764e:	9b21      	ldr	r3, [sp, #132]	; 0x84
    7650:	105c      	asrs	r4, r3, #1
    7652:	9b10      	ldr	r3, [sp, #64]	; 0x40
    7654:	2c00      	cmp	r4, #0
    7656:	ea4f 0767 	mov.w	r7, r7, asr #1
    765a:	ea4f 0563 	mov.w	r5, r3, asr #1
    765e:	bfc8      	it	gt
    7660:	2600      	movgt	r6, #0
    7662:	dd16      	ble.n	7692 <heif_decode_to_yuv420p_inner@@Base+0x74e>
    7664:	4648      	mov	r0, r9
    7666:	4641      	mov	r1, r8
    7668:	3601      	adds	r6, #1
    766a:	463a      	mov	r2, r7
    766c:	f7fe e9c8 	blx	5a00 <memcpy@plt>
    7670:	42a6      	cmp	r6, r4
    7672:	44b9      	add	r9, r7
    7674:	44a8      	add	r8, r5
    7676:	d1f5      	bne.n	7664 <heif_decode_to_yuv420p_inner@@Base+0x720>
    7678:	f8dd 8044 	ldr.w	r8, [sp, #68]	; 0x44
    767c:	2600      	movs	r6, #0
    767e:	4650      	mov	r0, sl
    7680:	4641      	mov	r1, r8
    7682:	3601      	adds	r6, #1
    7684:	463a      	mov	r2, r7
    7686:	f7fe e9bc 	blx	5a00 <memcpy@plt>
    768a:	42a6      	cmp	r6, r4
    768c:	44ba      	add	sl, r7
    768e:	44a8      	add	r8, r5
    7690:	d1f5      	bne.n	767e <heif_decode_to_yuv420p_inner@@Base+0x73a>
    7692:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    7694:	981b      	ldr	r0, [sp, #108]	; 0x6c
    7696:	931b      	str	r3, [sp, #108]	; 0x6c
    7698:	f7fe e9e8 	blx	5a6c <free@plt>
    769c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    769e:	9921      	ldr	r1, [sp, #132]	; 0x84
    76a0:	461a      	mov	r2, r3
    76a2:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    76a4:	460c      	mov	r4, r1
    76a6:	6013      	str	r3, [r2, #0]
    76a8:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    76aa:	6011      	str	r1, [r2, #0]
    76ac:	e62e      	b.n	730c <heif_decode_to_yuv420p_inner@@Base+0x3c8>
    76ae:	f7fe e9ae 	blx	5a0c <__stack_chk_fail@plt>
    76b2:	981b      	ldr	r0, [sp, #108]	; 0x6c
    76b4:	ac3a      	add	r4, sp, #232	; 0xe8
    76b6:	f7fe e9da 	blx	5a6c <free@plt>
    76ba:	e487      	b.n	6fcc <heif_decode_to_yuv420p_inner@@Base+0x88>
    76bc:	981b      	ldr	r0, [sp, #108]	; 0x6c
    76be:	ad3a      	add	r5, sp, #232	; 0xe8
    76c0:	f7fe e9d4 	blx	5a6c <free@plt>
    76c4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    76c6:	9c09      	ldr	r4, [sp, #36]	; 0x24
    76c8:	933a      	str	r3, [sp, #232]	; 0xe8
    76ca:	933b      	str	r3, [sp, #236]	; 0xec
    76cc:	e70b      	b.n	74e6 <heif_decode_to_yuv420p_inner@@Base+0x5a2>
    76ce:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    76d0:	f8cd 806c 	str.w	r8, [sp, #108]	; 0x6c
    76d4:	601f      	str	r7, [r3, #0]
    76d6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    76d8:	f8c3 a000 	str.w	sl, [r3]
    76dc:	4643      	mov	r3, r8
    76de:	e73a      	b.n	7556 <heif_decode_to_yuv420p_inner@@Base+0x612>
    76e0:	4648      	mov	r0, r9
    76e2:	ac3a      	add	r4, sp, #232	; 0xe8
    76e4:	e69d      	b.n	7422 <heif_decode_to_yuv420p_inner@@Base+0x4de>
    76e6:	bf00      	nop
    76e8:	fb66 0000 	smmls	r0, r6, r0, r0
    76ec:	dbd2      	blt.n	7694 <heif_decode_to_yuv420p_inner@@Base+0x750>
    76ee:	0000      	movs	r0, r0
    76f0:	dbe0      	blt.n	76b4 <heif_decode_to_yuv420p_inner@@Base+0x770>
	...

000076f4 <heif_decode_to_yuv420p@@Base>:
    76f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    76f8:	4698      	mov	r8, r3
    76fa:	4c6d      	ldr	r4, [pc, #436]	; (78b0 <heif_decode_to_yuv420p@@Base+0x1bc>)
    76fc:	b09f      	sub	sp, #124	; 0x7c
    76fe:	f04f 0b00 	mov.w	fp, #0
    7702:	460f      	mov	r7, r1
    7704:	447c      	add	r4, pc
    7706:	6824      	ldr	r4, [r4, #0]
    7708:	4615      	mov	r5, r2
    770a:	4659      	mov	r1, fp
    770c:	2240      	movs	r2, #64	; 0x40
    770e:	6823      	ldr	r3, [r4, #0]
    7710:	4606      	mov	r6, r0
    7712:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    7716:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
    771a:	931d      	str	r3, [sp, #116]	; 0x74
    771c:	f7fe e9f4 	blx	5b08 <memset@plt>
    7720:	4639      	mov	r1, r7
    7722:	462a      	mov	r2, r5
    7724:	ab0f      	add	r3, sp, #60	; 0x3c
    7726:	f8cd 8004 	str.w	r8, [sp, #4]
    772a:	9300      	str	r3, [sp, #0]
    772c:	a810      	add	r0, sp, #64	; 0x40
    772e:	ab0e      	add	r3, sp, #56	; 0x38
    7730:	f7fe e9f0 	blx	5b14 <heif_decode_to_yuv420p_inner@plt>
    7734:	9d11      	ldr	r5, [sp, #68]	; 0x44
    7736:	f8dd 904c 	ldr.w	r9, [sp, #76]	; 0x4c
    773a:	9f14      	ldr	r7, [sp, #80]	; 0x50
    773c:	b125      	cbz	r5, 7748 <heif_decode_to_yuv420p@@Base+0x54>
    773e:	9b10      	ldr	r3, [sp, #64]	; 0x40
    7740:	b95b      	cbnz	r3, 775a <heif_decode_to_yuv420p@@Base+0x66>
    7742:	4628      	mov	r0, r5
    7744:	f7fe e992 	blx	5a6c <free@plt>
    7748:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    774a:	4630      	mov	r0, r6
    774c:	6823      	ldr	r3, [r4, #0]
    774e:	429a      	cmp	r2, r3
    7750:	f040 80ac 	bne.w	78ac <heif_decode_to_yuv420p@@Base+0x1b8>
    7754:	b01f      	add	sp, #124	; 0x7c
    7756:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    775a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
    775e:	f1b8 0f00 	cmp.w	r8, #0
    7762:	d0ee      	beq.n	7742 <heif_decode_to_yuv420p@@Base+0x4e>
    7764:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
    7768:	f1ba 0f00 	cmp.w	sl, #0
    776c:	d0e9      	beq.n	7742 <heif_decode_to_yuv420p@@Base+0x4e>
    776e:	9b12      	ldr	r3, [sp, #72]	; 0x48
    7770:	b9f3      	cbnz	r3, 77b0 <heif_decode_to_yuv420p@@Base+0xbc>
    7772:	f108 0701 	add.w	r7, r8, #1
    7776:	f10a 0301 	add.w	r3, sl, #1
    777a:	fb08 fe0a 	mul.w	lr, r8, sl
    777e:	085b      	lsrs	r3, r3, #1
    7780:	087f      	lsrs	r7, r7, #1
    7782:	9918      	ldr	r1, [sp, #96]	; 0x60
    7784:	9a19      	ldr	r2, [sp, #100]	; 0x64
    7786:	fb03 f707 	mul.w	r7, r3, r7
    778a:	f89d c069 	ldrb.w	ip, [sp, #105]	; 0x69
    778e:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    7790:	981c      	ldr	r0, [sp, #112]	; 0x70
    7792:	6075      	str	r5, [r6, #4]
    7794:	f8c6 8018 	str.w	r8, [r6, #24]
    7798:	eb0e 0747 	add.w	r7, lr, r7, lsl #1
    779c:	f8c6 a01c 	str.w	sl, [r6, #28]
    77a0:	60f1      	str	r1, [r6, #12]
    77a2:	6037      	str	r7, [r6, #0]
    77a4:	60b2      	str	r2, [r6, #8]
    77a6:	f886 c030 	strb.w	ip, [r6, #48]	; 0x30
    77aa:	6373      	str	r3, [r6, #52]	; 0x34
    77ac:	63b0      	str	r0, [r6, #56]	; 0x38
    77ae:	e7cb      	b.n	7748 <heif_decode_to_yuv420p@@Base+0x54>
    77b0:	9b15      	ldr	r3, [sp, #84]	; 0x54
    77b2:	4618      	mov	r0, r3
    77b4:	9307      	str	r3, [sp, #28]
    77b6:	9b16      	ldr	r3, [sp, #88]	; 0x58
    77b8:	4602      	mov	r2, r0
    77ba:	3201      	adds	r2, #1
    77bc:	4619      	mov	r1, r3
    77be:	9308      	str	r3, [sp, #32]
    77c0:	3301      	adds	r3, #1
    77c2:	1052      	asrs	r2, r2, #1
    77c4:	9202      	str	r2, [sp, #8]
    77c6:	105b      	asrs	r3, r3, #1
    77c8:	9303      	str	r3, [sp, #12]
    77ca:	fb01 f100 	mul.w	r1, r1, r0
    77ce:	469e      	mov	lr, r3
    77d0:	9b02      	ldr	r3, [sp, #8]
    77d2:	fb0e f303 	mul.w	r3, lr, r3
    77d6:	910a      	str	r1, [sp, #40]	; 0x28
    77d8:	4618      	mov	r0, r3
    77da:	9305      	str	r3, [sp, #20]
    77dc:	fb08 f30a 	mul.w	r3, r8, sl
    77e0:	eb01 0040 	add.w	r0, r1, r0, lsl #1
    77e4:	9304      	str	r3, [sp, #16]
    77e6:	f7fe e930 	blx	5a48 <malloc@plt>
    77ea:	f10a 0201 	add.w	r2, sl, #1
    77ee:	f108 0a01 	add.w	sl, r8, #1
    77f2:	9904      	ldr	r1, [sp, #16]
    77f4:	0852      	lsrs	r2, r2, #1
    77f6:	ea4f 035a 	mov.w	r3, sl, lsr #1
    77fa:	fb03 1302 	mla	r3, r3, r2, r1
    77fe:	9a08      	ldr	r2, [sp, #32]
    7800:	2a00      	cmp	r2, #0
    7802:	9306      	str	r3, [sp, #24]
    7804:	9009      	str	r0, [sp, #36]	; 0x24
    7806:	dd16      	ble.n	7836 <heif_decode_to_yuv420p@@Base+0x142>
    7808:	fb08 9a07 	mla	sl, r8, r7, r9
    780c:	970b      	str	r7, [sp, #44]	; 0x2c
    780e:	9f07      	ldr	r7, [sp, #28]
    7810:	950c      	str	r5, [sp, #48]	; 0x30
    7812:	44aa      	add	sl, r5
    7814:	940d      	str	r4, [sp, #52]	; 0x34
    7816:	4605      	mov	r5, r0
    7818:	465c      	mov	r4, fp
    781a:	4693      	mov	fp, r2
    781c:	4628      	mov	r0, r5
    781e:	4651      	mov	r1, sl
    7820:	3401      	adds	r4, #1
    7822:	463a      	mov	r2, r7
    7824:	f7fe e8ec 	blx	5a00 <memcpy@plt>
    7828:	455c      	cmp	r4, fp
    782a:	443d      	add	r5, r7
    782c:	44c2      	add	sl, r8
    782e:	d1f5      	bne.n	781c <heif_decode_to_yuv420p@@Base+0x128>
    7830:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
    7832:	9d0c      	ldr	r5, [sp, #48]	; 0x30
    7834:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    7836:	9b03      	ldr	r3, [sp, #12]
    7838:	2b00      	cmp	r3, #0
    783a:	dd2e      	ble.n	789a <heif_decode_to_yuv420p@@Base+0x1a6>
    783c:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
    7840:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    7842:	9909      	ldr	r1, [sp, #36]	; 0x24
    7844:	eb09 73d9 	add.w	r3, r9, r9, lsr #31
    7848:	107f      	asrs	r7, r7, #1
    784a:	940b      	str	r4, [sp, #44]	; 0x2c
    784c:	440a      	add	r2, r1
    784e:	105b      	asrs	r3, r3, #1
    7850:	fb08 f707 	mul.w	r7, r8, r7
    7854:	4691      	mov	r9, r2
    7856:	9a07      	ldr	r2, [sp, #28]
    7858:	464c      	mov	r4, r9
    785a:	f04f 0a00 	mov.w	sl, #0
    785e:	4699      	mov	r9, r3
    7860:	960a      	str	r6, [sp, #40]	; 0x28
    7862:	ea4f 0b62 	mov.w	fp, r2, asr #1
    7866:	9b04      	ldr	r3, [sp, #16]
    7868:	eb09 0657 	add.w	r6, r9, r7, lsr #1
    786c:	4620      	mov	r0, r4
    786e:	9a02      	ldr	r2, [sp, #8]
    7870:	18f1      	adds	r1, r6, r3
    7872:	f10a 0a01 	add.w	sl, sl, #1
    7876:	4429      	add	r1, r5
    7878:	4447      	add	r7, r8
    787a:	f7fe e8c2 	blx	5a00 <memcpy@plt>
    787e:	9b06      	ldr	r3, [sp, #24]
    7880:	465a      	mov	r2, fp
    7882:	18f1      	adds	r1, r6, r3
    7884:	9b05      	ldr	r3, [sp, #20]
    7886:	4429      	add	r1, r5
    7888:	1918      	adds	r0, r3, r4
    788a:	445c      	add	r4, fp
    788c:	f7fe e8b8 	blx	5a00 <memcpy@plt>
    7890:	9b03      	ldr	r3, [sp, #12]
    7892:	459a      	cmp	sl, r3
    7894:	d1e7      	bne.n	7866 <heif_decode_to_yuv420p@@Base+0x172>
    7896:	9e0a      	ldr	r6, [sp, #40]	; 0x28
    7898:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
    789a:	4628      	mov	r0, r5
    789c:	f8dd a020 	ldr.w	sl, [sp, #32]
    78a0:	f7fe e8e4 	blx	5a6c <free@plt>
    78a4:	f8dd 801c 	ldr.w	r8, [sp, #28]
    78a8:	9d09      	ldr	r5, [sp, #36]	; 0x24
    78aa:	e762      	b.n	7772 <heif_decode_to_yuv420p@@Base+0x7e>
    78ac:	f7fe e8ae 	blx	5a0c <__stack_chk_fail@plt>
    78b0:	f3b8 0000 			; <UNDEFINED> instruction: 0xf3b80000

000078b4 <heif_decode_to_bytevc1@@Base>:
    78b4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    78b8:	b0a5      	sub	sp, #148	; 0x94
    78ba:	4d1a      	ldr	r5, [pc, #104]	; (7924 <heif_decode_to_bytevc1@@Base+0x70>)
    78bc:	ae04      	add	r6, sp, #16
    78be:	4688      	mov	r8, r1
    78c0:	4617      	mov	r7, r2
    78c2:	447d      	add	r5, pc
    78c4:	682d      	ldr	r5, [r5, #0]
    78c6:	2100      	movs	r1, #0
    78c8:	2240      	movs	r2, #64	; 0x40
    78ca:	4604      	mov	r4, r0
    78cc:	682b      	ldr	r3, [r5, #0]
    78ce:	9323      	str	r3, [sp, #140]	; 0x8c
    78d0:	f7fe e91a 	blx	5b08 <memset@plt>
    78d4:	4630      	mov	r0, r6
    78d6:	f7fe e8d6 	blx	5a84 <Bitstream_init@plt>
    78da:	4631      	mov	r1, r6
    78dc:	2301      	movs	r3, #1
    78de:	aa03      	add	r2, sp, #12
    78e0:	9300      	str	r3, [sp, #0]
    78e2:	a808      	add	r0, sp, #32
    78e4:	ab02      	add	r3, sp, #8
    78e6:	f8cd 8010 	str.w	r8, [sp, #16]
    78ea:	9705      	str	r7, [sp, #20]
    78ec:	f7fe e8d0 	blx	5a90 <parse_bytevc1_from_heif_bitstream@plt>
    78f0:	9903      	ldr	r1, [sp, #12]
    78f2:	9a23      	ldr	r2, [sp, #140]	; 0x8c
    78f4:	682b      	ldr	r3, [r5, #0]
    78f6:	9f09      	ldr	r7, [sp, #36]	; 0x24
    78f8:	9e08      	ldr	r6, [sp, #32]
    78fa:	429a      	cmp	r2, r3
    78fc:	e9dd 8918 	ldrd	r8, r9, [sp, #96]	; 0x60
    7900:	f89d c070 	ldrb.w	ip, [sp, #112]	; 0x70
    7904:	61a1      	str	r1, [r4, #24]
    7906:	9902      	ldr	r1, [sp, #8]
    7908:	6027      	str	r7, [r4, #0]
    790a:	6066      	str	r6, [r4, #4]
    790c:	61e1      	str	r1, [r4, #28]
    790e:	e9c4 8908 	strd	r8, r9, [r4, #32]
    7912:	f884 c030 	strb.w	ip, [r4, #48]	; 0x30
    7916:	d103      	bne.n	7920 <heif_decode_to_bytevc1@@Base+0x6c>
    7918:	4620      	mov	r0, r4
    791a:	b025      	add	sp, #148	; 0x94
    791c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    7920:	f7fe e874 	blx	5a0c <__stack_chk_fail@plt>
    7924:	f1fa 0000 			; <UNDEFINED> instruction: 0xf1fa0000

00007928 <heif_decode_to_rgb@@Base>:
    7928:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    792c:	4699      	mov	r9, r3
    792e:	4c9b      	ldr	r4, [pc, #620]	; (7b9c <heif_decode_to_rgb@@Base+0x274>)
    7930:	b0a1      	sub	sp, #132	; 0x84
    7932:	460d      	mov	r5, r1
    7934:	2100      	movs	r1, #0
    7936:	9008      	str	r0, [sp, #32]
    7938:	4626      	mov	r6, r4
    793a:	4614      	mov	r4, r2
    793c:	4632      	mov	r2, r6
    793e:	447a      	add	r2, pc
    7940:	6812      	ldr	r2, [r2, #0]
    7942:	9209      	str	r2, [sp, #36]	; 0x24
    7944:	4616      	mov	r6, r2
    7946:	2240      	movs	r2, #64	; 0x40
    7948:	6833      	ldr	r3, [r6, #0]
    794a:	931f      	str	r3, [sp, #124]	; 0x7c
    794c:	f7fe e8dc 	blx	5b08 <memset@plt>
    7950:	4622      	mov	r2, r4
    7952:	a812      	add	r0, sp, #72	; 0x48
    7954:	ab11      	add	r3, sp, #68	; 0x44
    7956:	f8cd 9004 	str.w	r9, [sp, #4]
    795a:	9300      	str	r3, [sp, #0]
    795c:	4629      	mov	r1, r5
    795e:	ab10      	add	r3, sp, #64	; 0x40
    7960:	2400      	movs	r4, #0
    7962:	9410      	str	r4, [sp, #64]	; 0x40
    7964:	9411      	str	r4, [sp, #68]	; 0x44
    7966:	f7fe e8d6 	blx	5b14 <heif_decode_to_yuv420p_inner@plt>
    796a:	9b1a      	ldr	r3, [sp, #104]	; 0x68
    796c:	9812      	ldr	r0, [sp, #72]	; 0x48
    796e:	f8dd 804c 	ldr.w	r8, [sp, #76]	; 0x4c
    7972:	930d      	str	r3, [sp, #52]	; 0x34
    7974:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    7976:	930c      	str	r3, [sp, #48]	; 0x30
    7978:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    797a:	930b      	str	r3, [sp, #44]	; 0x2c
    797c:	9b1e      	ldr	r3, [sp, #120]	; 0x78
    797e:	930a      	str	r3, [sp, #40]	; 0x28
    7980:	2800      	cmp	r0, #0
    7982:	f000 808f 	beq.w	7aa4 <heif_decode_to_rgb@@Base+0x17c>
    7986:	9e14      	ldr	r6, [sp, #80]	; 0x50
    7988:	2e00      	cmp	r6, #0
    798a:	d15d      	bne.n	7a48 <heif_decode_to_rgb@@Base+0x120>
    798c:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
    7990:	9d11      	ldr	r5, [sp, #68]	; 0x44
    7992:	f10b 0301 	add.w	r3, fp, #1
    7996:	930f      	str	r3, [sp, #60]	; 0x3c
    7998:	f105 0c01 	add.w	ip, r5, #1
    799c:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
    79a0:	085f      	lsrs	r7, r3, #1
    79a2:	ea4f 025c 	mov.w	r2, ip, lsr #1
    79a6:	fb0b f405 	mul.w	r4, fp, r5
    79aa:	fb02 f207 	mul.w	r2, r2, r7
    79ae:	eb04 0342 	add.w	r3, r4, r2, lsl #1
    79b2:	9307      	str	r3, [sp, #28]
    79b4:	4619      	mov	r1, r3
    79b6:	f7fe e84e 	blx	5a54 <__aeabi_uidiv@plt>
    79ba:	f1b0 0a00 	subs.w	sl, r0, #0
    79be:	dd71      	ble.n	7aa4 <heif_decode_to_rgb@@Base+0x17c>
    79c0:	eb04 0044 	add.w	r0, r4, r4, lsl #1
    79c4:	fb0a f000 	mul.w	r0, sl, r0
    79c8:	f7fe e83e 	blx	5a48 <malloc@plt>
    79cc:	f8dd c038 	ldr.w	ip, [sp, #56]	; 0x38
    79d0:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    79d2:	9006      	str	r0, [sp, #24]
    79d4:	2800      	cmp	r0, #0
    79d6:	d062      	beq.n	7a9e <heif_decode_to_rgb@@Base+0x176>
    79d8:	4637      	mov	r7, r6
    79da:	4659      	mov	r1, fp
    79dc:	4660      	mov	r0, ip
    79de:	46cb      	mov	fp, r9
    79e0:	46b1      	mov	r9, r6
    79e2:	462e      	mov	r6, r5
    79e4:	1040      	asrs	r0, r0, #1
    79e6:	193d      	adds	r5, r7, r4
    79e8:	105b      	asrs	r3, r3, #1
    79ea:	eb08 0c05 	add.w	ip, r8, r5
    79ee:	f89b e005 	ldrb.w	lr, [fp, #5]
    79f2:	fb00 5503 	mla	r5, r0, r3, r5
    79f6:	eb08 0007 	add.w	r0, r8, r7
    79fa:	4445      	add	r5, r8
    79fc:	f1be 0f00 	cmp.w	lr, #0
    7a00:	d003      	beq.n	7a0a <heif_decode_to_rgb@@Base+0xe2>
    7a02:	f8db 2000 	ldr.w	r2, [fp]
    7a06:	2a01      	cmp	r2, #1
    7a08:	d955      	bls.n	7ab6 <heif_decode_to_rgb@@Base+0x18e>
    7a0a:	468e      	mov	lr, r1
    7a0c:	9500      	str	r5, [sp, #0]
    7a0e:	eb04 0444 	add.w	r4, r4, r4, lsl #1
    7a12:	9d06      	ldr	r5, [sp, #24]
    7a14:	eb0e 024e 	add.w	r2, lr, lr, lsl #1
    7a18:	9301      	str	r3, [sp, #4]
    7a1a:	9203      	str	r2, [sp, #12]
    7a1c:	4662      	mov	r2, ip
    7a1e:	fb09 5404 	mla	r4, r9, r4, r5
    7a22:	f8cd e010 	str.w	lr, [sp, #16]
    7a26:	9605      	str	r6, [sp, #20]
    7a28:	f109 0901 	add.w	r9, r9, #1
    7a2c:	9d07      	ldr	r5, [sp, #28]
    7a2e:	442f      	add	r7, r5
    7a30:	9402      	str	r4, [sp, #8]
    7a32:	f7fe e876 	blx	5b20 <tt_I420ToRGB24@plt>
    7a36:	45ca      	cmp	sl, r9
    7a38:	d045      	beq.n	7ac6 <heif_decode_to_rgb@@Base+0x19e>
    7a3a:	9910      	ldr	r1, [sp, #64]	; 0x40
    7a3c:	9e11      	ldr	r6, [sp, #68]	; 0x44
    7a3e:	1c4b      	adds	r3, r1, #1
    7a40:	1c70      	adds	r0, r6, #1
    7a42:	fb01 f406 	mul.w	r4, r1, r6
    7a46:	e7cd      	b.n	79e4 <heif_decode_to_rgb@@Base+0xbc>
    7a48:	9c10      	ldr	r4, [sp, #64]	; 0x40
    7a4a:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
    7a4e:	fb04 fb09 	mul.w	fp, r4, r9
    7a52:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
    7a56:	f7fd eff8 	blx	5a48 <malloc@plt>
    7a5a:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    7a5c:	9d18      	ldr	r5, [sp, #96]	; 0x60
    7a5e:	9306      	str	r3, [sp, #24]
    7a60:	fb05 f303 	mul.w	r3, r5, r3
    7a64:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    7a68:	9307      	str	r3, [sp, #28]
    7a6a:	4606      	mov	r6, r0
    7a6c:	4618      	mov	r0, r3
    7a6e:	f7fd efec 	blx	5a48 <malloc@plt>
    7a72:	9b16      	ldr	r3, [sp, #88]	; 0x58
    7a74:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
    7a78:	930e      	str	r3, [sp, #56]	; 0x38
    7a7a:	2e00      	cmp	r6, #0
    7a7c:	bf18      	it	ne
    7a7e:	2800      	cmpne	r0, #0
    7a80:	4607      	mov	r7, r0
    7a82:	bf0c      	ite	eq
    7a84:	f04f 0c01 	moveq.w	ip, #1
    7a88:	f04f 0c00 	movne.w	ip, #0
    7a8c:	d137      	bne.n	7afe <heif_decode_to_rgb@@Base+0x1d6>
    7a8e:	b116      	cbz	r6, 7a96 <heif_decode_to_rgb@@Base+0x16e>
    7a90:	4630      	mov	r0, r6
    7a92:	f7fd efec 	blx	5a6c <free@plt>
    7a96:	b117      	cbz	r7, 7a9e <heif_decode_to_rgb@@Base+0x176>
    7a98:	4638      	mov	r0, r7
    7a9a:	f7fd efe8 	blx	5a6c <free@plt>
    7a9e:	4640      	mov	r0, r8
    7aa0:	f7fd efe4 	blx	5a6c <free@plt>
    7aa4:	9b09      	ldr	r3, [sp, #36]	; 0x24
    7aa6:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
    7aa8:	9808      	ldr	r0, [sp, #32]
    7aaa:	681b      	ldr	r3, [r3, #0]
    7aac:	429a      	cmp	r2, r3
    7aae:	d172      	bne.n	7b96 <heif_decode_to_rgb@@Base+0x26e>
    7ab0:	b021      	add	sp, #132	; 0x84
    7ab2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7ab6:	f8db e010 	ldr.w	lr, [fp, #16]
    7aba:	f8db 6014 	ldr.w	r6, [fp, #20]
    7abe:	f8cd e040 	str.w	lr, [sp, #64]	; 0x40
    7ac2:	9611      	str	r6, [sp, #68]	; 0x44
    7ac4:	e7a2      	b.n	7a0c <heif_decode_to_rgb@@Base+0xe4>
    7ac6:	4640      	mov	r0, r8
    7ac8:	f7fd efd0 	blx	5a6c <free@plt>
    7acc:	9910      	ldr	r1, [sp, #64]	; 0x40
    7ace:	9a11      	ldr	r2, [sp, #68]	; 0x44
    7ad0:	9808      	ldr	r0, [sp, #32]
    7ad2:	9d0c      	ldr	r5, [sp, #48]	; 0x30
    7ad4:	fb02 f301 	mul.w	r3, r2, r1
    7ad8:	9c06      	ldr	r4, [sp, #24]
    7ada:	6085      	str	r5, [r0, #8]
    7adc:	9d0d      	ldr	r5, [sp, #52]	; 0x34
    7ade:	6044      	str	r4, [r0, #4]
    7ae0:	4604      	mov	r4, r0
    7ae2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    7ae6:	60c5      	str	r5, [r0, #12]
    7ae8:	4605      	mov	r5, r0
    7aea:	980b      	ldr	r0, [sp, #44]	; 0x2c
    7aec:	fb0a f303 	mul.w	r3, sl, r3
    7af0:	61a9      	str	r1, [r5, #24]
    7af2:	6360      	str	r0, [r4, #52]	; 0x34
    7af4:	9c0a      	ldr	r4, [sp, #40]	; 0x28
    7af6:	61ea      	str	r2, [r5, #28]
    7af8:	63ac      	str	r4, [r5, #56]	; 0x38
    7afa:	602b      	str	r3, [r5, #0]
    7afc:	e7d2      	b.n	7aa4 <heif_decode_to_rgb@@Base+0x17c>
    7afe:	f109 0001 	add.w	r0, r9, #1
    7b02:	1c63      	adds	r3, r4, #1
    7b04:	eb08 020b 	add.w	r2, r8, fp
    7b08:	eb04 0144 	add.w	r1, r4, r4, lsl #1
    7b0c:	085b      	lsrs	r3, r3, #1
    7b0e:	0840      	lsrs	r0, r0, #1
    7b10:	9301      	str	r3, [sp, #4]
    7b12:	fb03 bb00 	mla	fp, r3, r0, fp
    7b16:	9103      	str	r1, [sp, #12]
    7b18:	9602      	str	r6, [sp, #8]
    7b1a:	4640      	mov	r0, r8
    7b1c:	9404      	str	r4, [sp, #16]
    7b1e:	eb08 010b 	add.w	r1, r8, fp
    7b22:	f8cd 9014 	str.w	r9, [sp, #20]
    7b26:	9100      	str	r1, [sp, #0]
    7b28:	4621      	mov	r1, r4
    7b2a:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    7b2e:	f7fd eff8 	blx	5b20 <tt_I420ToRGB24@plt>
    7b32:	4640      	mov	r0, r8
    7b34:	f7fd ef9a 	blx	5a6c <free@plt>
    7b38:	2d00      	cmp	r5, #0
    7b3a:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
    7b3e:	dd17      	ble.n	7b70 <heif_decode_to_rgb@@Base+0x248>
    7b40:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    7b42:	9a06      	ldr	r2, [sp, #24]
    7b44:	fb04 a803 	mla	r8, r4, r3, sl
    7b48:	9b10      	ldr	r3, [sp, #64]	; 0x40
    7b4a:	eb02 0b42 	add.w	fp, r2, r2, lsl #1
    7b4e:	4664      	mov	r4, ip
    7b50:	46ba      	mov	sl, r7
    7b52:	eb03 0943 	add.w	r9, r3, r3, lsl #1
    7b56:	eb08 0848 	add.w	r8, r8, r8, lsl #1
    7b5a:	44b0      	add	r8, r6
    7b5c:	4650      	mov	r0, sl
    7b5e:	4641      	mov	r1, r8
    7b60:	3401      	adds	r4, #1
    7b62:	465a      	mov	r2, fp
    7b64:	f7fd ef4c 	blx	5a00 <memcpy@plt>
    7b68:	42ac      	cmp	r4, r5
    7b6a:	44da      	add	sl, fp
    7b6c:	44c8      	add	r8, r9
    7b6e:	d1f5      	bne.n	7b5c <heif_decode_to_rgb@@Base+0x234>
    7b70:	4630      	mov	r0, r6
    7b72:	f7fd ef7c 	blx	5a6c <free@plt>
    7b76:	9a08      	ldr	r2, [sp, #32]
    7b78:	980c      	ldr	r0, [sp, #48]	; 0x30
    7b7a:	9907      	ldr	r1, [sp, #28]
    7b7c:	6057      	str	r7, [r2, #4]
    7b7e:	6090      	str	r0, [r2, #8]
    7b80:	980d      	ldr	r0, [sp, #52]	; 0x34
    7b82:	6011      	str	r1, [r2, #0]
    7b84:	990a      	ldr	r1, [sp, #40]	; 0x28
    7b86:	60d0      	str	r0, [r2, #12]
    7b88:	9806      	ldr	r0, [sp, #24]
    7b8a:	61d5      	str	r5, [r2, #28]
    7b8c:	6391      	str	r1, [r2, #56]	; 0x38
    7b8e:	6190      	str	r0, [r2, #24]
    7b90:	980b      	ldr	r0, [sp, #44]	; 0x2c
    7b92:	6350      	str	r0, [r2, #52]	; 0x34
    7b94:	e786      	b.n	7aa4 <heif_decode_to_rgb@@Base+0x17c>
    7b96:	f7fd ef3a 	blx	5a0c <__stack_chk_fail@plt>
    7b9a:	bf00      	nop
    7b9c:	f17e 0000 	sbcs.w	r0, lr, #0

00007ba0 <heif_decode_to_rgba@@Base>:
    7ba0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7ba4:	461e      	mov	r6, r3
    7ba6:	4ccf      	ldr	r4, [pc, #828]	; (7ee4 <heif_decode_to_rgba@@Base+0x344>)
    7ba8:	b0a3      	sub	sp, #140	; 0x8c
    7baa:	4688      	mov	r8, r1
    7bac:	4617      	mov	r7, r2
    7bae:	447c      	add	r4, pc
    7bb0:	6824      	ldr	r4, [r4, #0]
    7bb2:	2100      	movs	r1, #0
    7bb4:	2240      	movs	r2, #64	; 0x40
    7bb6:	4605      	mov	r5, r0
    7bb8:	6823      	ldr	r3, [r4, #0]
    7bba:	9321      	str	r3, [sp, #132]	; 0x84
    7bbc:	f7fd efa4 	blx	5b08 <memset@plt>
    7bc0:	f1b8 0f00 	cmp.w	r8, #0
    7bc4:	bf18      	it	ne
    7bc6:	2f00      	cmpne	r7, #0
    7bc8:	bf0c      	ite	eq
    7bca:	f04f 0e01 	moveq.w	lr, #1
    7bce:	f04f 0e00 	movne.w	lr, #0
    7bd2:	d108      	bne.n	7be6 <heif_decode_to_rgba@@Base+0x46>
    7bd4:	9a21      	ldr	r2, [sp, #132]	; 0x84
    7bd6:	4628      	mov	r0, r5
    7bd8:	6823      	ldr	r3, [r4, #0]
    7bda:	429a      	cmp	r2, r3
    7bdc:	f040 815e 	bne.w	7e9c <heif_decode_to_rgba@@Base+0x2fc>
    7be0:	b023      	add	sp, #140	; 0x8c
    7be2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7be6:	463a      	mov	r2, r7
    7be8:	ab13      	add	r3, sp, #76	; 0x4c
    7bea:	9601      	str	r6, [sp, #4]
    7bec:	4641      	mov	r1, r8
    7bee:	9300      	str	r3, [sp, #0]
    7bf0:	a814      	add	r0, sp, #80	; 0x50
    7bf2:	ab12      	add	r3, sp, #72	; 0x48
    7bf4:	f8cd e048 	str.w	lr, [sp, #72]	; 0x48
    7bf8:	f8cd e04c 	str.w	lr, [sp, #76]	; 0x4c
    7bfc:	f7fd ef8a 	blx	5b14 <heif_decode_to_yuv420p_inner@plt>
    7c00:	9b1c      	ldr	r3, [sp, #112]	; 0x70
    7c02:	9f15      	ldr	r7, [sp, #84]	; 0x54
    7c04:	f89d 9079 	ldrb.w	r9, [sp, #121]	; 0x79
    7c08:	9306      	str	r3, [sp, #24]
    7c0a:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    7c0c:	f8dd b080 	ldr.w	fp, [sp, #128]	; 0x80
    7c10:	9307      	str	r3, [sp, #28]
    7c12:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    7c14:	9308      	str	r3, [sp, #32]
    7c16:	2f00      	cmp	r7, #0
    7c18:	d0dc      	beq.n	7bd4 <heif_decode_to_rgba@@Base+0x34>
    7c1a:	9b14      	ldr	r3, [sp, #80]	; 0x50
    7c1c:	2b00      	cmp	r3, #0
    7c1e:	f000 80c7 	beq.w	7db0 <heif_decode_to_rgba@@Base+0x210>
    7c22:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
    7c26:	f1ba 0f00 	cmp.w	sl, #0
    7c2a:	f000 80c1 	beq.w	7db0 <heif_decode_to_rgba@@Base+0x210>
    7c2e:	9913      	ldr	r1, [sp, #76]	; 0x4c
    7c30:	2900      	cmp	r1, #0
    7c32:	f000 80bd 	beq.w	7db0 <heif_decode_to_rgba@@Base+0x210>
    7c36:	f1b9 0f08 	cmp.w	r9, #8
    7c3a:	bf14      	ite	ne
    7c3c:	f1a9 0308 	subne.w	r3, r9, #8
    7c40:	2301      	moveq	r3, #1
    7c42:	9309      	str	r3, [sp, #36]	; 0x24
    7c44:	9b16      	ldr	r3, [sp, #88]	; 0x58
    7c46:	b1c3      	cbz	r3, 7c7a <heif_decode_to_rgba@@Base+0xda>
    7c48:	f8dd c060 	ldr.w	ip, [sp, #96]	; 0x60
    7c4c:	f1bc 0f00 	cmp.w	ip, #0
    7c50:	db13      	blt.n	7c7a <heif_decode_to_rgba@@Base+0xda>
    7c52:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
    7c56:	f1b8 0f00 	cmp.w	r8, #0
    7c5a:	db0e      	blt.n	7c7a <heif_decode_to_rgba@@Base+0xda>
    7c5c:	9b19      	ldr	r3, [sp, #100]	; 0x64
    7c5e:	2b00      	cmp	r3, #0
    7c60:	930a      	str	r3, [sp, #40]	; 0x28
    7c62:	dd0a      	ble.n	7c7a <heif_decode_to_rgba@@Base+0xda>
    7c64:	9a1a      	ldr	r2, [sp, #104]	; 0x68
    7c66:	2a00      	cmp	r2, #0
    7c68:	920b      	str	r2, [sp, #44]	; 0x2c
    7c6a:	dd06      	ble.n	7c7a <heif_decode_to_rgba@@Base+0xda>
    7c6c:	4443      	add	r3, r8
    7c6e:	459a      	cmp	sl, r3
    7c70:	d303      	bcc.n	7c7a <heif_decode_to_rgba@@Base+0xda>
    7c72:	eb0c 0302 	add.w	r3, ip, r2
    7c76:	4299      	cmp	r1, r3
    7c78:	d274      	bcs.n	7d64 <heif_decode_to_rgba@@Base+0x1c4>
    7c7a:	fb01 fc0a 	mul.w	ip, r1, sl
    7c7e:	910b      	str	r1, [sp, #44]	; 0x2c
    7c80:	ea4f 008c 	mov.w	r0, ip, lsl #2
    7c84:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
    7c88:	f7fd eede 	blx	5a48 <malloc@plt>
    7c8c:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
    7c90:	990b      	ldr	r1, [sp, #44]	; 0x2c
    7c92:	4680      	mov	r8, r0
    7c94:	2800      	cmp	r0, #0
    7c96:	f000 808b 	beq.w	7db0 <heif_decode_to_rgba@@Base+0x210>
    7c9a:	460a      	mov	r2, r1
    7c9c:	f10a 0301 	add.w	r3, sl, #1
    7ca0:	3201      	adds	r2, #1
    7ca2:	9809      	ldr	r0, [sp, #36]	; 0x24
    7ca4:	105b      	asrs	r3, r3, #1
    7ca6:	910a      	str	r1, [sp, #40]	; 0x28
    7ca8:	1052      	asrs	r2, r2, #1
    7caa:	7971      	ldrb	r1, [r6, #5]
    7cac:	fb0c fc00 	mul.w	ip, ip, r0
    7cb0:	4686      	mov	lr, r0
    7cb2:	fb02 f203 	mul.w	r2, r2, r3
    7cb6:	920b      	str	r2, [sp, #44]	; 0x2c
    7cb8:	eb07 020c 	add.w	r2, r7, ip
    7cbc:	980b      	ldr	r0, [sp, #44]	; 0x2c
    7cbe:	fb00 c00e 	mla	r0, r0, lr, ip
    7cc2:	4438      	add	r0, r7
    7cc4:	b111      	cbz	r1, 7ccc <heif_decode_to_rgba@@Base+0x12c>
    7cc6:	6831      	ldr	r1, [r6, #0]
    7cc8:	2901      	cmp	r1, #1
    7cca:	d97a      	bls.n	7dc2 <heif_decode_to_rgba@@Base+0x222>
    7ccc:	f8cd a030 	str.w	sl, [sp, #48]	; 0x30
    7cd0:	9000      	str	r0, [sp, #0]
    7cd2:	f1b9 0f0a 	cmp.w	r9, #10
    7cd6:	980c      	ldr	r0, [sp, #48]	; 0x30
    7cd8:	4651      	mov	r1, sl
    7cda:	f8cd c034 	str.w	ip, [sp, #52]	; 0x34
    7cde:	9301      	str	r3, [sp, #4]
    7ce0:	ea4f 0680 	mov.w	r6, r0, lsl #2
    7ce4:	9004      	str	r0, [sp, #16]
    7ce6:	980a      	ldr	r0, [sp, #40]	; 0x28
    7ce8:	f8cd 8008 	str.w	r8, [sp, #8]
    7cec:	9603      	str	r6, [sp, #12]
    7cee:	9005      	str	r0, [sp, #20]
    7cf0:	4638      	mov	r0, r7
    7cf2:	d061      	beq.n	7db8 <heif_decode_to_rgba@@Base+0x218>
    7cf4:	f7fd ef1a 	blx	5b2c <tt_I420ToRGBA@plt>
    7cf8:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
    7cfc:	f89d 3078 	ldrb.w	r3, [sp, #120]	; 0x78
    7d00:	b1d3      	cbz	r3, 7d38 <heif_decode_to_rgba@@Base+0x198>
    7d02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    7d04:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    7d06:	fb03 fa02 	mul.w	sl, r3, r2
    7d0a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7d0c:	005a      	lsls	r2, r3, #1
    7d0e:	9b09      	ldr	r3, [sp, #36]	; 0x24
    7d10:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
    7d14:	fb02 c603 	mla	r6, r2, r3, ip
    7d18:	f1ba 0f00 	cmp.w	sl, #0
    7d1c:	443e      	add	r6, r7
    7d1e:	dd0b      	ble.n	7d38 <heif_decode_to_rgba@@Base+0x198>
    7d20:	f1b9 0f0a 	cmp.w	r9, #10
    7d24:	d054      	beq.n	7dd0 <heif_decode_to_rgba@@Base+0x230>
    7d26:	2300      	movs	r3, #0
    7d28:	1099      	asrs	r1, r3, #2
    7d2a:	eb08 0203 	add.w	r2, r8, r3
    7d2e:	3304      	adds	r3, #4
    7d30:	5c71      	ldrb	r1, [r6, r1]
    7d32:	459a      	cmp	sl, r3
    7d34:	70d1      	strb	r1, [r2, #3]
    7d36:	dcf7      	bgt.n	7d28 <heif_decode_to_rgba@@Base+0x188>
    7d38:	4638      	mov	r0, r7
    7d3a:	f7fd ee98 	blx	5a6c <free@plt>
    7d3e:	9912      	ldr	r1, [sp, #72]	; 0x48
    7d40:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    7d42:	9b07      	ldr	r3, [sp, #28]
    7d44:	9806      	ldr	r0, [sp, #24]
    7d46:	f8c5 8004 	str.w	r8, [r5, #4]
    7d4a:	60ab      	str	r3, [r5, #8]
    7d4c:	fb02 f301 	mul.w	r3, r2, r1
    7d50:	60e8      	str	r0, [r5, #12]
    7d52:	9808      	ldr	r0, [sp, #32]
    7d54:	f8c5 b038 	str.w	fp, [r5, #56]	; 0x38
    7d58:	61a9      	str	r1, [r5, #24]
    7d5a:	6368      	str	r0, [r5, #52]	; 0x34
    7d5c:	009b      	lsls	r3, r3, #2
    7d5e:	61ea      	str	r2, [r5, #28]
    7d60:	602b      	str	r3, [r5, #0]
    7d62:	e737      	b.n	7bd4 <heif_decode_to_rgba@@Base+0x34>
    7d64:	fb0a f301 	mul.w	r3, sl, r1
    7d68:	f8cd c044 	str.w	ip, [sp, #68]	; 0x44
    7d6c:	9110      	str	r1, [sp, #64]	; 0x40
    7d6e:	0098      	lsls	r0, r3, #2
    7d70:	930e      	str	r3, [sp, #56]	; 0x38
    7d72:	f7fd ee6a 	blx	5a48 <malloc@plt>
    7d76:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7d78:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    7d7a:	fb03 f302 	mul.w	r3, r3, r2
    7d7e:	009b      	lsls	r3, r3, #2
    7d80:	930f      	str	r3, [sp, #60]	; 0x3c
    7d82:	4606      	mov	r6, r0
    7d84:	900c      	str	r0, [sp, #48]	; 0x30
    7d86:	4618      	mov	r0, r3
    7d88:	f7fd ee5e 	blx	5a48 <malloc@plt>
    7d8c:	9910      	ldr	r1, [sp, #64]	; 0x40
    7d8e:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
    7d92:	2e00      	cmp	r6, #0
    7d94:	bf18      	it	ne
    7d96:	2800      	cmpne	r0, #0
    7d98:	900d      	str	r0, [sp, #52]	; 0x34
    7d9a:	d12a      	bne.n	7df2 <heif_decode_to_rgba@@Base+0x252>
    7d9c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    7d9e:	b113      	cbz	r3, 7da6 <heif_decode_to_rgba@@Base+0x206>
    7da0:	4618      	mov	r0, r3
    7da2:	f7fd ee64 	blx	5a6c <free@plt>
    7da6:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    7da8:	b113      	cbz	r3, 7db0 <heif_decode_to_rgba@@Base+0x210>
    7daa:	4618      	mov	r0, r3
    7dac:	f7fd ee5e 	blx	5a6c <free@plt>
    7db0:	4638      	mov	r0, r7
    7db2:	f7fd ee5c 	blx	5a6c <free@plt>
    7db6:	e70d      	b.n	7bd4 <heif_decode_to_rgba@@Base+0x34>
    7db8:	f7fd eebe 	blx	5b38 <tt_I010ToABGR@plt>
    7dbc:	f8dd c034 	ldr.w	ip, [sp, #52]	; 0x34
    7dc0:	e79c      	b.n	7cfc <heif_decode_to_rgba@@Base+0x15c>
    7dc2:	6931      	ldr	r1, [r6, #16]
    7dc4:	6976      	ldr	r6, [r6, #20]
    7dc6:	910c      	str	r1, [sp, #48]	; 0x30
    7dc8:	960a      	str	r6, [sp, #40]	; 0x28
    7dca:	9112      	str	r1, [sp, #72]	; 0x48
    7dcc:	9613      	str	r6, [sp, #76]	; 0x4c
    7dce:	e77f      	b.n	7cd0 <heif_decode_to_rgba@@Base+0x130>
    7dd0:	f04f 0900 	mov.w	r9, #0
    7dd4:	ea4f 03a9 	mov.w	r3, r9, asr #2
    7dd8:	f836 0013 	ldrh.w	r0, [r6, r3, lsl #1]
    7ddc:	0880      	lsrs	r0, r0, #2
    7dde:	f7fd eeb2 	blx	5b44 <clamp255@plt>
    7de2:	eb08 0309 	add.w	r3, r8, r9
    7de6:	f109 0904 	add.w	r9, r9, #4
    7dea:	45d1      	cmp	r9, sl
    7dec:	70d8      	strb	r0, [r3, #3]
    7dee:	dbf1      	blt.n	7dd4 <heif_decode_to_rgba@@Base+0x234>
    7df0:	e7a2      	b.n	7d38 <heif_decode_to_rgba@@Base+0x198>
    7df2:	f1b9 0f0a 	cmp.w	r9, #10
    7df6:	d053      	beq.n	7ea0 <heif_decode_to_rgba@@Base+0x300>
    7df8:	1c4e      	adds	r6, r1, #1
    7dfa:	f10a 0301 	add.w	r3, sl, #1
    7dfe:	980e      	ldr	r0, [sp, #56]	; 0x38
    7e00:	085b      	lsrs	r3, r3, #1
    7e02:	0876      	lsrs	r6, r6, #1
    7e04:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    7e06:	fb03 0606 	mla	r6, r3, r6, r0
    7e0a:	9105      	str	r1, [sp, #20]
    7e0c:	9202      	str	r2, [sp, #8]
    7e0e:	ea4f 018a 	mov.w	r1, sl, lsl #2
    7e12:	183a      	adds	r2, r7, r0
    7e14:	9103      	str	r1, [sp, #12]
    7e16:	f8cd a010 	str.w	sl, [sp, #16]
    7e1a:	443e      	add	r6, r7
    7e1c:	9301      	str	r3, [sp, #4]
    7e1e:	4638      	mov	r0, r7
    7e20:	9600      	str	r6, [sp, #0]
    7e22:	4651      	mov	r1, sl
    7e24:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
    7e28:	f7fd ee80 	blx	5b2c <tt_I420ToRGBA@plt>
    7e2c:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
    7e30:	fb0a 860c 	mla	r6, sl, ip, r8
    7e34:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    7e36:	4638      	mov	r0, r7
    7e38:	f8dd 9034 	ldr.w	r9, [sp, #52]	; 0x34
    7e3c:	f04f 0800 	mov.w	r8, #0
    7e40:	ea4f 0a83 	mov.w	sl, r3, lsl #2
    7e44:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    7e46:	eb03 0686 	add.w	r6, r3, r6, lsl #2
    7e4a:	f7fd ee10 	blx	5a6c <free@plt>
    7e4e:	9f12      	ldr	r7, [sp, #72]	; 0x48
    7e50:	9509      	str	r5, [sp, #36]	; 0x24
    7e52:	4655      	mov	r5, sl
    7e54:	46a2      	mov	sl, r4
    7e56:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
    7e58:	00bf      	lsls	r7, r7, #2
    7e5a:	4648      	mov	r0, r9
    7e5c:	4631      	mov	r1, r6
    7e5e:	f108 0801 	add.w	r8, r8, #1
    7e62:	462a      	mov	r2, r5
    7e64:	f7fd edcc 	blx	5a00 <memcpy@plt>
    7e68:	45a0      	cmp	r8, r4
    7e6a:	44a9      	add	r9, r5
    7e6c:	443e      	add	r6, r7
    7e6e:	d1f4      	bne.n	7e5a <heif_decode_to_rgba@@Base+0x2ba>
    7e70:	980c      	ldr	r0, [sp, #48]	; 0x30
    7e72:	4654      	mov	r4, sl
    7e74:	9d09      	ldr	r5, [sp, #36]	; 0x24
    7e76:	f7fd edfa 	blx	5a6c <free@plt>
    7e7a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    7e7c:	f8c5 801c 	str.w	r8, [r5, #28]
    7e80:	602b      	str	r3, [r5, #0]
    7e82:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    7e84:	f8c5 b038 	str.w	fp, [r5, #56]	; 0x38
    7e88:	606b      	str	r3, [r5, #4]
    7e8a:	9b07      	ldr	r3, [sp, #28]
    7e8c:	60ab      	str	r3, [r5, #8]
    7e8e:	9b06      	ldr	r3, [sp, #24]
    7e90:	60eb      	str	r3, [r5, #12]
    7e92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    7e94:	61ab      	str	r3, [r5, #24]
    7e96:	9b08      	ldr	r3, [sp, #32]
    7e98:	636b      	str	r3, [r5, #52]	; 0x34
    7e9a:	e69b      	b.n	7bd4 <heif_decode_to_rgba@@Base+0x34>
    7e9c:	f7fd edb6 	blx	5a0c <__stack_chk_fail@plt>
    7ea0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    7ea2:	1c4e      	adds	r6, r1, #1
    7ea4:	f10a 0301 	add.w	r3, sl, #1
    7ea8:	980e      	ldr	r0, [sp, #56]	; 0x38
    7eaa:	0876      	lsrs	r6, r6, #1
    7eac:	9105      	str	r1, [sp, #20]
    7eae:	085b      	lsrs	r3, r3, #1
    7eb0:	9202      	str	r2, [sp, #8]
    7eb2:	9a09      	ldr	r2, [sp, #36]	; 0x24
    7eb4:	fb03 0606 	mla	r6, r3, r6, r0
    7eb8:	f8cd a010 	str.w	sl, [sp, #16]
    7ebc:	4611      	mov	r1, r2
    7ebe:	9301      	str	r3, [sp, #4]
    7ec0:	fb00 7201 	mla	r2, r0, r1, r7
    7ec4:	ea4f 018a 	mov.w	r1, sl, lsl #2
    7ec8:	9103      	str	r1, [sp, #12]
    7eca:	4638      	mov	r0, r7
    7ecc:	9909      	ldr	r1, [sp, #36]	; 0x24
    7ece:	f8cd c040 	str.w	ip, [sp, #64]	; 0x40
    7ed2:	fb06 7601 	mla	r6, r6, r1, r7
    7ed6:	4651      	mov	r1, sl
    7ed8:	9600      	str	r6, [sp, #0]
    7eda:	f7fd ee2e 	blx	5b38 <tt_I010ToABGR@plt>
    7ede:	f8dd c040 	ldr.w	ip, [sp, #64]	; 0x40
    7ee2:	e7a5      	b.n	7e30 <heif_decode_to_rgba@@Base+0x290>
    7ee4:	ef0e 0000 	vhadd.s8	d0, d14, d0

00007ee8 <heif_release_output_stream@@Base>:
    7ee8:	b538      	push	{r3, r4, r5, lr}
    7eea:	4604      	mov	r4, r0
    7eec:	6840      	ldr	r0, [r0, #4]
    7eee:	b118      	cbz	r0, 7ef8 <heif_release_output_stream@@Base+0x10>
    7ef0:	f7fd edbc 	blx	5a6c <free@plt>
    7ef4:	2300      	movs	r3, #0
    7ef6:	6063      	str	r3, [r4, #4]
    7ef8:	6920      	ldr	r0, [r4, #16]
    7efa:	2500      	movs	r5, #0
    7efc:	6025      	str	r5, [r4, #0]
    7efe:	60e5      	str	r5, [r4, #12]
    7f00:	60a5      	str	r5, [r4, #8]
    7f02:	b110      	cbz	r0, 7f0a <heif_release_output_stream@@Base+0x22>
    7f04:	f7fd edb2 	blx	5a6c <free@plt>
    7f08:	6125      	str	r5, [r4, #16]
    7f0a:	bd38      	pop	{r3, r4, r5, pc}

00007f0c <create_bytevc1_decoder@@Base>:
    7f0c:	2020      	movs	r0, #32
    7f0e:	f00b bfd1 	b.w	13eb4 <__aeabi_llsl@@Base+0x18>
    7f12:	bf00      	nop

00007f14 <destroy_bytevc1_decoder@@Base>:
    7f14:	b108      	cbz	r0, 7f1a <destroy_bytevc1_decoder@@Base+0x6>
    7f16:	f00b bfd5 	b.w	13ec4 <__aeabi_llsl@@Base+0x28>
    7f1a:	4770      	bx	lr

00007f1c <heif_parse_meta@@Base>:
    7f1c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    7f20:	b0a3      	sub	sp, #140	; 0x8c
    7f22:	4c24      	ldr	r4, [pc, #144]	; (7fb4 <heif_parse_meta@@Base+0x98>)
    7f24:	ad02      	add	r5, sp, #8
    7f26:	4680      	mov	r8, r0
    7f28:	460f      	mov	r7, r1
    7f2a:	447c      	add	r4, pc
    7f2c:	6824      	ldr	r4, [r4, #0]
    7f2e:	4628      	mov	r0, r5
    7f30:	4616      	mov	r6, r2
    7f32:	6823      	ldr	r3, [r4, #0]
    7f34:	9321      	str	r3, [sp, #132]	; 0x84
    7f36:	f7fd eda6 	blx	5a84 <Bitstream_init@plt>
    7f3a:	4628      	mov	r0, r5
    7f3c:	f8cd 8008 	str.w	r8, [sp, #8]
    7f40:	9703      	str	r7, [sp, #12]
    7f42:	f7fd ee06 	blx	5b50 <Bitstream_read_32bit@plt>
    7f46:	4628      	mov	r0, r5
    7f48:	f7fd ee02 	blx	5b50 <Bitstream_read_32bit@plt>
    7f4c:	f647 1270 	movw	r2, #31088	; 0x7970
    7f50:	f2c6 6274 	movt	r2, #26228	; 0x6674
    7f54:	2300      	movs	r3, #0
    7f56:	9304      	str	r3, [sp, #16]
    7f58:	4290      	cmp	r0, r2
    7f5a:	bf18      	it	ne
    7f5c:	4618      	movne	r0, r3
    7f5e:	d006      	beq.n	7f6e <heif_parse_meta@@Base+0x52>
    7f60:	9a21      	ldr	r2, [sp, #132]	; 0x84
    7f62:	6823      	ldr	r3, [r4, #0]
    7f64:	429a      	cmp	r2, r3
    7f66:	d122      	bne.n	7fae <heif_parse_meta@@Base+0x92>
    7f68:	b023      	add	sp, #140	; 0x8c
    7f6a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    7f6e:	4629      	mov	r1, r5
    7f70:	9300      	str	r3, [sp, #0]
    7f72:	a806      	add	r0, sp, #24
    7f74:	f106 0208 	add.w	r2, r6, #8
    7f78:	f106 030c 	add.w	r3, r6, #12
    7f7c:	f7fd ed88 	blx	5a90 <parse_bytevc1_from_heif_bitstream@plt>
    7f80:	981d      	ldr	r0, [sp, #116]	; 0x74
    7f82:	9f13      	ldr	r7, [sp, #76]	; 0x4c
    7f84:	9d14      	ldr	r5, [sp, #80]	; 0x50
    7f86:	991e      	ldr	r1, [sp, #120]	; 0x78
    7f88:	9a12      	ldr	r2, [sp, #72]	; 0x48
    7f8a:	f89d e020 	ldrb.w	lr, [sp, #32]
    7f8e:	e9dd 8916 	ldrd	r8, r9, [sp, #88]	; 0x58
    7f92:	9b09      	ldr	r3, [sp, #36]	; 0x24
    7f94:	62f0      	str	r0, [r6, #44]	; 0x2c
    7f96:	e886 00a0 	stmia.w	r6, {r5, r7}
    7f9a:	6331      	str	r1, [r6, #48]	; 0x30
    7f9c:	61b2      	str	r2, [r6, #24]
    7f9e:	f886 e020 	strb.w	lr, [r6, #32]
    7fa2:	e9c6 8904 	strd	r8, r9, [r6, #16]
    7fa6:	61f3      	str	r3, [r6, #28]
    7fa8:	f89d 0023 	ldrb.w	r0, [sp, #35]	; 0x23
    7fac:	e7d8      	b.n	7f60 <heif_parse_meta@@Base+0x44>
    7fae:	f7fd ed2e 	blx	5a0c <__stack_chk_fail@plt>
    7fb2:	bf00      	nop
    7fb4:	eb92 0000 			; <UNDEFINED> instruction: 0xeb920000

00007fb8 <heif_parse_simple_meta@@Base>:
    7fb8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    7fbc:	b0a2      	sub	sp, #136	; 0x88
    7fbe:	4d29      	ldr	r5, [pc, #164]	; (8064 <heif_parse_simple_meta@@Base+0xac>)
    7fc0:	af02      	add	r7, sp, #8
    7fc2:	4604      	mov	r4, r0
    7fc4:	460e      	mov	r6, r1
    7fc6:	447d      	add	r5, pc
    7fc8:	682d      	ldr	r5, [r5, #0]
    7fca:	4638      	mov	r0, r7
    7fcc:	4690      	mov	r8, r2
    7fce:	682b      	ldr	r3, [r5, #0]
    7fd0:	9321      	str	r3, [sp, #132]	; 0x84
    7fd2:	f7fd ed58 	blx	5a84 <Bitstream_init@plt>
    7fd6:	2c00      	cmp	r4, #0
    7fd8:	bf18      	it	ne
    7fda:	2e08      	cmpne	r6, #8
    7fdc:	9402      	str	r4, [sp, #8]
    7fde:	9603      	str	r6, [sp, #12]
    7fe0:	bf94      	ite	ls
    7fe2:	2401      	movls	r4, #1
    7fe4:	2400      	movhi	r4, #0
    7fe6:	d807      	bhi.n	7ff8 <heif_parse_simple_meta@@Base+0x40>
    7fe8:	2000      	movs	r0, #0
    7fea:	9a21      	ldr	r2, [sp, #132]	; 0x84
    7fec:	682b      	ldr	r3, [r5, #0]
    7fee:	429a      	cmp	r2, r3
    7ff0:	d136      	bne.n	8060 <heif_parse_simple_meta@@Base+0xa8>
    7ff2:	b022      	add	sp, #136	; 0x88
    7ff4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    7ff8:	4638      	mov	r0, r7
    7ffa:	f7fd edaa 	blx	5b50 <Bitstream_read_32bit@plt>
    7ffe:	4638      	mov	r0, r7
    8000:	f7fd eda6 	blx	5b50 <Bitstream_read_32bit@plt>
    8004:	f247 4361 	movw	r3, #29793	; 0x7461
    8008:	f647 1270 	movw	r2, #31088	; 0x7970
    800c:	f6c6 5365 	movt	r3, #28005	; 0x6d65
    8010:	f2c6 6274 	movt	r2, #26228	; 0x6674
    8014:	9404      	str	r4, [sp, #16]
    8016:	4298      	cmp	r0, r3
    8018:	bf18      	it	ne
    801a:	4290      	cmpne	r0, r2
    801c:	bf14      	ite	ne
    801e:	2001      	movne	r0, #1
    8020:	2000      	moveq	r0, #0
    8022:	d1e1      	bne.n	7fe8 <heif_parse_simple_meta@@Base+0x30>
    8024:	4639      	mov	r1, r7
    8026:	9000      	str	r0, [sp, #0]
    8028:	f108 0208 	add.w	r2, r8, #8
    802c:	a806      	add	r0, sp, #24
    802e:	f108 030c 	add.w	r3, r8, #12
    8032:	f7fd ed2e 	blx	5a90 <parse_bytevc1_from_heif_bitstream@plt>
    8036:	9912      	ldr	r1, [sp, #72]	; 0x48
    8038:	f89d 4020 	ldrb.w	r4, [sp, #32]
    803c:	e9dd 6716 	ldrd	r6, r7, [sp, #88]	; 0x58
    8040:	9a09      	ldr	r2, [sp, #36]	; 0x24
    8042:	f89d 3069 	ldrb.w	r3, [sp, #105]	; 0x69
    8046:	f89d 0023 	ldrb.w	r0, [sp, #35]	; 0x23
    804a:	f8c8 1018 	str.w	r1, [r8, #24]
    804e:	f888 4020 	strb.w	r4, [r8, #32]
    8052:	e9c8 6704 	strd	r6, r7, [r8, #16]
    8056:	f8c8 201c 	str.w	r2, [r8, #28]
    805a:	f888 3021 	strb.w	r3, [r8, #33]	; 0x21
    805e:	e7c4      	b.n	7fea <heif_parse_simple_meta@@Base+0x32>
    8060:	f7fd ecd4 	blx	5a0c <__stack_chk_fail@plt>
    8064:	eaf6 0000 			; <UNDEFINED> instruction: 0xeaf60000

00008068 <heif_judge_file_type@@Base>:
    8068:	b5f0      	push	{r4, r5, r6, r7, lr}
    806a:	b087      	sub	sp, #28
    806c:	4c0b      	ldr	r4, [pc, #44]	; (809c <heif_judge_file_type@@Base+0x34>)
    806e:	ad01      	add	r5, sp, #4
    8070:	4607      	mov	r7, r0
    8072:	460e      	mov	r6, r1
    8074:	447c      	add	r4, pc
    8076:	6824      	ldr	r4, [r4, #0]
    8078:	4628      	mov	r0, r5
    807a:	6823      	ldr	r3, [r4, #0]
    807c:	9305      	str	r3, [sp, #20]
    807e:	f7fd ed02 	blx	5a84 <Bitstream_init@plt>
    8082:	4628      	mov	r0, r5
    8084:	9701      	str	r7, [sp, #4]
    8086:	9602      	str	r6, [sp, #8]
    8088:	f7fd ed68 	blx	5b5c <is_file_type_valid@plt>
    808c:	9a05      	ldr	r2, [sp, #20]
    808e:	6823      	ldr	r3, [r4, #0]
    8090:	429a      	cmp	r2, r3
    8092:	d101      	bne.n	8098 <heif_judge_file_type@@Base+0x30>
    8094:	b007      	add	sp, #28
    8096:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8098:	f7fd ecb8 	blx	5a0c <__stack_chk_fail@plt>
    809c:	ea48 0000 	orr.w	r0, r8, r0

000080a0 <heif_get_version@@Base>:
    80a0:	4b03      	ldr	r3, [pc, #12]	; (80b0 <heif_get_version@@Base+0x10>)
    80a2:	4602      	mov	r2, r0
    80a4:	447b      	add	r3, pc
    80a6:	cb03      	ldmia	r3!, {r0, r1}
    80a8:	6010      	str	r0, [r2, #0]
    80aa:	6051      	str	r1, [r2, #4]
    80ac:	4770      	bx	lr
    80ae:	bf00      	nop
    80b0:	cbf0      	ldmia	r3!, {r4, r5, r6, r7}
	...

000080b4 <heif_anim_decoder_init@@Base>:
    80b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    80b6:	4604      	mov	r4, r0
    80b8:	460d      	mov	r5, r1
    80ba:	f7fd ecfc 	blx	5ab4 <bytevc1_decoder_init@plt>
    80be:	f105 0008 	add.w	r0, r5, #8
    80c2:	682f      	ldr	r7, [r5, #0]
    80c4:	f895 e004 	ldrb.w	lr, [r5, #4]
    80c8:	c80f      	ldmia	r0, {r0, r1, r2, r3}
    80ca:	796e      	ldrb	r6, [r5, #5]
    80cc:	60a7      	str	r7, [r4, #8]
    80ce:	f884 e00c 	strb.w	lr, [r4, #12]
    80d2:	7366      	strb	r6, [r4, #13]
    80d4:	6120      	str	r0, [r4, #16]
    80d6:	6161      	str	r1, [r4, #20]
    80d8:	61a2      	str	r2, [r4, #24]
    80da:	61e3      	str	r3, [r4, #28]
    80dc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    80de:	bf00      	nop

000080e0 <heif_anim_get_one_packet@@Base>:
    80e0:	f00b bef8 	b.w	13ed4 <__aeabi_llsl@@Base+0x38>

000080e4 <heif_anim_heif_ctx_init@@Base>:
    80e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    80e6:	4603      	mov	r3, r0
    80e8:	2200      	movs	r2, #0
    80ea:	f803 2b01 	strb.w	r2, [r3], #1
    80ee:	3301      	adds	r3, #1
    80f0:	7042      	strb	r2, [r0, #1]
    80f2:	460d      	mov	r5, r1
    80f4:	4604      	mov	r4, r0
    80f6:	f803 2b01 	strb.w	r2, [r3], #1
    80fa:	f803 2b01 	strb.w	r2, [r3], #1
    80fe:	f803 2b01 	strb.w	r2, [r3], #1
    8102:	f803 2b01 	strb.w	r2, [r3], #1
    8106:	f803 2b01 	strb.w	r2, [r3], #1
    810a:	701a      	strb	r2, [r3, #0]
    810c:	f7fd ed2c 	blx	5b68 <create_bytevc1_decoder@plt>
    8110:	6020      	str	r0, [r4, #0]
    8112:	f44f 6092 	mov.w	r0, #1168	; 0x490
    8116:	f7fd ec98 	blx	5a48 <malloc@plt>
    811a:	6060      	str	r0, [r4, #4]
    811c:	f7fd ed2a 	blx	5b74 <FileTypeBox_init@plt>
    8120:	6860      	ldr	r0, [r4, #4]
    8122:	3020      	adds	r0, #32
    8124:	f7fd ed2c 	blx	5b80 <MetaBox_init@plt>
    8128:	6860      	ldr	r0, [r4, #4]
    812a:	f500 70b4 	add.w	r0, r0, #360	; 0x168
    812e:	f7fd ed2e 	blx	5b8c <MoovBox_init@plt>
    8132:	6820      	ldr	r0, [r4, #0]
    8134:	f7fd ecbe 	blx	5ab4 <bytevc1_decoder_init@plt>
    8138:	f105 000c 	add.w	r0, r5, #12
    813c:	6823      	ldr	r3, [r4, #0]
    813e:	c807      	ldmia	r0, {r0, r1, r2}
    8140:	682f      	ldr	r7, [r5, #0]
    8142:	f895 e004 	ldrb.w	lr, [r5, #4]
    8146:	796e      	ldrb	r6, [r5, #5]
    8148:	68ac      	ldr	r4, [r5, #8]
    814a:	609f      	str	r7, [r3, #8]
    814c:	f883 e00c 	strb.w	lr, [r3, #12]
    8150:	735e      	strb	r6, [r3, #13]
    8152:	611c      	str	r4, [r3, #16]
    8154:	6158      	str	r0, [r3, #20]
    8156:	6199      	str	r1, [r3, #24]
    8158:	61da      	str	r2, [r3, #28]
    815a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000815c <heif_anim_parse_heif_box@@Base>:
    815c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    8160:	b086      	sub	sp, #24
    8162:	4c0e      	ldr	r4, [pc, #56]	; (819c <heif_anim_parse_heif_box@@Base+0x40>)
    8164:	ad01      	add	r5, sp, #4
    8166:	4680      	mov	r8, r0
    8168:	4616      	mov	r6, r2
    816a:	447c      	add	r4, pc
    816c:	6824      	ldr	r4, [r4, #0]
    816e:	4628      	mov	r0, r5
    8170:	460f      	mov	r7, r1
    8172:	6823      	ldr	r3, [r4, #0]
    8174:	9305      	str	r3, [sp, #20]
    8176:	f7fd ec86 	blx	5a84 <Bitstream_init@plt>
    817a:	4628      	mov	r0, r5
    817c:	f8d8 1004 	ldr.w	r1, [r8, #4]
    8180:	9701      	str	r7, [sp, #4]
    8182:	9602      	str	r6, [sp, #8]
    8184:	f7fd ed08 	blx	5b98 <parse_heifbox_from_heif_bitstream@plt>
    8188:	9a05      	ldr	r2, [sp, #20]
    818a:	6823      	ldr	r3, [r4, #0]
    818c:	429a      	cmp	r2, r3
    818e:	d102      	bne.n	8196 <heif_anim_parse_heif_box@@Base+0x3a>
    8190:	b006      	add	sp, #24
    8192:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    8196:	f7fd ec3a 	blx	5a0c <__stack_chk_fail@plt>
    819a:	bf00      	nop
    819c:	e952 0000 	ldrd	r0, r0, [r2, #-0]

000081a0 <heif_anim_get_current_frame_index@@Base>:
    81a0:	b328      	cbz	r0, 81ee <heif_anim_get_current_frame_index@@Base+0x4e>
    81a2:	6840      	ldr	r0, [r0, #4]
    81a4:	b318      	cbz	r0, 81ee <heif_anim_get_current_frame_index@@Base+0x4e>
    81a6:	f8d0 2484 	ldr.w	r2, [r0, #1156]	; 0x484
    81aa:	b322      	cbz	r2, 81f6 <heif_anim_get_current_frame_index@@Base+0x56>
    81ac:	f8d0 0488 	ldr.w	r0, [r0, #1160]	; 0x488
    81b0:	b1e8      	cbz	r0, 81ee <heif_anim_get_current_frame_index@@Base+0x4e>
    81b2:	b430      	push	{r4, r5}
    81b4:	68d4      	ldr	r4, [r2, #12]
    81b6:	2c00      	cmp	r4, #0
    81b8:	db1a      	blt.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81ba:	6913      	ldr	r3, [r2, #16]
    81bc:	2b00      	cmp	r3, #0
    81be:	db17      	blt.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81c0:	191b      	adds	r3, r3, r4
    81c2:	d415      	bmi.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81c4:	4299      	cmp	r1, r3
    81c6:	d31a      	bcc.n	81fe <heif_anim_get_current_frame_index@@Base+0x5e>
    81c8:	3801      	subs	r0, #1
    81ca:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
    81ce:	e00a      	b.n	81e6 <heif_anim_get_current_frame_index@@Base+0x46>
    81d0:	6a54      	ldr	r4, [r2, #36]	; 0x24
    81d2:	2c00      	cmp	r4, #0
    81d4:	db0c      	blt.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81d6:	6a93      	ldr	r3, [r2, #40]	; 0x28
    81d8:	3218      	adds	r2, #24
    81da:	2b00      	cmp	r3, #0
    81dc:	db08      	blt.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81de:	191b      	adds	r3, r3, r4
    81e0:	d406      	bmi.n	81f0 <heif_anim_get_current_frame_index@@Base+0x50>
    81e2:	428b      	cmp	r3, r1
    81e4:	d809      	bhi.n	81fa <heif_anim_get_current_frame_index@@Base+0x5a>
    81e6:	3501      	adds	r5, #1
    81e8:	4285      	cmp	r5, r0
    81ea:	d1f1      	bne.n	81d0 <heif_anim_get_current_frame_index@@Base+0x30>
    81ec:	bc30      	pop	{r4, r5}
    81ee:	4770      	bx	lr
    81f0:	2000      	movs	r0, #0
    81f2:	bc30      	pop	{r4, r5}
    81f4:	e7fb      	b.n	81ee <heif_anim_get_current_frame_index@@Base+0x4e>
    81f6:	4610      	mov	r0, r2
    81f8:	4770      	bx	lr
    81fa:	4628      	mov	r0, r5
    81fc:	e7f6      	b.n	81ec <heif_anim_get_current_frame_index@@Base+0x4c>
    81fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    8202:	e7f3      	b.n	81ec <heif_anim_get_current_frame_index@@Base+0x4c>

00008204 <heif_anim_parse_bytevc1_stream@@Base>:
    8204:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8208:	b0b3      	sub	sp, #204	; 0xcc
    820a:	f8df 8088 	ldr.w	r8, [pc, #136]	; 8294 <heif_anim_parse_bytevc1_stream@@Base+0x90>
    820e:	ac06      	add	r4, sp, #24
    8210:	ad02      	add	r5, sp, #8
    8212:	460f      	mov	r7, r1
    8214:	44f8      	add	r8, pc
    8216:	f8d8 8000 	ldr.w	r8, [r8]
    821a:	4616      	mov	r6, r2
    821c:	2100      	movs	r1, #0
    821e:	2240      	movs	r2, #64	; 0x40
    8220:	f8d8 3000 	ldr.w	r3, [r8]
    8224:	4681      	mov	r9, r0
    8226:	4620      	mov	r0, r4
    8228:	9331      	str	r3, [sp, #196]	; 0xc4
    822a:	f7fd ec6e 	blx	5b08 <memset@plt>
    822e:	4628      	mov	r0, r5
    8230:	f7fd ec28 	blx	5a84 <Bitstream_init@plt>
    8234:	4629      	mov	r1, r5
    8236:	2301      	movs	r3, #1
    8238:	a816      	add	r0, sp, #88	; 0x58
    823a:	9300      	str	r3, [sp, #0]
    823c:	aa0c      	add	r2, sp, #48	; 0x30
    823e:	ab0d      	add	r3, sp, #52	; 0x34
    8240:	9702      	str	r7, [sp, #8]
    8242:	9603      	str	r6, [sp, #12]
    8244:	f7fd ec24 	blx	5a90 <parse_bytevc1_from_heif_bitstream@plt>
    8248:	9816      	ldr	r0, [sp, #88]	; 0x58
    824a:	464d      	mov	r5, r9
    824c:	9917      	ldr	r1, [sp, #92]	; 0x5c
    824e:	9a23      	ldr	r2, [sp, #140]	; 0x8c
    8250:	9b24      	ldr	r3, [sp, #144]	; 0x90
    8252:	9007      	str	r0, [sp, #28]
    8254:	9106      	str	r1, [sp, #24]
    8256:	9209      	str	r2, [sp, #36]	; 0x24
    8258:	9308      	str	r3, [sp, #32]
    825a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    825c:	9f19      	ldr	r7, [sp, #100]	; 0x64
    825e:	9e29      	ldr	r6, [sp, #164]	; 0xa4
    8260:	e9dd ab26 	ldrd	sl, fp, [sp, #152]	; 0x98
    8264:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    8266:	970b      	str	r7, [sp, #44]	; 0x2c
    8268:	960a      	str	r6, [sp, #40]	; 0x28
    826a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    826c:	e9cd ab0e 	strd	sl, fp, [sp, #56]	; 0x38
    8270:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    8272:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8274:	9f31      	ldr	r7, [sp, #196]	; 0xc4
    8276:	f8d8 6000 	ldr.w	r6, [r8]
    827a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    827c:	42b7      	cmp	r7, r6
    827e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
    8282:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
    8286:	d103      	bne.n	8290 <heif_anim_parse_bytevc1_stream@@Base+0x8c>
    8288:	4648      	mov	r0, r9
    828a:	b033      	add	sp, #204	; 0xcc
    828c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8290:	f7fd ebbc 	blx	5a0c <__stack_chk_fail@plt>
    8294:	e8a8 0000 	stmia.w	r8!, {}

00008298 <heif_anim_decode_to_yuv420p@@Base>:
    8298:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    829c:	461d      	mov	r5, r3
    829e:	4c40      	ldr	r4, [pc, #256]	; (83a0 <heif_anim_decode_to_yuv420p@@Base+0x108>)
    82a0:	b08b      	sub	sp, #44	; 0x2c
    82a2:	460f      	mov	r7, r1
    82a4:	4691      	mov	r9, r2
    82a6:	447c      	add	r4, pc
    82a8:	6824      	ldr	r4, [r4, #0]
    82aa:	2100      	movs	r1, #0
    82ac:	2240      	movs	r2, #64	; 0x40
    82ae:	4606      	mov	r6, r0
    82b0:	6823      	ldr	r3, [r4, #0]
    82b2:	f10d 0813 	add.w	r8, sp, #19
    82b6:	9309      	str	r3, [sp, #36]	; 0x24
    82b8:	f7fd ec26 	blx	5b08 <memset@plt>
    82bc:	ab06      	add	r3, sp, #24
    82be:	462a      	mov	r2, r5
    82c0:	9300      	str	r3, [sp, #0]
    82c2:	ad08      	add	r5, sp, #32
    82c4:	ab07      	add	r3, sp, #28
    82c6:	9502      	str	r5, [sp, #8]
    82c8:	9301      	str	r3, [sp, #4]
    82ca:	4649      	mov	r1, r9
    82cc:	4638      	mov	r0, r7
    82ce:	f8cd 800c 	str.w	r8, [sp, #12]
    82d2:	ab05      	add	r3, sp, #20
    82d4:	2500      	movs	r5, #0
    82d6:	f04f 0e08 	mov.w	lr, #8
    82da:	9505      	str	r5, [sp, #20]
    82dc:	9506      	str	r5, [sp, #24]
    82de:	9507      	str	r5, [sp, #28]
    82e0:	9508      	str	r5, [sp, #32]
    82e2:	f88d e013 	strb.w	lr, [sp, #19]
    82e6:	f7fd ec04 	blx	5af0 <bytevc1_decoder_decode@plt>
    82ea:	2800      	cmp	r0, #0
    82ec:	d13e      	bne.n	836c <heif_anim_decode_to_yuv420p@@Base+0xd4>
    82ee:	f8d7 a008 	ldr.w	sl, [r7, #8]
    82f2:	f1ba 0f01 	cmp.w	sl, #1
    82f6:	d941      	bls.n	837c <heif_anim_decode_to_yuv420p@@Base+0xe4>
    82f8:	9f07      	ldr	r7, [sp, #28]
    82fa:	4651      	mov	r1, sl
    82fc:	4638      	mov	r0, r7
    82fe:	f7fd ebaa 	blx	5a54 <__aeabi_uidiv@plt>
    8302:	4605      	mov	r5, r0
    8304:	2800      	cmp	r0, #0
    8306:	d039      	beq.n	837c <heif_anim_decode_to_yuv420p@@Base+0xe4>
    8308:	f8dd 9020 	ldr.w	r9, [sp, #32]
    830c:	4651      	mov	r1, sl
    830e:	4648      	mov	r0, r9
    8310:	f7fd eba0 	blx	5a54 <__aeabi_uidiv@plt>
    8314:	b390      	cbz	r0, 837c <heif_anim_decode_to_yuv420p@@Base+0xe4>
    8316:	3001      	adds	r0, #1
    8318:	3501      	adds	r5, #1
    831a:	f030 0001 	bics.w	r0, r0, #1
    831e:	bf0c      	ite	eq
    8320:	2301      	moveq	r3, #1
    8322:	2300      	movne	r3, #0
    8324:	f035 0501 	bics.w	r5, r5, #1
    8328:	bf08      	it	eq
    832a:	f043 0301 	orreq.w	r3, r3, #1
    832e:	bb8b      	cbnz	r3, 8394 <heif_anim_decode_to_yuv420p@@Base+0xfc>
    8330:	fb00 f505 	mul.w	r5, r0, r5
    8334:	eb05 0545 	add.w	r5, r5, r5, lsl #1
    8338:	106d      	asrs	r5, r5, #1
    833a:	4628      	mov	r0, r5
    833c:	f7fd eb84 	blx	5a48 <malloc@plt>
    8340:	4683      	mov	fp, r0
    8342:	9805      	ldr	r0, [sp, #20]
    8344:	f1bb 0f00 	cmp.w	fp, #0
    8348:	d00e      	beq.n	8368 <heif_anim_decode_to_yuv420p@@Base+0xd0>
    834a:	4639      	mov	r1, r7
    834c:	f8cd a000 	str.w	sl, [sp]
    8350:	464a      	mov	r2, r9
    8352:	f8cd 8004 	str.w	r8, [sp, #4]
    8356:	465b      	mov	r3, fp
    8358:	f7fe fd66 	bl	6e28 <bytevc1_decoder_decode@@Base+0x11c>
    835c:	4607      	mov	r7, r0
    835e:	9805      	ldr	r0, [sp, #20]
    8360:	f7fd eb84 	blx	5a6c <free@plt>
    8364:	b197      	cbz	r7, 838c <heif_anim_decode_to_yuv420p@@Base+0xf4>
    8366:	4658      	mov	r0, fp
    8368:	f7fd eb80 	blx	5a6c <free@plt>
    836c:	9a09      	ldr	r2, [sp, #36]	; 0x24
    836e:	4630      	mov	r0, r6
    8370:	6823      	ldr	r3, [r4, #0]
    8372:	429a      	cmp	r2, r3
    8374:	d112      	bne.n	839c <heif_anim_decode_to_yuv420p@@Base+0x104>
    8376:	b00b      	add	sp, #44	; 0x2c
    8378:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    837c:	9b05      	ldr	r3, [sp, #20]
    837e:	2200      	movs	r2, #0
    8380:	9d06      	ldr	r5, [sp, #24]
    8382:	6035      	str	r5, [r6, #0]
    8384:	6073      	str	r3, [r6, #4]
    8386:	f886 2030 	strb.w	r2, [r6, #48]	; 0x30
    838a:	e7ef      	b.n	836c <heif_anim_decode_to_yuv420p@@Base+0xd4>
    838c:	f89d 2013 	ldrb.w	r2, [sp, #19]
    8390:	465b      	mov	r3, fp
    8392:	e7f6      	b.n	8382 <heif_anim_decode_to_yuv420p@@Base+0xea>
    8394:	9805      	ldr	r0, [sp, #20]
    8396:	f7fd eb6a 	blx	5a6c <free@plt>
    839a:	e7e7      	b.n	836c <heif_anim_decode_to_yuv420p@@Base+0xd4>
    839c:	f7fd eb36 	blx	5a0c <__stack_chk_fail@plt>
    83a0:	e816 0000 			; <UNDEFINED> instruction: 0xe8160000

000083a4 <heif_anim_decode_to_rgb@@Base>:
    83a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    83a8:	461d      	mov	r5, r3
    83aa:	4c60      	ldr	r4, [pc, #384]	; (852c <heif_anim_decode_to_rgb@@Base+0x188>)
    83ac:	b08f      	sub	sp, #60	; 0x3c
    83ae:	460f      	mov	r7, r1
    83b0:	4690      	mov	r8, r2
    83b2:	447c      	add	r4, pc
    83b4:	6824      	ldr	r4, [r4, #0]
    83b6:	2100      	movs	r1, #0
    83b8:	2240      	movs	r2, #64	; 0x40
    83ba:	4606      	mov	r6, r0
    83bc:	6823      	ldr	r3, [r4, #0]
    83be:	930d      	str	r3, [sp, #52]	; 0x34
    83c0:	f7fd eba2 	blx	5b08 <memset@plt>
    83c4:	f10d 0323 	add.w	r3, sp, #35	; 0x23
    83c8:	462a      	mov	r2, r5
    83ca:	9303      	str	r3, [sp, #12]
    83cc:	ad0c      	add	r5, sp, #48	; 0x30
    83ce:	ab0a      	add	r3, sp, #40	; 0x28
    83d0:	9502      	str	r5, [sp, #8]
    83d2:	9300      	str	r3, [sp, #0]
    83d4:	4641      	mov	r1, r8
    83d6:	ab0b      	add	r3, sp, #44	; 0x2c
    83d8:	4638      	mov	r0, r7
    83da:	9301      	str	r3, [sp, #4]
    83dc:	ab09      	add	r3, sp, #36	; 0x24
    83de:	2500      	movs	r5, #0
    83e0:	f04f 0e08 	mov.w	lr, #8
    83e4:	9509      	str	r5, [sp, #36]	; 0x24
    83e6:	950a      	str	r5, [sp, #40]	; 0x28
    83e8:	950b      	str	r5, [sp, #44]	; 0x2c
    83ea:	950c      	str	r5, [sp, #48]	; 0x30
    83ec:	f88d e023 	strb.w	lr, [sp, #35]	; 0x23
    83f0:	f7fd eb7e 	blx	5af0 <bytevc1_decoder_decode@plt>
    83f4:	2800      	cmp	r0, #0
    83f6:	f040 8083 	bne.w	8500 <heif_anim_decode_to_rgb@@Base+0x15c>
    83fa:	68bd      	ldr	r5, [r7, #8]
    83fc:	2d01      	cmp	r5, #1
    83fe:	f240 8087 	bls.w	8510 <heif_anim_decode_to_rgb@@Base+0x16c>
    8402:	f8dd c02c 	ldr.w	ip, [sp, #44]	; 0x2c
    8406:	4629      	mov	r1, r5
    8408:	4660      	mov	r0, ip
    840a:	f8cd c01c 	str.w	ip, [sp, #28]
    840e:	f7fd eb22 	blx	5a54 <__aeabi_uidiv@plt>
    8412:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    8414:	4629      	mov	r1, r5
    8416:	9206      	str	r2, [sp, #24]
    8418:	f100 0b01 	add.w	fp, r0, #1
    841c:	4610      	mov	r0, r2
    841e:	f7fd eb1a 	blx	5a54 <__aeabi_uidiv@plt>
    8422:	f02b 0b01 	bic.w	fp, fp, #1
    8426:	3001      	adds	r0, #1
    8428:	f020 0501 	bic.w	r5, r0, #1
    842c:	fb05 f80b 	mul.w	r8, r5, fp
    8430:	eb08 0948 	add.w	r9, r8, r8, lsl #1
    8434:	ea4f 0969 	mov.w	r9, r9, asr #1
    8438:	4648      	mov	r0, r9
    843a:	f7fd eb06 	blx	5a48 <malloc@plt>
    843e:	9a06      	ldr	r2, [sp, #24]
    8440:	f8dd c01c 	ldr.w	ip, [sp, #28]
    8444:	4682      	mov	sl, r0
    8446:	2800      	cmp	r0, #0
    8448:	d06a      	beq.n	8520 <heif_anim_decode_to_rgb@@Base+0x17c>
    844a:	fb0c fe02 	mul.w	lr, ip, r2
    844e:	eb08 0388 	add.w	r3, r8, r8, lsl #2
    8452:	9809      	ldr	r0, [sp, #36]	; 0x24
    8454:	1cd9      	adds	r1, r3, #3
    8456:	ea33 0323 	bics.w	r3, r3, r3, asr #32
    845a:	bf28      	it	cs
    845c:	460b      	movcs	r3, r1
    845e:	f8cd c008 	str.w	ip, [sp, #8]
    8462:	eb00 010e 	add.w	r1, r0, lr
    8466:	9203      	str	r2, [sp, #12]
    8468:	eb0a 03a3 	add.w	r3, sl, r3, asr #2
    846c:	eb0a 0208 	add.w	r2, sl, r8
    8470:	9301      	str	r3, [sp, #4]
    8472:	4653      	mov	r3, sl
    8474:	9200      	str	r2, [sp, #0]
    8476:	eb01 029e 	add.w	r2, r1, lr, lsr #2
    847a:	f8cd b010 	str.w	fp, [sp, #16]
    847e:	9505      	str	r5, [sp, #20]
    8480:	f7fd eaee 	blx	5a60 <rescaleYUV2@plt>
    8484:	9809      	ldr	r0, [sp, #36]	; 0x24
    8486:	f7fd eaf2 	blx	5a6c <free@plt>
    848a:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
    848e:	950c      	str	r5, [sp, #48]	; 0x30
    8490:	f8cd a024 	str.w	sl, [sp, #36]	; 0x24
    8494:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
    8498:	fb05 fa0b 	mul.w	sl, r5, fp
    849c:	ea4f 094a 	mov.w	r9, sl, lsl #1
    84a0:	eb09 000a 	add.w	r0, r9, sl
    84a4:	f7fd ead0 	blx	5a48 <malloc@plt>
    84a8:	4680      	mov	r8, r0
    84aa:	b348      	cbz	r0, 8500 <heif_anim_decode_to_rgb@@Base+0x15c>
    84ac:	eb0a 038a 	add.w	r3, sl, sl, lsl #2
    84b0:	7b79      	ldrb	r1, [r7, #13]
    84b2:	f103 0e03 	add.w	lr, r3, #3
    84b6:	9809      	ldr	r0, [sp, #36]	; 0x24
    84b8:	ea33 0323 	bics.w	r3, r3, r3, asr #32
    84bc:	bf28      	it	cs
    84be:	4673      	movcs	r3, lr
    84c0:	eb00 020a 	add.w	r2, r0, sl
    84c4:	eb00 03a3 	add.w	r3, r0, r3, asr #2
    84c8:	b111      	cbz	r1, 84d0 <heif_anim_decode_to_rgb@@Base+0x12c>
    84ca:	68b9      	ldr	r1, [r7, #8]
    84cc:	2901      	cmp	r1, #1
    84ce:	d923      	bls.n	8518 <heif_anim_decode_to_rgb@@Base+0x174>
    84d0:	46de      	mov	lr, fp
    84d2:	ea4f 016b 	mov.w	r1, fp, asr #1
    84d6:	9300      	str	r3, [sp, #0]
    84d8:	f8cd e010 	str.w	lr, [sp, #16]
    84dc:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
    84e0:	9101      	str	r1, [sp, #4]
    84e2:	9303      	str	r3, [sp, #12]
    84e4:	460b      	mov	r3, r1
    84e6:	f8cd 8008 	str.w	r8, [sp, #8]
    84ea:	4659      	mov	r1, fp
    84ec:	9505      	str	r5, [sp, #20]
    84ee:	f7fd eb18 	blx	5b20 <tt_I420ToRGB24@plt>
    84f2:	9809      	ldr	r0, [sp, #36]	; 0x24
    84f4:	f7fd eaba 	blx	5a6c <free@plt>
    84f8:	eb09 030a 	add.w	r3, r9, sl
    84fc:	e886 0108 	stmia.w	r6, {r3, r8}
    8500:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    8502:	4630      	mov	r0, r6
    8504:	6823      	ldr	r3, [r4, #0]
    8506:	429a      	cmp	r2, r3
    8508:	d10e      	bne.n	8528 <heif_anim_decode_to_rgb@@Base+0x184>
    850a:	b00f      	add	sp, #60	; 0x3c
    850c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8510:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
    8514:	9d0c      	ldr	r5, [sp, #48]	; 0x30
    8516:	e7bf      	b.n	8498 <heif_anim_decode_to_rgb@@Base+0xf4>
    8518:	f8d7 e018 	ldr.w	lr, [r7, #24]
    851c:	69fd      	ldr	r5, [r7, #28]
    851e:	e7d8      	b.n	84d2 <heif_anim_decode_to_rgb@@Base+0x12e>
    8520:	9809      	ldr	r0, [sp, #36]	; 0x24
    8522:	f7fd eaa4 	blx	5a6c <free@plt>
    8526:	e7eb      	b.n	8500 <heif_anim_decode_to_rgb@@Base+0x15c>
    8528:	f7fd ea70 	blx	5a0c <__stack_chk_fail@plt>
    852c:	e70a      	b.n	8344 <heif_anim_decode_to_yuv420p@@Base+0xac>
	...

00008530 <heif_anim_decode_to_rgba@@Base>:
    8530:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8534:	b0a3      	sub	sp, #140	; 0x8c
    8536:	4d8d      	ldr	r5, [pc, #564]	; (876c <heif_anim_decode_to_rgba@@Base+0x23c>)
    8538:	ac10      	add	r4, sp, #64	; 0x40
    853a:	f04f 0e00 	mov.w	lr, #0
    853e:	460e      	mov	r6, r1
    8540:	447d      	add	r5, pc
    8542:	682d      	ldr	r5, [r5, #0]
    8544:	4671      	mov	r1, lr
    8546:	4692      	mov	sl, r2
    8548:	4698      	mov	r8, r3
    854a:	f8d5 c000 	ldr.w	ip, [r5]
    854e:	2240      	movs	r2, #64	; 0x40
    8550:	4607      	mov	r7, r0
    8552:	4620      	mov	r0, r4
    8554:	2308      	movs	r3, #8
    8556:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
    855a:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
    855e:	f10d 092f 	add.w	r9, sp, #47	; 0x2f
    8562:	f8cd e038 	str.w	lr, [sp, #56]	; 0x38
    8566:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
    856a:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
    856e:	f8cd c084 	str.w	ip, [sp, #132]	; 0x84
    8572:	f7fd eaca 	blx	5b08 <memset@plt>
    8576:	ab0d      	add	r3, sp, #52	; 0x34
    8578:	f10d 0e3c 	add.w	lr, sp, #60	; 0x3c
    857c:	9300      	str	r3, [sp, #0]
    857e:	4651      	mov	r1, sl
    8580:	ab0e      	add	r3, sp, #56	; 0x38
    8582:	4642      	mov	r2, r8
    8584:	9301      	str	r3, [sp, #4]
    8586:	4630      	mov	r0, r6
    8588:	f8cd 900c 	str.w	r9, [sp, #12]
    858c:	ab0c      	add	r3, sp, #48	; 0x30
    858e:	f8cd e008 	str.w	lr, [sp, #8]
    8592:	f7fd eaae 	blx	5af0 <bytevc1_decoder_decode@plt>
    8596:	2800      	cmp	r0, #0
    8598:	d166      	bne.n	8668 <heif_anim_decode_to_rgba@@Base+0x138>
    859a:	68b3      	ldr	r3, [r6, #8]
    859c:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
    85a0:	2b01      	cmp	r3, #1
    85a2:	f240 80bb 	bls.w	871c <heif_anim_decode_to_rgba@@Base+0x1ec>
    85a6:	4619      	mov	r1, r3
    85a8:	4640      	mov	r0, r8
    85aa:	9306      	str	r3, [sp, #24]
    85ac:	f7fd ea52 	blx	5a54 <__aeabi_uidiv@plt>
    85b0:	9b06      	ldr	r3, [sp, #24]
    85b2:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
    85b6:	4683      	mov	fp, r0
    85b8:	2800      	cmp	r0, #0
    85ba:	d168      	bne.n	868e <heif_anim_decode_to_rgba@@Base+0x15e>
    85bc:	990c      	ldr	r1, [sp, #48]	; 0x30
    85be:	fb0a f908 	mul.w	r9, sl, r8
    85c2:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
    85c6:	9108      	str	r1, [sp, #32]
    85c8:	2b08      	cmp	r3, #8
    85ca:	bf18      	it	ne
    85cc:	f1a3 0208 	subne.w	r2, r3, #8
    85d0:	f88d 3070 	strb.w	r3, [sp, #112]	; 0x70
    85d4:	bf08      	it	eq
    85d6:	2201      	moveq	r2, #1
    85d8:	9307      	str	r3, [sp, #28]
    85da:	ea4f 0b89 	mov.w	fp, r9, lsl #2
    85de:	9206      	str	r2, [sp, #24]
    85e0:	4658      	mov	r0, fp
    85e2:	f7fd ea32 	blx	5a48 <malloc@plt>
    85e6:	9b07      	ldr	r3, [sp, #28]
    85e8:	9908      	ldr	r1, [sp, #32]
    85ea:	4684      	mov	ip, r0
    85ec:	2800      	cmp	r0, #0
    85ee:	f000 80b4 	beq.w	875a <heif_anim_decode_to_rgba@@Base+0x22a>
    85f2:	eb0b 0009 	add.w	r0, fp, r9
    85f6:	7b72      	ldrb	r2, [r6, #13]
    85f8:	f100 0e03 	add.w	lr, r0, #3
    85fc:	ea30 0020 	bics.w	r0, r0, r0, asr #32
    8600:	bf28      	it	cs
    8602:	4670      	movcs	r0, lr
    8604:	9207      	str	r2, [sp, #28]
    8606:	9a06      	ldr	r2, [sp, #24]
    8608:	1080      	asrs	r0, r0, #2
    860a:	fb09 1902 	mla	r9, r9, r2, r1
    860e:	fb00 1002 	mla	r0, r0, r2, r1
    8612:	9a07      	ldr	r2, [sp, #28]
    8614:	b11a      	cbz	r2, 861e <heif_anim_decode_to_rgba@@Base+0xee>
    8616:	68b2      	ldr	r2, [r6, #8]
    8618:	2a01      	cmp	r2, #1
    861a:	f240 8083 	bls.w	8724 <heif_anim_decode_to_rgba@@Base+0x1f4>
    861e:	4642      	mov	r2, r8
    8620:	2b0a      	cmp	r3, #10
    8622:	f108 0301 	add.w	r3, r8, #1
    8626:	9000      	str	r0, [sp, #0]
    8628:	ea4f 0082 	mov.w	r0, r2, lsl #2
    862c:	ea4f 0363 	mov.w	r3, r3, asr #1
    8630:	9204      	str	r2, [sp, #16]
    8632:	9003      	str	r0, [sp, #12]
    8634:	464a      	mov	r2, r9
    8636:	4608      	mov	r0, r1
    8638:	f8cd c008 	str.w	ip, [sp, #8]
    863c:	f8cd c018 	str.w	ip, [sp, #24]
    8640:	4641      	mov	r1, r8
    8642:	f8cd a014 	str.w	sl, [sp, #20]
    8646:	9301      	str	r3, [sp, #4]
    8648:	d076      	beq.n	8738 <heif_anim_decode_to_rgba@@Base+0x208>
    864a:	f7fd ea70 	blx	5b2c <tt_I420ToRGBA@plt>
    864e:	f8dd c018 	ldr.w	ip, [sp, #24]
    8652:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    8654:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    8656:	980c      	ldr	r0, [sp, #48]	; 0x30
    8658:	f8cd c044 	str.w	ip, [sp, #68]	; 0x44
    865c:	f8cd b040 	str.w	fp, [sp, #64]	; 0x40
    8660:	9216      	str	r2, [sp, #88]	; 0x58
    8662:	9317      	str	r3, [sp, #92]	; 0x5c
    8664:	f7fd ea02 	blx	5a6c <free@plt>
    8668:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    866a:	463e      	mov	r6, r7
    866c:	c60f      	stmia	r6!, {r0, r1, r2, r3}
    866e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8670:	c60f      	stmia	r6!, {r0, r1, r2, r3}
    8672:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8674:	c60f      	stmia	r6!, {r0, r1, r2, r3}
    8676:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
    867a:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
    867e:	4638      	mov	r0, r7
    8680:	9a21      	ldr	r2, [sp, #132]	; 0x84
    8682:	682b      	ldr	r3, [r5, #0]
    8684:	429a      	cmp	r2, r3
    8686:	d16e      	bne.n	8766 <heif_anim_decode_to_rgba@@Base+0x236>
    8688:	b023      	add	sp, #140	; 0x8c
    868a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    868e:	4619      	mov	r1, r3
    8690:	4650      	mov	r0, sl
    8692:	9306      	str	r3, [sp, #24]
    8694:	f7fd e9de 	blx	5a54 <__aeabi_uidiv@plt>
    8698:	9b06      	ldr	r3, [sp, #24]
    869a:	2800      	cmp	r0, #0
    869c:	d08e      	beq.n	85bc <heif_anim_decode_to_rgba@@Base+0x8c>
    869e:	f10b 0b01 	add.w	fp, fp, #1
    86a2:	3001      	adds	r0, #1
    86a4:	f02b 0b01 	bic.w	fp, fp, #1
    86a8:	f020 0c01 	bic.w	ip, r0, #1
    86ac:	f1bb 0f00 	cmp.w	fp, #0
    86b0:	bfc8      	it	gt
    86b2:	f1bc 0f00 	cmpgt.w	ip, #0
    86b6:	fb0c f20b 	mul.w	r2, ip, fp
    86ba:	bfd4      	ite	le
    86bc:	2101      	movle	r1, #1
    86be:	2100      	movgt	r1, #0
    86c0:	eb02 0242 	add.w	r2, r2, r2, lsl #1
    86c4:	1052      	asrs	r2, r2, #1
    86c6:	9206      	str	r2, [sp, #24]
    86c8:	2a00      	cmp	r2, #0
    86ca:	bfd8      	it	le
    86cc:	f041 0101 	orrle.w	r1, r1, #1
    86d0:	bb61      	cbnz	r1, 872c <heif_anim_decode_to_rgba@@Base+0x1fc>
    86d2:	4610      	mov	r0, r2
    86d4:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
    86d8:	9308      	str	r3, [sp, #32]
    86da:	f7fd e9b6 	blx	5a48 <malloc@plt>
    86de:	9b08      	ldr	r3, [sp, #32]
    86e0:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
    86e4:	9007      	str	r0, [sp, #28]
    86e6:	b308      	cbz	r0, 872c <heif_anim_decode_to_rgba@@Base+0x1fc>
    86e8:	4641      	mov	r1, r8
    86ea:	9300      	str	r3, [sp, #0]
    86ec:	4652      	mov	r2, sl
    86ee:	9b07      	ldr	r3, [sp, #28]
    86f0:	980c      	ldr	r0, [sp, #48]	; 0x30
    86f2:	f8cd 9004 	str.w	r9, [sp, #4]
    86f6:	f8cd c020 	str.w	ip, [sp, #32]
    86fa:	f7fe fb95 	bl	6e28 <bytevc1_decoder_decode@@Base+0x11c>
    86fe:	4680      	mov	r8, r0
    8700:	980c      	ldr	r0, [sp, #48]	; 0x30
    8702:	f7fd e9b4 	blx	5a6c <free@plt>
    8706:	f8dd c020 	ldr.w	ip, [sp, #32]
    870a:	f1b8 0f00 	cmp.w	r8, #0
    870e:	d018      	beq.n	8742 <heif_anim_decode_to_rgba@@Base+0x212>
    8710:	9807      	ldr	r0, [sp, #28]
    8712:	463e      	mov	r6, r7
    8714:	f7fd e9aa 	blx	5a6c <free@plt>
    8718:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    871a:	e7a7      	b.n	866c <heif_anim_decode_to_rgba@@Base+0x13c>
    871c:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
    8720:	990c      	ldr	r1, [sp, #48]	; 0x30
    8722:	e74c      	b.n	85be <heif_anim_decode_to_rgba@@Base+0x8e>
    8724:	69b2      	ldr	r2, [r6, #24]
    8726:	f8d6 a01c 	ldr.w	sl, [r6, #28]
    872a:	e779      	b.n	8620 <heif_anim_decode_to_rgba@@Base+0xf0>
    872c:	980c      	ldr	r0, [sp, #48]	; 0x30
    872e:	463e      	mov	r6, r7
    8730:	f7fd e99c 	blx	5a6c <free@plt>
    8734:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8736:	e799      	b.n	866c <heif_anim_decode_to_rgba@@Base+0x13c>
    8738:	f7fd e9fe 	blx	5b38 <tt_I010ToABGR@plt>
    873c:	f8dd c018 	ldr.w	ip, [sp, #24]
    8740:	e787      	b.n	8652 <heif_anim_decode_to_rgba@@Base+0x122>
    8742:	9b07      	ldr	r3, [sp, #28]
    8744:	46d8      	mov	r8, fp
    8746:	46e2      	mov	sl, ip
    8748:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    874c:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    8750:	4619      	mov	r1, r3
    8752:	930c      	str	r3, [sp, #48]	; 0x30
    8754:	9b06      	ldr	r3, [sp, #24]
    8756:	930d      	str	r3, [sp, #52]	; 0x34
    8758:	e731      	b.n	85be <heif_anim_decode_to_rgba@@Base+0x8e>
    875a:	4608      	mov	r0, r1
    875c:	463e      	mov	r6, r7
    875e:	f7fd e986 	blx	5a6c <free@plt>
    8762:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8764:	e782      	b.n	866c <heif_anim_decode_to_rgba@@Base+0x13c>
    8766:	f7fd e952 	blx	5a0c <__stack_chk_fail@plt>
    876a:	bf00      	nop
    876c:	e57c      	b.n	8268 <heif_anim_parse_bytevc1_stream@@Base+0x64>
	...

00008770 <heif_anim_decode_one_frame@@Base>:
    8770:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8774:	461c      	mov	r4, r3
    8776:	4e51      	ldr	r6, [pc, #324]	; (88bc <heif_anim_decode_one_frame@@Base+0x14c>)
    8778:	b089      	sub	sp, #36	; 0x24
    877a:	4688      	mov	r8, r1
    877c:	4691      	mov	r9, r2
    877e:	447e      	add	r6, pc
    8780:	6836      	ldr	r6, [r6, #0]
    8782:	2240      	movs	r2, #64	; 0x40
    8784:	2100      	movs	r1, #0
    8786:	9f12      	ldr	r7, [sp, #72]	; 0x48
    8788:	6833      	ldr	r3, [r6, #0]
    878a:	4605      	mov	r5, r0
    878c:	9307      	str	r3, [sp, #28]
    878e:	f7fd e9bc 	blx	5b08 <memset@plt>
    8792:	f8d8 0004 	ldr.w	r0, [r8, #4]
    8796:	2300      	movs	r3, #0
    8798:	9305      	str	r3, [sp, #20]
    879a:	9306      	str	r3, [sp, #24]
    879c:	f8d0 2488 	ldr.w	r2, [r0, #1160]	; 0x488
    87a0:	42ba      	cmp	r2, r7
    87a2:	d30e      	bcc.n	87c2 <heif_anim_decode_one_frame@@Base+0x52>
    87a4:	2f00      	cmp	r7, #0
    87a6:	d064      	beq.n	8872 <heif_anim_decode_one_frame@@Base+0x102>
    87a8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
    87ac:	f8d0 1484 	ldr.w	r1, [r0, #1156]	; 0x484
    87b0:	00d2      	lsls	r2, r2, #3
    87b2:	9201      	str	r2, [sp, #4]
    87b4:	4411      	add	r1, r2
    87b6:	f8d1 b010 	ldr.w	fp, [r1, #16]
    87ba:	f8d1 c00c 	ldr.w	ip, [r1, #12]
    87be:	45a3      	cmp	fp, r4
    87c0:	d90d      	bls.n	87de <heif_anim_decode_one_frame@@Base+0x6e>
    87c2:	469a      	mov	sl, r3
    87c4:	4699      	mov	r9, r3
    87c6:	9a07      	ldr	r2, [sp, #28]
    87c8:	4628      	mov	r0, r5
    87ca:	6833      	ldr	r3, [r6, #0]
    87cc:	f8c5 a028 	str.w	sl, [r5, #40]	; 0x28
    87d0:	429a      	cmp	r2, r3
    87d2:	f8c5 902c 	str.w	r9, [r5, #44]	; 0x2c
    87d6:	d16f      	bne.n	88b8 <heif_anim_decode_one_frame@@Base+0x148>
    87d8:	b009      	add	sp, #36	; 0x24
    87da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    87de:	eb0c 020b 	add.w	r2, ip, fp
    87e2:	461f      	mov	r7, r3
    87e4:	4294      	cmp	r4, r2
    87e6:	d3ec      	bcc.n	87c2 <heif_anim_decode_one_frame@@Base+0x52>
    87e8:	f8dd a018 	ldr.w	sl, [sp, #24]
    87ec:	f8cd c00c 	str.w	ip, [sp, #12]
    87f0:	eb0a 030b 	add.w	r3, sl, fp
    87f4:	9302      	str	r3, [sp, #8]
    87f6:	4618      	mov	r0, r3
    87f8:	f7fd e926 	blx	5a48 <malloc@plt>
    87fc:	f8dd c00c 	ldr.w	ip, [sp, #12]
    8800:	4604      	mov	r4, r0
    8802:	b167      	cbz	r7, 881e <heif_anim_decode_one_frame@@Base+0xae>
    8804:	4652      	mov	r2, sl
    8806:	4639      	mov	r1, r7
    8808:	f7fd e8fa 	blx	5a00 <memcpy@plt>
    880c:	4638      	mov	r0, r7
    880e:	f7fd e92e 	blx	5a6c <free@plt>
    8812:	f8dd a018 	ldr.w	sl, [sp, #24]
    8816:	f8dd c00c 	ldr.w	ip, [sp, #12]
    881a:	2300      	movs	r3, #0
    881c:	9305      	str	r3, [sp, #20]
    881e:	eb04 070a 	add.w	r7, r4, sl
    8822:	eb09 010c 	add.w	r1, r9, ip
    8826:	465a      	mov	r2, fp
    8828:	f04f 0b00 	mov.w	fp, #0
    882c:	4638      	mov	r0, r7
    882e:	46d9      	mov	r9, fp
    8830:	f7fd e8e6 	blx	5a00 <memcpy@plt>
    8834:	f804 b00a 	strb.w	fp, [r4, sl]
    8838:	9b02      	ldr	r3, [sp, #8]
    883a:	2101      	movs	r1, #1
    883c:	f887 b001 	strb.w	fp, [r7, #1]
    8840:	4622      	mov	r2, r4
    8842:	70f9      	strb	r1, [r7, #3]
    8844:	4628      	mov	r0, r5
    8846:	f887 b002 	strb.w	fp, [r7, #2]
    884a:	f8d8 1000 	ldr.w	r1, [r8]
    884e:	f7fd e9aa 	blx	5ba4 <heif_anim_decode_to_rgba@plt>
    8852:	f8d8 3004 	ldr.w	r3, [r8, #4]
    8856:	9a01      	ldr	r2, [sp, #4]
    8858:	9f05      	ldr	r7, [sp, #20]
    885a:	f8d3 3484 	ldr.w	r3, [r3, #1156]	; 0x484
    885e:	4413      	add	r3, r2
    8860:	f8d3 a014 	ldr.w	sl, [r3, #20]
    8864:	b99f      	cbnz	r7, 888e <heif_anim_decode_one_frame@@Base+0x11e>
    8866:	2c00      	cmp	r4, #0
    8868:	d0ad      	beq.n	87c6 <heif_anim_decode_one_frame@@Base+0x56>
    886a:	4620      	mov	r0, r4
    886c:	f7fd e8fe 	blx	5a6c <free@plt>
    8870:	e7a9      	b.n	87c6 <heif_anim_decode_one_frame@@Base+0x56>
    8872:	a905      	add	r1, sp, #20
    8874:	aa06      	add	r2, sp, #24
    8876:	f7fd e99c 	blx	5bb0 <get_bytevc1_config@plt>
    887a:	b160      	cbz	r0, 8896 <heif_anim_decode_one_frame@@Base+0x126>
    887c:	9f05      	ldr	r7, [sp, #20]
    887e:	46ba      	mov	sl, r7
    8880:	46b9      	mov	r9, r7
    8882:	2f00      	cmp	r7, #0
    8884:	d09f      	beq.n	87c6 <heif_anim_decode_one_frame@@Base+0x56>
    8886:	f04f 0a00 	mov.w	sl, #0
    888a:	46d1      	mov	r9, sl
    888c:	4654      	mov	r4, sl
    888e:	4638      	mov	r0, r7
    8890:	f7fd e8ec 	blx	5a6c <free@plt>
    8894:	e7e7      	b.n	8866 <heif_anim_decode_one_frame@@Base+0xf6>
    8896:	f8d8 3004 	ldr.w	r3, [r8, #4]
    889a:	9f05      	ldr	r7, [sp, #20]
    889c:	f8d3 3484 	ldr.w	r3, [r3, #1156]	; 0x484
    88a0:	f8d3 b010 	ldr.w	fp, [r3, #16]
    88a4:	f8d3 c00c 	ldr.w	ip, [r3, #12]
    88a8:	45a3      	cmp	fp, r4
    88aa:	d8e8      	bhi.n	887e <heif_anim_decode_one_frame@@Base+0x10e>
    88ac:	eb0c 030b 	add.w	r3, ip, fp
    88b0:	9001      	str	r0, [sp, #4]
    88b2:	429c      	cmp	r4, r3
    88b4:	d3e3      	bcc.n	887e <heif_anim_decode_one_frame@@Base+0x10e>
    88b6:	e797      	b.n	87e8 <heif_anim_decode_one_frame@@Base+0x78>
    88b8:	f7fd e8a8 	blx	5a0c <__stack_chk_fail@plt>
    88bc:	e33e      	b.n	8f3c <Bitstream_read_24bit@@Base+0x10>
	...

000088c0 <heif_anim_decoder_close@@Base>:
    88c0:	f00b bb10 	b.w	13ee4 <__aeabi_llsl@@Base+0x48>

000088c4 <heif_anim_heif_ctx_release@@Base>:
    88c4:	b510      	push	{r4, lr}
    88c6:	4604      	mov	r4, r0
    88c8:	6840      	ldr	r0, [r0, #4]
    88ca:	f7fd e978 	blx	5bbc <HeifBox_release@plt>
    88ce:	6820      	ldr	r0, [r4, #0]
    88d0:	f7fd e97a 	blx	5bc8 <heif_anim_decoder_close@plt>
    88d4:	6820      	ldr	r0, [r4, #0]
    88d6:	f7fd e97e 	blx	5bd4 <destroy_bytevc1_decoder@plt>
    88da:	6860      	ldr	r0, [r4, #4]
    88dc:	b108      	cbz	r0, 88e2 <heif_anim_heif_ctx_release@@Base+0x1e>
    88de:	f7fd e8c6 	blx	5a6c <free@plt>
    88e2:	2300      	movs	r3, #0
    88e4:	6063      	str	r3, [r4, #4]
    88e6:	bd10      	pop	{r4, pc}

000088e8 <heif_parse_thumb@@Base>:
    88e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    88ec:	b0a0      	sub	sp, #128	; 0x80
    88ee:	4d22      	ldr	r5, [pc, #136]	; (8978 <heif_parse_thumb@@Base+0x90>)
    88f0:	4607      	mov	r7, r0
    88f2:	4668      	mov	r0, sp
    88f4:	460e      	mov	r6, r1
    88f6:	447d      	add	r5, pc
    88f8:	682d      	ldr	r5, [r5, #0]
    88fa:	4690      	mov	r8, r2
    88fc:	682b      	ldr	r3, [r5, #0]
    88fe:	931f      	str	r3, [sp, #124]	; 0x7c
    8900:	f7fd e8c0 	blx	5a84 <Bitstream_init@plt>
    8904:	4668      	mov	r0, sp
    8906:	9700      	str	r7, [sp, #0]
    8908:	9601      	str	r6, [sp, #4]
    890a:	f7fd e922 	blx	5b50 <Bitstream_read_32bit@plt>
    890e:	4668      	mov	r0, sp
    8910:	f7fd e91e 	blx	5b50 <Bitstream_read_32bit@plt>
    8914:	f647 1270 	movw	r2, #31088	; 0x7970
    8918:	f2c6 6274 	movt	r2, #26228	; 0x6674
    891c:	2300      	movs	r3, #0
    891e:	9302      	str	r3, [sp, #8]
    8920:	4290      	cmp	r0, r2
    8922:	d007      	beq.n	8934 <heif_parse_thumb@@Base+0x4c>
    8924:	2001      	movs	r0, #1
    8926:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
    8928:	682b      	ldr	r3, [r5, #0]
    892a:	429a      	cmp	r2, r3
    892c:	d121      	bne.n	8972 <heif_parse_thumb@@Base+0x8a>
    892e:	b020      	add	sp, #128	; 0x80
    8930:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    8934:	4639      	mov	r1, r7
    8936:	4632      	mov	r2, r6
    8938:	a804      	add	r0, sp, #16
    893a:	f7fd e952 	blx	5be0 <heif_parse_thumb_data@plt>
    893e:	f89d 0061 	ldrb.w	r0, [sp, #97]	; 0x61
    8942:	9919      	ldr	r1, [sp, #100]	; 0x64
    8944:	9a1a      	ldr	r2, [sp, #104]	; 0x68
    8946:	f89d 3018 	ldrb.w	r3, [sp, #24]
    894a:	f888 0021 	strb.w	r0, [r8, #33]	; 0x21
    894e:	f8c8 1024 	str.w	r1, [r8, #36]	; 0x24
    8952:	f8c8 2028 	str.w	r2, [r8, #40]	; 0x28
    8956:	f888 3020 	strb.w	r3, [r8, #32]
    895a:	b93b      	cbnz	r3, 896c <heif_parse_thumb@@Base+0x84>
    895c:	f89d 301b 	ldrb.w	r3, [sp, #27]
    8960:	f080 0001 	eor.w	r0, r0, #1
    8964:	4240      	negs	r0, r0
    8966:	2b00      	cmp	r3, #0
    8968:	d1dd      	bne.n	8926 <heif_parse_thumb@@Base+0x3e>
    896a:	e7db      	b.n	8924 <heif_parse_thumb@@Base+0x3c>
    896c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    8970:	e7d9      	b.n	8926 <heif_parse_thumb@@Base+0x3e>
    8972:	f7fd e84c 	blx	5a0c <__stack_chk_fail@plt>
    8976:	bf00      	nop
    8978:	e1c6      	b.n	8d08 <Bitstream_release@@Base+0x10>
	...

0000897c <heif_decode_thumb_to_rgba@@Base>:
    897c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    8980:	b0b0      	sub	sp, #192	; 0xc0
    8982:	4c57      	ldr	r4, [pc, #348]	; (8ae0 <heif_decode_thumb_to_rgba@@Base+0x164>)
    8984:	460e      	mov	r6, r1
    8986:	4615      	mov	r5, r2
    8988:	2100      	movs	r1, #0
    898a:	447c      	add	r4, pc
    898c:	6824      	ldr	r4, [r4, #0]
    898e:	2240      	movs	r2, #64	; 0x40
    8990:	4607      	mov	r7, r0
    8992:	6823      	ldr	r3, [r4, #0]
    8994:	932f      	str	r3, [sp, #188]	; 0xbc
    8996:	f7fd e8b8 	blx	5b08 <memset@plt>
    899a:	2e00      	cmp	r6, #0
    899c:	bf18      	it	ne
    899e:	2d00      	cmpne	r5, #0
    89a0:	bf0c      	ite	eq
    89a2:	f04f 0901 	moveq.w	r9, #1
    89a6:	f04f 0900 	movne.w	r9, #0
    89aa:	d108      	bne.n	89be <heif_decode_thumb_to_rgba@@Base+0x42>
    89ac:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
    89ae:	4638      	mov	r0, r7
    89b0:	6823      	ldr	r3, [r4, #0]
    89b2:	429a      	cmp	r2, r3
    89b4:	f040 8088 	bne.w	8ac8 <heif_decode_thumb_to_rgba@@Base+0x14c>
    89b8:	b030      	add	sp, #192	; 0xc0
    89ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    89be:	f10d 0850 	add.w	r8, sp, #80	; 0x50
    89c2:	2301      	movs	r3, #1
    89c4:	4631      	mov	r1, r6
    89c6:	462a      	mov	r2, r5
    89c8:	4640      	mov	r0, r8
    89ca:	f7fd e90a 	blx	5be0 <heif_parse_thumb_data@plt>
    89ce:	9b14      	ldr	r3, [sp, #80]	; 0x50
    89d0:	b13b      	cbz	r3, 89e2 <heif_decode_thumb_to_rgba@@Base+0x66>
    89d2:	9b15      	ldr	r3, [sp, #84]	; 0x54
    89d4:	b12b      	cbz	r3, 89e2 <heif_decode_thumb_to_rgba@@Base+0x66>
    89d6:	f89d 305b 	ldrb.w	r3, [sp, #91]	; 0x5b
    89da:	b113      	cbz	r3, 89e2 <heif_decode_thumb_to_rgba@@Base+0x66>
    89dc:	f89d 30a1 	ldrb.w	r3, [sp, #161]	; 0xa1
    89e0:	b91b      	cbnz	r3, 89ea <heif_decode_thumb_to_rgba@@Base+0x6e>
    89e2:	4640      	mov	r0, r8
    89e4:	f7fd e85a 	blx	5a9c <Bytevc1Bitstream_release@plt>
    89e8:	e7e0      	b.n	89ac <heif_decode_thumb_to_rgba@@Base+0x30>
    89ea:	ad0c      	add	r5, sp, #48	; 0x30
    89ec:	f10d 061f 	add.w	r6, sp, #31
    89f0:	f8cd 9020 	str.w	r9, [sp, #32]
    89f4:	4628      	mov	r0, r5
    89f6:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
    89fa:	f7fd e85c 	blx	5ab4 <bytevc1_decoder_init@plt>
    89fe:	ab09      	add	r3, sp, #36	; 0x24
    8a00:	9603      	str	r6, [sp, #12]
    8a02:	4628      	mov	r0, r5
    8a04:	9300      	str	r3, [sp, #0]
    8a06:	ab0a      	add	r3, sp, #40	; 0x28
    8a08:	9914      	ldr	r1, [sp, #80]	; 0x50
    8a0a:	f04f 0e01 	mov.w	lr, #1
    8a0e:	9301      	str	r3, [sp, #4]
    8a10:	ab0b      	add	r3, sp, #44	; 0x2c
    8a12:	9a15      	ldr	r2, [sp, #84]	; 0x54
    8a14:	2608      	movs	r6, #8
    8a16:	9302      	str	r3, [sp, #8]
    8a18:	ab08      	add	r3, sp, #32
    8a1a:	f88d 601f 	strb.w	r6, [sp, #31]
    8a1e:	f88d 903d 	strb.w	r9, [sp, #61]	; 0x3d
    8a22:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
    8a26:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
    8a2a:	f88d e03c 	strb.w	lr, [sp, #60]	; 0x3c
    8a2e:	f7fd e860 	blx	5af0 <bytevc1_decoder_decode@plt>
    8a32:	4606      	mov	r6, r0
    8a34:	4628      	mov	r0, r5
    8a36:	f7fd e856 	blx	5ae4 <bytevc1_decoder_close@plt>
    8a3a:	b91e      	cbnz	r6, 8a44 <heif_decode_thumb_to_rgba@@Base+0xc8>
    8a3c:	f89d 301f 	ldrb.w	r3, [sp, #31]
    8a40:	2b08      	cmp	r3, #8
    8a42:	d005      	beq.n	8a50 <heif_decode_thumb_to_rgba@@Base+0xd4>
    8a44:	9808      	ldr	r0, [sp, #32]
    8a46:	2800      	cmp	r0, #0
    8a48:	d0cb      	beq.n	89e2 <heif_decode_thumb_to_rgba@@Base+0x66>
    8a4a:	f7fd e810 	blx	5a6c <free@plt>
    8a4e:	e7c8      	b.n	89e2 <heif_decode_thumb_to_rgba@@Base+0x66>
    8a50:	9d0a      	ldr	r5, [sp, #40]	; 0x28
    8a52:	2d00      	cmp	r5, #0
    8a54:	d0f6      	beq.n	8a44 <heif_decode_thumb_to_rgba@@Base+0xc8>
    8a56:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
    8a5a:	f1b9 0f00 	cmp.w	r9, #0
    8a5e:	d0f1      	beq.n	8a44 <heif_decode_thumb_to_rgba@@Base+0xc8>
    8a60:	fb09 fa05 	mul.w	sl, r9, r5
    8a64:	ea4f 008a 	mov.w	r0, sl, lsl #2
    8a68:	f7fc efee 	blx	5a48 <malloc@plt>
    8a6c:	4606      	mov	r6, r0
    8a6e:	b368      	cbz	r0, 8acc <heif_decode_thumb_to_rgba@@Base+0x150>
    8a70:	f109 0101 	add.w	r1, r9, #1
    8a74:	1c68      	adds	r0, r5, #1
    8a76:	f8dd c020 	ldr.w	ip, [sp, #32]
    8a7a:	ea4f 0e85 	mov.w	lr, r5, lsl #2
    8a7e:	1040      	asrs	r0, r0, #1
    8a80:	1049      	asrs	r1, r1, #1
    8a82:	eb0c 020a 	add.w	r2, ip, sl
    8a86:	9001      	str	r0, [sp, #4]
    8a88:	fb01 a100 	mla	r1, r1, r0, sl
    8a8c:	4603      	mov	r3, r0
    8a8e:	f8cd e00c 	str.w	lr, [sp, #12]
    8a92:	4660      	mov	r0, ip
    8a94:	9602      	str	r6, [sp, #8]
    8a96:	4461      	add	r1, ip
    8a98:	9504      	str	r5, [sp, #16]
    8a9a:	9100      	str	r1, [sp, #0]
    8a9c:	4629      	mov	r1, r5
    8a9e:	f8cd 9014 	str.w	r9, [sp, #20]
    8aa2:	f7fd e844 	blx	5b2c <tt_I420ToRGBA@plt>
    8aa6:	4640      	mov	r0, r8
    8aa8:	f7fc eff8 	blx	5a9c <Bytevc1Bitstream_release@plt>
    8aac:	9808      	ldr	r0, [sp, #32]
    8aae:	b108      	cbz	r0, 8ab4 <heif_decode_thumb_to_rgba@@Base+0x138>
    8ab0:	f7fc efdc 	blx	5a6c <free@plt>
    8ab4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    8ab6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    8ab8:	607e      	str	r6, [r7, #4]
    8aba:	61bb      	str	r3, [r7, #24]
    8abc:	fb02 f303 	mul.w	r3, r2, r3
    8ac0:	61fa      	str	r2, [r7, #28]
    8ac2:	009b      	lsls	r3, r3, #2
    8ac4:	603b      	str	r3, [r7, #0]
    8ac6:	e771      	b.n	89ac <heif_decode_thumb_to_rgba@@Base+0x30>
    8ac8:	f7fc efa0 	blx	5a0c <__stack_chk_fail@plt>
    8acc:	4640      	mov	r0, r8
    8ace:	f7fc efe6 	blx	5a9c <Bytevc1Bitstream_release@plt>
    8ad2:	9808      	ldr	r0, [sp, #32]
    8ad4:	2800      	cmp	r0, #0
    8ad6:	f43f af69 	beq.w	89ac <heif_decode_thumb_to_rgba@@Base+0x30>
    8ada:	f7fc efc8 	blx	5a6c <free@plt>
    8ade:	e765      	b.n	89ac <heif_decode_thumb_to_rgba@@Base+0x30>
    8ae0:	e132      	b.n	8d48 <Bitstream_write_32bit@@Base+0x14>
	...

00008ae4 <heif_repack_data@@Base>:
    8ae4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    8ae8:	f5ad 7d0e 	sub.w	sp, sp, #568	; 0x238
    8aec:	4e36      	ldr	r6, [pc, #216]	; (8bc8 <heif_repack_data@@Base+0xe4>)
    8aee:	ac08      	add	r4, sp, #32
    8af0:	ad18      	add	r5, sp, #96	; 0x60
    8af2:	4607      	mov	r7, r0
    8af4:	447e      	add	r6, pc
    8af6:	6836      	ldr	r6, [r6, #0]
    8af8:	4620      	mov	r0, r4
    8afa:	6833      	ldr	r3, [r6, #0]
    8afc:	938d      	str	r3, [sp, #564]	; 0x234
    8afe:	f7fd e876 	blx	5bec <heif_decode_to_bytevc1@plt>
    8b02:	4628      	mov	r0, r5
    8b04:	f7fd e878 	blx	5bf8 <HeifMediaFile_init@plt>
    8b08:	68e1      	ldr	r1, [r4, #12]
    8b0a:	6820      	ldr	r0, [r4, #0]
    8b0c:	f04f 0e01 	mov.w	lr, #1
    8b10:	e9d4 2308 	ldrd	r2, r3, [r4, #32]
    8b14:	f04f 0c00 	mov.w	ip, #0
    8b18:	65e9      	str	r1, [r5, #92]	; 0x5c
    8b1a:	68a1      	ldr	r1, [r4, #8]
    8b1c:	f8d4 9018 	ldr.w	r9, [r4, #24]
    8b20:	f8d4 801c 	ldr.w	r8, [r4, #28]
    8b24:	9002      	str	r0, [sp, #8]
    8b26:	9001      	str	r0, [sp, #4]
    8b28:	6860      	ldr	r0, [r4, #4]
    8b2a:	6629      	str	r1, [r5, #96]	; 0x60
    8b2c:	ea52 0103 	orrs.w	r1, r2, r3
    8b30:	f8c5 e034 	str.w	lr, [r5, #52]	; 0x34
    8b34:	f8c5 d058 	str.w	sp, [r5, #88]	; 0x58
    8b38:	bf08      	it	eq
    8b3a:	230a      	moveq	r3, #10
    8b3c:	9000      	str	r0, [sp, #0]
    8b3e:	f88d c00c 	strb.w	ip, [sp, #12]
    8b42:	f8c5 9078 	str.w	r9, [r5, #120]	; 0x78
    8b46:	f8c5 807c 	str.w	r8, [r5, #124]	; 0x7c
    8b4a:	d005      	beq.n	8b58 <heif_repack_data@@Base+0x74>
    8b4c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    8b50:	2100      	movs	r1, #0
    8b52:	f7fd e858 	blx	5c04 <__aeabi_uldivmod@plt>
    8b56:	4603      	mov	r3, r0
    8b58:	f10d 0a10 	add.w	sl, sp, #16
    8b5c:	4628      	mov	r0, r5
    8b5e:	63ab      	str	r3, [r5, #56]	; 0x38
    8b60:	4651      	mov	r1, sl
    8b62:	f8c5 903c 	str.w	r9, [r5, #60]	; 0x3c
    8b66:	f8c5 8040 	str.w	r8, [r5, #64]	; 0x40
    8b6a:	f7fd e852 	blx	5c10 <HeifMediaFile_write_image_infos@plt>
    8b6e:	b1c8      	cbz	r0, 8ba4 <heif_repack_data@@Base+0xc0>
    8b70:	4628      	mov	r0, r5
    8b72:	463d      	mov	r5, r7
    8b74:	f7fd e852 	blx	5c1c <HeifMediaFile_release@plt>
    8b78:	4650      	mov	r0, sl
    8b7a:	f7fd e856 	blx	5c28 <Bitstream_release@plt>
    8b7e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8b80:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    8b82:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8b84:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    8b86:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8b88:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    8b8a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
    8b8e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
    8b92:	4638      	mov	r0, r7
    8b94:	9a8d      	ldr	r2, [sp, #564]	; 0x234
    8b96:	6833      	ldr	r3, [r6, #0]
    8b98:	429a      	cmp	r2, r3
    8b9a:	d112      	bne.n	8bc2 <heif_repack_data@@Base+0xde>
    8b9c:	f50d 7d0e 	add.w	sp, sp, #568	; 0x238
    8ba0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    8ba4:	4620      	mov	r0, r4
    8ba6:	f7fd e846 	blx	5c34 <heif_release_output_stream@plt>
    8baa:	f8da 2000 	ldr.w	r2, [sl]
    8bae:	f8da 3008 	ldr.w	r3, [sl, #8]
    8bb2:	4628      	mov	r0, r5
    8bb4:	463d      	mov	r5, r7
    8bb6:	6062      	str	r2, [r4, #4]
    8bb8:	6023      	str	r3, [r4, #0]
    8bba:	f7fd e830 	blx	5c1c <HeifMediaFile_release@plt>
    8bbe:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    8bc0:	e7de      	b.n	8b80 <heif_repack_data@@Base+0x9c>
    8bc2:	f7fc ef24 	blx	5a0c <__stack_chk_fail@plt>
    8bc6:	bf00      	nop
    8bc8:	dfc8      	svc	200	; 0xc8
	...

00008bcc <ImageAuxiliaryTypeProperty_init@@Base>:
    8bcc:	b510      	push	{r4, lr}
    8bce:	4604      	mov	r4, r0
    8bd0:	4805      	ldr	r0, [pc, #20]	; (8be8 <ImageAuxiliaryTypeProperty_init@@Base+0x1c>)
    8bd2:	4478      	add	r0, pc
    8bd4:	f7fd e834 	blx	5c40 <string_type_to_int32@plt>
    8bd8:	2300      	movs	r3, #0
    8bda:	7323      	strb	r3, [r4, #12]
    8bdc:	6163      	str	r3, [r4, #20]
    8bde:	61a3      	str	r3, [r4, #24]
    8be0:	61e3      	str	r3, [r4, #28]
    8be2:	6060      	str	r0, [r4, #4]
    8be4:	bd10      	pop	{r4, pc}
    8be6:	bf00      	nop
    8be8:	c0ca      	stmia	r0!, {r1, r3, r6, r7}
	...

00008bec <ImageAuxiliaryTypeProperty_release@@Base>:
    8bec:	b510      	push	{r4, lr}
    8bee:	4604      	mov	r4, r0
    8bf0:	6940      	ldr	r0, [r0, #20]
    8bf2:	b118      	cbz	r0, 8bfc <ImageAuxiliaryTypeProperty_release@@Base+0x10>
    8bf4:	f7fc ef3a 	blx	5a6c <free@plt>
    8bf8:	2300      	movs	r3, #0
    8bfa:	6163      	str	r3, [r4, #20]
    8bfc:	69a0      	ldr	r0, [r4, #24]
    8bfe:	b118      	cbz	r0, 8c08 <ImageAuxiliaryTypeProperty_release@@Base+0x1c>
    8c00:	f7fc ef34 	blx	5a6c <free@plt>
    8c04:	2300      	movs	r3, #0
    8c06:	61a3      	str	r3, [r4, #24]
    8c08:	2300      	movs	r3, #0
    8c0a:	61e3      	str	r3, [r4, #28]
    8c0c:	bd10      	pop	{r4, pc}
    8c0e:	bf00      	nop

00008c10 <ImageAuxiliaryTypeProperty_write@@Base>:
    8c10:	b538      	push	{r3, r4, r5, lr}
    8c12:	4604      	mov	r4, r0
    8c14:	460d      	mov	r5, r1
    8c16:	f7fd e81a 	blx	5c4c <FullBox_write_header@plt>
    8c1a:	6961      	ldr	r1, [r4, #20]
    8c1c:	b111      	cbz	r1, 8c24 <ImageAuxiliaryTypeProperty_write@@Base+0x14>
    8c1e:	4628      	mov	r0, r5
    8c20:	f7fd e81a 	blx	5c58 <Bitstream_write_terminated_str@plt>
    8c24:	69a1      	ldr	r1, [r4, #24]
    8c26:	b141      	cbz	r1, 8c3a <ImageAuxiliaryTypeProperty_write@@Base+0x2a>
    8c28:	69e2      	ldr	r2, [r4, #28]
    8c2a:	68ab      	ldr	r3, [r5, #8]
    8c2c:	6868      	ldr	r0, [r5, #4]
    8c2e:	4413      	add	r3, r2
    8c30:	4283      	cmp	r3, r0
    8c32:	d202      	bcs.n	8c3a <ImageAuxiliaryTypeProperty_write@@Base+0x2a>
    8c34:	4628      	mov	r0, r5
    8c36:	f7fd e816 	blx	5c64 <Bitstream_write_bytes@plt>
    8c3a:	4620      	mov	r0, r4
    8c3c:	4629      	mov	r1, r5
    8c3e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    8c42:	f00b b957 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    8c46:	bf00      	nop

00008c48 <ImageAuxiliaryTypeProperty_parse@@Base>:
    8c48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    8c4c:	460e      	mov	r6, r1
    8c4e:	4605      	mov	r5, r0
    8c50:	688f      	ldr	r7, [r1, #8]
    8c52:	f7fd e814 	blx	5c7c <FullBox_parse_header@plt>
    8c56:	4604      	mov	r4, r0
    8c58:	b110      	cbz	r0, 8c60 <ImageAuxiliaryTypeProperty_parse@@Base+0x18>
    8c5a:	2001      	movs	r0, #1
    8c5c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    8c60:	4630      	mov	r0, r6
    8c62:	f7fd e812 	blx	5c88 <Bitstream_read_terminated_str@plt>
    8c66:	68b2      	ldr	r2, [r6, #8]
    8c68:	f8d5 8000 	ldr.w	r8, [r5]
    8c6c:	1bd3      	subs	r3, r2, r7
    8c6e:	4543      	cmp	r3, r8
    8c70:	6168      	str	r0, [r5, #20]
    8c72:	d305      	bcc.n	8c80 <ImageAuxiliaryTypeProperty_parse@@Base+0x38>
    8c74:	ebb3 0008 	subs.w	r0, r3, r8
    8c78:	bf18      	it	ne
    8c7a:	2001      	movne	r0, #1
    8c7c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    8c80:	eb07 0908 	add.w	r9, r7, r8
    8c84:	ebc2 0909 	rsb	r9, r2, r9
    8c88:	f8c5 901c 	str.w	r9, [r5, #28]
    8c8c:	4648      	mov	r0, r9
    8c8e:	f7fc eedc 	blx	5a48 <malloc@plt>
    8c92:	61a8      	str	r0, [r5, #24]
    8c94:	2800      	cmp	r0, #0
    8c96:	d0e0      	beq.n	8c5a <ImageAuxiliaryTypeProperty_parse@@Base+0x12>
    8c98:	f1b9 0f00 	cmp.w	r9, #0
    8c9c:	d011      	beq.n	8cc2 <ImageAuxiliaryTypeProperty_parse@@Base+0x7a>
    8c9e:	4680      	mov	r8, r0
    8ca0:	e001      	b.n	8ca6 <ImageAuxiliaryTypeProperty_parse@@Base+0x5e>
    8ca2:	f8d5 8018 	ldr.w	r8, [r5, #24]
    8ca6:	4630      	mov	r0, r6
    8ca8:	f7fc eff4 	blx	5c94 <Bitstream_read_byte@plt>
    8cac:	f808 0004 	strb.w	r0, [r8, r4]
    8cb0:	3401      	adds	r4, #1
    8cb2:	69eb      	ldr	r3, [r5, #28]
    8cb4:	429c      	cmp	r4, r3
    8cb6:	d3f4      	bcc.n	8ca2 <ImageAuxiliaryTypeProperty_parse@@Base+0x5a>
    8cb8:	68b3      	ldr	r3, [r6, #8]
    8cba:	f8d5 8000 	ldr.w	r8, [r5]
    8cbe:	1bdb      	subs	r3, r3, r7
    8cc0:	e7d8      	b.n	8c74 <ImageAuxiliaryTypeProperty_parse@@Base+0x2c>
    8cc2:	68b3      	ldr	r3, [r6, #8]
    8cc4:	1bdb      	subs	r3, r3, r7
    8cc6:	e7d5      	b.n	8c74 <ImageAuxiliaryTypeProperty_parse@@Base+0x2c>

00008cc8 <Bitstream_init@@Base>:
    8cc8:	2300      	movs	r3, #0
    8cca:	6003      	str	r3, [r0, #0]
    8ccc:	6043      	str	r3, [r0, #4]
    8cce:	6083      	str	r3, [r0, #8]
    8cd0:	7303      	strb	r3, [r0, #12]
    8cd2:	4770      	bx	lr

00008cd4 <Bitstream_alloc@@Base>:
    8cd4:	b538      	push	{r3, r4, r5, lr}
    8cd6:	4604      	mov	r4, r0
    8cd8:	4608      	mov	r0, r1
    8cda:	460d      	mov	r5, r1
    8cdc:	f7fc eeb4 	blx	5a48 <malloc@plt>
    8ce0:	6020      	str	r0, [r4, #0]
    8ce2:	b138      	cbz	r0, 8cf4 <Bitstream_alloc@@Base+0x20>
    8ce4:	2100      	movs	r1, #0
    8ce6:	462a      	mov	r2, r5
    8ce8:	f7fc ef0e 	blx	5b08 <memset@plt>
    8cec:	2300      	movs	r3, #0
    8cee:	6065      	str	r5, [r4, #4]
    8cf0:	60a3      	str	r3, [r4, #8]
    8cf2:	7323      	strb	r3, [r4, #12]
    8cf4:	bd38      	pop	{r3, r4, r5, pc}
    8cf6:	bf00      	nop

00008cf8 <Bitstream_release@@Base>:
    8cf8:	6803      	ldr	r3, [r0, #0]
    8cfa:	b13b      	cbz	r3, 8d0c <Bitstream_release@@Base+0x14>
    8cfc:	b510      	push	{r4, lr}
    8cfe:	4604      	mov	r4, r0
    8d00:	4618      	mov	r0, r3
    8d02:	f7fc eeb4 	blx	5a6c <free@plt>
    8d06:	2300      	movs	r3, #0
    8d08:	6023      	str	r3, [r4, #0]
    8d0a:	bd10      	pop	{r4, pc}
    8d0c:	4770      	bx	lr
    8d0e:	bf00      	nop

00008d10 <Bitstream_write_byte@@Base>:
    8d10:	6882      	ldr	r2, [r0, #8]
    8d12:	4603      	mov	r3, r0
    8d14:	6840      	ldr	r0, [r0, #4]
    8d16:	4282      	cmp	r2, r0
    8d18:	d209      	bcs.n	8d2e <Bitstream_write_byte@@Base+0x1e>
    8d1a:	b470      	push	{r4, r5, r6}
    8d1c:	2400      	movs	r4, #0
    8d1e:	681d      	ldr	r5, [r3, #0]
    8d20:	1c56      	adds	r6, r2, #1
    8d22:	4620      	mov	r0, r4
    8d24:	609e      	str	r6, [r3, #8]
    8d26:	54a9      	strb	r1, [r5, r2]
    8d28:	731c      	strb	r4, [r3, #12]
    8d2a:	bc70      	pop	{r4, r5, r6}
    8d2c:	4770      	bx	lr
    8d2e:	2001      	movs	r0, #1
    8d30:	4770      	bx	lr
    8d32:	bf00      	nop

00008d34 <Bitstream_write_32bit@@Base>:
    8d34:	6882      	ldr	r2, [r0, #8]
    8d36:	4603      	mov	r3, r0
    8d38:	6840      	ldr	r0, [r0, #4]
    8d3a:	b4f0      	push	{r4, r5, r6, r7}
    8d3c:	1d14      	adds	r4, r2, #4
    8d3e:	4284      	cmp	r4, r0
    8d40:	bf88      	it	hi
    8d42:	2001      	movhi	r0, #1
    8d44:	d818      	bhi.n	8d78 <Bitstream_write_32bit@@Base+0x44>
    8d46:	6818      	ldr	r0, [r3, #0]
    8d48:	1c55      	adds	r5, r2, #1
    8d4a:	0e0c      	lsrs	r4, r1, #24
    8d4c:	609d      	str	r5, [r3, #8]
    8d4e:	0c0f      	lsrs	r7, r1, #16
    8d50:	0a0e      	lsrs	r6, r1, #8
    8d52:	5484      	strb	r4, [r0, r2]
    8d54:	2200      	movs	r2, #0
    8d56:	689c      	ldr	r4, [r3, #8]
    8d58:	4610      	mov	r0, r2
    8d5a:	1c65      	adds	r5, r4, #1
    8d5c:	609d      	str	r5, [r3, #8]
    8d5e:	681d      	ldr	r5, [r3, #0]
    8d60:	552f      	strb	r7, [r5, r4]
    8d62:	689c      	ldr	r4, [r3, #8]
    8d64:	681d      	ldr	r5, [r3, #0]
    8d66:	1c67      	adds	r7, r4, #1
    8d68:	609f      	str	r7, [r3, #8]
    8d6a:	552e      	strb	r6, [r5, r4]
    8d6c:	689c      	ldr	r4, [r3, #8]
    8d6e:	681d      	ldr	r5, [r3, #0]
    8d70:	1c66      	adds	r6, r4, #1
    8d72:	609e      	str	r6, [r3, #8]
    8d74:	5529      	strb	r1, [r5, r4]
    8d76:	731a      	strb	r2, [r3, #12]
    8d78:	bcf0      	pop	{r4, r5, r6, r7}
    8d7a:	4770      	bx	lr

00008d7c <Bitstream_write_24bit@@Base>:
    8d7c:	6882      	ldr	r2, [r0, #8]
    8d7e:	4603      	mov	r3, r0
    8d80:	6840      	ldr	r0, [r0, #4]
    8d82:	b4f0      	push	{r4, r5, r6, r7}
    8d84:	1cd4      	adds	r4, r2, #3
    8d86:	4284      	cmp	r4, r0
    8d88:	bf88      	it	hi
    8d8a:	2001      	movhi	r0, #1
    8d8c:	d812      	bhi.n	8db4 <Bitstream_write_24bit@@Base+0x38>
    8d8e:	6818      	ldr	r0, [r3, #0]
    8d90:	1c54      	adds	r4, r2, #1
    8d92:	0c0d      	lsrs	r5, r1, #16
    8d94:	609c      	str	r4, [r3, #8]
    8d96:	0a0e      	lsrs	r6, r1, #8
    8d98:	2400      	movs	r4, #0
    8d9a:	5485      	strb	r5, [r0, r2]
    8d9c:	4620      	mov	r0, r4
    8d9e:	689a      	ldr	r2, [r3, #8]
    8da0:	681d      	ldr	r5, [r3, #0]
    8da2:	1c57      	adds	r7, r2, #1
    8da4:	609f      	str	r7, [r3, #8]
    8da6:	54ae      	strb	r6, [r5, r2]
    8da8:	689a      	ldr	r2, [r3, #8]
    8daa:	681d      	ldr	r5, [r3, #0]
    8dac:	1c56      	adds	r6, r2, #1
    8dae:	609e      	str	r6, [r3, #8]
    8db0:	54a9      	strb	r1, [r5, r2]
    8db2:	731c      	strb	r4, [r3, #12]
    8db4:	bcf0      	pop	{r4, r5, r6, r7}
    8db6:	4770      	bx	lr

00008db8 <Bitstream_write_16bit@@Base>:
    8db8:	6882      	ldr	r2, [r0, #8]
    8dba:	4603      	mov	r3, r0
    8dbc:	6840      	ldr	r0, [r0, #4]
    8dbe:	b470      	push	{r4, r5, r6}
    8dc0:	1c94      	adds	r4, r2, #2
    8dc2:	4284      	cmp	r4, r0
    8dc4:	bf88      	it	hi
    8dc6:	2001      	movhi	r0, #1
    8dc8:	d80c      	bhi.n	8de4 <Bitstream_write_16bit@@Base+0x2c>
    8dca:	6818      	ldr	r0, [r3, #0]
    8dcc:	1c54      	adds	r4, r2, #1
    8dce:	0a0d      	lsrs	r5, r1, #8
    8dd0:	609c      	str	r4, [r3, #8]
    8dd2:	2400      	movs	r4, #0
    8dd4:	5485      	strb	r5, [r0, r2]
    8dd6:	4620      	mov	r0, r4
    8dd8:	689a      	ldr	r2, [r3, #8]
    8dda:	681d      	ldr	r5, [r3, #0]
    8ddc:	1c56      	adds	r6, r2, #1
    8dde:	609e      	str	r6, [r3, #8]
    8de0:	54a9      	strb	r1, [r5, r2]
    8de2:	731c      	strb	r4, [r3, #12]
    8de4:	bc70      	pop	{r4, r5, r6}
    8de6:	4770      	bx	lr

00008de8 <Bitstream_write_bytes@@Base>:
    8de8:	b570      	push	{r4, r5, r6, lr}
    8dea:	6886      	ldr	r6, [r0, #8]
    8dec:	6844      	ldr	r4, [r0, #4]
    8dee:	1995      	adds	r5, r2, r6
    8df0:	42a5      	cmp	r5, r4
    8df2:	d901      	bls.n	8df8 <Bitstream_write_bytes@@Base+0x10>
    8df4:	2001      	movs	r0, #1
    8df6:	bd70      	pop	{r4, r5, r6, pc}
    8df8:	4604      	mov	r4, r0
    8dfa:	6800      	ldr	r0, [r0, #0]
    8dfc:	4615      	mov	r5, r2
    8dfe:	4430      	add	r0, r6
    8e00:	f7fc edfe 	blx	5a00 <memcpy@plt>
    8e04:	68a2      	ldr	r2, [r4, #8]
    8e06:	2000      	movs	r0, #0
    8e08:	7320      	strb	r0, [r4, #12]
    8e0a:	4415      	add	r5, r2
    8e0c:	60a5      	str	r5, [r4, #8]
    8e0e:	bd70      	pop	{r4, r5, r6, pc}

00008e10 <Bitstream_write_bit@@Base>:
    8e10:	6882      	ldr	r2, [r0, #8]
    8e12:	4603      	mov	r3, r0
    8e14:	6840      	ldr	r0, [r0, #4]
    8e16:	4282      	cmp	r2, r0
    8e18:	d216      	bcs.n	8e48 <Bitstream_write_bit@@Base+0x38>
    8e1a:	b470      	push	{r4, r5, r6}
    8e1c:	f001 0101 	and.w	r1, r1, #1
    8e20:	681d      	ldr	r5, [r3, #0]
    8e22:	2000      	movs	r0, #0
    8e24:	7b1e      	ldrb	r6, [r3, #12]
    8e26:	5cac      	ldrb	r4, [r5, r2]
    8e28:	40b1      	lsls	r1, r6
    8e2a:	4321      	orrs	r1, r4
    8e2c:	54a9      	strb	r1, [r5, r2]
    8e2e:	7b1a      	ldrb	r2, [r3, #12]
    8e30:	6899      	ldr	r1, [r3, #8]
    8e32:	3201      	adds	r2, #1
    8e34:	f002 0207 	and.w	r2, r2, #7
    8e38:	731a      	strb	r2, [r3, #12]
    8e3a:	4282      	cmp	r2, r0
    8e3c:	bf14      	ite	ne
    8e3e:	460a      	movne	r2, r1
    8e40:	1c4a      	addeq	r2, r1, #1
    8e42:	609a      	str	r2, [r3, #8]
    8e44:	bc70      	pop	{r4, r5, r6}
    8e46:	4770      	bx	lr
    8e48:	2001      	movs	r0, #1
    8e4a:	4770      	bx	lr

00008e4c <Bitstream_write_bits@@Base>:
    8e4c:	b39a      	cbz	r2, 8eb6 <Bitstream_write_bits@@Base+0x6a>
    8e4e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    8e52:	f04f 0c00 	mov.w	ip, #0
    8e56:	7b06      	ldrb	r6, [r0, #12]
    8e58:	f04f 0e01 	mov.w	lr, #1
    8e5c:	6884      	ldr	r4, [r0, #8]
    8e5e:	f1c6 0308 	rsb	r3, r6, #8
    8e62:	2600      	movs	r6, #0
    8e64:	4293      	cmp	r3, r2
    8e66:	fa0e f503 	lsl.w	r5, lr, r3
    8e6a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
    8e6e:	dd0f      	ble.n	8e90 <Bitstream_write_bits@@Base+0x44>
    8e70:	2501      	movs	r5, #1
    8e72:	6806      	ldr	r6, [r0, #0]
    8e74:	4095      	lsls	r5, r2
    8e76:	1a9b      	subs	r3, r3, r2
    8e78:	3d01      	subs	r5, #1
    8e7a:	4029      	ands	r1, r5
    8e7c:	5d35      	ldrb	r5, [r6, r4]
    8e7e:	4099      	lsls	r1, r3
    8e80:	4329      	orrs	r1, r5
    8e82:	5531      	strb	r1, [r6, r4]
    8e84:	7b03      	ldrb	r3, [r0, #12]
    8e86:	441a      	add	r2, r3
    8e88:	7302      	strb	r2, [r0, #12]
    8e8a:	2000      	movs	r0, #0
    8e8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    8e90:	f8d0 8000 	ldr.w	r8, [r0]
    8e94:	1ad2      	subs	r2, r2, r3
    8e96:	fa21 f702 	lsr.w	r7, r1, r2
    8e9a:	403d      	ands	r5, r7
    8e9c:	f818 3004 	ldrb.w	r3, [r8, r4]
    8ea0:	431d      	orrs	r5, r3
    8ea2:	f808 5004 	strb.w	r5, [r8, r4]
    8ea6:	6884      	ldr	r4, [r0, #8]
    8ea8:	f880 c00c 	strb.w	ip, [r0, #12]
    8eac:	3401      	adds	r4, #1
    8eae:	6084      	str	r4, [r0, #8]
    8eb0:	2a00      	cmp	r2, #0
    8eb2:	d1d4      	bne.n	8e5e <Bitstream_write_bits@@Base+0x12>
    8eb4:	e7e9      	b.n	8e8a <Bitstream_write_bits@@Base+0x3e>
    8eb6:	2000      	movs	r0, #0
    8eb8:	4770      	bx	lr
    8eba:	bf00      	nop

00008ebc <Bitstream_write_terminated_str@@Base>:
    8ebc:	b570      	push	{r4, r5, r6, lr}
    8ebe:	4606      	mov	r6, r0
    8ec0:	460c      	mov	r4, r1
    8ec2:	b161      	cbz	r1, 8ede <Bitstream_write_terminated_str@@Base+0x22>
    8ec4:	4608      	mov	r0, r1
    8ec6:	f7fc eeec 	blx	5ca0 <strlen@plt>
    8eca:	2800      	cmp	r0, #0
    8ecc:	dd07      	ble.n	8ede <Bitstream_write_terminated_str@@Base+0x22>
    8ece:	1825      	adds	r5, r4, r0
    8ed0:	f814 1b01 	ldrb.w	r1, [r4], #1
    8ed4:	4630      	mov	r0, r6
    8ed6:	f7fc eeea 	blx	5cac <Bitstream_write_byte@plt>
    8eda:	42ac      	cmp	r4, r5
    8edc:	d1f8      	bne.n	8ed0 <Bitstream_write_terminated_str@@Base+0x14>
    8ede:	4630      	mov	r0, r6
    8ee0:	2100      	movs	r1, #0
    8ee2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    8ee6:	f00b b80d 	b.w	13f04 <__aeabi_llsl@@Base+0x68>
    8eea:	bf00      	nop

00008eec <Bitstream_read_byte@@Base>:
    8eec:	6883      	ldr	r3, [r0, #8]
    8eee:	6802      	ldr	r2, [r0, #0]
    8ef0:	1c59      	adds	r1, r3, #1
    8ef2:	6081      	str	r1, [r0, #8]
    8ef4:	5cd0      	ldrb	r0, [r2, r3]
    8ef6:	4770      	bx	lr

00008ef8 <Bitstream_read_32bit@@Base>:
    8ef8:	6883      	ldr	r3, [r0, #8]
    8efa:	6802      	ldr	r2, [r0, #0]
    8efc:	1c59      	adds	r1, r3, #1
    8efe:	b4f0      	push	{r4, r5, r6, r7}
    8f00:	1c9e      	adds	r6, r3, #2
    8f02:	6081      	str	r1, [r0, #8]
    8f04:	1cdd      	adds	r5, r3, #3
    8f06:	5cd4      	ldrb	r4, [r2, r3]
    8f08:	3304      	adds	r3, #4
    8f0a:	6086      	str	r6, [r0, #8]
    8f0c:	2700      	movs	r7, #0
    8f0e:	5c51      	ldrb	r1, [r2, r1]
    8f10:	6085      	str	r5, [r0, #8]
    8f12:	ea41 2404 	orr.w	r4, r1, r4, lsl #8
    8f16:	5d91      	ldrb	r1, [r2, r6]
    8f18:	6083      	str	r3, [r0, #8]
    8f1a:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
    8f1e:	5d53      	ldrb	r3, [r2, r5]
    8f20:	7307      	strb	r7, [r0, #12]
    8f22:	ea43 2001 	orr.w	r0, r3, r1, lsl #8
    8f26:	bcf0      	pop	{r4, r5, r6, r7}
    8f28:	4770      	bx	lr
    8f2a:	bf00      	nop

00008f2c <Bitstream_read_24bit@@Base>:
    8f2c:	6883      	ldr	r3, [r0, #8]
    8f2e:	6802      	ldr	r2, [r0, #0]
    8f30:	b4f0      	push	{r4, r5, r6, r7}
    8f32:	1c5c      	adds	r4, r3, #1
    8f34:	6084      	str	r4, [r0, #8]
    8f36:	1c99      	adds	r1, r3, #2
    8f38:	5cd6      	ldrb	r6, [r2, r3]
    8f3a:	1cdf      	adds	r7, r3, #3
    8f3c:	6081      	str	r1, [r0, #8]
    8f3e:	2500      	movs	r5, #0
    8f40:	5d13      	ldrb	r3, [r2, r4]
    8f42:	6087      	str	r7, [r0, #8]
    8f44:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
    8f48:	5c52      	ldrb	r2, [r2, r1]
    8f4a:	7305      	strb	r5, [r0, #12]
    8f4c:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
    8f50:	bcf0      	pop	{r4, r5, r6, r7}
    8f52:	4770      	bx	lr

00008f54 <Bitstream_read_16bit@@Base>:
    8f54:	6883      	ldr	r3, [r0, #8]
    8f56:	6801      	ldr	r1, [r0, #0]
    8f58:	1c5a      	adds	r2, r3, #1
    8f5a:	b470      	push	{r4, r5, r6}
    8f5c:	1c9e      	adds	r6, r3, #2
    8f5e:	6082      	str	r2, [r0, #8]
    8f60:	2500      	movs	r5, #0
    8f62:	5ccc      	ldrb	r4, [r1, r3]
    8f64:	6086      	str	r6, [r0, #8]
    8f66:	5c8b      	ldrb	r3, [r1, r2]
    8f68:	7305      	strb	r5, [r0, #12]
    8f6a:	ea43 2004 	orr.w	r0, r3, r4, lsl #8
    8f6e:	bc70      	pop	{r4, r5, r6}
    8f70:	4770      	bx	lr
    8f72:	bf00      	nop

00008f74 <Bitstream_read_bytes@@Base>:
    8f74:	b538      	push	{r3, r4, r5, lr}
    8f76:	4604      	mov	r4, r0
    8f78:	68a3      	ldr	r3, [r4, #8]
    8f7a:	4608      	mov	r0, r1
    8f7c:	6821      	ldr	r1, [r4, #0]
    8f7e:	4615      	mov	r5, r2
    8f80:	4419      	add	r1, r3
    8f82:	f7fc ed3e 	blx	5a00 <memcpy@plt>
    8f86:	68a3      	ldr	r3, [r4, #8]
    8f88:	2200      	movs	r2, #0
    8f8a:	7322      	strb	r2, [r4, #12]
    8f8c:	441d      	add	r5, r3
    8f8e:	60a5      	str	r5, [r4, #8]
    8f90:	bd38      	pop	{r3, r4, r5, pc}
    8f92:	bf00      	nop

00008f94 <Bitstream_read_bits@@Base>:
    8f94:	b4f0      	push	{r4, r5, r6, r7}
    8f96:	4604      	mov	r4, r0
    8f98:	7b03      	ldrb	r3, [r0, #12]
    8f9a:	f1c3 0208 	rsb	r2, r3, #8
    8f9e:	428a      	cmp	r2, r1
    8fa0:	db15      	blt.n	8fce <Bitstream_read_bits@@Base+0x3a>
    8fa2:	6886      	ldr	r6, [r0, #8]
    8fa4:	440b      	add	r3, r1
    8fa6:	6805      	ldr	r5, [r0, #0]
    8fa8:	2001      	movs	r0, #1
    8faa:	4088      	lsls	r0, r1
    8fac:	1a52      	subs	r2, r2, r1
    8fae:	1e41      	subs	r1, r0, #1
    8fb0:	b2db      	uxtb	r3, r3
    8fb2:	5da8      	ldrb	r0, [r5, r6]
    8fb4:	2b08      	cmp	r3, #8
    8fb6:	7323      	strb	r3, [r4, #12]
    8fb8:	bf02      	ittt	eq
    8fba:	3601      	addeq	r6, #1
    8fbc:	2300      	moveq	r3, #0
    8fbe:	60a6      	streq	r6, [r4, #8]
    8fc0:	fa40 f002 	asr.w	r0, r0, r2
    8fc4:	bf08      	it	eq
    8fc6:	7323      	strbeq	r3, [r4, #12]
    8fc8:	4008      	ands	r0, r1
    8fca:	bcf0      	pop	{r4, r5, r6, r7}
    8fcc:	4770      	bx	lr
    8fce:	6806      	ldr	r6, [r0, #0]
    8fd0:	1a89      	subs	r1, r1, r2
    8fd2:	68a5      	ldr	r5, [r4, #8]
    8fd4:	2001      	movs	r0, #1
    8fd6:	4090      	lsls	r0, r2
    8fd8:	1c6b      	adds	r3, r5, #1
    8fda:	1972      	adds	r2, r6, r5
    8fdc:	5d77      	ldrb	r7, [r6, r5]
    8fde:	2500      	movs	r5, #0
    8fe0:	42a9      	cmp	r1, r5
    8fe2:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
    8fe6:	60a3      	str	r3, [r4, #8]
    8fe8:	ea00 0007 	and.w	r0, r0, r7
    8fec:	7325      	strb	r5, [r4, #12]
    8fee:	ddec      	ble.n	8fca <Bitstream_read_bits@@Base+0x36>
    8ff0:	2907      	cmp	r1, #7
    8ff2:	dd0a      	ble.n	900a <Bitstream_read_bits@@Base+0x76>
    8ff4:	f812 5f01 	ldrb.w	r5, [r2, #1]!
    8ff8:	3908      	subs	r1, #8
    8ffa:	f103 0301 	add.w	r3, r3, #1
    8ffe:	60a3      	str	r3, [r4, #8]
    9000:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
    9004:	d0e1      	beq.n	8fca <Bitstream_read_bits@@Base+0x36>
    9006:	2907      	cmp	r1, #7
    9008:	dcf4      	bgt.n	8ff4 <Bitstream_read_bits@@Base+0x60>
    900a:	5cf2      	ldrb	r2, [r6, r3]
    900c:	2301      	movs	r3, #1
    900e:	f1c1 0508 	rsb	r5, r1, #8
    9012:	408b      	lsls	r3, r1
    9014:	3b01      	subs	r3, #1
    9016:	4088      	lsls	r0, r1
    9018:	412a      	asrs	r2, r5
    901a:	7321      	strb	r1, [r4, #12]
    901c:	4013      	ands	r3, r2
    901e:	4318      	orrs	r0, r3
    9020:	bcf0      	pop	{r4, r5, r6, r7}
    9022:	4770      	bx	lr

00009024 <Bitstream_read_terminated_str@@Base>:
    9024:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    9028:	6842      	ldr	r2, [r0, #4]
    902a:	6886      	ldr	r6, [r0, #8]
    902c:	4296      	cmp	r6, r2
    902e:	d81d      	bhi.n	906c <Bitstream_read_terminated_str@@Base+0x48>
    9030:	6801      	ldr	r1, [r0, #0]
    9032:	4634      	mov	r4, r6
    9034:	eb01 0806 	add.w	r8, r1, r6
    9038:	4643      	mov	r3, r8
    903a:	e002      	b.n	9042 <Bitstream_read_terminated_str@@Base+0x1e>
    903c:	3401      	adds	r4, #1
    903e:	42a2      	cmp	r2, r4
    9040:	d914      	bls.n	906c <Bitstream_read_terminated_str@@Base+0x48>
    9042:	f813 5b01 	ldrb.w	r5, [r3], #1
    9046:	2d00      	cmp	r5, #0
    9048:	d1f8      	bne.n	903c <Bitstream_read_terminated_str@@Base+0x18>
    904a:	1ba6      	subs	r6, r4, r6
    904c:	4607      	mov	r7, r0
    904e:	1c70      	adds	r0, r6, #1
    9050:	3401      	adds	r4, #1
    9052:	f7fc ecfa 	blx	5a48 <malloc@plt>
    9056:	4641      	mov	r1, r8
    9058:	4632      	mov	r2, r6
    905a:	4681      	mov	r9, r0
    905c:	f7fc ee2c 	blx	5cb8 <strncpy@plt>
    9060:	f809 5006 	strb.w	r5, [r9, r6]
    9064:	4648      	mov	r0, r9
    9066:	60bc      	str	r4, [r7, #8]
    9068:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    906c:	2000      	movs	r0, #0
    906e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    9072:	bf00      	nop

00009074 <find_start_code_len@@Base>:
    9074:	7803      	ldrb	r3, [r0, #0]
    9076:	b95b      	cbnz	r3, 9090 <find_start_code_len@@Base+0x1c>
    9078:	7842      	ldrb	r2, [r0, #1]
    907a:	b95a      	cbnz	r2, 9094 <find_start_code_len@@Base+0x20>
    907c:	7883      	ldrb	r3, [r0, #2]
    907e:	2b01      	cmp	r3, #1
    9080:	d00c      	beq.n	909c <find_start_code_len@@Base+0x28>
    9082:	b94b      	cbnz	r3, 9098 <find_start_code_len@@Base+0x24>
    9084:	78c3      	ldrb	r3, [r0, #3]
    9086:	2b01      	cmp	r3, #1
    9088:	bf14      	ite	ne
    908a:	2000      	movne	r0, #0
    908c:	2004      	moveq	r0, #4
    908e:	4770      	bx	lr
    9090:	2000      	movs	r0, #0
    9092:	4770      	bx	lr
    9094:	4618      	mov	r0, r3
    9096:	4770      	bx	lr
    9098:	4610      	mov	r0, r2
    909a:	4770      	bx	lr
    909c:	2003      	movs	r0, #3
    909e:	4770      	bx	lr

000090a0 <Box_write_header@@Base>:
    90a0:	b538      	push	{r3, r4, r5, lr}
    90a2:	4604      	mov	r4, r0
    90a4:	688b      	ldr	r3, [r1, #8]
    90a6:	460d      	mov	r5, r1
    90a8:	4608      	mov	r0, r1
    90aa:	6821      	ldr	r1, [r4, #0]
    90ac:	60a3      	str	r3, [r4, #8]
    90ae:	f7fc ee0a 	blx	5cc4 <Bitstream_write_32bit@plt>
    90b2:	4628      	mov	r0, r5
    90b4:	6861      	ldr	r1, [r4, #4]
    90b6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    90ba:	f00a bf2b 	b.w	13f14 <__aeabi_llsl@@Base+0x78>
    90be:	bf00      	nop

000090c0 <Box_parse_header@@Base>:
    90c0:	b538      	push	{r3, r4, r5, lr}
    90c2:	684c      	ldr	r4, [r1, #4]
    90c4:	688b      	ldr	r3, [r1, #8]
    90c6:	1ae4      	subs	r4, r4, r3
    90c8:	2c07      	cmp	r4, #7
    90ca:	d801      	bhi.n	90d0 <Box_parse_header@@Base+0x10>
    90cc:	2001      	movs	r0, #1
    90ce:	bd38      	pop	{r3, r4, r5, pc}
    90d0:	4605      	mov	r5, r0
    90d2:	4608      	mov	r0, r1
    90d4:	460c      	mov	r4, r1
    90d6:	f7fc ed3c 	blx	5b50 <Bitstream_read_32bit@plt>
    90da:	6028      	str	r0, [r5, #0]
    90dc:	4620      	mov	r0, r4
    90de:	f7fc ed38 	blx	5b50 <Bitstream_read_32bit@plt>
    90e2:	682b      	ldr	r3, [r5, #0]
    90e4:	2b00      	cmp	r3, #0
    90e6:	6068      	str	r0, [r5, #4]
    90e8:	ddf0      	ble.n	90cc <Box_parse_header@@Base+0xc>
    90ea:	6860      	ldr	r0, [r4, #4]
    90ec:	4283      	cmp	r3, r0
    90ee:	bf34      	ite	cc
    90f0:	2000      	movcc	r0, #0
    90f2:	2001      	movcs	r0, #1
    90f4:	bd38      	pop	{r3, r4, r5, pc}
    90f6:	bf00      	nop

000090f8 <Box_update_size@@Base>:
    90f8:	6882      	ldr	r2, [r0, #8]
    90fa:	688b      	ldr	r3, [r1, #8]
    90fc:	b470      	push	{r4, r5, r6}
    90fe:	1a9b      	subs	r3, r3, r2
    9100:	680c      	ldr	r4, [r1, #0]
    9102:	0e1d      	lsrs	r5, r3, #24
    9104:	54a5      	strb	r5, [r4, r2]
    9106:	141d      	asrs	r5, r3, #16
    9108:	680e      	ldr	r6, [r1, #0]
    910a:	121c      	asrs	r4, r3, #8
    910c:	6882      	ldr	r2, [r0, #8]
    910e:	4432      	add	r2, r6
    9110:	7055      	strb	r5, [r2, #1]
    9112:	680d      	ldr	r5, [r1, #0]
    9114:	6882      	ldr	r2, [r0, #8]
    9116:	442a      	add	r2, r5
    9118:	7094      	strb	r4, [r2, #2]
    911a:	6809      	ldr	r1, [r1, #0]
    911c:	6882      	ldr	r2, [r0, #8]
    911e:	440a      	add	r2, r1
    9120:	70d3      	strb	r3, [r2, #3]
    9122:	bc70      	pop	{r4, r5, r6}
    9124:	4770      	bx	lr
    9126:	bf00      	nop

00009128 <string_type_to_int32@@Base>:
    9128:	b510      	push	{r4, lr}
    912a:	4604      	mov	r4, r0
    912c:	f7fc edb8 	blx	5ca0 <strlen@plt>
    9130:	2803      	cmp	r0, #3
    9132:	bfc1      	itttt	gt
    9134:	7863      	ldrbgt	r3, [r4, #1]
    9136:	7821      	ldrbgt	r1, [r4, #0]
    9138:	78a0      	ldrbgt	r0, [r4, #2]
    913a:	041b      	lslgt	r3, r3, #16
    913c:	bfc1      	itttt	gt
    913e:	78e2      	ldrbgt	r2, [r4, #3]
    9140:	ea43 6301 	orrgt.w	r3, r3, r1, lsl #24
    9144:	4313      	orrgt	r3, r2
    9146:	ea43 2000 	orrgt.w	r0, r3, r0, lsl #8
    914a:	bfd8      	it	le
    914c:	f04f 30ff 	movle.w	r0, #4294967295	; 0xffffffff
    9150:	bd10      	pop	{r4, pc}
    9152:	bf00      	nop

00009154 <readExpGolombCode@@Base>:
    9154:	b538      	push	{r3, r4, r5, lr}
    9156:	4605      	mov	r5, r0
    9158:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
    915c:	4628      	mov	r0, r5
    915e:	2101      	movs	r1, #1
    9160:	f7fc edb6 	blx	5cd0 <Bitstream_read_bits@plt>
    9164:	3401      	adds	r4, #1
    9166:	2800      	cmp	r0, #0
    9168:	d0f8      	beq.n	915c <readExpGolombCode@@Base+0x8>
    916a:	4628      	mov	r0, r5
    916c:	4621      	mov	r1, r4
    916e:	f7fc edb0 	blx	5cd0 <Bitstream_read_bits@plt>
    9172:	2301      	movs	r3, #1
    9174:	40a3      	lsls	r3, r4
    9176:	3801      	subs	r0, #1
    9178:	4418      	add	r0, r3
    917a:	bd38      	pop	{r3, r4, r5, pc}

0000917c <Bytevc1DecoderConfigurationRecord_init@@Base>:
    917c:	b510      	push	{r4, lr}
    917e:	2100      	movs	r1, #0
    9180:	4604      	mov	r4, r0
    9182:	2278      	movs	r2, #120	; 0x78
    9184:	f7fc ecc0 	blx	5b08 <memset@plt>
    9188:	2103      	movs	r1, #3
    918a:	f104 0060 	add.w	r0, r4, #96	; 0x60
    918e:	70a1      	strb	r1, [r4, #2]
    9190:	7061      	strb	r1, [r4, #1]
    9192:	2221      	movs	r2, #33	; 0x21
    9194:	2322      	movs	r3, #34	; 0x22
    9196:	64a2      	str	r2, [r4, #72]	; 0x48
    9198:	65e3      	str	r3, [r4, #92]	; 0x5c
    919a:	2220      	movs	r2, #32
    919c:	2301      	movs	r3, #1
    919e:	6722      	str	r2, [r4, #112]	; 0x70
    91a0:	7023      	strb	r3, [r4, #0]
    91a2:	2200      	movs	r2, #0
    91a4:	f884 3029 	strb.w	r3, [r4, #41]	; 0x29
    91a8:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
    91ac:	84e2      	strh	r2, [r4, #38]	; 0x26
    91ae:	f884 2028 	strb.w	r2, [r4, #40]	; 0x28
    91b2:	f7fc ec68 	blx	5a84 <Bitstream_init@plt>
    91b6:	f104 0038 	add.w	r0, r4, #56	; 0x38
    91ba:	f7fc ec64 	blx	5a84 <Bitstream_init@plt>
    91be:	f104 004c 	add.w	r0, r4, #76	; 0x4c
    91c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    91c6:	f00a bead 	b.w	13f24 <__aeabi_llsl@@Base+0x88>
    91ca:	bf00      	nop

000091cc <Bytevc1DecoderConfigurationRecord_release@@Base>:
    91cc:	b510      	push	{r4, lr}
    91ce:	4604      	mov	r4, r0
    91d0:	3038      	adds	r0, #56	; 0x38
    91d2:	f7fc ed2a 	blx	5c28 <Bitstream_release@plt>
    91d6:	f104 004c 	add.w	r0, r4, #76	; 0x4c
    91da:	f7fc ed26 	blx	5c28 <Bitstream_release@plt>
    91de:	f104 0060 	add.w	r0, r4, #96	; 0x60
    91e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    91e6:	f00a bea5 	b.w	13f34 <__aeabi_llsl@@Base+0x98>
    91ea:	bf00      	nop

000091ec <Bytevc1DecoderConfigurationRecord_parse_pps@@Base>:
    91ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    91ee:	2300      	movs	r3, #0
    91f0:	460c      	mov	r4, r1
    91f2:	684d      	ldr	r5, [r1, #4]
    91f4:	4607      	mov	r7, r0
    91f6:	4619      	mov	r1, r3
    91f8:	e015      	b.n	9226 <Bytevc1DecoderConfigurationRecord_parse_pps@@Base+0x3a>
    91fa:	6822      	ldr	r2, [r4, #0]
    91fc:	2b01      	cmp	r3, #1
    91fe:	eb02 0e03 	add.w	lr, r2, r3
    9202:	5cd0      	ldrb	r0, [r2, r3]
    9204:	f103 0301 	add.w	r3, r3, #1
    9208:	f1a0 0603 	sub.w	r6, r0, #3
    920c:	fab6 f686 	clz	r6, r6
    9210:	ea4f 1656 	mov.w	r6, r6, lsr #5
    9214:	bfd8      	it	le
    9216:	2600      	movle	r6, #0
    9218:	b116      	cbz	r6, 9220 <Bytevc1DecoderConfigurationRecord_parse_pps@@Base+0x34>
    921a:	f81e 6c01 	ldrb.w	r6, [lr, #-1]
    921e:	b116      	cbz	r6, 9226 <Bytevc1DecoderConfigurationRecord_parse_pps@@Base+0x3a>
    9220:	5450      	strb	r0, [r2, r1]
    9222:	3101      	adds	r1, #1
    9224:	6865      	ldr	r5, [r4, #4]
    9226:	42ab      	cmp	r3, r5
    9228:	d3e7      	bcc.n	91fa <Bytevc1DecoderConfigurationRecord_parse_pps@@Base+0xe>
    922a:	6061      	str	r1, [r4, #4]
    922c:	4620      	mov	r0, r4
    922e:	2101      	movs	r1, #1
    9230:	f7fc ed4e 	blx	5cd0 <Bitstream_read_bits@plt>
    9234:	2106      	movs	r1, #6
    9236:	4620      	mov	r0, r4
    9238:	f7fc ed4a 	blx	5cd0 <Bitstream_read_bits@plt>
    923c:	2106      	movs	r1, #6
    923e:	4605      	mov	r5, r0
    9240:	4620      	mov	r0, r4
    9242:	f7fc ed46 	blx	5cd0 <Bitstream_read_bits@plt>
    9246:	4620      	mov	r0, r4
    9248:	2103      	movs	r1, #3
    924a:	f7fc ed42 	blx	5cd0 <Bitstream_read_bits@plt>
    924e:	2d22      	cmp	r5, #34	; 0x22
    9250:	bf18      	it	ne
    9252:	2301      	movne	r3, #1
    9254:	d001      	beq.n	925a <Bytevc1DecoderConfigurationRecord_parse_pps@@Base+0x6e>
    9256:	4618      	mov	r0, r3
    9258:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    925a:	4620      	mov	r0, r4
    925c:	f7fc ed3e 	blx	5cdc <readExpGolombCode@plt>
    9260:	f887 0076 	strb.w	r0, [r7, #118]	; 0x76
    9264:	4620      	mov	r0, r4
    9266:	f7fc ed3a 	blx	5cdc <readExpGolombCode@plt>
    926a:	2101      	movs	r1, #1
    926c:	f887 0077 	strb.w	r0, [r7, #119]	; 0x77
    9270:	4620      	mov	r0, r4
    9272:	f7fc ed2e 	blx	5cd0 <Bitstream_read_bits@plt>
    9276:	2101      	movs	r1, #1
    9278:	f887 002b 	strb.w	r0, [r7, #43]	; 0x2b
    927c:	4620      	mov	r0, r4
    927e:	f7fc ed28 	blx	5cd0 <Bitstream_read_bits@plt>
    9282:	4620      	mov	r0, r4
    9284:	2103      	movs	r1, #3
    9286:	f7fc ed24 	blx	5cd0 <Bitstream_read_bits@plt>
    928a:	2300      	movs	r3, #0
    928c:	f887 002c 	strb.w	r0, [r7, #44]	; 0x2c
    9290:	4618      	mov	r0, r3
    9292:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00009294 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base>:
    9294:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    9298:	b092      	sub	sp, #72	; 0x48
    929a:	f8df 92b4 	ldr.w	r9, [pc, #692]	; 9550 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x2bc>
    929e:	2300      	movs	r3, #0
    92a0:	460d      	mov	r5, r1
    92a2:	684c      	ldr	r4, [r1, #4]
    92a4:	44f9      	add	r9, pc
    92a6:	f8d9 9000 	ldr.w	r9, [r9]
    92aa:	4607      	mov	r7, r0
    92ac:	4619      	mov	r1, r3
    92ae:	f8d9 2000 	ldr.w	r2, [r9]
    92b2:	9211      	str	r2, [sp, #68]	; 0x44
    92b4:	e013      	b.n	92de <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x4a>
    92b6:	682a      	ldr	r2, [r5, #0]
    92b8:	2b01      	cmp	r3, #1
    92ba:	5cd0      	ldrb	r0, [r2, r3]
    92bc:	f1a0 0603 	sub.w	r6, r0, #3
    92c0:	fab6 f686 	clz	r6, r6
    92c4:	ea4f 1656 	mov.w	r6, r6, lsr #5
    92c8:	bfd8      	it	le
    92ca:	2600      	movle	r6, #0
    92cc:	b11e      	cbz	r6, 92d6 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x42>
    92ce:	18d6      	adds	r6, r2, r3
    92d0:	f816 6c01 	ldrb.w	r6, [r6, #-1]
    92d4:	b116      	cbz	r6, 92dc <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x48>
    92d6:	5450      	strb	r0, [r2, r1]
    92d8:	3101      	adds	r1, #1
    92da:	686c      	ldr	r4, [r5, #4]
    92dc:	3301      	adds	r3, #1
    92de:	42a3      	cmp	r3, r4
    92e0:	d3e9      	bcc.n	92b6 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x22>
    92e2:	6069      	str	r1, [r5, #4]
    92e4:	4628      	mov	r0, r5
    92e6:	2101      	movs	r1, #1
    92e8:	f7fc ecf2 	blx	5cd0 <Bitstream_read_bits@plt>
    92ec:	4628      	mov	r0, r5
    92ee:	2106      	movs	r1, #6
    92f0:	f7fc ecee 	blx	5cd0 <Bitstream_read_bits@plt>
    92f4:	2106      	movs	r1, #6
    92f6:	4604      	mov	r4, r0
    92f8:	4628      	mov	r0, r5
    92fa:	f7fc ecea 	blx	5cd0 <Bitstream_read_bits@plt>
    92fe:	4628      	mov	r0, r5
    9300:	2103      	movs	r1, #3
    9302:	f7fc ece6 	blx	5cd0 <Bitstream_read_bits@plt>
    9306:	2c21      	cmp	r4, #33	; 0x21
    9308:	bf18      	it	ne
    930a:	2501      	movne	r5, #1
    930c:	d009      	beq.n	9322 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x8e>
    930e:	9a11      	ldr	r2, [sp, #68]	; 0x44
    9310:	4628      	mov	r0, r5
    9312:	f8d9 3000 	ldr.w	r3, [r9]
    9316:	429a      	cmp	r2, r3
    9318:	f040 8118 	bne.w	954c <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x2b8>
    931c:	b012      	add	sp, #72	; 0x48
    931e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    9322:	2104      	movs	r1, #4
    9324:	4628      	mov	r0, r5
    9326:	f7fc ecd4 	blx	5cd0 <Bitstream_read_bits@plt>
    932a:	2103      	movs	r1, #3
    932c:	f107 040b 	add.w	r4, r7, #11
    9330:	f107 0611 	add.w	r6, r7, #17
    9334:	70f8      	strb	r0, [r7, #3]
    9336:	4628      	mov	r0, r5
    9338:	f7fc ecca 	blx	5cd0 <Bitstream_read_bits@plt>
    933c:	2101      	movs	r1, #1
    933e:	1843      	adds	r3, r0, r1
    9340:	4628      	mov	r0, r5
    9342:	f887 3029 	strb.w	r3, [r7, #41]	; 0x29
    9346:	f7fc ecc4 	blx	5cd0 <Bitstream_read_bits@plt>
    934a:	2102      	movs	r1, #2
    934c:	f887 002a 	strb.w	r0, [r7, #42]	; 0x2a
    9350:	4628      	mov	r0, r5
    9352:	f7fc ecbe 	blx	5cd0 <Bitstream_read_bits@plt>
    9356:	2101      	movs	r1, #1
    9358:	7138      	strb	r0, [r7, #4]
    935a:	4628      	mov	r0, r5
    935c:	f7fc ecb8 	blx	5cd0 <Bitstream_read_bits@plt>
    9360:	2105      	movs	r1, #5
    9362:	7178      	strb	r0, [r7, #5]
    9364:	4628      	mov	r0, r5
    9366:	f7fc ecb4 	blx	5cd0 <Bitstream_read_bits@plt>
    936a:	71b8      	strb	r0, [r7, #6]
    936c:	4628      	mov	r0, r5
    936e:	f7fc ebf0 	blx	5b50 <Bitstream_read_32bit@plt>
    9372:	60b8      	str	r0, [r7, #8]
    9374:	4628      	mov	r0, r5
    9376:	f7fc ec8e 	blx	5c94 <Bitstream_read_byte@plt>
    937a:	f804 0f01 	strb.w	r0, [r4, #1]!
    937e:	42b4      	cmp	r4, r6
    9380:	d1f8      	bne.n	9374 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0xe0>
    9382:	4628      	mov	r0, r5
    9384:	f7fc ec86 	blx	5c94 <Bitstream_read_byte@plt>
    9388:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    938c:	1e5c      	subs	r4, r3, #1
    938e:	2c00      	cmp	r4, #0
    9390:	74b8      	strb	r0, [r7, #18]
    9392:	f340 80d7 	ble.w	9544 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x2b0>
    9396:	f10d 0a04 	add.w	sl, sp, #4
    939a:	f10d 0824 	add.w	r8, sp, #36	; 0x24
    939e:	2600      	movs	r6, #0
    93a0:	2101      	movs	r1, #1
    93a2:	4628      	mov	r0, r5
    93a4:	f7fc ec94 	blx	5cd0 <Bitstream_read_bits@plt>
    93a8:	2101      	movs	r1, #1
    93aa:	440e      	add	r6, r1
    93ac:	f84a 0b04 	str.w	r0, [sl], #4
    93b0:	4628      	mov	r0, r5
    93b2:	f7fc ec8e 	blx	5cd0 <Bitstream_read_bits@plt>
    93b6:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    93ba:	1e5c      	subs	r4, r3, #1
    93bc:	42b4      	cmp	r4, r6
    93be:	f848 0b04 	str.w	r0, [r8], #4
    93c2:	dced      	bgt.n	93a0 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x10c>
    93c4:	2b01      	cmp	r3, #1
    93c6:	dd0a      	ble.n	93de <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x14a>
    93c8:	2c08      	cmp	r4, #8
    93ca:	d008      	beq.n	93de <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x14a>
    93cc:	3401      	adds	r4, #1
    93ce:	4628      	mov	r0, r5
    93d0:	2102      	movs	r1, #2
    93d2:	f7fc ec7e 	blx	5cd0 <Bitstream_read_bits@plt>
    93d6:	2c08      	cmp	r4, #8
    93d8:	d1f8      	bne.n	93cc <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x138>
    93da:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    93de:	2b01      	cmp	r3, #1
    93e0:	bf1e      	ittt	ne
    93e2:	f10d 0a04 	addne.w	sl, sp, #4
    93e6:	f10d 0824 	addne.w	r8, sp, #36	; 0x24
    93ea:	2600      	movne	r6, #0
    93ec:	d109      	bne.n	9402 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x16e>
    93ee:	e034      	b.n	945a <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x1c6>
    93f0:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
    93f4:	bb3b      	cbnz	r3, 9446 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x1b2>
    93f6:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    93fa:	3601      	adds	r6, #1
    93fc:	3b01      	subs	r3, #1
    93fe:	42b3      	cmp	r3, r6
    9400:	d92b      	bls.n	945a <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x1c6>
    9402:	f85a 3026 	ldr.w	r3, [sl, r6, lsl #2]
    9406:	2b00      	cmp	r3, #0
    9408:	d0f2      	beq.n	93f0 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x15c>
    940a:	2102      	movs	r1, #2
    940c:	4628      	mov	r0, r5
    940e:	f7fc ec60 	blx	5cd0 <Bitstream_read_bits@plt>
    9412:	2101      	movs	r1, #1
    9414:	4628      	mov	r0, r5
    9416:	2420      	movs	r4, #32
    9418:	f7fc ec5a 	blx	5cd0 <Bitstream_read_bits@plt>
    941c:	4628      	mov	r0, r5
    941e:	2105      	movs	r1, #5
    9420:	f7fc ec56 	blx	5cd0 <Bitstream_read_bits@plt>
    9424:	4628      	mov	r0, r5
    9426:	2101      	movs	r1, #1
    9428:	f7fc ec52 	blx	5cd0 <Bitstream_read_bits@plt>
    942c:	3c01      	subs	r4, #1
    942e:	d1f9      	bne.n	9424 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x190>
    9430:	2406      	movs	r4, #6
    9432:	4628      	mov	r0, r5
    9434:	2108      	movs	r1, #8
    9436:	f7fc ec4c 	blx	5cd0 <Bitstream_read_bits@plt>
    943a:	3c01      	subs	r4, #1
    943c:	d1f9      	bne.n	9432 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x19e>
    943e:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
    9442:	2b00      	cmp	r3, #0
    9444:	d0d7      	beq.n	93f6 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x162>
    9446:	4628      	mov	r0, r5
    9448:	2108      	movs	r1, #8
    944a:	f7fc ec42 	blx	5cd0 <Bitstream_read_bits@plt>
    944e:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    9452:	3601      	adds	r6, #1
    9454:	3b01      	subs	r3, #1
    9456:	42b3      	cmp	r3, r6
    9458:	d8d3      	bhi.n	9402 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x16e>
    945a:	4628      	mov	r0, r5
    945c:	f7fc ec3e 	blx	5cdc <readExpGolombCode@plt>
    9460:	f887 0075 	strb.w	r0, [r7, #117]	; 0x75
    9464:	4628      	mov	r0, r5
    9466:	f7fc ec3a 	blx	5cdc <readExpGolombCode@plt>
    946a:	b2c0      	uxtb	r0, r0
    946c:	75f8      	strb	r0, [r7, #23]
    946e:	2803      	cmp	r0, #3
    9470:	d063      	beq.n	953a <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x2a6>
    9472:	4628      	mov	r0, r5
    9474:	f7fc ec32 	blx	5cdc <readExpGolombCode@plt>
    9478:	8338      	strh	r0, [r7, #24]
    947a:	4628      	mov	r0, r5
    947c:	f7fc ec2e 	blx	5cdc <readExpGolombCode@plt>
    9480:	2101      	movs	r1, #1
    9482:	8378      	strh	r0, [r7, #26]
    9484:	4628      	mov	r0, r5
    9486:	f7fc ec24 	blx	5cd0 <Bitstream_read_bits@plt>
    948a:	2800      	cmp	r0, #0
    948c:	d144      	bne.n	9518 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x284>
    948e:	efc0 0010 	vmov.i32	d16, #0	; 0x00000000
    9492:	f107 031c 	add.w	r3, r7, #28
    9496:	f943 074f 	vst1.16	{d16}, [r3]
    949a:	4628      	mov	r0, r5
    949c:	2400      	movs	r4, #0
    949e:	f7fc ec1e 	blx	5cdc <readExpGolombCode@plt>
    94a2:	f887 0024 	strb.w	r0, [r7, #36]	; 0x24
    94a6:	4628      	mov	r0, r5
    94a8:	f7fc ec18 	blx	5cdc <readExpGolombCode@plt>
    94ac:	f887 0025 	strb.w	r0, [r7, #37]	; 0x25
    94b0:	4628      	mov	r0, r5
    94b2:	f7fc ec14 	blx	5cdc <readExpGolombCode@plt>
    94b6:	4628      	mov	r0, r5
    94b8:	2101      	movs	r1, #1
    94ba:	f7fc ec0a 	blx	5cd0 <Bitstream_read_bits@plt>
    94be:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    94c2:	b900      	cbnz	r0, 94c6 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x232>
    94c4:	1e5c      	subs	r4, r3, #1
    94c6:	429c      	cmp	r4, r3
    94c8:	da0d      	bge.n	94e6 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x252>
    94ca:	4628      	mov	r0, r5
    94cc:	3401      	adds	r4, #1
    94ce:	f7fc ec06 	blx	5cdc <readExpGolombCode@plt>
    94d2:	4628      	mov	r0, r5
    94d4:	f7fc ec02 	blx	5cdc <readExpGolombCode@plt>
    94d8:	4628      	mov	r0, r5
    94da:	f7fc ec00 	blx	5cdc <readExpGolombCode@plt>
    94de:	f897 3029 	ldrb.w	r3, [r7, #41]	; 0x29
    94e2:	42a3      	cmp	r3, r4
    94e4:	dcf1      	bgt.n	94ca <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x236>
    94e6:	4628      	mov	r0, r5
    94e8:	2600      	movs	r6, #0
    94ea:	f7fc ebf8 	blx	5cdc <readExpGolombCode@plt>
    94ee:	4604      	mov	r4, r0
    94f0:	4628      	mov	r0, r5
    94f2:	f7fc ebf4 	blx	5cdc <readExpGolombCode@plt>
    94f6:	2101      	movs	r1, #1
    94f8:	8b3a      	ldrh	r2, [r7, #24]
    94fa:	4635      	mov	r5, r6
    94fc:	8b7b      	ldrh	r3, [r7, #26]
    94fe:	82be      	strh	r6, [r7, #20]
    9500:	75be      	strb	r6, [r7, #22]
    9502:	4420      	add	r0, r4
    9504:	4081      	lsls	r1, r0
    9506:	440a      	add	r2, r1
    9508:	440b      	add	r3, r1
    950a:	3a01      	subs	r2, #1
    950c:	3b01      	subs	r3, #1
    950e:	4102      	asrs	r2, r0
    9510:	4103      	asrs	r3, r0
    9512:	633a      	str	r2, [r7, #48]	; 0x30
    9514:	637b      	str	r3, [r7, #52]	; 0x34
    9516:	e6fa      	b.n	930e <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x7a>
    9518:	4628      	mov	r0, r5
    951a:	f7fc ebe0 	blx	5cdc <readExpGolombCode@plt>
    951e:	83b8      	strh	r0, [r7, #28]
    9520:	4628      	mov	r0, r5
    9522:	f7fc ebdc 	blx	5cdc <readExpGolombCode@plt>
    9526:	83f8      	strh	r0, [r7, #30]
    9528:	4628      	mov	r0, r5
    952a:	f7fc ebd8 	blx	5cdc <readExpGolombCode@plt>
    952e:	8438      	strh	r0, [r7, #32]
    9530:	4628      	mov	r0, r5
    9532:	f7fc ebd4 	blx	5cdc <readExpGolombCode@plt>
    9536:	8478      	strh	r0, [r7, #34]	; 0x22
    9538:	e7af      	b.n	949a <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x206>
    953a:	4628      	mov	r0, r5
    953c:	2101      	movs	r1, #1
    953e:	f7fc ebc8 	blx	5cd0 <Bitstream_read_bits@plt>
    9542:	e796      	b.n	9472 <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x1de>
    9544:	2b01      	cmp	r3, #1
    9546:	f73f af41 	bgt.w	93cc <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x138>
    954a:	e748      	b.n	93de <Bytevc1DecoderConfigurationRecord_parse_sps@@Base+0x14a>
    954c:	f7fc ea5e 	blx	5a0c <__stack_chk_fail@plt>
    9550:	d818      	bhi.n	9584 <Bytevc1ConfigurationBox_write_box@@Base+0x8>
	...

00009554 <Bytevc1ConfigurationBox_init@@Base>:
    9554:	b510      	push	{r4, lr}
    9556:	4604      	mov	r4, r0
    9558:	4805      	ldr	r0, [pc, #20]	; (9570 <Bytevc1ConfigurationBox_init@@Base+0x1c>)
    955a:	4478      	add	r0, pc
    955c:	f7fc eb70 	blx	5c40 <string_type_to_int32@plt>
    9560:	6060      	str	r0, [r4, #4]
    9562:	f104 000c 	add.w	r0, r4, #12
    9566:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    956a:	f00a bceb 	b.w	13f44 <__aeabi_llsl@@Base+0xa8>
    956e:	bf00      	nop
    9570:	b74a      			; <UNDEFINED> instruction: 0xb74a
	...

00009574 <Bytevc1ConfigurationBox_release@@Base>:
    9574:	300c      	adds	r0, #12
    9576:	f00a bced 	b.w	13f54 <__aeabi_llsl@@Base+0xb8>
    957a:	bf00      	nop

0000957c <Bytevc1ConfigurationBox_write_box@@Base>:
    957c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    9580:	b085      	sub	sp, #20
    9582:	f8df 8184 	ldr.w	r8, [pc, #388]	; 9708 <Bytevc1ConfigurationBox_write_box@@Base+0x18c>
    9586:	4605      	mov	r5, r0
    9588:	460c      	mov	r4, r1
    958a:	f100 0617 	add.w	r6, r0, #23
    958e:	44f8      	add	r8, pc
    9590:	f8d8 8000 	ldr.w	r8, [r8]
    9594:	f100 071d 	add.w	r7, r0, #29
    9598:	f8d8 3000 	ldr.w	r3, [r8]
    959c:	9303      	str	r3, [sp, #12]
    959e:	f7fc ebb0 	blx	5d00 <Box_write_header@plt>
    95a2:	7b29      	ldrb	r1, [r5, #12]
    95a4:	2208      	movs	r2, #8
    95a6:	4620      	mov	r0, r4
    95a8:	f7fc ebb0 	blx	5d0c <Bitstream_write_bits@plt>
    95ac:	7c29      	ldrb	r1, [r5, #16]
    95ae:	2202      	movs	r2, #2
    95b0:	4620      	mov	r0, r4
    95b2:	f7fc ebac 	blx	5d0c <Bitstream_write_bits@plt>
    95b6:	7c69      	ldrb	r1, [r5, #17]
    95b8:	2201      	movs	r2, #1
    95ba:	4620      	mov	r0, r4
    95bc:	f7fc eba6 	blx	5d0c <Bitstream_write_bits@plt>
    95c0:	7ca9      	ldrb	r1, [r5, #18]
    95c2:	4620      	mov	r0, r4
    95c4:	2205      	movs	r2, #5
    95c6:	f7fc eba2 	blx	5d0c <Bitstream_write_bits@plt>
    95ca:	4620      	mov	r0, r4
    95cc:	6969      	ldr	r1, [r5, #20]
    95ce:	f7fc eb7a 	blx	5cc4 <Bitstream_write_32bit@plt>
    95d2:	f816 1f01 	ldrb.w	r1, [r6, #1]!
    95d6:	4620      	mov	r0, r4
    95d8:	f7fc eb68 	blx	5cac <Bitstream_write_byte@plt>
    95dc:	42be      	cmp	r6, r7
    95de:	d1f8      	bne.n	95d2 <Bytevc1ConfigurationBox_write_box@@Base+0x56>
    95e0:	7fa9      	ldrb	r1, [r5, #30]
    95e2:	4620      	mov	r0, r4
    95e4:	f7fc eb62 	blx	5cac <Bitstream_write_byte@plt>
    95e8:	210f      	movs	r1, #15
    95ea:	2204      	movs	r2, #4
    95ec:	4620      	mov	r0, r4
    95ee:	f7fc eb8e 	blx	5d0c <Bitstream_write_bits@plt>
    95f2:	8c29      	ldrh	r1, [r5, #32]
    95f4:	220c      	movs	r2, #12
    95f6:	4620      	mov	r0, r4
    95f8:	f7fc eb88 	blx	5d0c <Bitstream_write_bits@plt>
    95fc:	213f      	movs	r1, #63	; 0x3f
    95fe:	2206      	movs	r2, #6
    9600:	4620      	mov	r0, r4
    9602:	f7fc eb84 	blx	5d0c <Bitstream_write_bits@plt>
    9606:	f895 1022 	ldrb.w	r1, [r5, #34]	; 0x22
    960a:	2202      	movs	r2, #2
    960c:	4620      	mov	r0, r4
    960e:	f7fc eb7e 	blx	5d0c <Bitstream_write_bits@plt>
    9612:	213f      	movs	r1, #63	; 0x3f
    9614:	2206      	movs	r2, #6
    9616:	4620      	mov	r0, r4
    9618:	f7fc eb78 	blx	5d0c <Bitstream_write_bits@plt>
    961c:	f895 1023 	ldrb.w	r1, [r5, #35]	; 0x23
    9620:	2202      	movs	r2, #2
    9622:	4620      	mov	r0, r4
    9624:	f7fc eb72 	blx	5d0c <Bitstream_write_bits@plt>
    9628:	211f      	movs	r1, #31
    962a:	2205      	movs	r2, #5
    962c:	4620      	mov	r0, r4
    962e:	f7fc eb6e 	blx	5d0c <Bitstream_write_bits@plt>
    9632:	f895 1030 	ldrb.w	r1, [r5, #48]	; 0x30
    9636:	2203      	movs	r2, #3
    9638:	4620      	mov	r0, r4
    963a:	f7fc eb68 	blx	5d0c <Bitstream_write_bits@plt>
    963e:	211f      	movs	r1, #31
    9640:	2205      	movs	r2, #5
    9642:	4620      	mov	r0, r4
    9644:	f7fc eb62 	blx	5d0c <Bitstream_write_bits@plt>
    9648:	2203      	movs	r2, #3
    964a:	f895 1031 	ldrb.w	r1, [r5, #49]	; 0x31
    964e:	4620      	mov	r0, r4
    9650:	f7fc eb5c 	blx	5d0c <Bitstream_write_bits@plt>
    9654:	8e69      	ldrh	r1, [r5, #50]	; 0x32
    9656:	4620      	mov	r0, r4
    9658:	46e9      	mov	r9, sp
    965a:	f7fc eb5e 	blx	5d18 <Bitstream_write_16bit@plt>
    965e:	f895 1034 	ldrb.w	r1, [r5, #52]	; 0x34
    9662:	2202      	movs	r2, #2
    9664:	4620      	mov	r0, r4
    9666:	f7fc eb52 	blx	5d0c <Bitstream_write_bits@plt>
    966a:	f895 1035 	ldrb.w	r1, [r5, #53]	; 0x35
    966e:	2203      	movs	r2, #3
    9670:	4620      	mov	r0, r4
    9672:	f7fc eb4c 	blx	5d0c <Bitstream_write_bits@plt>
    9676:	f895 1036 	ldrb.w	r1, [r5, #54]	; 0x36
    967a:	2201      	movs	r2, #1
    967c:	4620      	mov	r0, r4
    967e:	f7fc eb46 	blx	5d0c <Bitstream_write_bits@plt>
    9682:	2202      	movs	r2, #2
    9684:	7b69      	ldrb	r1, [r5, #13]
    9686:	4620      	mov	r0, r4
    9688:	f7fc eb40 	blx	5d0c <Bitstream_write_bits@plt>
    968c:	2700      	movs	r7, #0
    968e:	4620      	mov	r0, r4
    9690:	7ba9      	ldrb	r1, [r5, #14]
    9692:	f7fc eb0c 	blx	5cac <Bitstream_write_byte@plt>
    9696:	f105 0344 	add.w	r3, r5, #68	; 0x44
    969a:	f105 026c 	add.w	r2, r5, #108	; 0x6c
    969e:	e88d 000c 	stmia.w	sp, {r2, r3}
    96a2:	f105 0358 	add.w	r3, r5, #88	; 0x58
    96a6:	9302      	str	r3, [sp, #8]
    96a8:	2100      	movs	r1, #0
    96aa:	2201      	movs	r2, #1
    96ac:	4620      	mov	r0, r4
    96ae:	f7fc eb2e 	blx	5d0c <Bitstream_write_bits@plt>
    96b2:	2100      	movs	r1, #0
    96b4:	2201      	movs	r2, #1
    96b6:	4620      	mov	r0, r4
    96b8:	f7fc eb28 	blx	5d0c <Bitstream_write_bits@plt>
    96bc:	f859 6027 	ldr.w	r6, [r9, r7, lsl #2]
    96c0:	2206      	movs	r2, #6
    96c2:	4620      	mov	r0, r4
    96c4:	3701      	adds	r7, #1
    96c6:	6931      	ldr	r1, [r6, #16]
    96c8:	f7fc eb20 	blx	5d0c <Bitstream_write_bits@plt>
    96cc:	2101      	movs	r1, #1
    96ce:	4620      	mov	r0, r4
    96d0:	f7fc eb22 	blx	5d18 <Bitstream_write_16bit@plt>
    96d4:	68b1      	ldr	r1, [r6, #8]
    96d6:	4620      	mov	r0, r4
    96d8:	f7fc eb1e 	blx	5d18 <Bitstream_write_16bit@plt>
    96dc:	4620      	mov	r0, r4
    96de:	6831      	ldr	r1, [r6, #0]
    96e0:	68b2      	ldr	r2, [r6, #8]
    96e2:	f7fc eac0 	blx	5c64 <Bitstream_write_bytes@plt>
    96e6:	2f03      	cmp	r7, #3
    96e8:	d1de      	bne.n	96a8 <Bytevc1ConfigurationBox_write_box@@Base+0x12c>
    96ea:	9a03      	ldr	r2, [sp, #12]
    96ec:	f8d8 3000 	ldr.w	r3, [r8]
    96f0:	429a      	cmp	r2, r3
    96f2:	d106      	bne.n	9702 <Bytevc1ConfigurationBox_write_box@@Base+0x186>
    96f4:	4628      	mov	r0, r5
    96f6:	4621      	mov	r1, r4
    96f8:	b005      	add	sp, #20
    96fa:	e8bd 43f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, lr}
    96fe:	f00a bc31 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9702:	f7fc e984 	blx	5a0c <__stack_chk_fail@plt>
    9706:	bf00      	nop
    9708:	d52e      	bpl.n	9768 <Bytevc1ConfigurationBox_parse_box@@Base+0x5c>
	...

0000970c <Bytevc1ConfigurationBox_parse_box@@Base>:
    970c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9710:	b087      	sub	sp, #28
    9712:	f8df 9218 	ldr.w	r9, [pc, #536]	; 992c <Bytevc1ConfigurationBox_parse_box@@Base+0x220>
    9716:	460c      	mov	r4, r1
    9718:	f8d1 a008 	ldr.w	sl, [r1, #8]
    971c:	4605      	mov	r5, r0
    971e:	44f9      	add	r9, pc
    9720:	f8d9 9000 	ldr.w	r9, [r9]
    9724:	f8d9 3000 	ldr.w	r3, [r9]
    9728:	9305      	str	r3, [sp, #20]
    972a:	f7fc eb02 	blx	5d30 <Box_parse_header@plt>
    972e:	b148      	cbz	r0, 9744 <Bytevc1ConfigurationBox_parse_box@@Base+0x38>
    9730:	2001      	movs	r0, #1
    9732:	9a05      	ldr	r2, [sp, #20]
    9734:	f8d9 3000 	ldr.w	r3, [r9]
    9738:	429a      	cmp	r2, r3
    973a:	f040 80f4 	bne.w	9926 <Bytevc1ConfigurationBox_parse_box@@Base+0x21a>
    973e:	b007      	add	sp, #28
    9740:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9744:	2108      	movs	r1, #8
    9746:	4620      	mov	r0, r4
    9748:	f7fc eac2 	blx	5cd0 <Bitstream_read_bits@plt>
    974c:	2102      	movs	r1, #2
    974e:	f105 0617 	add.w	r6, r5, #23
    9752:	f105 071d 	add.w	r7, r5, #29
    9756:	7328      	strb	r0, [r5, #12]
    9758:	4620      	mov	r0, r4
    975a:	f7fc eaba 	blx	5cd0 <Bitstream_read_bits@plt>
    975e:	2101      	movs	r1, #1
    9760:	7428      	strb	r0, [r5, #16]
    9762:	4620      	mov	r0, r4
    9764:	f7fc eab4 	blx	5cd0 <Bitstream_read_bits@plt>
    9768:	2105      	movs	r1, #5
    976a:	7468      	strb	r0, [r5, #17]
    976c:	4620      	mov	r0, r4
    976e:	f7fc eab0 	blx	5cd0 <Bitstream_read_bits@plt>
    9772:	74a8      	strb	r0, [r5, #18]
    9774:	4620      	mov	r0, r4
    9776:	f7fc e9ec 	blx	5b50 <Bitstream_read_32bit@plt>
    977a:	6168      	str	r0, [r5, #20]
    977c:	4620      	mov	r0, r4
    977e:	f7fc ea8a 	blx	5c94 <Bitstream_read_byte@plt>
    9782:	f806 0f01 	strb.w	r0, [r6, #1]!
    9786:	42be      	cmp	r6, r7
    9788:	d1f8      	bne.n	977c <Bytevc1ConfigurationBox_parse_box@@Base+0x70>
    978a:	4620      	mov	r0, r4
    978c:	f7fc ea82 	blx	5c94 <Bitstream_read_byte@plt>
    9790:	2104      	movs	r1, #4
    9792:	77a8      	strb	r0, [r5, #30]
    9794:	4620      	mov	r0, r4
    9796:	f7fc ea9c 	blx	5cd0 <Bitstream_read_bits@plt>
    979a:	210c      	movs	r1, #12
    979c:	4620      	mov	r0, r4
    979e:	f7fc ea98 	blx	5cd0 <Bitstream_read_bits@plt>
    97a2:	2106      	movs	r1, #6
    97a4:	8428      	strh	r0, [r5, #32]
    97a6:	4620      	mov	r0, r4
    97a8:	f7fc ea92 	blx	5cd0 <Bitstream_read_bits@plt>
    97ac:	2102      	movs	r1, #2
    97ae:	4620      	mov	r0, r4
    97b0:	f7fc ea8e 	blx	5cd0 <Bitstream_read_bits@plt>
    97b4:	2106      	movs	r1, #6
    97b6:	f885 0022 	strb.w	r0, [r5, #34]	; 0x22
    97ba:	4620      	mov	r0, r4
    97bc:	f7fc ea88 	blx	5cd0 <Bitstream_read_bits@plt>
    97c0:	2102      	movs	r1, #2
    97c2:	4620      	mov	r0, r4
    97c4:	f7fc ea84 	blx	5cd0 <Bitstream_read_bits@plt>
    97c8:	2105      	movs	r1, #5
    97ca:	f885 0023 	strb.w	r0, [r5, #35]	; 0x23
    97ce:	4620      	mov	r0, r4
    97d0:	f7fc ea7e 	blx	5cd0 <Bitstream_read_bits@plt>
    97d4:	2103      	movs	r1, #3
    97d6:	4620      	mov	r0, r4
    97d8:	f7fc ea7a 	blx	5cd0 <Bitstream_read_bits@plt>
    97dc:	2105      	movs	r1, #5
    97de:	f885 0030 	strb.w	r0, [r5, #48]	; 0x30
    97e2:	4620      	mov	r0, r4
    97e4:	f7fc ea74 	blx	5cd0 <Bitstream_read_bits@plt>
    97e8:	2103      	movs	r1, #3
    97ea:	4620      	mov	r0, r4
    97ec:	f7fc ea70 	blx	5cd0 <Bitstream_read_bits@plt>
    97f0:	f885 0031 	strb.w	r0, [r5, #49]	; 0x31
    97f4:	4620      	mov	r0, r4
    97f6:	f7fc eaa2 	blx	5d3c <Bitstream_read_16bit@plt>
    97fa:	2102      	movs	r1, #2
    97fc:	8668      	strh	r0, [r5, #50]	; 0x32
    97fe:	4620      	mov	r0, r4
    9800:	f7fc ea66 	blx	5cd0 <Bitstream_read_bits@plt>
    9804:	2103      	movs	r1, #3
    9806:	f885 0034 	strb.w	r0, [r5, #52]	; 0x34
    980a:	4620      	mov	r0, r4
    980c:	f7fc ea60 	blx	5cd0 <Bitstream_read_bits@plt>
    9810:	2101      	movs	r1, #1
    9812:	f885 0035 	strb.w	r0, [r5, #53]	; 0x35
    9816:	4620      	mov	r0, r4
    9818:	f7fc ea5a 	blx	5cd0 <Bitstream_read_bits@plt>
    981c:	2102      	movs	r1, #2
    981e:	f885 0036 	strb.w	r0, [r5, #54]	; 0x36
    9822:	4620      	mov	r0, r4
    9824:	f7fc ea54 	blx	5cd0 <Bitstream_read_bits@plt>
    9828:	2108      	movs	r1, #8
    982a:	7368      	strb	r0, [r5, #13]
    982c:	4620      	mov	r0, r4
    982e:	f7fc ea50 	blx	5cd0 <Bitstream_read_bits@plt>
    9832:	f010 0fff 	tst.w	r0, #255	; 0xff
    9836:	73a8      	strb	r0, [r5, #14]
    9838:	d06c      	beq.n	9914 <Bytevc1ConfigurationBox_parse_box@@Base+0x208>
    983a:	68a3      	ldr	r3, [r4, #8]
    983c:	682a      	ldr	r2, [r5, #0]
    983e:	ebca 0303 	rsb	r3, sl, r3
    9842:	429a      	cmp	r2, r3
    9844:	f4ff af74 	bcc.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    9848:	f04f 0800 	mov.w	r8, #0
    984c:	ae01      	add	r6, sp, #4
    984e:	e016      	b.n	987e <Bytevc1ConfigurationBox_parse_box@@Base+0x172>
    9850:	2f21      	cmp	r7, #33	; 0x21
    9852:	d057      	beq.n	9904 <Bytevc1ConfigurationBox_parse_box@@Base+0x1f8>
    9854:	2f22      	cmp	r7, #34	; 0x22
    9856:	d151      	bne.n	98fc <Bytevc1ConfigurationBox_parse_box@@Base+0x1f0>
    9858:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
    985c:	f105 0e58 	add.w	lr, r5, #88	; 0x58
    9860:	66af      	str	r7, [r5, #104]	; 0x68
    9862:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
    9866:	f108 0801 	add.w	r8, r8, #1
    986a:	7bab      	ldrb	r3, [r5, #14]
    986c:	4543      	cmp	r3, r8
    986e:	dd51      	ble.n	9914 <Bytevc1ConfigurationBox_parse_box@@Base+0x208>
    9870:	68a3      	ldr	r3, [r4, #8]
    9872:	682a      	ldr	r2, [r5, #0]
    9874:	ebca 0303 	rsb	r3, sl, r3
    9878:	4293      	cmp	r3, r2
    987a:	f63f af59 	bhi.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    987e:	2101      	movs	r1, #1
    9880:	4620      	mov	r0, r4
    9882:	f7fc ea26 	blx	5cd0 <Bitstream_read_bits@plt>
    9886:	2101      	movs	r1, #1
    9888:	4620      	mov	r0, r4
    988a:	f7fc ea22 	blx	5cd0 <Bitstream_read_bits@plt>
    988e:	2106      	movs	r1, #6
    9890:	4620      	mov	r0, r4
    9892:	f7fc ea1e 	blx	5cd0 <Bitstream_read_bits@plt>
    9896:	4607      	mov	r7, r0
    9898:	4620      	mov	r0, r4
    989a:	f7fc ea50 	blx	5d3c <Bitstream_read_16bit@plt>
    989e:	4620      	mov	r0, r4
    98a0:	f7fc ea4c 	blx	5d3c <Bitstream_read_16bit@plt>
    98a4:	68a3      	ldr	r3, [r4, #8]
    98a6:	43c2      	mvns	r2, r0
    98a8:	429a      	cmp	r2, r3
    98aa:	4683      	mov	fp, r0
    98ac:	f4ff af40 	bcc.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    98b0:	6862      	ldr	r2, [r4, #4]
    98b2:	4290      	cmp	r0, r2
    98b4:	bf98      	it	ls
    98b6:	4293      	cmpls	r3, r2
    98b8:	f63f af3a 	bhi.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    98bc:	4403      	add	r3, r0
    98be:	429a      	cmp	r2, r3
    98c0:	f4ff af36 	bcc.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    98c4:	4630      	mov	r0, r6
    98c6:	4659      	mov	r1, fp
    98c8:	f7fc ea3e 	blx	5d48 <Bitstream_alloc@plt>
    98cc:	9b01      	ldr	r3, [sp, #4]
    98ce:	2b00      	cmp	r3, #0
    98d0:	f43f af2e 	beq.w	9730 <Bytevc1ConfigurationBox_parse_box@@Base+0x24>
    98d4:	68a3      	ldr	r3, [r4, #8]
    98d6:	4630      	mov	r0, r6
    98d8:	6821      	ldr	r1, [r4, #0]
    98da:	465a      	mov	r2, fp
    98dc:	4419      	add	r1, r3
    98de:	f7fc e9c2 	blx	5c64 <Bitstream_write_bytes@plt>
    98e2:	68a3      	ldr	r3, [r4, #8]
    98e4:	2f20      	cmp	r7, #32
    98e6:	445b      	add	r3, fp
    98e8:	60a3      	str	r3, [r4, #8]
    98ea:	d1b1      	bne.n	9850 <Bytevc1ConfigurationBox_parse_box@@Base+0x144>
    98ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
    98f0:	f105 0e6c 	add.w	lr, r5, #108	; 0x6c
    98f4:	67ef      	str	r7, [r5, #124]	; 0x7c
    98f6:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
    98fa:	e7b4      	b.n	9866 <Bytevc1ConfigurationBox_parse_box@@Base+0x15a>
    98fc:	4630      	mov	r0, r6
    98fe:	f7fc e994 	blx	5c28 <Bitstream_release@plt>
    9902:	e7b0      	b.n	9866 <Bytevc1ConfigurationBox_parse_box@@Base+0x15a>
    9904:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
    9908:	f105 0e44 	add.w	lr, r5, #68	; 0x44
    990c:	656f      	str	r7, [r5, #84]	; 0x54
    990e:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
    9912:	e7a8      	b.n	9866 <Bytevc1ConfigurationBox_parse_box@@Base+0x15a>
    9914:	68a3      	ldr	r3, [r4, #8]
    9916:	6828      	ldr	r0, [r5, #0]
    9918:	ebca 0a03 	rsb	sl, sl, r3
    991c:	ebba 0000 	subs.w	r0, sl, r0
    9920:	bf18      	it	ne
    9922:	2001      	movne	r0, #1
    9924:	e705      	b.n	9732 <Bytevc1ConfigurationBox_parse_box@@Base+0x26>
    9926:	f7fc e872 	blx	5a0c <__stack_chk_fail@plt>
    992a:	bf00      	nop
    992c:	d39e      	bcc.n	986c <Bytevc1ConfigurationBox_parse_box@@Base+0x160>
	...

00009930 <CleanAperture_init@@Base>:
    9930:	b510      	push	{r4, lr}
    9932:	4604      	mov	r4, r0
    9934:	4807      	ldr	r0, [pc, #28]	; (9954 <CleanAperture_init@@Base+0x24>)
    9936:	4478      	add	r0, pc
    9938:	f7fc e982 	blx	5c40 <string_type_to_int32@plt>
    993c:	2200      	movs	r2, #0
    993e:	2301      	movs	r3, #1
    9940:	6162      	str	r2, [r4, #20]
    9942:	60e2      	str	r2, [r4, #12]
    9944:	61e2      	str	r2, [r4, #28]
    9946:	6262      	str	r2, [r4, #36]	; 0x24
    9948:	61a3      	str	r3, [r4, #24]
    994a:	6123      	str	r3, [r4, #16]
    994c:	6223      	str	r3, [r4, #32]
    994e:	62a3      	str	r3, [r4, #40]	; 0x28
    9950:	6060      	str	r0, [r4, #4]
    9952:	bd10      	pop	{r4, pc}
    9954:	b376      	cbz	r6, 99b4 <CleanAperture_parse@@Base>
	...

00009958 <CleanAperture_release@@Base>:
    9958:	4770      	bx	lr
    995a:	bf00      	nop

0000995c <CleanAperture_write@@Base>:
    995c:	b538      	push	{r3, r4, r5, lr}
    995e:	4605      	mov	r5, r0
    9960:	460c      	mov	r4, r1
    9962:	f7fc e9ce 	blx	5d00 <Box_write_header@plt>
    9966:	68e9      	ldr	r1, [r5, #12]
    9968:	4620      	mov	r0, r4
    996a:	f7fc e9ac 	blx	5cc4 <Bitstream_write_32bit@plt>
    996e:	6929      	ldr	r1, [r5, #16]
    9970:	4620      	mov	r0, r4
    9972:	f7fc e9a8 	blx	5cc4 <Bitstream_write_32bit@plt>
    9976:	6969      	ldr	r1, [r5, #20]
    9978:	4620      	mov	r0, r4
    997a:	f7fc e9a4 	blx	5cc4 <Bitstream_write_32bit@plt>
    997e:	69a9      	ldr	r1, [r5, #24]
    9980:	4620      	mov	r0, r4
    9982:	f7fc e9a0 	blx	5cc4 <Bitstream_write_32bit@plt>
    9986:	69e9      	ldr	r1, [r5, #28]
    9988:	4620      	mov	r0, r4
    998a:	f7fc e99c 	blx	5cc4 <Bitstream_write_32bit@plt>
    998e:	6a29      	ldr	r1, [r5, #32]
    9990:	4620      	mov	r0, r4
    9992:	f7fc e998 	blx	5cc4 <Bitstream_write_32bit@plt>
    9996:	6a69      	ldr	r1, [r5, #36]	; 0x24
    9998:	4620      	mov	r0, r4
    999a:	f7fc e994 	blx	5cc4 <Bitstream_write_32bit@plt>
    999e:	6aa9      	ldr	r1, [r5, #40]	; 0x28
    99a0:	4620      	mov	r0, r4
    99a2:	f7fc e990 	blx	5cc4 <Bitstream_write_32bit@plt>
    99a6:	4628      	mov	r0, r5
    99a8:	4621      	mov	r1, r4
    99aa:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    99ae:	f00a bad9 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    99b2:	bf00      	nop

000099b4 <CleanAperture_parse@@Base>:
    99b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    99b6:	460c      	mov	r4, r1
    99b8:	4605      	mov	r5, r0
    99ba:	688f      	ldr	r7, [r1, #8]
    99bc:	f7fc e9b8 	blx	5d30 <Box_parse_header@plt>
    99c0:	4606      	mov	r6, r0
    99c2:	b110      	cbz	r0, 99ca <CleanAperture_parse@@Base+0x16>
    99c4:	2601      	movs	r6, #1
    99c6:	4630      	mov	r0, r6
    99c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    99ca:	4620      	mov	r0, r4
    99cc:	f7fc e8c0 	blx	5b50 <Bitstream_read_32bit@plt>
    99d0:	60e8      	str	r0, [r5, #12]
    99d2:	4620      	mov	r0, r4
    99d4:	f7fc e8bc 	blx	5b50 <Bitstream_read_32bit@plt>
    99d8:	6128      	str	r0, [r5, #16]
    99da:	4620      	mov	r0, r4
    99dc:	f7fc e8b8 	blx	5b50 <Bitstream_read_32bit@plt>
    99e0:	6168      	str	r0, [r5, #20]
    99e2:	4620      	mov	r0, r4
    99e4:	f7fc e8b4 	blx	5b50 <Bitstream_read_32bit@plt>
    99e8:	61a8      	str	r0, [r5, #24]
    99ea:	4620      	mov	r0, r4
    99ec:	f7fc e8b0 	blx	5b50 <Bitstream_read_32bit@plt>
    99f0:	61e8      	str	r0, [r5, #28]
    99f2:	4620      	mov	r0, r4
    99f4:	f7fc e8ac 	blx	5b50 <Bitstream_read_32bit@plt>
    99f8:	6228      	str	r0, [r5, #32]
    99fa:	4620      	mov	r0, r4
    99fc:	f7fc e8a8 	blx	5b50 <Bitstream_read_32bit@plt>
    9a00:	6268      	str	r0, [r5, #36]	; 0x24
    9a02:	4620      	mov	r0, r4
    9a04:	f7fc e8a4 	blx	5b50 <Bitstream_read_32bit@plt>
    9a08:	682b      	ldr	r3, [r5, #0]
    9a0a:	441f      	add	r7, r3
    9a0c:	62a8      	str	r0, [r5, #40]	; 0x28
    9a0e:	4630      	mov	r0, r6
    9a10:	60a7      	str	r7, [r4, #8]
    9a12:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00009a14 <ColourInformationBox_init@@Base>:
    9a14:	b510      	push	{r4, lr}
    9a16:	4604      	mov	r4, r0
    9a18:	4805      	ldr	r0, [pc, #20]	; (9a30 <ColourInformationBox_init@@Base+0x1c>)
    9a1a:	4478      	add	r0, pc
    9a1c:	f7fc e910 	blx	5c40 <string_type_to_int32@plt>
    9a20:	6060      	str	r0, [r4, #4]
    9a22:	f104 000c 	add.w	r0, r4, #12
    9a26:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    9a2a:	f00a ba7b 	b.w	13f24 <__aeabi_llsl@@Base+0x88>
    9a2e:	bf00      	nop
    9a30:	b29a      	uxth	r2, r3
	...

00009a34 <ColourInformationBox_release@@Base>:
    9a34:	4770      	bx	lr
    9a36:	bf00      	nop

00009a38 <ColourInformationBox_parse@@Base>:
    9a38:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    9a3c:	460c      	mov	r4, r1
    9a3e:	4606      	mov	r6, r0
    9a40:	688f      	ldr	r7, [r1, #8]
    9a42:	f7fc e976 	blx	5d30 <Box_parse_header@plt>
    9a46:	4605      	mov	r5, r0
    9a48:	b118      	cbz	r0, 9a52 <ColourInformationBox_parse@@Base+0x1a>
    9a4a:	2501      	movs	r5, #1
    9a4c:	4628      	mov	r0, r5
    9a4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    9a52:	4620      	mov	r0, r4
    9a54:	f7fc e87c 	blx	5b50 <Bitstream_read_32bit@plt>
    9a58:	4680      	mov	r8, r0
    9a5a:	4828      	ldr	r0, [pc, #160]	; (9afc <ColourInformationBox_parse@@Base+0xc4>)
    9a5c:	f8c6 801c 	str.w	r8, [r6, #28]
    9a60:	4478      	add	r0, pc
    9a62:	f7fc e8ee 	blx	5c40 <string_type_to_int32@plt>
    9a66:	4580      	cmp	r8, r0
    9a68:	d022      	beq.n	9ab0 <ColourInformationBox_parse@@Base+0x78>
    9a6a:	4825      	ldr	r0, [pc, #148]	; (9b00 <ColourInformationBox_parse@@Base+0xc8>)
    9a6c:	f8d6 801c 	ldr.w	r8, [r6, #28]
    9a70:	4478      	add	r0, pc
    9a72:	f7fc e8e6 	blx	5c40 <string_type_to_int32@plt>
    9a76:	4580      	cmp	r8, r0
    9a78:	d00d      	beq.n	9a96 <ColourInformationBox_parse@@Base+0x5e>
    9a7a:	4822      	ldr	r0, [pc, #136]	; (9b04 <ColourInformationBox_parse@@Base+0xcc>)
    9a7c:	f8d6 801c 	ldr.w	r8, [r6, #28]
    9a80:	4478      	add	r0, pc
    9a82:	f7fc e8de 	blx	5c40 <string_type_to_int32@plt>
    9a86:	4580      	cmp	r8, r0
    9a88:	d005      	beq.n	9a96 <ColourInformationBox_parse@@Base+0x5e>
    9a8a:	6833      	ldr	r3, [r6, #0]
    9a8c:	443b      	add	r3, r7
    9a8e:	4628      	mov	r0, r5
    9a90:	60a3      	str	r3, [r4, #8]
    9a92:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    9a96:	68a1      	ldr	r1, [r4, #8]
    9a98:	6833      	ldr	r3, [r6, #0]
    9a9a:	1a7a      	subs	r2, r7, r1
    9a9c:	441a      	add	r2, r3
    9a9e:	2a00      	cmp	r2, #0
    9aa0:	dd20      	ble.n	9ae4 <ColourInformationBox_parse@@Base+0xac>
    9aa2:	6820      	ldr	r0, [r4, #0]
    9aa4:	2300      	movs	r3, #0
    9aa6:	6132      	str	r2, [r6, #16]
    9aa8:	4401      	add	r1, r0
    9aaa:	60f1      	str	r1, [r6, #12]
    9aac:	7323      	strb	r3, [r4, #12]
    9aae:	e7ec      	b.n	9a8a <ColourInformationBox_parse@@Base+0x52>
    9ab0:	4620      	mov	r0, r4
    9ab2:	f7fc e944 	blx	5d3c <Bitstream_read_16bit@plt>
    9ab6:	8430      	strh	r0, [r6, #32]
    9ab8:	4620      	mov	r0, r4
    9aba:	f7fc e940 	blx	5d3c <Bitstream_read_16bit@plt>
    9abe:	8470      	strh	r0, [r6, #34]	; 0x22
    9ac0:	4620      	mov	r0, r4
    9ac2:	f7fc e93c 	blx	5d3c <Bitstream_read_16bit@plt>
    9ac6:	2101      	movs	r1, #1
    9ac8:	84b0      	strh	r0, [r6, #36]	; 0x24
    9aca:	4620      	mov	r0, r4
    9acc:	f7fc e900 	blx	5cd0 <Bitstream_read_bits@plt>
    9ad0:	2107      	movs	r1, #7
    9ad2:	f886 0026 	strb.w	r0, [r6, #38]	; 0x26
    9ad6:	4620      	mov	r0, r4
    9ad8:	f7fc e8fa 	blx	5cd0 <Bitstream_read_bits@plt>
    9adc:	6833      	ldr	r3, [r6, #0]
    9ade:	f886 0027 	strb.w	r0, [r6, #39]	; 0x27
    9ae2:	e7d3      	b.n	9a8c <ColourInformationBox_parse@@Base+0x54>
    9ae4:	43c8      	mvns	r0, r1
    9ae6:	4290      	cmp	r0, r2
    9ae8:	d8db      	bhi.n	9aa2 <ColourInformationBox_parse@@Base+0x6a>
    9aea:	6860      	ldr	r0, [r4, #4]
    9aec:	eb02 0e01 	add.w	lr, r2, r1
    9af0:	4586      	cmp	lr, r0
    9af2:	d3d6      	bcc.n	9aa2 <ColourInformationBox_parse@@Base+0x6a>
    9af4:	2200      	movs	r2, #0
    9af6:	60f2      	str	r2, [r6, #12]
    9af8:	6132      	str	r2, [r6, #16]
    9afa:	e7c7      	b.n	9a8c <ColourInformationBox_parse@@Base+0x54>
    9afc:	b25c      	sxtb	r4, r3
    9afe:	0000      	movs	r0, r0
    9b00:	b254      	sxtb	r4, r2
    9b02:	0000      	movs	r0, r0
    9b04:	b24c      	sxtb	r4, r1
	...

00009b08 <ColourInformationBox_write@@Base>:
    9b08:	b570      	push	{r4, r5, r6, lr}
    9b0a:	4604      	mov	r4, r0
    9b0c:	460d      	mov	r5, r1
    9b0e:	f7fc e8f8 	blx	5d00 <Box_write_header@plt>
    9b12:	69e1      	ldr	r1, [r4, #28]
    9b14:	4628      	mov	r0, r5
    9b16:	f7fc e8d6 	blx	5cc4 <Bitstream_write_32bit@plt>
    9b1a:	4822      	ldr	r0, [pc, #136]	; (9ba4 <ColourInformationBox_write@@Base+0x9c>)
    9b1c:	69e6      	ldr	r6, [r4, #28]
    9b1e:	4478      	add	r0, pc
    9b20:	f7fc e88e 	blx	5c40 <string_type_to_int32@plt>
    9b24:	4286      	cmp	r6, r0
    9b26:	d01e      	beq.n	9b66 <ColourInformationBox_write@@Base+0x5e>
    9b28:	481f      	ldr	r0, [pc, #124]	; (9ba8 <ColourInformationBox_write@@Base+0xa0>)
    9b2a:	69e6      	ldr	r6, [r4, #28]
    9b2c:	4478      	add	r0, pc
    9b2e:	f7fc e888 	blx	5c40 <string_type_to_int32@plt>
    9b32:	4286      	cmp	r6, r0
    9b34:	d00c      	beq.n	9b50 <ColourInformationBox_write@@Base+0x48>
    9b36:	481d      	ldr	r0, [pc, #116]	; (9bac <ColourInformationBox_write@@Base+0xa4>)
    9b38:	69e6      	ldr	r6, [r4, #28]
    9b3a:	4478      	add	r0, pc
    9b3c:	f7fc e880 	blx	5c40 <string_type_to_int32@plt>
    9b40:	4286      	cmp	r6, r0
    9b42:	d005      	beq.n	9b50 <ColourInformationBox_write@@Base+0x48>
    9b44:	4620      	mov	r0, r4
    9b46:	4629      	mov	r1, r5
    9b48:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    9b4c:	f00a ba0a 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9b50:	68e1      	ldr	r1, [r4, #12]
    9b52:	4628      	mov	r0, r5
    9b54:	6922      	ldr	r2, [r4, #16]
    9b56:	f7fc e886 	blx	5c64 <Bitstream_write_bytes@plt>
    9b5a:	4620      	mov	r0, r4
    9b5c:	4629      	mov	r1, r5
    9b5e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    9b62:	f00a b9ff 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9b66:	8c21      	ldrh	r1, [r4, #32]
    9b68:	4628      	mov	r0, r5
    9b6a:	f7fc e8d6 	blx	5d18 <Bitstream_write_16bit@plt>
    9b6e:	8c61      	ldrh	r1, [r4, #34]	; 0x22
    9b70:	4628      	mov	r0, r5
    9b72:	f7fc e8d2 	blx	5d18 <Bitstream_write_16bit@plt>
    9b76:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
    9b78:	4628      	mov	r0, r5
    9b7a:	f7fc e8ce 	blx	5d18 <Bitstream_write_16bit@plt>
    9b7e:	f894 1026 	ldrb.w	r1, [r4, #38]	; 0x26
    9b82:	4628      	mov	r0, r5
    9b84:	2201      	movs	r2, #1
    9b86:	f7fc e8c2 	blx	5d0c <Bitstream_write_bits@plt>
    9b8a:	f894 1027 	ldrb.w	r1, [r4, #39]	; 0x27
    9b8e:	4628      	mov	r0, r5
    9b90:	2207      	movs	r2, #7
    9b92:	f7fc e8bc 	blx	5d0c <Bitstream_write_bits@plt>
    9b96:	4620      	mov	r0, r4
    9b98:	4629      	mov	r1, r5
    9b9a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    9b9e:	f00a b9e1 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9ba2:	bf00      	nop
    9ba4:	b19e      	cbz	r6, 9bce <write_data_information_box@@Base+0x1e>
    9ba6:	0000      	movs	r0, r0
    9ba8:	b198      	cbz	r0, 9bd2 <DataInformation_write_box@@Base+0x2>
    9baa:	0000      	movs	r0, r0
    9bac:	b192      	cbz	r2, 9bd4 <DataInformation_write_box@@Base+0x4>
	...

00009bb0 <write_data_information_box@@Base>:
    9bb0:	b510      	push	{r4, lr}
    9bb2:	4604      	mov	r4, r0
    9bb4:	4805      	ldr	r0, [pc, #20]	; (9bcc <write_data_information_box@@Base+0x1c>)
    9bb6:	4478      	add	r0, pc
    9bb8:	f7fc e842 	blx	5c40 <string_type_to_int32@plt>
    9bbc:	6060      	str	r0, [r4, #4]
    9bbe:	f104 000c 	add.w	r0, r4, #12
    9bc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    9bc6:	f00a b9d5 	b.w	13f74 <__aeabi_llsl@@Base+0xd8>
    9bca:	bf00      	nop
    9bcc:	b11e      	cbz	r6, 9bd6 <DataInformation_write_box@@Base+0x6>
	...

00009bd0 <DataInformation_write_box@@Base>:
    9bd0:	b538      	push	{r3, r4, r5, lr}
    9bd2:	460c      	mov	r4, r1
    9bd4:	4605      	mov	r5, r0
    9bd6:	f7fc e894 	blx	5d00 <Box_write_header@plt>
    9bda:	f105 000c 	add.w	r0, r5, #12
    9bde:	4621      	mov	r1, r4
    9be0:	f7fc e8be 	blx	5d60 <DataRef_write_box@plt>
    9be4:	4628      	mov	r0, r5
    9be6:	4621      	mov	r1, r4
    9be8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    9bec:	f00a b9ba 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

00009bf0 <DataInformation_parse_box@@Base>:
    9bf0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9bf4:	b083      	sub	sp, #12
    9bf6:	460c      	mov	r4, r1
    9bf8:	4607      	mov	r7, r0
    9bfa:	f8d1 9008 	ldr.w	r9, [r1, #8]
    9bfe:	f7fc e898 	blx	5d30 <Box_parse_header@plt>
    9c02:	4682      	mov	sl, r0
    9c04:	bb80      	cbnz	r0, 9c68 <DataInformation_parse_box@@Base+0x78>
    9c06:	683b      	ldr	r3, [r7, #0]
    9c08:	f1a3 0608 	sub.w	r6, r3, #8
    9c0c:	2e00      	cmp	r6, #0
    9c0e:	dd32      	ble.n	9c76 <DataInformation_parse_box@@Base+0x86>
    9c10:	f8df 8070 	ldr.w	r8, [pc, #112]	; 9c84 <DataInformation_parse_box@@Base+0x94>
    9c14:	f107 030c 	add.w	r3, r7, #12
    9c18:	9301      	str	r3, [sp, #4]
    9c1a:	44f8      	add	r8, pc
    9c1c:	e009      	b.n	9c32 <DataInformation_parse_box@@Base+0x42>
    9c1e:	68a3      	ldr	r3, [r4, #8]
    9c20:	683a      	ldr	r2, [r7, #0]
    9c22:	ebc9 0103 	rsb	r1, r9, r3
    9c26:	442b      	add	r3, r5
    9c28:	4291      	cmp	r1, r2
    9c2a:	d81d      	bhi.n	9c68 <DataInformation_parse_box@@Base+0x78>
    9c2c:	60a3      	str	r3, [r4, #8]
    9c2e:	2e00      	cmp	r6, #0
    9c30:	dd20      	ble.n	9c74 <DataInformation_parse_box@@Base+0x84>
    9c32:	4620      	mov	r0, r4
    9c34:	f7fb ef8c 	blx	5b50 <Bitstream_read_32bit@plt>
    9c38:	4605      	mov	r5, r0
    9c3a:	4620      	mov	r0, r4
    9c3c:	f7fb ef88 	blx	5b50 <Bitstream_read_32bit@plt>
    9c40:	1b76      	subs	r6, r6, r5
    9c42:	4683      	mov	fp, r0
    9c44:	4640      	mov	r0, r8
    9c46:	b17d      	cbz	r5, 9c68 <DataInformation_parse_box@@Base+0x78>
    9c48:	683b      	ldr	r3, [r7, #0]
    9c4a:	429d      	cmp	r5, r3
    9c4c:	d80c      	bhi.n	9c68 <DataInformation_parse_box@@Base+0x78>
    9c4e:	68a3      	ldr	r3, [r4, #8]
    9c50:	3b08      	subs	r3, #8
    9c52:	60a3      	str	r3, [r4, #8]
    9c54:	f7fb eff4 	blx	5c40 <string_type_to_int32@plt>
    9c58:	4583      	cmp	fp, r0
    9c5a:	d1e0      	bne.n	9c1e <DataInformation_parse_box@@Base+0x2e>
    9c5c:	9801      	ldr	r0, [sp, #4]
    9c5e:	4621      	mov	r1, r4
    9c60:	f7fc e884 	blx	5d6c <DataRef_parse_box@plt>
    9c64:	2800      	cmp	r0, #0
    9c66:	d0e2      	beq.n	9c2e <DataInformation_parse_box@@Base+0x3e>
    9c68:	f04f 0a01 	mov.w	sl, #1
    9c6c:	4650      	mov	r0, sl
    9c6e:	b003      	add	sp, #12
    9c70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9c74:	683b      	ldr	r3, [r7, #0]
    9c76:	444b      	add	r3, r9
    9c78:	4650      	mov	r0, sl
    9c7a:	60a3      	str	r3, [r4, #8]
    9c7c:	b003      	add	sp, #12
    9c7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9c82:	bf00      	nop
    9c84:	b0c2      	sub	sp, #264	; 0x108
	...

00009c88 <DataInformationBox_release@@Base>:
    9c88:	300c      	adds	r0, #12
    9c8a:	f00a b97b 	b.w	13f84 <__aeabi_llsl@@Base+0xe8>
    9c8e:	bf00      	nop

00009c90 <write_url_box@@Base>:
    9c90:	b510      	push	{r4, lr}
    9c92:	4604      	mov	r4, r0
    9c94:	4804      	ldr	r0, [pc, #16]	; (9ca8 <write_url_box@@Base+0x18>)
    9c96:	4478      	add	r0, pc
    9c98:	f7fb efd2 	blx	5c40 <string_type_to_int32@plt>
    9c9c:	2200      	movs	r2, #0
    9c9e:	2301      	movs	r3, #1
    9ca0:	7322      	strb	r2, [r4, #12]
    9ca2:	6123      	str	r3, [r4, #16]
    9ca4:	6060      	str	r0, [r4, #4]
    9ca6:	bd10      	pop	{r4, pc}
    9ca8:	b04e      	add	sp, #312	; 0x138
	...

00009cac <write_data_ref_box@@Base>:
    9cac:	b570      	push	{r4, r5, r6, lr}
    9cae:	4606      	mov	r6, r0
    9cb0:	480d      	ldr	r0, [pc, #52]	; (9ce8 <write_data_ref_box@@Base+0x3c>)
    9cb2:	4478      	add	r0, pc
    9cb4:	f7fb efc4 	blx	5c40 <string_type_to_int32@plt>
    9cb8:	2300      	movs	r3, #0
    9cba:	2201      	movs	r2, #1
    9cbc:	7333      	strb	r3, [r6, #12]
    9cbe:	6133      	str	r3, [r6, #16]
    9cc0:	461c      	mov	r4, r3
    9cc2:	6172      	str	r2, [r6, #20]
    9cc4:	461d      	mov	r5, r3
    9cc6:	6070      	str	r0, [r6, #4]
    9cc8:	2014      	movs	r0, #20
    9cca:	f7fb eebe 	blx	5a48 <malloc@plt>
    9cce:	4603      	mov	r3, r0
    9cd0:	61b0      	str	r0, [r6, #24]
    9cd2:	e000      	b.n	9cd6 <write_data_ref_box@@Base+0x2a>
    9cd4:	69b3      	ldr	r3, [r6, #24]
    9cd6:	1918      	adds	r0, r3, r4
    9cd8:	3501      	adds	r5, #1
    9cda:	f7fc e854 	blx	5d84 <write_url_box@plt>
    9cde:	6973      	ldr	r3, [r6, #20]
    9ce0:	3414      	adds	r4, #20
    9ce2:	429d      	cmp	r5, r3
    9ce4:	d3f6      	bcc.n	9cd4 <write_data_ref_box@@Base+0x28>
    9ce6:	bd70      	pop	{r4, r5, r6, pc}
    9ce8:	b02a      	add	sp, #168	; 0xa8
	...

00009cec <Url_write_box@@Base>:
    9cec:	b538      	push	{r3, r4, r5, lr}
    9cee:	4605      	mov	r5, r0
    9cf0:	460c      	mov	r4, r1
    9cf2:	f7fc e806 	blx	5d00 <Box_write_header@plt>
    9cf6:	7b29      	ldrb	r1, [r5, #12]
    9cf8:	4620      	mov	r0, r4
    9cfa:	f7fb efd8 	blx	5cac <Bitstream_write_byte@plt>
    9cfe:	6929      	ldr	r1, [r5, #16]
    9d00:	4620      	mov	r0, r4
    9d02:	f7fc e846 	blx	5d90 <Bitstream_write_24bit@plt>
    9d06:	4628      	mov	r0, r5
    9d08:	4621      	mov	r1, r4
    9d0a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    9d0e:	f00a b929 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9d12:	bf00      	nop

00009d14 <DataRef_write_box@@Base>:
    9d14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    9d16:	4606      	mov	r6, r0
    9d18:	460f      	mov	r7, r1
    9d1a:	f7fb eff2 	blx	5d00 <Box_write_header@plt>
    9d1e:	7b31      	ldrb	r1, [r6, #12]
    9d20:	4638      	mov	r0, r7
    9d22:	f7fb efc4 	blx	5cac <Bitstream_write_byte@plt>
    9d26:	6931      	ldr	r1, [r6, #16]
    9d28:	4638      	mov	r0, r7
    9d2a:	2400      	movs	r4, #0
    9d2c:	f7fc e830 	blx	5d90 <Bitstream_write_24bit@plt>
    9d30:	4638      	mov	r0, r7
    9d32:	6971      	ldr	r1, [r6, #20]
    9d34:	4625      	mov	r5, r4
    9d36:	f7fb efc6 	blx	5cc4 <Bitstream_write_32bit@plt>
    9d3a:	6973      	ldr	r3, [r6, #20]
    9d3c:	b14b      	cbz	r3, 9d52 <DataRef_write_box@@Base+0x3e>
    9d3e:	69b0      	ldr	r0, [r6, #24]
    9d40:	4639      	mov	r1, r7
    9d42:	3501      	adds	r5, #1
    9d44:	4420      	add	r0, r4
    9d46:	3414      	adds	r4, #20
    9d48:	f7fc e828 	blx	5d9c <Url_write_box@plt>
    9d4c:	6973      	ldr	r3, [r6, #20]
    9d4e:	429d      	cmp	r5, r3
    9d50:	d3f5      	bcc.n	9d3e <DataRef_write_box@@Base+0x2a>
    9d52:	4630      	mov	r0, r6
    9d54:	4639      	mov	r1, r7
    9d56:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    9d5a:	f00a b903 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    9d5e:	bf00      	nop

00009d60 <Url_parse_box@@Base>:
    9d60:	b570      	push	{r4, r5, r6, lr}
    9d62:	4605      	mov	r5, r0
    9d64:	460e      	mov	r6, r1
    9d66:	f7fb efe4 	blx	5d30 <Box_parse_header@plt>
    9d6a:	4604      	mov	r4, r0
    9d6c:	b110      	cbz	r0, 9d74 <Url_parse_box@@Base+0x14>
    9d6e:	2401      	movs	r4, #1
    9d70:	4620      	mov	r0, r4
    9d72:	bd70      	pop	{r4, r5, r6, pc}
    9d74:	4630      	mov	r0, r6
    9d76:	f7fb ef8e 	blx	5c94 <Bitstream_read_byte@plt>
    9d7a:	7328      	strb	r0, [r5, #12]
    9d7c:	4630      	mov	r0, r6
    9d7e:	f7fc e814 	blx	5da8 <Bitstream_read_24bit@plt>
    9d82:	6128      	str	r0, [r5, #16]
    9d84:	4620      	mov	r0, r4
    9d86:	bd70      	pop	{r4, r5, r6, pc}

00009d88 <DataRef_parse_box@@Base>:
    9d88:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9d8c:	4606      	mov	r6, r0
    9d8e:	460c      	mov	r4, r1
    9d90:	f7fb efce 	blx	5d30 <Box_parse_header@plt>
    9d94:	4683      	mov	fp, r0
    9d96:	b120      	cbz	r0, 9da2 <DataRef_parse_box@@Base+0x1a>
    9d98:	f04f 0b01 	mov.w	fp, #1
    9d9c:	4658      	mov	r0, fp
    9d9e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9da2:	4620      	mov	r0, r4
    9da4:	f7fb ef76 	blx	5c94 <Bitstream_read_byte@plt>
    9da8:	7330      	strb	r0, [r6, #12]
    9daa:	4620      	mov	r0, r4
    9dac:	f7fb effc 	blx	5da8 <Bitstream_read_24bit@plt>
    9db0:	6130      	str	r0, [r6, #16]
    9db2:	4620      	mov	r0, r4
    9db4:	f7fb eecc 	blx	5b50 <Bitstream_read_32bit@plt>
    9db8:	6170      	str	r0, [r6, #20]
    9dba:	2800      	cmp	r0, #0
    9dbc:	d0ee      	beq.n	9d9c <DataRef_parse_box@@Base+0x14>
    9dbe:	f8df a05c 	ldr.w	sl, [pc, #92]	; 9e1c <DataRef_parse_box@@Base+0x94>
    9dc2:	46d8      	mov	r8, fp
    9dc4:	465f      	mov	r7, fp
    9dc6:	44fa      	add	sl, pc
    9dc8:	e007      	b.n	9dda <DataRef_parse_box@@Base+0x52>
    9dca:	68a3      	ldr	r3, [r4, #8]
    9dcc:	441d      	add	r5, r3
    9dce:	60a5      	str	r5, [r4, #8]
    9dd0:	6973      	ldr	r3, [r6, #20]
    9dd2:	f108 0814 	add.w	r8, r8, #20
    9dd6:	429f      	cmp	r7, r3
    9dd8:	d2e0      	bcs.n	9d9c <DataRef_parse_box@@Base+0x14>
    9dda:	4620      	mov	r0, r4
    9ddc:	3701      	adds	r7, #1
    9dde:	f7fb eeb8 	blx	5b50 <Bitstream_read_32bit@plt>
    9de2:	4605      	mov	r5, r0
    9de4:	4620      	mov	r0, r4
    9de6:	f7fb eeb4 	blx	5b50 <Bitstream_read_32bit@plt>
    9dea:	68a3      	ldr	r3, [r4, #8]
    9dec:	2114      	movs	r1, #20
    9dee:	3b08      	subs	r3, #8
    9df0:	4681      	mov	r9, r0
    9df2:	6970      	ldr	r0, [r6, #20]
    9df4:	60a3      	str	r3, [r4, #8]
    9df6:	f7fb efde 	blx	5db4 <calloc@plt>
    9dfa:	4603      	mov	r3, r0
    9dfc:	4650      	mov	r0, sl
    9dfe:	61b3      	str	r3, [r6, #24]
    9e00:	2b00      	cmp	r3, #0
    9e02:	d0c9      	beq.n	9d98 <DataRef_parse_box@@Base+0x10>
    9e04:	f7fb ef1c 	blx	5c40 <string_type_to_int32@plt>
    9e08:	4581      	cmp	r9, r0
    9e0a:	d1de      	bne.n	9dca <DataRef_parse_box@@Base+0x42>
    9e0c:	69b0      	ldr	r0, [r6, #24]
    9e0e:	4621      	mov	r1, r4
    9e10:	4440      	add	r0, r8
    9e12:	f7fb efd6 	blx	5dc0 <Url_parse_box@plt>
    9e16:	2800      	cmp	r0, #0
    9e18:	d0da      	beq.n	9dd0 <DataRef_parse_box@@Base+0x48>
    9e1a:	e7bd      	b.n	9d98 <DataRef_parse_box@@Base+0x10>
    9e1c:	af1e      	add	r7, sp, #120	; 0x78
	...

00009e20 <DataRefBox_release@@Base>:
    9e20:	b510      	push	{r4, lr}
    9e22:	4604      	mov	r4, r0
    9e24:	6980      	ldr	r0, [r0, #24]
    9e26:	b108      	cbz	r0, 9e2c <DataRefBox_release@@Base+0xc>
    9e28:	f7fb ee20 	blx	5a6c <free@plt>
    9e2c:	2300      	movs	r3, #0
    9e2e:	61a3      	str	r3, [r4, #24]
    9e30:	bd10      	pop	{r4, pc}
    9e32:	bf00      	nop

00009e34 <nal_copy@@Base>:
    9e34:	4b5d      	ldr	r3, [pc, #372]	; (9fac <nal_copy@@Base+0x178>)
    9e36:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9e3a:	b08d      	sub	sp, #52	; 0x34
    9e3c:	461a      	mov	r2, r3
    9e3e:	6d83      	ldr	r3, [r0, #88]	; 0x58
    9e40:	447a      	add	r2, pc
    9e42:	6812      	ldr	r2, [r2, #0]
    9e44:	9205      	str	r2, [sp, #20]
    9e46:	2700      	movs	r7, #0
    9e48:	9002      	str	r0, [sp, #8]
    9e4a:	e893 0220 	ldmia.w	r3, {r5, r9}
    9e4e:	6812      	ldr	r2, [r2, #0]
    9e50:	45b9      	cmp	r9, r7
    9e52:	9103      	str	r1, [sp, #12]
    9e54:	f88d 7028 	strb.w	r7, [sp, #40]	; 0x28
    9e58:	920b      	str	r2, [sp, #44]	; 0x2c
    9e5a:	9709      	str	r7, [sp, #36]	; 0x24
    9e5c:	dd68      	ble.n	9f30 <nal_copy@@Base+0xfc>
    9e5e:	f1a9 0404 	sub.w	r4, r9, #4
    9e62:	463a      	mov	r2, r7
    9e64:	42a2      	cmp	r2, r4
    9e66:	ab07      	add	r3, sp, #28
    9e68:	463e      	mov	r6, r7
    9e6a:	46b8      	mov	r8, r7
    9e6c:	9301      	str	r3, [sp, #4]
    9e6e:	da36      	bge.n	9ede <nal_copy@@Base+0xaa>
    9e70:	4692      	mov	sl, r2
    9e72:	e003      	b.n	9e7c <nal_copy@@Base+0x48>
    9e74:	f10a 0a01 	add.w	sl, sl, #1
    9e78:	45a2      	cmp	sl, r4
    9e7a:	d033      	beq.n	9ee4 <nal_copy@@Base+0xb0>
    9e7c:	eb05 000a 	add.w	r0, r5, sl
    9e80:	f7fb efa4 	blx	5dcc <find_start_code_len@plt>
    9e84:	2800      	cmp	r0, #0
    9e86:	d0f5      	beq.n	9e74 <nal_copy@@Base+0x40>
    9e88:	4683      	mov	fp, r0
    9e8a:	45ba      	cmp	sl, r7
    9e8c:	d01f      	beq.n	9ece <nal_copy@@Base+0x9a>
    9e8e:	9b02      	ldr	r3, [sp, #8]
    9e90:	19f2      	adds	r2, r6, r7
    9e92:	442a      	add	r2, r5
    9e94:	9207      	str	r2, [sp, #28]
    9e96:	2101      	movs	r1, #1
    9e98:	9801      	ldr	r0, [sp, #4]
    9e9a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
    9e9c:	ebc7 070a 	rsb	r7, r7, sl
    9ea0:	1bbe      	subs	r6, r7, r6
    9ea2:	685a      	ldr	r2, [r3, #4]
    9ea4:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
    9ea8:	f88d 8028 	strb.w	r8, [sp, #40]	; 0x28
    9eac:	9208      	str	r2, [sp, #32]
    9eae:	f7fb ef10 	blx	5cd0 <Bitstream_read_bits@plt>
    9eb2:	2106      	movs	r1, #6
    9eb4:	9801      	ldr	r0, [sp, #4]
    9eb6:	f7fb ef0c 	blx	5cd0 <Bitstream_read_bits@plt>
    9eba:	f88d 8028 	strb.w	r8, [sp, #40]	; 0x28
    9ebe:	9609      	str	r6, [sp, #36]	; 0x24
    9ec0:	2821      	cmp	r0, #33	; 0x21
    9ec2:	4601      	mov	r1, r0
    9ec4:	d011      	beq.n	9eea <nal_copy@@Base+0xb6>
    9ec6:	2820      	cmp	r0, #32
    9ec8:	d03a      	beq.n	9f40 <nal_copy@@Base+0x10c>
    9eca:	2822      	cmp	r0, #34	; 0x22
    9ecc:	d050      	beq.n	9f70 <nal_copy@@Base+0x13c>
    9ece:	eb0a 020b 	add.w	r2, sl, fp
    9ed2:	4591      	cmp	r9, r2
    9ed4:	dd2c      	ble.n	9f30 <nal_copy@@Base+0xfc>
    9ed6:	42a2      	cmp	r2, r4
    9ed8:	4657      	mov	r7, sl
    9eda:	465e      	mov	r6, fp
    9edc:	dbc8      	blt.n	9e70 <nal_copy@@Base+0x3c>
    9ede:	46b3      	mov	fp, r6
    9ee0:	46ca      	mov	sl, r9
    9ee2:	e7d2      	b.n	9e8a <nal_copy@@Base+0x56>
    9ee4:	4683      	mov	fp, r0
    9ee6:	46ca      	mov	sl, r9
    9ee8:	e7cf      	b.n	9e8a <nal_copy@@Base+0x56>
    9eea:	9b03      	ldr	r3, [sp, #12]
    9eec:	f04f 0e01 	mov.w	lr, #1
    9ef0:	2008      	movs	r0, #8
    9ef2:	b2b7      	uxth	r7, r6
    9ef4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9ef6:	f882 e00c 	strb.w	lr, [r2, #12]
    9efa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9efc:	f882 800d 	strb.w	r8, [r2, #13]
    9f00:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f02:	7391      	strb	r1, [r2, #14]
    9f04:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f06:	f8a2 e010 	strh.w	lr, [r2, #16]
    9f0a:	9204      	str	r2, [sp, #16]
    9f0c:	f7fb ed9c 	blx	5a48 <malloc@plt>
    9f10:	9a04      	ldr	r2, [sp, #16]
    9f12:	4606      	mov	r6, r0
    9f14:	4638      	mov	r0, r7
    9f16:	6156      	str	r6, [r2, #20]
    9f18:	8037      	strh	r7, [r6, #0]
    9f1a:	f7fb ed96 	blx	5a48 <malloc@plt>
    9f1e:	463a      	mov	r2, r7
    9f20:	9907      	ldr	r1, [sp, #28]
    9f22:	6070      	str	r0, [r6, #4]
    9f24:	f7fb ed6c 	blx	5a00 <memcpy@plt>
    9f28:	eb0a 020b 	add.w	r2, sl, fp
    9f2c:	4591      	cmp	r9, r2
    9f2e:	dcd2      	bgt.n	9ed6 <nal_copy@@Base+0xa2>
    9f30:	9b05      	ldr	r3, [sp, #20]
    9f32:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    9f34:	681b      	ldr	r3, [r3, #0]
    9f36:	429a      	cmp	r2, r3
    9f38:	d135      	bne.n	9fa6 <nal_copy@@Base+0x172>
    9f3a:	b00d      	add	sp, #52	; 0x34
    9f3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9f40:	9b03      	ldr	r3, [sp, #12]
    9f42:	f04f 0e01 	mov.w	lr, #1
    9f46:	2008      	movs	r0, #8
    9f48:	b2b7      	uxth	r7, r6
    9f4a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f4c:	f882 e000 	strb.w	lr, [r2]
    9f50:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f52:	f882 8001 	strb.w	r8, [r2, #1]
    9f56:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f58:	7091      	strb	r1, [r2, #2]
    9f5a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    9f5c:	f8a2 e004 	strh.w	lr, [r2, #4]
    9f60:	9204      	str	r2, [sp, #16]
    9f62:	f7fb ed72 	blx	5a48 <malloc@plt>
    9f66:	9a04      	ldr	r2, [sp, #16]
    9f68:	4606      	mov	r6, r0
    9f6a:	4638      	mov	r0, r7
    9f6c:	6096      	str	r6, [r2, #8]
    9f6e:	e7d3      	b.n	9f18 <nal_copy@@Base+0xe4>
    9f70:	9c03      	ldr	r4, [sp, #12]
    9f72:	2201      	movs	r2, #1
    9f74:	2500      	movs	r5, #0
    9f76:	2008      	movs	r0, #8
    9f78:	b2b6      	uxth	r6, r6
    9f7a:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    9f7c:	761a      	strb	r2, [r3, #24]
    9f7e:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    9f80:	765d      	strb	r5, [r3, #25]
    9f82:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    9f84:	7699      	strb	r1, [r3, #26]
    9f86:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
    9f88:	83aa      	strh	r2, [r5, #28]
    9f8a:	f7fb ed5e 	blx	5a48 <malloc@plt>
    9f8e:	4604      	mov	r4, r0
    9f90:	4630      	mov	r0, r6
    9f92:	622c      	str	r4, [r5, #32]
    9f94:	8026      	strh	r6, [r4, #0]
    9f96:	f7fb ed58 	blx	5a48 <malloc@plt>
    9f9a:	4632      	mov	r2, r6
    9f9c:	9907      	ldr	r1, [sp, #28]
    9f9e:	6060      	str	r0, [r4, #4]
    9fa0:	f7fb ed2e 	blx	5a00 <memcpy@plt>
    9fa4:	e7c4      	b.n	9f30 <nal_copy@@Base+0xfc>
    9fa6:	f7fb ed32 	blx	5a0c <__stack_chk_fail@plt>
    9faa:	bf00      	nop
    9fac:	cc7c      	ldmia	r4, {r2, r3, r4, r5, r6}
	...

00009fb0 <write_bytevc1_constraint_box@@Base>:
    9fb0:	4b6b      	ldr	r3, [pc, #428]	; (a160 <write_bytevc1_constraint_box@@Base+0x1b0>)
    9fb2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9fb6:	447b      	add	r3, pc
    9fb8:	681b      	ldr	r3, [r3, #0]
    9fba:	b089      	sub	sp, #36	; 0x24
    9fbc:	4604      	mov	r4, r0
    9fbe:	4869      	ldr	r0, [pc, #420]	; (a164 <write_bytevc1_constraint_box@@Base+0x1b4>)
    9fc0:	4689      	mov	r9, r1
    9fc2:	9301      	str	r3, [sp, #4]
    9fc4:	f504 75bc 	add.w	r5, r4, #376	; 0x178
    9fc8:	681b      	ldr	r3, [r3, #0]
    9fca:	4478      	add	r0, pc
    9fcc:	f504 77c6 	add.w	r7, r4, #396	; 0x18c
    9fd0:	f504 76b2 	add.w	r6, r4, #356	; 0x164
    9fd4:	9307      	str	r3, [sp, #28]
    9fd6:	f7fb ee34 	blx	5c40 <string_type_to_int32@plt>
    9fda:	2301      	movs	r3, #1
    9fdc:	f889 300c 	strb.w	r3, [r9, #12]
    9fe0:	f104 01e0 	add.w	r1, r4, #224	; 0xe0
    9fe4:	f104 02f4 	add.w	r2, r4, #244	; 0xf4
    9fe8:	f8c9 0004 	str.w	r0, [r9, #4]
    9fec:	f894 3130 	ldrb.w	r3, [r4, #304]	; 0x130
    9ff0:	f889 300d 	strb.w	r3, [r9, #13]
    9ff4:	f894 3131 	ldrb.w	r3, [r4, #305]	; 0x131
    9ff8:	f889 300e 	strb.w	r3, [r9, #14]
    9ffc:	f894 3132 	ldrb.w	r3, [r4, #306]	; 0x132
    a000:	f889 300f 	strb.w	r3, [r9, #15]
    a004:	f8d4 3134 	ldr.w	r3, [r4, #308]	; 0x134
    a008:	f8c9 3010 	str.w	r3, [r9, #16]
    a00c:	f894 3138 	ldrb.w	r3, [r4, #312]	; 0x138
    a010:	f889 3014 	strb.w	r3, [r9, #20]
    a014:	f894 3139 	ldrb.w	r3, [r4, #313]	; 0x139
    a018:	f889 3015 	strb.w	r3, [r9, #21]
    a01c:	f894 313a 	ldrb.w	r3, [r4, #314]	; 0x13a
    a020:	f889 3016 	strb.w	r3, [r9, #22]
    a024:	f894 313b 	ldrb.w	r3, [r4, #315]	; 0x13b
    a028:	f889 3017 	strb.w	r3, [r9, #23]
    a02c:	f894 313c 	ldrb.w	r3, [r4, #316]	; 0x13c
    a030:	f889 3018 	strb.w	r3, [r9, #24]
    a034:	f894 313d 	ldrb.w	r3, [r4, #317]	; 0x13d
    a038:	f889 3019 	strb.w	r3, [r9, #25]
    a03c:	f894 313e 	ldrb.w	r3, [r4, #318]	; 0x13e
    a040:	f889 301a 	strb.w	r3, [r9, #26]
    a044:	f8b4 3140 	ldrh.w	r3, [r4, #320]	; 0x140
    a048:	f8a9 301c 	strh.w	r3, [r9, #28]
    a04c:	f894 3142 	ldrb.w	r3, [r4, #322]	; 0x142
    a050:	f889 301e 	strb.w	r3, [r9, #30]
    a054:	f894 3143 	ldrb.w	r3, [r4, #323]	; 0x143
    a058:	f889 301f 	strb.w	r3, [r9, #31]
    a05c:	f894 3150 	ldrb.w	r3, [r4, #336]	; 0x150
    a060:	f889 3020 	strb.w	r3, [r9, #32]
    a064:	f894 3151 	ldrb.w	r3, [r4, #337]	; 0x151
    a068:	f889 3021 	strb.w	r3, [r9, #33]	; 0x21
    a06c:	f8b4 3152 	ldrh.w	r3, [r4, #338]	; 0x152
    a070:	9504      	str	r5, [sp, #16]
    a072:	9702      	str	r7, [sp, #8]
    a074:	f8a9 3022 	strh.w	r3, [r9, #34]	; 0x22
    a078:	f894 3154 	ldrb.w	r3, [r4, #340]	; 0x154
    a07c:	9603      	str	r6, [sp, #12]
    a07e:	9105      	str	r1, [sp, #20]
    a080:	f889 3024 	strb.w	r3, [r9, #36]	; 0x24
    a084:	f894 3155 	ldrb.w	r3, [r4, #341]	; 0x155
    a088:	9206      	str	r2, [sp, #24]
    a08a:	f889 3025 	strb.w	r3, [r9, #37]	; 0x25
    a08e:	f894 3156 	ldrb.w	r3, [r4, #342]	; 0x156
    a092:	f889 3026 	strb.w	r3, [r9, #38]	; 0x26
    a096:	f894 312d 	ldrb.w	r3, [r4, #301]	; 0x12d
    a09a:	f889 3027 	strb.w	r3, [r9, #39]	; 0x27
    a09e:	f894 512e 	ldrb.w	r5, [r4, #302]	; 0x12e
    a0a2:	f894 31c8 	ldrb.w	r3, [r4, #456]	; 0x1c8
    a0a6:	f8c9 5028 	str.w	r5, [r9, #40]	; 0x28
    a0aa:	b12b      	cbz	r3, a0b8 <write_bytevc1_constraint_box@@Base+0x108>
    a0ac:	f894 30aa 	ldrb.w	r3, [r4, #170]	; 0xaa
    a0b0:	3b01      	subs	r3, #1
    a0b2:	441d      	add	r5, r3
    a0b4:	f8c9 5028 	str.w	r5, [r9, #40]	; 0x28
    a0b8:	eb05 0045 	add.w	r0, r5, r5, lsl #1
    a0bc:	0080      	lsls	r0, r0, #2
    a0be:	f7fb ecc4 	blx	5a48 <malloc@plt>
    a0c2:	2d00      	cmp	r5, #0
    a0c4:	f8c9 002c 	str.w	r0, [r9, #44]	; 0x2c
    a0c8:	dd40      	ble.n	a14c <write_bytevc1_constraint_box@@Base+0x19c>
    a0ca:	ab02      	add	r3, sp, #8
    a0cc:	f04f 0a00 	mov.w	sl, #0
    a0d0:	46d3      	mov	fp, sl
    a0d2:	9300      	str	r3, [sp, #0]
    a0d4:	461a      	mov	r2, r3
    a0d6:	2301      	movs	r3, #1
    a0d8:	f800 300a 	strb.w	r3, [r0, sl]
    a0dc:	f8d9 302c 	ldr.w	r3, [r9, #44]	; 0x2c
    a0e0:	2600      	movs	r6, #0
    a0e2:	f852 802b 	ldr.w	r8, [r2, fp, lsl #2]
    a0e6:	4453      	add	r3, sl
    a0e8:	705e      	strb	r6, [r3, #1]
    a0ea:	f8d9 302c 	ldr.w	r3, [r9, #44]	; 0x2c
    a0ee:	f8d8 2010 	ldr.w	r2, [r8, #16]
    a0f2:	4453      	add	r3, sl
    a0f4:	709a      	strb	r2, [r3, #2]
    a0f6:	2201      	movs	r2, #1
    a0f8:	f8d9 302c 	ldr.w	r3, [r9, #44]	; 0x2c
    a0fc:	eb03 070a 	add.w	r7, r3, sl
    a100:	80ba      	strh	r2, [r7, #4]
    a102:	8898      	ldrh	r0, [r3, #4]
    a104:	00c0      	lsls	r0, r0, #3
    a106:	f7fb eca0 	blx	5a48 <malloc@plt>
    a10a:	f8b8 5008 	ldrh.w	r5, [r8, #8]
    a10e:	f8d8 8000 	ldr.w	r8, [r8]
    a112:	1d04      	adds	r4, r0, #4
    a114:	60b8      	str	r0, [r7, #8]
    a116:	f824 5c04 	strh.w	r5, [r4, #-4]
    a11a:	4628      	mov	r0, r5
    a11c:	f7fb ec94 	blx	5a48 <malloc@plt>
    a120:	4641      	mov	r1, r8
    a122:	462a      	mov	r2, r5
    a124:	3601      	adds	r6, #1
    a126:	f844 0b08 	str.w	r0, [r4], #8
    a12a:	f7fb ec6a 	blx	5a00 <memcpy@plt>
    a12e:	88bb      	ldrh	r3, [r7, #4]
    a130:	42b3      	cmp	r3, r6
    a132:	dcf0      	bgt.n	a116 <write_bytevc1_constraint_box@@Base+0x166>
    a134:	f8d9 3028 	ldr.w	r3, [r9, #40]	; 0x28
    a138:	f10b 0b01 	add.w	fp, fp, #1
    a13c:	f10a 0a0c 	add.w	sl, sl, #12
    a140:	455b      	cmp	r3, fp
    a142:	dd03      	ble.n	a14c <write_bytevc1_constraint_box@@Base+0x19c>
    a144:	f8d9 002c 	ldr.w	r0, [r9, #44]	; 0x2c
    a148:	9a00      	ldr	r2, [sp, #0]
    a14a:	e7c4      	b.n	a0d6 <write_bytevc1_constraint_box@@Base+0x126>
    a14c:	9b01      	ldr	r3, [sp, #4]
    a14e:	9a07      	ldr	r2, [sp, #28]
    a150:	681b      	ldr	r3, [r3, #0]
    a152:	429a      	cmp	r2, r3
    a154:	d102      	bne.n	a15c <write_bytevc1_constraint_box@@Base+0x1ac>
    a156:	b009      	add	sp, #36	; 0x24
    a158:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a15c:	f7fb ec56 	blx	5a0c <__stack_chk_fail@plt>
    a160:	cb06      	ldmia	r3!, {r1, r2}
    a162:	0000      	movs	r0, r0
    a164:	acda      	add	r4, sp, #872	; 0x368
	...

0000a168 <write_coding_constraint_box@@Base>:
    a168:	b510      	push	{r4, lr}
    a16a:	4604      	mov	r4, r0
    a16c:	4807      	ldr	r0, [pc, #28]	; (a18c <write_coding_constraint_box@@Base+0x24>)
    a16e:	4478      	add	r0, pc
    a170:	f7fb ed66 	blx	5c40 <string_type_to_int32@plt>
    a174:	2302      	movs	r3, #2
    a176:	2201      	movs	r2, #1
    a178:	75a3      	strb	r3, [r4, #22]
    a17a:	7562      	strb	r2, [r4, #21]
    a17c:	2300      	movs	r3, #0
    a17e:	7323      	strb	r3, [r4, #12]
    a180:	6123      	str	r3, [r4, #16]
    a182:	7523      	strb	r3, [r4, #20]
    a184:	61a3      	str	r3, [r4, #24]
    a186:	6060      	str	r0, [r4, #4]
    a188:	bd10      	pop	{r4, pc}
    a18a:	bf00      	nop
    a18c:	ab7e      	add	r3, sp, #504	; 0x1f8
	...

0000a190 <write_sample_entry_box@@Base>:
    a190:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    a194:	4606      	mov	r6, r0
    a196:	4830      	ldr	r0, [pc, #192]	; (a258 <write_sample_entry_box@@Base+0xc8>)
    a198:	460c      	mov	r4, r1
    a19a:	f104 0537 	add.w	r5, r4, #55	; 0x37
    a19e:	f44f 0790 	mov.w	r7, #4718592	; 0x480000
    a1a2:	4478      	add	r0, pc
    a1a4:	f7fb ed4c 	blx	5c40 <string_type_to_int32@plt>
    a1a8:	2300      	movs	r3, #0
    a1aa:	7323      	strb	r3, [r4, #12]
    a1ac:	f04f 0e01 	mov.w	lr, #1
    a1b0:	7363      	strb	r3, [r4, #13]
    a1b2:	4619      	mov	r1, r3
    a1b4:	73a3      	strb	r3, [r4, #14]
    a1b6:	f04f 0c1f 	mov.w	ip, #31
    a1ba:	73e3      	strb	r3, [r4, #15]
    a1bc:	2220      	movs	r2, #32
    a1be:	7423      	strb	r3, [r4, #16]
    a1c0:	7463      	strb	r3, [r4, #17]
    a1c2:	7623      	strb	r3, [r4, #24]
    a1c4:	7663      	strb	r3, [r4, #25]
    a1c6:	76a3      	strb	r3, [r4, #26]
    a1c8:	76e3      	strb	r3, [r4, #27]
    a1ca:	7723      	strb	r3, [r4, #28]
    a1cc:	7763      	strb	r3, [r4, #29]
    a1ce:	77a3      	strb	r3, [r4, #30]
    a1d0:	77e3      	strb	r3, [r4, #31]
    a1d2:	f884 3020 	strb.w	r3, [r4, #32]
    a1d6:	f884 3021 	strb.w	r3, [r4, #33]	; 0x21
    a1da:	f884 3022 	strb.w	r3, [r4, #34]	; 0x22
    a1de:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
    a1e2:	f8d6 9078 	ldr.w	r9, [r6, #120]	; 0x78
    a1e6:	f8d6 807c 	ldr.w	r8, [r6, #124]	; 0x7c
    a1ea:	82a3      	strh	r3, [r4, #20]
    a1ec:	82e3      	strh	r3, [r4, #22]
    a1ee:	6323      	str	r3, [r4, #48]	; 0x30
    a1f0:	f884 c036 	strb.w	ip, [r4, #54]	; 0x36
    a1f4:	f8a4 e012 	strh.w	lr, [r4, #18]
    a1f8:	f8a4 e034 	strh.w	lr, [r4, #52]	; 0x34
    a1fc:	62a7      	str	r7, [r4, #40]	; 0x28
    a1fe:	62e7      	str	r7, [r4, #44]	; 0x2c
    a200:	f64f 77ff 	movw	r7, #65535	; 0xffff
    a204:	f8a4 9024 	strh.w	r9, [r4, #36]	; 0x24
    a208:	f8a4 8026 	strh.w	r8, [r4, #38]	; 0x26
    a20c:	6060      	str	r0, [r4, #4]
    a20e:	4628      	mov	r0, r5
    a210:	f7fb ec7a 	blx	5b08 <memset@plt>
    a214:	4b11      	ldr	r3, [pc, #68]	; (a25c <write_sample_entry_box@@Base+0xcc>)
    a216:	f04f 0e18 	mov.w	lr, #24
    a21a:	f8a4 705a 	strh.w	r7, [r4, #90]	; 0x5a
    a21e:	447b      	add	r3, pc
    a220:	f8a4 e058 	strh.w	lr, [r4, #88]	; 0x58
    a224:	cb07      	ldmia	r3!, {r0, r1, r2}
    a226:	f8b3 c000 	ldrh.w	ip, [r3]
    a22a:	789b      	ldrb	r3, [r3, #2]
    a22c:	f8c4 0037 	str.w	r0, [r4, #55]	; 0x37
    a230:	4630      	mov	r0, r6
    a232:	f8c4 103b 	str.w	r1, [r4, #59]	; 0x3b
    a236:	f104 015c 	add.w	r1, r4, #92	; 0x5c
    a23a:	f8c4 203f 	str.w	r2, [r4, #63]	; 0x3f
    a23e:	f8a4 c043 	strh.w	ip, [r4, #67]	; 0x43
    a242:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
    a246:	f7fb edc8 	blx	5dd8 <write_bytevc1_constraint_box@plt>
    a24a:	f104 008c 	add.w	r0, r4, #140	; 0x8c
    a24e:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    a252:	f009 be9f 	b.w	13f94 <__aeabi_llsl@@Base+0xf8>
    a256:	bf00      	nop
    a258:	ab52      	add	r3, sp, #328	; 0x148
    a25a:	0000      	movs	r0, r0
    a25c:	aade      	add	r2, sp, #888	; 0x378
	...

0000a260 <Bytevc1Constraint_write_box@@Base>:
    a260:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    a264:	4607      	mov	r7, r0
    a266:	4688      	mov	r8, r1
    a268:	f7fb ed4a 	blx	5d00 <Box_write_header@plt>
    a26c:	7b39      	ldrb	r1, [r7, #12]
    a26e:	4640      	mov	r0, r8
    a270:	f7fb ed1c 	blx	5cac <Bitstream_write_byte@plt>
    a274:	7b79      	ldrb	r1, [r7, #13]
    a276:	2202      	movs	r2, #2
    a278:	4640      	mov	r0, r8
    a27a:	f7fb ed48 	blx	5d0c <Bitstream_write_bits@plt>
    a27e:	7bb9      	ldrb	r1, [r7, #14]
    a280:	2201      	movs	r2, #1
    a282:	4640      	mov	r0, r8
    a284:	f7fb ed42 	blx	5d0c <Bitstream_write_bits@plt>
    a288:	7bf9      	ldrb	r1, [r7, #15]
    a28a:	4640      	mov	r0, r8
    a28c:	2205      	movs	r2, #5
    a28e:	f7fb ed3e 	blx	5d0c <Bitstream_write_bits@plt>
    a292:	4640      	mov	r0, r8
    a294:	6939      	ldr	r1, [r7, #16]
    a296:	f107 0413 	add.w	r4, r7, #19
    a29a:	f107 0519 	add.w	r5, r7, #25
    a29e:	f7fb ed12 	blx	5cc4 <Bitstream_write_32bit@plt>
    a2a2:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    a2a6:	4640      	mov	r0, r8
    a2a8:	f7fb ed00 	blx	5cac <Bitstream_write_byte@plt>
    a2ac:	42ac      	cmp	r4, r5
    a2ae:	d1f8      	bne.n	a2a2 <Bytevc1Constraint_write_box@@Base+0x42>
    a2b0:	7eb9      	ldrb	r1, [r7, #26]
    a2b2:	4640      	mov	r0, r8
    a2b4:	f7fb ecfa 	blx	5cac <Bitstream_write_byte@plt>
    a2b8:	210f      	movs	r1, #15
    a2ba:	2204      	movs	r2, #4
    a2bc:	4640      	mov	r0, r8
    a2be:	f7fb ed26 	blx	5d0c <Bitstream_write_bits@plt>
    a2c2:	8bb9      	ldrh	r1, [r7, #28]
    a2c4:	220c      	movs	r2, #12
    a2c6:	4640      	mov	r0, r8
    a2c8:	f7fb ed20 	blx	5d0c <Bitstream_write_bits@plt>
    a2cc:	213f      	movs	r1, #63	; 0x3f
    a2ce:	2206      	movs	r2, #6
    a2d0:	4640      	mov	r0, r8
    a2d2:	f7fb ed1c 	blx	5d0c <Bitstream_write_bits@plt>
    a2d6:	7fb9      	ldrb	r1, [r7, #30]
    a2d8:	2202      	movs	r2, #2
    a2da:	4640      	mov	r0, r8
    a2dc:	f7fb ed16 	blx	5d0c <Bitstream_write_bits@plt>
    a2e0:	213f      	movs	r1, #63	; 0x3f
    a2e2:	2206      	movs	r2, #6
    a2e4:	4640      	mov	r0, r8
    a2e6:	f7fb ed12 	blx	5d0c <Bitstream_write_bits@plt>
    a2ea:	7ff9      	ldrb	r1, [r7, #31]
    a2ec:	2202      	movs	r2, #2
    a2ee:	4640      	mov	r0, r8
    a2f0:	f7fb ed0c 	blx	5d0c <Bitstream_write_bits@plt>
    a2f4:	211f      	movs	r1, #31
    a2f6:	2205      	movs	r2, #5
    a2f8:	4640      	mov	r0, r8
    a2fa:	f7fb ed08 	blx	5d0c <Bitstream_write_bits@plt>
    a2fe:	f897 1020 	ldrb.w	r1, [r7, #32]
    a302:	2203      	movs	r2, #3
    a304:	4640      	mov	r0, r8
    a306:	f7fb ed02 	blx	5d0c <Bitstream_write_bits@plt>
    a30a:	211f      	movs	r1, #31
    a30c:	2205      	movs	r2, #5
    a30e:	4640      	mov	r0, r8
    a310:	f7fb ecfc 	blx	5d0c <Bitstream_write_bits@plt>
    a314:	2203      	movs	r2, #3
    a316:	f897 1021 	ldrb.w	r1, [r7, #33]	; 0x21
    a31a:	4640      	mov	r0, r8
    a31c:	f7fb ecf6 	blx	5d0c <Bitstream_write_bits@plt>
    a320:	8c79      	ldrh	r1, [r7, #34]	; 0x22
    a322:	4640      	mov	r0, r8
    a324:	f7fb ecf8 	blx	5d18 <Bitstream_write_16bit@plt>
    a328:	f897 1024 	ldrb.w	r1, [r7, #36]	; 0x24
    a32c:	2202      	movs	r2, #2
    a32e:	4640      	mov	r0, r8
    a330:	f7fb ecec 	blx	5d0c <Bitstream_write_bits@plt>
    a334:	f897 1025 	ldrb.w	r1, [r7, #37]	; 0x25
    a338:	2203      	movs	r2, #3
    a33a:	4640      	mov	r0, r8
    a33c:	f7fb ece6 	blx	5d0c <Bitstream_write_bits@plt>
    a340:	f897 1026 	ldrb.w	r1, [r7, #38]	; 0x26
    a344:	2201      	movs	r2, #1
    a346:	4640      	mov	r0, r8
    a348:	f7fb ece0 	blx	5d0c <Bitstream_write_bits@plt>
    a34c:	f897 1027 	ldrb.w	r1, [r7, #39]	; 0x27
    a350:	2202      	movs	r2, #2
    a352:	4640      	mov	r0, r8
    a354:	f7fb ecda 	blx	5d0c <Bitstream_write_bits@plt>
    a358:	4640      	mov	r0, r8
    a35a:	f897 1028 	ldrb.w	r1, [r7, #40]	; 0x28
    a35e:	f7fb eca6 	blx	5cac <Bitstream_write_byte@plt>
    a362:	6abb      	ldr	r3, [r7, #40]	; 0x28
    a364:	2b00      	cmp	r3, #0
    a366:	bfc4      	itt	gt
    a368:	6afd      	ldrgt	r5, [r7, #44]	; 0x2c
    a36a:	f04f 0900 	movgt.w	r9, #0
    a36e:	dd3d      	ble.n	a3ec <Bytevc1Constraint_write_box@@Base+0x18c>
    a370:	eb09 0649 	add.w	r6, r9, r9, lsl #1
    a374:	2201      	movs	r2, #1
    a376:	4640      	mov	r0, r8
    a378:	f815 1026 	ldrb.w	r1, [r5, r6, lsl #2]
    a37c:	00b6      	lsls	r6, r6, #2
    a37e:	f7fb ecc6 	blx	5d0c <Bitstream_write_bits@plt>
    a382:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    a384:	2201      	movs	r2, #1
    a386:	4640      	mov	r0, r8
    a388:	4433      	add	r3, r6
    a38a:	7859      	ldrb	r1, [r3, #1]
    a38c:	f7fb ecbe 	blx	5d0c <Bitstream_write_bits@plt>
    a390:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    a392:	2206      	movs	r2, #6
    a394:	4640      	mov	r0, r8
    a396:	4433      	add	r3, r6
    a398:	7899      	ldrb	r1, [r3, #2]
    a39a:	f7fb ecb8 	blx	5d0c <Bitstream_write_bits@plt>
    a39e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    a3a0:	4640      	mov	r0, r8
    a3a2:	4433      	add	r3, r6
    a3a4:	8899      	ldrh	r1, [r3, #4]
    a3a6:	f7fb ecb8 	blx	5d18 <Bitstream_write_16bit@plt>
    a3aa:	6afd      	ldr	r5, [r7, #44]	; 0x2c
    a3ac:	19ab      	adds	r3, r5, r6
    a3ae:	889a      	ldrh	r2, [r3, #4]
    a3b0:	b1ba      	cbz	r2, a3e2 <Bytevc1Constraint_write_box@@Base+0x182>
    a3b2:	2400      	movs	r4, #0
    a3b4:	689b      	ldr	r3, [r3, #8]
    a3b6:	4640      	mov	r0, r8
    a3b8:	00e5      	lsls	r5, r4, #3
    a3ba:	f833 1034 	ldrh.w	r1, [r3, r4, lsl #3]
    a3be:	f7fb ecac 	blx	5d18 <Bitstream_write_16bit@plt>
    a3c2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    a3c4:	4640      	mov	r0, r8
    a3c6:	4433      	add	r3, r6
    a3c8:	689b      	ldr	r3, [r3, #8]
    a3ca:	441d      	add	r5, r3
    a3cc:	f833 2034 	ldrh.w	r2, [r3, r4, lsl #3]
    a3d0:	3401      	adds	r4, #1
    a3d2:	6869      	ldr	r1, [r5, #4]
    a3d4:	f7fb ec46 	blx	5c64 <Bitstream_write_bytes@plt>
    a3d8:	6afd      	ldr	r5, [r7, #44]	; 0x2c
    a3da:	19ab      	adds	r3, r5, r6
    a3dc:	889a      	ldrh	r2, [r3, #4]
    a3de:	42a2      	cmp	r2, r4
    a3e0:	dce8      	bgt.n	a3b4 <Bytevc1Constraint_write_box@@Base+0x154>
    a3e2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    a3e4:	f109 0901 	add.w	r9, r9, #1
    a3e8:	454b      	cmp	r3, r9
    a3ea:	dcc1      	bgt.n	a370 <Bytevc1Constraint_write_box@@Base+0x110>
    a3ec:	4638      	mov	r0, r7
    a3ee:	4641      	mov	r1, r8
    a3f0:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    a3f4:	f009 bdb6 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000a3f8 <CodingConstraint_write_box@@Base>:
    a3f8:	b538      	push	{r3, r4, r5, lr}
    a3fa:	4605      	mov	r5, r0
    a3fc:	460c      	mov	r4, r1
    a3fe:	f7fb ec80 	blx	5d00 <Box_write_header@plt>
    a402:	7b29      	ldrb	r1, [r5, #12]
    a404:	4620      	mov	r0, r4
    a406:	f7fb ec52 	blx	5cac <Bitstream_write_byte@plt>
    a40a:	6929      	ldr	r1, [r5, #16]
    a40c:	4620      	mov	r0, r4
    a40e:	f7fb ecc0 	blx	5d90 <Bitstream_write_24bit@plt>
    a412:	7d29      	ldrb	r1, [r5, #20]
    a414:	4620      	mov	r0, r4
    a416:	2201      	movs	r2, #1
    a418:	f7fb ec78 	blx	5d0c <Bitstream_write_bits@plt>
    a41c:	7d69      	ldrb	r1, [r5, #21]
    a41e:	4620      	mov	r0, r4
    a420:	2201      	movs	r2, #1
    a422:	f7fb ec74 	blx	5d0c <Bitstream_write_bits@plt>
    a426:	7da9      	ldrb	r1, [r5, #22]
    a428:	4620      	mov	r0, r4
    a42a:	2204      	movs	r2, #4
    a42c:	f7fb ec6e 	blx	5d0c <Bitstream_write_bits@plt>
    a430:	69a9      	ldr	r1, [r5, #24]
    a432:	4620      	mov	r0, r4
    a434:	221a      	movs	r2, #26
    a436:	f7fb ec6a 	blx	5d0c <Bitstream_write_bits@plt>
    a43a:	4628      	mov	r0, r5
    a43c:	4621      	mov	r1, r4
    a43e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    a442:	f009 bd8f 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    a446:	bf00      	nop

0000a448 <SampleEntry_write_box@@Base>:
    a448:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    a44a:	4607      	mov	r7, r0
    a44c:	460e      	mov	r6, r1
    a44e:	f7fb ec58 	blx	5d00 <Box_write_header@plt>
    a452:	f107 040b 	add.w	r4, r7, #11
    a456:	f107 0511 	add.w	r5, r7, #17
    a45a:	f814 1f01 	ldrb.w	r1, [r4, #1]!
    a45e:	4630      	mov	r0, r6
    a460:	f7fb ec24 	blx	5cac <Bitstream_write_byte@plt>
    a464:	42ac      	cmp	r4, r5
    a466:	d1f8      	bne.n	a45a <SampleEntry_write_box@@Base+0x12>
    a468:	8a79      	ldrh	r1, [r7, #18]
    a46a:	4630      	mov	r0, r6
    a46c:	f7fb ec54 	blx	5d18 <Bitstream_write_16bit@plt>
    a470:	8ab9      	ldrh	r1, [r7, #20]
    a472:	4630      	mov	r0, r6
    a474:	f107 0414 	add.w	r4, r7, #20
    a478:	f7fb ec4e 	blx	5d18 <Bitstream_write_16bit@plt>
    a47c:	4630      	mov	r0, r6
    a47e:	8af9      	ldrh	r1, [r7, #22]
    a480:	f107 0520 	add.w	r5, r7, #32
    a484:	f7fb ec48 	blx	5d18 <Bitstream_write_16bit@plt>
    a488:	f854 1f04 	ldr.w	r1, [r4, #4]!
    a48c:	4630      	mov	r0, r6
    a48e:	f7fb ec1a 	blx	5cc4 <Bitstream_write_32bit@plt>
    a492:	42ac      	cmp	r4, r5
    a494:	d1f8      	bne.n	a488 <SampleEntry_write_box@@Base+0x40>
    a496:	8cb9      	ldrh	r1, [r7, #36]	; 0x24
    a498:	4630      	mov	r0, r6
    a49a:	f7fb ec3e 	blx	5d18 <Bitstream_write_16bit@plt>
    a49e:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
    a4a0:	4630      	mov	r0, r6
    a4a2:	f107 0536 	add.w	r5, r7, #54	; 0x36
    a4a6:	f7fb ec38 	blx	5d18 <Bitstream_write_16bit@plt>
    a4aa:	6ab9      	ldr	r1, [r7, #40]	; 0x28
    a4ac:	4630      	mov	r0, r6
    a4ae:	2400      	movs	r4, #0
    a4b0:	f7fb ec08 	blx	5cc4 <Bitstream_write_32bit@plt>
    a4b4:	6af9      	ldr	r1, [r7, #44]	; 0x2c
    a4b6:	4630      	mov	r0, r6
    a4b8:	f7fb ec04 	blx	5cc4 <Bitstream_write_32bit@plt>
    a4bc:	6b39      	ldr	r1, [r7, #48]	; 0x30
    a4be:	4630      	mov	r0, r6
    a4c0:	f7fb ec00 	blx	5cc4 <Bitstream_write_32bit@plt>
    a4c4:	8eb9      	ldrh	r1, [r7, #52]	; 0x34
    a4c6:	4630      	mov	r0, r6
    a4c8:	f7fb ec26 	blx	5d18 <Bitstream_write_16bit@plt>
    a4cc:	4630      	mov	r0, r6
    a4ce:	f897 1036 	ldrb.w	r1, [r7, #54]	; 0x36
    a4d2:	f7fb ebec 	blx	5cac <Bitstream_write_byte@plt>
    a4d6:	f897 3036 	ldrb.w	r3, [r7, #54]	; 0x36
    a4da:	b14b      	cbz	r3, a4f0 <SampleEntry_write_box@@Base+0xa8>
    a4dc:	4630      	mov	r0, r6
    a4de:	f815 1f01 	ldrb.w	r1, [r5, #1]!
    a4e2:	f7fb ebe4 	blx	5cac <Bitstream_write_byte@plt>
    a4e6:	f897 3036 	ldrb.w	r3, [r7, #54]	; 0x36
    a4ea:	3401      	adds	r4, #1
    a4ec:	42a3      	cmp	r3, r4
    a4ee:	dcf5      	bgt.n	a4dc <SampleEntry_write_box@@Base+0x94>
    a4f0:	f8b7 1058 	ldrh.w	r1, [r7, #88]	; 0x58
    a4f4:	4630      	mov	r0, r6
    a4f6:	f7fb ec10 	blx	5d18 <Bitstream_write_16bit@plt>
    a4fa:	f9b7 105a 	ldrsh.w	r1, [r7, #90]	; 0x5a
    a4fe:	4630      	mov	r0, r6
    a500:	f7fb ec0a 	blx	5d18 <Bitstream_write_16bit@plt>
    a504:	f107 005c 	add.w	r0, r7, #92	; 0x5c
    a508:	4631      	mov	r1, r6
    a50a:	f7fb ec72 	blx	5df0 <Bytevc1Constraint_write_box@plt>
    a50e:	f107 008c 	add.w	r0, r7, #140	; 0x8c
    a512:	4631      	mov	r1, r6
    a514:	f7fb ec72 	blx	5dfc <CodingConstraint_write_box@plt>
    a518:	4638      	mov	r0, r7
    a51a:	4631      	mov	r1, r6
    a51c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    a520:	f009 bd20 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000a524 <Bytevc1Constraint_parse_box@@Base>:
    a524:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a528:	460c      	mov	r4, r1
    a52a:	4605      	mov	r5, r0
    a52c:	f8d1 8008 	ldr.w	r8, [r1, #8]
    a530:	f7fb ebfe 	blx	5d30 <Box_parse_header@plt>
    a534:	b110      	cbz	r0, a53c <Bytevc1Constraint_parse_box@@Base+0x18>
    a536:	2001      	movs	r0, #1
    a538:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a53c:	4620      	mov	r0, r4
    a53e:	f105 0613 	add.w	r6, r5, #19
    a542:	f7fb eba8 	blx	5c94 <Bitstream_read_byte@plt>
    a546:	2102      	movs	r1, #2
    a548:	f105 0719 	add.w	r7, r5, #25
    a54c:	7328      	strb	r0, [r5, #12]
    a54e:	4620      	mov	r0, r4
    a550:	f7fb ebbe 	blx	5cd0 <Bitstream_read_bits@plt>
    a554:	2101      	movs	r1, #1
    a556:	7368      	strb	r0, [r5, #13]
    a558:	4620      	mov	r0, r4
    a55a:	f7fb ebba 	blx	5cd0 <Bitstream_read_bits@plt>
    a55e:	2105      	movs	r1, #5
    a560:	73a8      	strb	r0, [r5, #14]
    a562:	4620      	mov	r0, r4
    a564:	f7fb ebb4 	blx	5cd0 <Bitstream_read_bits@plt>
    a568:	73e8      	strb	r0, [r5, #15]
    a56a:	4620      	mov	r0, r4
    a56c:	f7fb eaf0 	blx	5b50 <Bitstream_read_32bit@plt>
    a570:	6128      	str	r0, [r5, #16]
    a572:	4620      	mov	r0, r4
    a574:	f7fb eb8e 	blx	5c94 <Bitstream_read_byte@plt>
    a578:	f806 0f01 	strb.w	r0, [r6, #1]!
    a57c:	42be      	cmp	r6, r7
    a57e:	d1f8      	bne.n	a572 <Bytevc1Constraint_parse_box@@Base+0x4e>
    a580:	4620      	mov	r0, r4
    a582:	f7fb eb88 	blx	5c94 <Bitstream_read_byte@plt>
    a586:	2104      	movs	r1, #4
    a588:	76a8      	strb	r0, [r5, #26]
    a58a:	4620      	mov	r0, r4
    a58c:	f7fb eba0 	blx	5cd0 <Bitstream_read_bits@plt>
    a590:	210c      	movs	r1, #12
    a592:	4620      	mov	r0, r4
    a594:	f7fb eb9c 	blx	5cd0 <Bitstream_read_bits@plt>
    a598:	2106      	movs	r1, #6
    a59a:	83a8      	strh	r0, [r5, #28]
    a59c:	4620      	mov	r0, r4
    a59e:	f7fb eb98 	blx	5cd0 <Bitstream_read_bits@plt>
    a5a2:	2102      	movs	r1, #2
    a5a4:	4620      	mov	r0, r4
    a5a6:	f7fb eb94 	blx	5cd0 <Bitstream_read_bits@plt>
    a5aa:	2106      	movs	r1, #6
    a5ac:	77a8      	strb	r0, [r5, #30]
    a5ae:	4620      	mov	r0, r4
    a5b0:	f7fb eb8e 	blx	5cd0 <Bitstream_read_bits@plt>
    a5b4:	2102      	movs	r1, #2
    a5b6:	4620      	mov	r0, r4
    a5b8:	f7fb eb8a 	blx	5cd0 <Bitstream_read_bits@plt>
    a5bc:	2105      	movs	r1, #5
    a5be:	77e8      	strb	r0, [r5, #31]
    a5c0:	4620      	mov	r0, r4
    a5c2:	f7fb eb86 	blx	5cd0 <Bitstream_read_bits@plt>
    a5c6:	2103      	movs	r1, #3
    a5c8:	4620      	mov	r0, r4
    a5ca:	f7fb eb82 	blx	5cd0 <Bitstream_read_bits@plt>
    a5ce:	2105      	movs	r1, #5
    a5d0:	f885 0020 	strb.w	r0, [r5, #32]
    a5d4:	4620      	mov	r0, r4
    a5d6:	f7fb eb7c 	blx	5cd0 <Bitstream_read_bits@plt>
    a5da:	2103      	movs	r1, #3
    a5dc:	4620      	mov	r0, r4
    a5de:	f7fb eb78 	blx	5cd0 <Bitstream_read_bits@plt>
    a5e2:	f885 0021 	strb.w	r0, [r5, #33]	; 0x21
    a5e6:	4620      	mov	r0, r4
    a5e8:	f7fb eba8 	blx	5d3c <Bitstream_read_16bit@plt>
    a5ec:	2102      	movs	r1, #2
    a5ee:	8468      	strh	r0, [r5, #34]	; 0x22
    a5f0:	4620      	mov	r0, r4
    a5f2:	f7fb eb6e 	blx	5cd0 <Bitstream_read_bits@plt>
    a5f6:	2103      	movs	r1, #3
    a5f8:	f885 0024 	strb.w	r0, [r5, #36]	; 0x24
    a5fc:	4620      	mov	r0, r4
    a5fe:	f7fb eb68 	blx	5cd0 <Bitstream_read_bits@plt>
    a602:	2101      	movs	r1, #1
    a604:	f885 0025 	strb.w	r0, [r5, #37]	; 0x25
    a608:	4620      	mov	r0, r4
    a60a:	f7fb eb62 	blx	5cd0 <Bitstream_read_bits@plt>
    a60e:	2102      	movs	r1, #2
    a610:	f885 0026 	strb.w	r0, [r5, #38]	; 0x26
    a614:	4620      	mov	r0, r4
    a616:	f7fb eb5c 	blx	5cd0 <Bitstream_read_bits@plt>
    a61a:	f885 0027 	strb.w	r0, [r5, #39]	; 0x27
    a61e:	4620      	mov	r0, r4
    a620:	f7fb eb38 	blx	5c94 <Bitstream_read_byte@plt>
    a624:	f64f 73fd 	movw	r3, #65533	; 0xfffd
    a628:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
    a62c:	1e42      	subs	r2, r0, #1
    a62e:	4606      	mov	r6, r0
    a630:	429a      	cmp	r2, r3
    a632:	62a8      	str	r0, [r5, #40]	; 0x28
    a634:	f63f af7f 	bhi.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a638:	210c      	movs	r1, #12
    a63a:	f7fb ebbc 	blx	5db4 <calloc@plt>
    a63e:	62e8      	str	r0, [r5, #44]	; 0x2c
    a640:	2800      	cmp	r0, #0
    a642:	f43f af78 	beq.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a646:	2e00      	cmp	r6, #0
    a648:	d070      	beq.n	a72c <Bytevc1Constraint_parse_box@@Base+0x208>
    a64a:	68a3      	ldr	r3, [r4, #8]
    a64c:	682a      	ldr	r2, [r5, #0]
    a64e:	ebc8 0303 	rsb	r3, r8, r3
    a652:	429a      	cmp	r2, r3
    a654:	f4ff af6f 	bcc.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a658:	2700      	movs	r7, #0
    a65a:	4606      	mov	r6, r0
    a65c:	46b9      	mov	r9, r7
    a65e:	2101      	movs	r1, #1
    a660:	4620      	mov	r0, r4
    a662:	f7fb eb36 	blx	5cd0 <Bitstream_read_bits@plt>
    a666:	2101      	movs	r1, #1
    a668:	55f0      	strb	r0, [r6, r7]
    a66a:	4620      	mov	r0, r4
    a66c:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
    a66e:	19de      	adds	r6, r3, r7
    a670:	f7fb eb2e 	blx	5cd0 <Bitstream_read_bits@plt>
    a674:	2106      	movs	r1, #6
    a676:	7070      	strb	r0, [r6, #1]
    a678:	4620      	mov	r0, r4
    a67a:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
    a67c:	19de      	adds	r6, r3, r7
    a67e:	f7fb eb28 	blx	5cd0 <Bitstream_read_bits@plt>
    a682:	70b0      	strb	r0, [r6, #2]
    a684:	4620      	mov	r0, r4
    a686:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
    a688:	eb03 0a07 	add.w	sl, r3, r7
    a68c:	f7fb eb56 	blx	5d3c <Bitstream_read_16bit@plt>
    a690:	6aee      	ldr	r6, [r5, #44]	; 0x2c
    a692:	443e      	add	r6, r7
    a694:	f8aa 0004 	strh.w	r0, [sl, #4]
    a698:	f8b6 a004 	ldrh.w	sl, [r6, #4]
    a69c:	f41a 4f00 	tst.w	sl, #32768	; 0x8000
    a6a0:	f47f af49 	bne.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a6a4:	4650      	mov	r0, sl
    a6a6:	2108      	movs	r1, #8
    a6a8:	f7fb eb84 	blx	5db4 <calloc@plt>
    a6ac:	60b0      	str	r0, [r6, #8]
    a6ae:	2800      	cmp	r0, #0
    a6b0:	f43f af41 	beq.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a6b4:	f1ba 0f00 	cmp.w	sl, #0
    a6b8:	d029      	beq.n	a70e <Bytevc1Constraint_parse_box@@Base+0x1ea>
    a6ba:	4683      	mov	fp, r0
    a6bc:	2600      	movs	r6, #0
    a6be:	e001      	b.n	a6c4 <Bytevc1Constraint_parse_box@@Base+0x1a0>
    a6c0:	f8d3 b008 	ldr.w	fp, [r3, #8]
    a6c4:	4620      	mov	r0, r4
    a6c6:	ea4f 0ac6 	mov.w	sl, r6, lsl #3
    a6ca:	f7fb eb38 	blx	5d3c <Bitstream_read_16bit@plt>
    a6ce:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
    a6d0:	443b      	add	r3, r7
    a6d2:	689b      	ldr	r3, [r3, #8]
    a6d4:	449a      	add	sl, r3
    a6d6:	f82b 0036 	strh.w	r0, [fp, r6, lsl #3]
    a6da:	f833 b036 	ldrh.w	fp, [r3, r6, lsl #3]
    a6de:	3601      	adds	r6, #1
    a6e0:	f41b 4f00 	tst.w	fp, #32768	; 0x8000
    a6e4:	4658      	mov	r0, fp
    a6e6:	f47f af26 	bne.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a6ea:	f7fb e9ae 	blx	5a48 <malloc@plt>
    a6ee:	465a      	mov	r2, fp
    a6f0:	4603      	mov	r3, r0
    a6f2:	4601      	mov	r1, r0
    a6f4:	f8ca 3004 	str.w	r3, [sl, #4]
    a6f8:	4620      	mov	r0, r4
    a6fa:	2b00      	cmp	r3, #0
    a6fc:	f43f af1b 	beq.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a700:	f7fb eb82 	blx	5e08 <Bitstream_read_bytes@plt>
    a704:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
    a706:	443b      	add	r3, r7
    a708:	889a      	ldrh	r2, [r3, #4]
    a70a:	42b2      	cmp	r2, r6
    a70c:	dcd8      	bgt.n	a6c0 <Bytevc1Constraint_parse_box@@Base+0x19c>
    a70e:	6aab      	ldr	r3, [r5, #40]	; 0x28
    a710:	f109 0901 	add.w	r9, r9, #1
    a714:	454b      	cmp	r3, r9
    a716:	dd09      	ble.n	a72c <Bytevc1Constraint_parse_box@@Base+0x208>
    a718:	68a3      	ldr	r3, [r4, #8]
    a71a:	370c      	adds	r7, #12
    a71c:	682a      	ldr	r2, [r5, #0]
    a71e:	ebc8 0303 	rsb	r3, r8, r3
    a722:	4293      	cmp	r3, r2
    a724:	f63f af07 	bhi.w	a536 <Bytevc1Constraint_parse_box@@Base+0x12>
    a728:	6aee      	ldr	r6, [r5, #44]	; 0x2c
    a72a:	e798      	b.n	a65e <Bytevc1Constraint_parse_box@@Base+0x13a>
    a72c:	68a3      	ldr	r3, [r4, #8]
    a72e:	6828      	ldr	r0, [r5, #0]
    a730:	ebc8 0803 	rsb	r8, r8, r3
    a734:	ebb8 0000 	subs.w	r0, r8, r0
    a738:	bf18      	it	ne
    a73a:	2001      	movne	r0, #1
    a73c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

0000a740 <CodingConstraint_parse_box@@Base>:
    a740:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    a742:	460c      	mov	r4, r1
    a744:	4605      	mov	r5, r0
    a746:	688f      	ldr	r7, [r1, #8]
    a748:	f7fb eaf2 	blx	5d30 <Box_parse_header@plt>
    a74c:	4606      	mov	r6, r0
    a74e:	b110      	cbz	r0, a756 <CodingConstraint_parse_box@@Base+0x16>
    a750:	2601      	movs	r6, #1
    a752:	4630      	mov	r0, r6
    a754:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    a756:	4620      	mov	r0, r4
    a758:	f7fb ea9c 	blx	5c94 <Bitstream_read_byte@plt>
    a75c:	7328      	strb	r0, [r5, #12]
    a75e:	4620      	mov	r0, r4
    a760:	f7fb eb22 	blx	5da8 <Bitstream_read_24bit@plt>
    a764:	2101      	movs	r1, #1
    a766:	6128      	str	r0, [r5, #16]
    a768:	4620      	mov	r0, r4
    a76a:	f7fb eab2 	blx	5cd0 <Bitstream_read_bits@plt>
    a76e:	2101      	movs	r1, #1
    a770:	7528      	strb	r0, [r5, #20]
    a772:	4620      	mov	r0, r4
    a774:	f7fb eaac 	blx	5cd0 <Bitstream_read_bits@plt>
    a778:	2104      	movs	r1, #4
    a77a:	7568      	strb	r0, [r5, #21]
    a77c:	4620      	mov	r0, r4
    a77e:	f7fb eaa8 	blx	5cd0 <Bitstream_read_bits@plt>
    a782:	211a      	movs	r1, #26
    a784:	75a8      	strb	r0, [r5, #22]
    a786:	4620      	mov	r0, r4
    a788:	f7fb eaa2 	blx	5cd0 <Bitstream_read_bits@plt>
    a78c:	682b      	ldr	r3, [r5, #0]
    a78e:	441f      	add	r7, r3
    a790:	61a8      	str	r0, [r5, #24]
    a792:	4630      	mov	r0, r6
    a794:	60a7      	str	r7, [r4, #8]
    a796:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000a798 <SampleEntry_parse_box@@Base>:
    a798:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a79c:	b083      	sub	sp, #12
    a79e:	4680      	mov	r8, r0
    a7a0:	460c      	mov	r4, r1
    a7a2:	688e      	ldr	r6, [r1, #8]
    a7a4:	f7fb eac4 	blx	5d30 <Box_parse_header@plt>
    a7a8:	f108 050b 	add.w	r5, r8, #11
    a7ac:	f108 0711 	add.w	r7, r8, #17
    a7b0:	4683      	mov	fp, r0
    a7b2:	2800      	cmp	r0, #0
    a7b4:	f040 8099 	bne.w	a8ea <SampleEntry_parse_box@@Base+0x152>
    a7b8:	4620      	mov	r0, r4
    a7ba:	f7fb ea6c 	blx	5c94 <Bitstream_read_byte@plt>
    a7be:	f805 0f01 	strb.w	r0, [r5, #1]!
    a7c2:	42bd      	cmp	r5, r7
    a7c4:	d1f8      	bne.n	a7b8 <SampleEntry_parse_box@@Base+0x20>
    a7c6:	4620      	mov	r0, r4
    a7c8:	f108 0514 	add.w	r5, r8, #20
    a7cc:	f7fb eab6 	blx	5d3c <Bitstream_read_16bit@plt>
    a7d0:	f108 0720 	add.w	r7, r8, #32
    a7d4:	f8a8 0012 	strh.w	r0, [r8, #18]
    a7d8:	4620      	mov	r0, r4
    a7da:	f7fb eab0 	blx	5d3c <Bitstream_read_16bit@plt>
    a7de:	f8a8 0014 	strh.w	r0, [r8, #20]
    a7e2:	4620      	mov	r0, r4
    a7e4:	f7fb eaaa 	blx	5d3c <Bitstream_read_16bit@plt>
    a7e8:	f8a8 0016 	strh.w	r0, [r8, #22]
    a7ec:	4620      	mov	r0, r4
    a7ee:	f7fb e9b0 	blx	5b50 <Bitstream_read_32bit@plt>
    a7f2:	f845 0f04 	str.w	r0, [r5, #4]!
    a7f6:	42bd      	cmp	r5, r7
    a7f8:	d1f8      	bne.n	a7ec <SampleEntry_parse_box@@Base+0x54>
    a7fa:	4620      	mov	r0, r4
    a7fc:	f7fb ea9e 	blx	5d3c <Bitstream_read_16bit@plt>
    a800:	f8a8 0024 	strh.w	r0, [r8, #36]	; 0x24
    a804:	4620      	mov	r0, r4
    a806:	f7fb ea9a 	blx	5d3c <Bitstream_read_16bit@plt>
    a80a:	f8a8 0026 	strh.w	r0, [r8, #38]	; 0x26
    a80e:	4620      	mov	r0, r4
    a810:	f7fb e99e 	blx	5b50 <Bitstream_read_32bit@plt>
    a814:	f8c8 0028 	str.w	r0, [r8, #40]	; 0x28
    a818:	4620      	mov	r0, r4
    a81a:	f7fb e99a 	blx	5b50 <Bitstream_read_32bit@plt>
    a81e:	f8c8 002c 	str.w	r0, [r8, #44]	; 0x2c
    a822:	4620      	mov	r0, r4
    a824:	f7fb e994 	blx	5b50 <Bitstream_read_32bit@plt>
    a828:	f8c8 0030 	str.w	r0, [r8, #48]	; 0x30
    a82c:	4620      	mov	r0, r4
    a82e:	f7fb ea86 	blx	5d3c <Bitstream_read_16bit@plt>
    a832:	f8a8 0034 	strh.w	r0, [r8, #52]	; 0x34
    a836:	4620      	mov	r0, r4
    a838:	f7fb ea2c 	blx	5c94 <Bitstream_read_byte@plt>
    a83c:	f108 0137 	add.w	r1, r8, #55	; 0x37
    a840:	281f      	cmp	r0, #31
    a842:	4602      	mov	r2, r0
    a844:	4620      	mov	r0, r4
    a846:	bf28      	it	cs
    a848:	221f      	movcs	r2, #31
    a84a:	b2d2      	uxtb	r2, r2
    a84c:	f888 2036 	strb.w	r2, [r8, #54]	; 0x36
    a850:	f7fb eada 	blx	5e08 <Bitstream_read_bytes@plt>
    a854:	f898 3036 	ldrb.w	r3, [r8, #54]	; 0x36
    a858:	2200      	movs	r2, #0
    a85a:	4620      	mov	r0, r4
    a85c:	4443      	add	r3, r8
    a85e:	f883 2037 	strb.w	r2, [r3, #55]	; 0x37
    a862:	f7fb ea6c 	blx	5d3c <Bitstream_read_16bit@plt>
    a866:	f8a8 0058 	strh.w	r0, [r8, #88]	; 0x58
    a86a:	4620      	mov	r0, r4
    a86c:	f7fb ea66 	blx	5d3c <Bitstream_read_16bit@plt>
    a870:	68a2      	ldr	r2, [r4, #8]
    a872:	f8d8 3000 	ldr.w	r3, [r8]
    a876:	1a9b      	subs	r3, r3, r2
    a878:	441e      	add	r6, r3
    a87a:	2e00      	cmp	r6, #0
    a87c:	f8a8 005a 	strh.w	r0, [r8, #90]	; 0x5a
    a880:	dd35      	ble.n	a8ee <SampleEntry_parse_box@@Base+0x156>
    a882:	f8df 9080 	ldr.w	r9, [pc, #128]	; a904 <SampleEntry_parse_box@@Base+0x16c>
    a886:	f108 038c 	add.w	r3, r8, #140	; 0x8c
    a88a:	f8df a07c 	ldr.w	sl, [pc, #124]	; a908 <SampleEntry_parse_box@@Base+0x170>
    a88e:	44f9      	add	r9, pc
    a890:	9301      	str	r3, [sp, #4]
    a892:	44fa      	add	sl, pc
    a894:	e009      	b.n	a8aa <SampleEntry_parse_box@@Base+0x112>
    a896:	f7fb e9d4 	blx	5c40 <string_type_to_int32@plt>
    a89a:	4287      	cmp	r7, r0
    a89c:	d02b      	beq.n	a8f6 <SampleEntry_parse_box@@Base+0x15e>
    a89e:	68a3      	ldr	r3, [r4, #8]
    a8a0:	442b      	add	r3, r5
    a8a2:	60a3      	str	r3, [r4, #8]
    a8a4:	1b76      	subs	r6, r6, r5
    a8a6:	2e00      	cmp	r6, #0
    a8a8:	dd21      	ble.n	a8ee <SampleEntry_parse_box@@Base+0x156>
    a8aa:	4620      	mov	r0, r4
    a8ac:	f7fb e950 	blx	5b50 <Bitstream_read_32bit@plt>
    a8b0:	4605      	mov	r5, r0
    a8b2:	4620      	mov	r0, r4
    a8b4:	f7fb e94c 	blx	5b50 <Bitstream_read_32bit@plt>
    a8b8:	fab5 f385 	clz	r3, r5
    a8bc:	095b      	lsrs	r3, r3, #5
    a8be:	42b5      	cmp	r5, r6
    a8c0:	bf88      	it	hi
    a8c2:	f043 0301 	orrhi.w	r3, r3, #1
    a8c6:	4607      	mov	r7, r0
    a8c8:	4648      	mov	r0, r9
    a8ca:	b973      	cbnz	r3, a8ea <SampleEntry_parse_box@@Base+0x152>
    a8cc:	68a3      	ldr	r3, [r4, #8]
    a8ce:	3b08      	subs	r3, #8
    a8d0:	60a3      	str	r3, [r4, #8]
    a8d2:	f7fb e9b6 	blx	5c40 <string_type_to_int32@plt>
    a8d6:	4287      	cmp	r7, r0
    a8d8:	4650      	mov	r0, sl
    a8da:	d1dc      	bne.n	a896 <SampleEntry_parse_box@@Base+0xfe>
    a8dc:	f108 005c 	add.w	r0, r8, #92	; 0x5c
    a8e0:	4621      	mov	r1, r4
    a8e2:	f7fb ea98 	blx	5e14 <Bytevc1Constraint_parse_box@plt>
    a8e6:	2800      	cmp	r0, #0
    a8e8:	d0dc      	beq.n	a8a4 <SampleEntry_parse_box@@Base+0x10c>
    a8ea:	f04f 0b01 	mov.w	fp, #1
    a8ee:	4658      	mov	r0, fp
    a8f0:	b003      	add	sp, #12
    a8f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a8f6:	9801      	ldr	r0, [sp, #4]
    a8f8:	4621      	mov	r1, r4
    a8fa:	f7fb ea92 	blx	5e20 <CodingConstraint_parse_box@plt>
    a8fe:	2800      	cmp	r0, #0
    a900:	d0d0      	beq.n	a8a4 <SampleEntry_parse_box@@Base+0x10c>
    a902:	e7f2      	b.n	a8ea <SampleEntry_parse_box@@Base+0x152>
    a904:	a416      	add	r4, pc, #88	; (adr r4, a960 <FileTypeBox_write_box@@Base+0x38>)
    a906:	0000      	movs	r0, r0
    a908:	a45a      	add	r4, pc, #360	; (adr r4, aa74 <FileTypeBox_parse_box@@Base+0xec>)
	...

0000a90c <SampleEntryBox_release@@Base>:
    a90c:	4770      	bx	lr
    a90e:	bf00      	nop

0000a910 <FileTypeBox_init@@Base>:
    a910:	f647 1270 	movw	r2, #31088	; 0x7970
    a914:	2300      	movs	r3, #0
    a916:	f2c6 6274 	movt	r2, #26228	; 0x6674
    a91a:	61c3      	str	r3, [r0, #28]
    a91c:	6042      	str	r2, [r0, #4]
    a91e:	6183      	str	r3, [r0, #24]
    a920:	60c3      	str	r3, [r0, #12]
    a922:	6143      	str	r3, [r0, #20]
    a924:	6103      	str	r3, [r0, #16]
    a926:	4770      	bx	lr

0000a928 <FileTypeBox_write_box@@Base>:
    a928:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    a92c:	4605      	mov	r5, r0
    a92e:	460f      	mov	r7, r1
    a930:	f7fb e9e6 	blx	5d00 <Box_write_header@plt>
    a934:	2400      	movs	r4, #0
    a936:	68eb      	ldr	r3, [r5, #12]
    a938:	4638      	mov	r0, r7
    a93a:	5d19      	ldrb	r1, [r3, r4]
    a93c:	3401      	adds	r4, #1
    a93e:	f7fb e9b6 	blx	5cac <Bitstream_write_byte@plt>
    a942:	2c04      	cmp	r4, #4
    a944:	d1f7      	bne.n	a936 <FileTypeBox_write_box@@Base+0xe>
    a946:	4638      	mov	r0, r7
    a948:	69a9      	ldr	r1, [r5, #24]
    a94a:	f7fb e9bc 	blx	5cc4 <Bitstream_write_32bit@plt>
    a94e:	69eb      	ldr	r3, [r5, #28]
    a950:	2b00      	cmp	r3, #0
    a952:	bfc8      	it	gt
    a954:	f04f 0800 	movgt.w	r8, #0
    a958:	dd10      	ble.n	a97c <FileTypeBox_write_box@@Base+0x54>
    a95a:	ea4f 0688 	mov.w	r6, r8, lsl #2
    a95e:	2400      	movs	r4, #0
    a960:	692b      	ldr	r3, [r5, #16]
    a962:	4638      	mov	r0, r7
    a964:	599b      	ldr	r3, [r3, r6]
    a966:	5d19      	ldrb	r1, [r3, r4]
    a968:	3401      	adds	r4, #1
    a96a:	f7fb e9a0 	blx	5cac <Bitstream_write_byte@plt>
    a96e:	2c04      	cmp	r4, #4
    a970:	d1f6      	bne.n	a960 <FileTypeBox_write_box@@Base+0x38>
    a972:	69eb      	ldr	r3, [r5, #28]
    a974:	f108 0801 	add.w	r8, r8, #1
    a978:	4543      	cmp	r3, r8
    a97a:	dcee      	bgt.n	a95a <FileTypeBox_write_box@@Base+0x32>
    a97c:	4628      	mov	r0, r5
    a97e:	4639      	mov	r1, r7
    a980:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    a984:	f009 baee 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000a988 <FileTypeBox_parse_box@@Base>:
    a988:	688b      	ldr	r3, [r1, #8]
    a98a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a98e:	b083      	sub	sp, #12
    a990:	460f      	mov	r7, r1
    a992:	4604      	mov	r4, r0
    a994:	9301      	str	r3, [sp, #4]
    a996:	f7fb e9cc 	blx	5d30 <Box_parse_header@plt>
    a99a:	4605      	mov	r5, r0
    a99c:	b938      	cbnz	r0, a9ae <FileTypeBox_parse_box@@Base+0x26>
    a99e:	6823      	ldr	r3, [r4, #0]
    a9a0:	2b00      	cmp	r3, #0
    a9a2:	dd04      	ble.n	a9ae <FileTypeBox_parse_box@@Base+0x26>
    a9a4:	9901      	ldr	r1, [sp, #4]
    a9a6:	687a      	ldr	r2, [r7, #4]
    a9a8:	440b      	add	r3, r1
    a9aa:	429a      	cmp	r2, r3
    a9ac:	d203      	bcs.n	a9b6 <FileTypeBox_parse_box@@Base+0x2e>
    a9ae:	2001      	movs	r0, #1
    a9b0:	b003      	add	sp, #12
    a9b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a9b6:	4638      	mov	r0, r7
    a9b8:	f7fb e8ca 	blx	5b50 <Bitstream_read_32bit@plt>
    a9bc:	4606      	mov	r6, r0
    a9be:	2005      	movs	r0, #5
    a9c0:	f7fb e842 	blx	5a48 <malloc@plt>
    a9c4:	1631      	asrs	r1, r6, #24
    a9c6:	1432      	asrs	r2, r6, #16
    a9c8:	4603      	mov	r3, r0
    a9ca:	4638      	mov	r0, r7
    a9cc:	60e3      	str	r3, [r4, #12]
    a9ce:	711d      	strb	r5, [r3, #4]
    a9d0:	70de      	strb	r6, [r3, #3]
    a9d2:	1236      	asrs	r6, r6, #8
    a9d4:	7019      	strb	r1, [r3, #0]
    a9d6:	709e      	strb	r6, [r3, #2]
    a9d8:	705a      	strb	r2, [r3, #1]
    a9da:	f7fb e8ba 	blx	5b50 <Bitstream_read_32bit@plt>
    a9de:	6823      	ldr	r3, [r4, #0]
    a9e0:	f1a3 0610 	sub.w	r6, r3, #16
    a9e4:	2e00      	cmp	r6, #0
    a9e6:	61a0      	str	r0, [r4, #24]
    a9e8:	dd6f      	ble.n	aaca <FileTypeBox_parse_box@@Base+0x142>
    a9ea:	f04f 080a 	mov.w	r8, #10
    a9ee:	e046      	b.n	aa7e <FileTypeBox_parse_box@@Base+0xf6>
    a9f0:	2005      	movs	r0, #5
    a9f2:	f102 4b80 	add.w	fp, r2, #1073741824	; 0x40000000
    a9f6:	f7fb e828 	blx	5a48 <malloc@plt>
    a9fa:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
    a9fe:	ea4f 6c29 	mov.w	ip, r9, asr #24
    aa02:	ea4f 4e29 	mov.w	lr, r9, asr #16
    aa06:	ea4f 2129 	mov.w	r1, r9, asr #8
    aa0a:	3e04      	subs	r6, #4
    aa0c:	2e00      	cmp	r6, #0
    aa0e:	f84a 002b 	str.w	r0, [sl, fp, lsl #2]
    aa12:	6923      	ldr	r3, [r4, #16]
    aa14:	f853 202b 	ldr.w	r2, [r3, fp, lsl #2]
    aa18:	4613      	mov	r3, r2
    aa1a:	f803 5b01 	strb.w	r5, [r3], #1
    aa1e:	f103 0301 	add.w	r3, r3, #1
    aa22:	7055      	strb	r5, [r2, #1]
    aa24:	f803 5b01 	strb.w	r5, [r3], #1
    aa28:	f803 5b01 	strb.w	r5, [r3], #1
    aa2c:	701d      	strb	r5, [r3, #0]
    aa2e:	69e3      	ldr	r3, [r4, #28]
    aa30:	6922      	ldr	r2, [r4, #16]
    aa32:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
    aa36:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
    aa3a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    aa3e:	f883 c000 	strb.w	ip, [r3]
    aa42:	69e3      	ldr	r3, [r4, #28]
    aa44:	6922      	ldr	r2, [r4, #16]
    aa46:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
    aa4a:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
    aa4e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    aa52:	f883 e001 	strb.w	lr, [r3, #1]
    aa56:	69e3      	ldr	r3, [r4, #28]
    aa58:	6922      	ldr	r2, [r4, #16]
    aa5a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
    aa5e:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
    aa62:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    aa66:	7099      	strb	r1, [r3, #2]
    aa68:	69e3      	ldr	r3, [r4, #28]
    aa6a:	6922      	ldr	r2, [r4, #16]
    aa6c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
    aa70:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
    aa74:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    aa78:	f883 9003 	strb.w	r9, [r3, #3]
    aa7c:	dd24      	ble.n	aac8 <FileTypeBox_parse_box@@Base+0x140>
    aa7e:	69e3      	ldr	r3, [r4, #28]
    aa80:	4638      	mov	r0, r7
    aa82:	3301      	adds	r3, #1
    aa84:	61e3      	str	r3, [r4, #28]
    aa86:	f7fb e864 	blx	5b50 <Bitstream_read_32bit@plt>
    aa8a:	f8d4 a010 	ldr.w	sl, [r4, #16]
    aa8e:	4681      	mov	r9, r0
    aa90:	f1ba 0f00 	cmp.w	sl, #0
    aa94:	d011      	beq.n	aaba <FileTypeBox_parse_box@@Base+0x132>
    aa96:	69e2      	ldr	r2, [r4, #28]
    aa98:	4542      	cmp	r2, r8
    aa9a:	dda9      	ble.n	a9f0 <FileTypeBox_parse_box@@Base+0x68>
    aa9c:	f108 080a 	add.w	r8, r8, #10
    aaa0:	4650      	mov	r0, sl
    aaa2:	ea4f 0188 	mov.w	r1, r8, lsl #2
    aaa6:	f7fa efc4 	blx	5a30 <realloc@plt>
    aaaa:	4682      	mov	sl, r0
    aaac:	6120      	str	r0, [r4, #16]
    aaae:	f1ba 0f00 	cmp.w	sl, #0
    aab2:	f43f af7c 	beq.w	a9ae <FileTypeBox_parse_box@@Base+0x26>
    aab6:	69e2      	ldr	r2, [r4, #28]
    aab8:	e79a      	b.n	a9f0 <FileTypeBox_parse_box@@Base+0x68>
    aaba:	ea4f 0088 	mov.w	r0, r8, lsl #2
    aabe:	f7fa efc4 	blx	5a48 <malloc@plt>
    aac2:	4682      	mov	sl, r0
    aac4:	6120      	str	r0, [r4, #16]
    aac6:	e7f2      	b.n	aaae <FileTypeBox_parse_box@@Base+0x126>
    aac8:	6823      	ldr	r3, [r4, #0]
    aaca:	68b8      	ldr	r0, [r7, #8]
    aacc:	9a01      	ldr	r2, [sp, #4]
    aace:	1a80      	subs	r0, r0, r2
    aad0:	1ac0      	subs	r0, r0, r3
    aad2:	bf18      	it	ne
    aad4:	2001      	movne	r0, #1
    aad6:	e76b      	b.n	a9b0 <FileTypeBox_parse_box@@Base+0x28>

0000aad8 <FileTypeBox_release@@Base>:
    aad8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    aada:	4605      	mov	r5, r0
    aadc:	68c0      	ldr	r0, [r0, #12]
    aade:	b108      	cbz	r0, aae4 <FileTypeBox_release@@Base+0xc>
    aae0:	f7fa efc4 	blx	5a6c <free@plt>
    aae4:	69e9      	ldr	r1, [r5, #28]
    aae6:	2400      	movs	r4, #0
    aae8:	60ec      	str	r4, [r5, #12]
    aaea:	42a1      	cmp	r1, r4
    aaec:	bfc8      	it	gt
    aaee:	4627      	movgt	r7, r4
    aaf0:	dd0f      	ble.n	ab12 <FileTypeBox_release@@Base+0x3a>
    aaf2:	692a      	ldr	r2, [r5, #16]
    aaf4:	00a6      	lsls	r6, r4, #2
    aaf6:	1993      	adds	r3, r2, r6
    aaf8:	f852 2024 	ldr.w	r2, [r2, r4, lsl #2]
    aafc:	3401      	adds	r4, #1
    aafe:	4610      	mov	r0, r2
    ab00:	b122      	cbz	r2, ab0c <FileTypeBox_release@@Base+0x34>
    ab02:	f7fa efb4 	blx	5a6c <free@plt>
    ab06:	692b      	ldr	r3, [r5, #16]
    ab08:	69e9      	ldr	r1, [r5, #28]
    ab0a:	4433      	add	r3, r6
    ab0c:	428c      	cmp	r4, r1
    ab0e:	601f      	str	r7, [r3, #0]
    ab10:	dbef      	blt.n	aaf2 <FileTypeBox_release@@Base+0x1a>
    ab12:	6928      	ldr	r0, [r5, #16]
    ab14:	b108      	cbz	r0, ab1a <FileTypeBox_release@@Base+0x42>
    ab16:	f7fa efaa 	blx	5a6c <free@plt>
    ab1a:	6968      	ldr	r0, [r5, #20]
    ab1c:	2300      	movs	r3, #0
    ab1e:	612b      	str	r3, [r5, #16]
    ab20:	b108      	cbz	r0, ab26 <FileTypeBox_release@@Base+0x4e>
    ab22:	f7fa efa4 	blx	5a6c <free@plt>
    ab26:	2300      	movs	r3, #0
    ab28:	616b      	str	r3, [r5, #20]
    ab2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000ab2c <FullBox_write_header@@Base>:
    ab2c:	b538      	push	{r3, r4, r5, lr}
    ab2e:	4604      	mov	r4, r0
    ab30:	688b      	ldr	r3, [r1, #8]
    ab32:	460d      	mov	r5, r1
    ab34:	4608      	mov	r0, r1
    ab36:	6821      	ldr	r1, [r4, #0]
    ab38:	60a3      	str	r3, [r4, #8]
    ab3a:	f7fb e8c4 	blx	5cc4 <Bitstream_write_32bit@plt>
    ab3e:	6861      	ldr	r1, [r4, #4]
    ab40:	4628      	mov	r0, r5
    ab42:	f7fb e8c0 	blx	5cc4 <Bitstream_write_32bit@plt>
    ab46:	7b21      	ldrb	r1, [r4, #12]
    ab48:	4628      	mov	r0, r5
    ab4a:	f7fb e8b0 	blx	5cac <Bitstream_write_byte@plt>
    ab4e:	4628      	mov	r0, r5
    ab50:	6921      	ldr	r1, [r4, #16]
    ab52:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    ab56:	f009 ba25 	b.w	13fa4 <__aeabi_llsl@@Base+0x108>
    ab5a:	bf00      	nop

0000ab5c <FullBox_parse_header@@Base>:
    ab5c:	b538      	push	{r3, r4, r5, lr}
    ab5e:	684c      	ldr	r4, [r1, #4]
    ab60:	688b      	ldr	r3, [r1, #8]
    ab62:	1ae4      	subs	r4, r4, r3
    ab64:	2c0b      	cmp	r4, #11
    ab66:	d801      	bhi.n	ab6c <FullBox_parse_header@@Base+0x10>
    ab68:	2001      	movs	r0, #1
    ab6a:	bd38      	pop	{r3, r4, r5, pc}
    ab6c:	4605      	mov	r5, r0
    ab6e:	4608      	mov	r0, r1
    ab70:	460c      	mov	r4, r1
    ab72:	f7fa efee 	blx	5b50 <Bitstream_read_32bit@plt>
    ab76:	6028      	str	r0, [r5, #0]
    ab78:	4620      	mov	r0, r4
    ab7a:	f7fa efea 	blx	5b50 <Bitstream_read_32bit@plt>
    ab7e:	6068      	str	r0, [r5, #4]
    ab80:	4620      	mov	r0, r4
    ab82:	f7fb e888 	blx	5c94 <Bitstream_read_byte@plt>
    ab86:	7328      	strb	r0, [r5, #12]
    ab88:	4620      	mov	r0, r4
    ab8a:	f7fb e90e 	blx	5da8 <Bitstream_read_24bit@plt>
    ab8e:	682b      	ldr	r3, [r5, #0]
    ab90:	2b00      	cmp	r3, #0
    ab92:	6128      	str	r0, [r5, #16]
    ab94:	dde8      	ble.n	ab68 <FullBox_parse_header@@Base+0xc>
    ab96:	6860      	ldr	r0, [r4, #4]
    ab98:	4283      	cmp	r3, r0
    ab9a:	bf94      	ite	ls
    ab9c:	2000      	movls	r0, #0
    ab9e:	2001      	movhi	r0, #1
    aba0:	bd38      	pop	{r3, r4, r5, pc}
    aba2:	bf00      	nop

0000aba4 <FullBox_update_size@@Base>:
    aba4:	6882      	ldr	r2, [r0, #8]
    aba6:	688b      	ldr	r3, [r1, #8]
    aba8:	b470      	push	{r4, r5, r6}
    abaa:	1a9b      	subs	r3, r3, r2
    abac:	680c      	ldr	r4, [r1, #0]
    abae:	0e1d      	lsrs	r5, r3, #24
    abb0:	54a5      	strb	r5, [r4, r2]
    abb2:	141d      	asrs	r5, r3, #16
    abb4:	680e      	ldr	r6, [r1, #0]
    abb6:	121c      	asrs	r4, r3, #8
    abb8:	6882      	ldr	r2, [r0, #8]
    abba:	4432      	add	r2, r6
    abbc:	7055      	strb	r5, [r2, #1]
    abbe:	680d      	ldr	r5, [r1, #0]
    abc0:	6882      	ldr	r2, [r0, #8]
    abc2:	442a      	add	r2, r5
    abc4:	7094      	strb	r4, [r2, #2]
    abc6:	6809      	ldr	r1, [r1, #0]
    abc8:	6882      	ldr	r2, [r0, #8]
    abca:	440a      	add	r2, r1
    abcc:	70d3      	strb	r3, [r2, #3]
    abce:	bc70      	pop	{r4, r5, r6}
    abd0:	4770      	bx	lr
    abd2:	bf00      	nop

0000abd4 <HandlerBox_init@@Base>:
    abd4:	b510      	push	{r4, lr}
    abd6:	4604      	mov	r4, r0
    abd8:	4804      	ldr	r0, [pc, #16]	; (abec <HandlerBox_init@@Base+0x18>)
    abda:	4478      	add	r0, pc
    abdc:	f7fb e830 	blx	5c40 <string_type_to_int32@plt>
    abe0:	2300      	movs	r3, #0
    abe2:	7323      	strb	r3, [r4, #12]
    abe4:	6123      	str	r3, [r4, #16]
    abe6:	61a3      	str	r3, [r4, #24]
    abe8:	6060      	str	r0, [r4, #4]
    abea:	bd10      	pop	{r4, pc}
    abec:	a132      	add	r1, pc, #200	; (adr r1, acb8 <HandlerBox_parse_box@@Base+0x64>)
	...

0000abf0 <HandlerBox_write_box@@Base>:
    abf0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    abf2:	460e      	mov	r6, r1
    abf4:	4607      	mov	r7, r0
    abf6:	f7fb e82a 	blx	5c4c <FullBox_write_header@plt>
    abfa:	2100      	movs	r1, #0
    abfc:	4630      	mov	r0, r6
    abfe:	f7fb e862 	blx	5cc4 <Bitstream_write_32bit@plt>
    ac02:	6979      	ldr	r1, [r7, #20]
    ac04:	4630      	mov	r0, r6
    ac06:	f7fb e85e 	blx	5cc4 <Bitstream_write_32bit@plt>
    ac0a:	2100      	movs	r1, #0
    ac0c:	4630      	mov	r0, r6
    ac0e:	f7fb e85a 	blx	5cc4 <Bitstream_write_32bit@plt>
    ac12:	2100      	movs	r1, #0
    ac14:	4630      	mov	r0, r6
    ac16:	f7fb e856 	blx	5cc4 <Bitstream_write_32bit@plt>
    ac1a:	4630      	mov	r0, r6
    ac1c:	2100      	movs	r1, #0
    ac1e:	f7fb e852 	blx	5cc4 <Bitstream_write_32bit@plt>
    ac22:	69bd      	ldr	r5, [r7, #24]
    ac24:	b165      	cbz	r5, ac40 <HandlerBox_write_box@@Base+0x50>
    ac26:	2400      	movs	r4, #0
    ac28:	e004      	b.n	ac34 <HandlerBox_write_box@@Base+0x44>
    ac2a:	5d29      	ldrb	r1, [r5, r4]
    ac2c:	3401      	adds	r4, #1
    ac2e:	f7fb e83e 	blx	5cac <Bitstream_write_byte@plt>
    ac32:	69bd      	ldr	r5, [r7, #24]
    ac34:	4628      	mov	r0, r5
    ac36:	f7fb e834 	blx	5ca0 <strlen@plt>
    ac3a:	4284      	cmp	r4, r0
    ac3c:	4630      	mov	r0, r6
    ac3e:	d3f4      	bcc.n	ac2a <HandlerBox_write_box@@Base+0x3a>
    ac40:	4630      	mov	r0, r6
    ac42:	2100      	movs	r1, #0
    ac44:	f7fb e832 	blx	5cac <Bitstream_write_byte@plt>
    ac48:	4638      	mov	r0, r7
    ac4a:	4631      	mov	r1, r6
    ac4c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    ac50:	f009 b950 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>

0000ac54 <HandlerBox_parse_box@@Base>:
    ac54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    ac58:	460c      	mov	r4, r1
    ac5a:	4607      	mov	r7, r0
    ac5c:	f8d1 8008 	ldr.w	r8, [r1, #8]
    ac60:	f7fb e80c 	blx	5c7c <FullBox_parse_header@plt>
    ac64:	4606      	mov	r6, r0
    ac66:	b928      	cbnz	r0, ac74 <HandlerBox_parse_box@@Base+0x20>
    ac68:	6863      	ldr	r3, [r4, #4]
    ac6a:	683a      	ldr	r2, [r7, #0]
    ac6c:	ebc8 0303 	rsb	r3, r8, r3
    ac70:	4293      	cmp	r3, r2
    ac72:	d203      	bcs.n	ac7c <HandlerBox_parse_box@@Base+0x28>
    ac74:	2601      	movs	r6, #1
    ac76:	4630      	mov	r0, r6
    ac78:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    ac7c:	4620      	mov	r0, r4
    ac7e:	f7fa ef68 	blx	5b50 <Bitstream_read_32bit@plt>
    ac82:	4620      	mov	r0, r4
    ac84:	f7fa ef64 	blx	5b50 <Bitstream_read_32bit@plt>
    ac88:	6178      	str	r0, [r7, #20]
    ac8a:	4620      	mov	r0, r4
    ac8c:	f7fa ef60 	blx	5b50 <Bitstream_read_32bit@plt>
    ac90:	4620      	mov	r0, r4
    ac92:	f7fa ef5e 	blx	5b50 <Bitstream_read_32bit@plt>
    ac96:	4620      	mov	r0, r4
    ac98:	f7fa ef5a 	blx	5b50 <Bitstream_read_32bit@plt>
    ac9c:	68a5      	ldr	r5, [r4, #8]
    ac9e:	6823      	ldr	r3, [r4, #0]
    aca0:	eb03 0905 	add.w	r9, r3, r5
    aca4:	5d5a      	ldrb	r2, [r3, r5]
    aca6:	b1d2      	cbz	r2, acde <HandlerBox_parse_box@@Base+0x8a>
    aca8:	f1c3 0e01 	rsb	lr, r3, #1
    acac:	464b      	mov	r3, r9
    acae:	eb0e 0203 	add.w	r2, lr, r3
    acb2:	60a2      	str	r2, [r4, #8]
    acb4:	f813 0f01 	ldrb.w	r0, [r3, #1]!
    acb8:	2800      	cmp	r0, #0
    acba:	d1f8      	bne.n	acae <HandlerBox_parse_box@@Base+0x5a>
    acbc:	1b55      	subs	r5, r2, r5
    acbe:	1c68      	adds	r0, r5, #1
    acc0:	f7fa eec2 	blx	5a48 <malloc@plt>
    acc4:	61b8      	str	r0, [r7, #24]
    acc6:	2800      	cmp	r0, #0
    acc8:	d0d4      	beq.n	ac74 <HandlerBox_parse_box@@Base+0x20>
    acca:	4649      	mov	r1, r9
    accc:	462a      	mov	r2, r5
    acce:	f7fa eff4 	blx	5cb8 <strncpy@plt>
    acd2:	683b      	ldr	r3, [r7, #0]
    acd4:	4630      	mov	r0, r6
    acd6:	4443      	add	r3, r8
    acd8:	60a3      	str	r3, [r4, #8]
    acda:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    acde:	2001      	movs	r0, #1
    ace0:	4635      	mov	r5, r6
    ace2:	e7ed      	b.n	acc0 <HandlerBox_parse_box@@Base+0x6c>

0000ace4 <HandlerBox_release@@Base>:
    ace4:	b510      	push	{r4, lr}
    ace6:	4604      	mov	r4, r0
    ace8:	6980      	ldr	r0, [r0, #24]
    acea:	b108      	cbz	r0, acf0 <HandlerBox_release@@Base+0xc>
    acec:	f7fa eebe 	blx	5a6c <free@plt>
    acf0:	2300      	movs	r3, #0
    acf2:	61a3      	str	r3, [r4, #24]
    acf4:	bd10      	pop	{r4, pc}
    acf6:	bf00      	nop

0000acf8 <IdSpace_get_value@@Base>:
    acf8:	4b02      	ldr	r3, [pc, #8]	; (ad04 <IdSpace_get_value@@Base+0xc>)
    acfa:	447b      	add	r3, pc
    acfc:	6818      	ldr	r0, [r3, #0]
    acfe:	1c42      	adds	r2, r0, #1
    ad00:	601a      	str	r2, [r3, #0]
    ad02:	4770      	bx	lr
    ad04:	c306      	stmia	r3!, {r1, r2}
	...

0000ad08 <IdSpace_reset@@Base>:
    ad08:	4b02      	ldr	r3, [pc, #8]	; (ad14 <IdSpace_reset@@Base+0xc>)
    ad0a:	2201      	movs	r2, #1
    ad0c:	447b      	add	r3, pc
    ad0e:	601a      	str	r2, [r3, #0]
    ad10:	4770      	bx	lr
    ad12:	bf00      	nop
    ad14:	c2f4      	stmia	r2!, {r2, r4, r5, r6, r7}
	...

0000ad18 <ImageGridBox_init@@Base>:
    ad18:	2100      	movs	r1, #0
    ad1a:	2218      	movs	r2, #24
    ad1c:	f009 b94a 	b.w	13fb4 <__aeabi_llsl@@Base+0x118>

0000ad20 <ImageGridBox_release@@Base>:
    ad20:	b108      	cbz	r0, ad26 <ImageGridBox_release@@Base+0x6>
    ad22:	f009 b8cf 	b.w	13ec4 <__aeabi_llsl@@Base+0x28>
    ad26:	4770      	bx	lr

0000ad28 <ImageGridBox_parse_box@@Base>:
    ad28:	b570      	push	{r4, r5, r6, lr}
    ad2a:	4605      	mov	r5, r0
    ad2c:	4608      	mov	r0, r1
    ad2e:	460e      	mov	r6, r1
    ad30:	f7fa efb0 	blx	5c94 <Bitstream_read_byte@plt>
    ad34:	6028      	str	r0, [r5, #0]
    ad36:	4630      	mov	r0, r6
    ad38:	f7fa efac 	blx	5c94 <Bitstream_read_byte@plt>
    ad3c:	6068      	str	r0, [r5, #4]
    ad3e:	4630      	mov	r0, r6
    ad40:	f7fa efa8 	blx	5c94 <Bitstream_read_byte@plt>
    ad44:	1c43      	adds	r3, r0, #1
    ad46:	4630      	mov	r0, r6
    ad48:	60ab      	str	r3, [r5, #8]
    ad4a:	f7fa efa4 	blx	5c94 <Bitstream_read_byte@plt>
    ad4e:	686c      	ldr	r4, [r5, #4]
    ad50:	f004 0401 	and.w	r4, r4, #1
    ad54:	3401      	adds	r4, #1
    ad56:	0124      	lsls	r4, r4, #4
    ad58:	4621      	mov	r1, r4
    ad5a:	1c43      	adds	r3, r0, #1
    ad5c:	4630      	mov	r0, r6
    ad5e:	60eb      	str	r3, [r5, #12]
    ad60:	f7fa efb6 	blx	5cd0 <Bitstream_read_bits@plt>
    ad64:	4621      	mov	r1, r4
    ad66:	6128      	str	r0, [r5, #16]
    ad68:	4630      	mov	r0, r6
    ad6a:	f7fa efb2 	blx	5cd0 <Bitstream_read_bits@plt>
    ad6e:	6168      	str	r0, [r5, #20]
    ad70:	2000      	movs	r0, #0
    ad72:	bd70      	pop	{r4, r5, r6, pc}

0000ad74 <ImageGridBox_write_box@@Base>:
    ad74:	b570      	push	{r4, r5, r6, lr}
    ad76:	4605      	mov	r5, r0
    ad78:	460e      	mov	r6, r1
    ad7a:	4608      	mov	r0, r1
    ad7c:	7829      	ldrb	r1, [r5, #0]
    ad7e:	f7fa ef96 	blx	5cac <Bitstream_write_byte@plt>
    ad82:	7929      	ldrb	r1, [r5, #4]
    ad84:	4630      	mov	r0, r6
    ad86:	f7fa ef92 	blx	5cac <Bitstream_write_byte@plt>
    ad8a:	68a9      	ldr	r1, [r5, #8]
    ad8c:	4630      	mov	r0, r6
    ad8e:	3901      	subs	r1, #1
    ad90:	b2c9      	uxtb	r1, r1
    ad92:	f7fa ef8c 	blx	5cac <Bitstream_write_byte@plt>
    ad96:	68e9      	ldr	r1, [r5, #12]
    ad98:	4630      	mov	r0, r6
    ad9a:	3901      	subs	r1, #1
    ad9c:	b2c9      	uxtb	r1, r1
    ad9e:	f7fa ef86 	blx	5cac <Bitstream_write_byte@plt>
    ada2:	686c      	ldr	r4, [r5, #4]
    ada4:	6929      	ldr	r1, [r5, #16]
    ada6:	4630      	mov	r0, r6
    ada8:	f004 0401 	and.w	r4, r4, #1
    adac:	3401      	adds	r4, #1
    adae:	0124      	lsls	r4, r4, #4
    adb0:	4622      	mov	r2, r4
    adb2:	f7fa efac 	blx	5d0c <Bitstream_write_bits@plt>
    adb6:	4630      	mov	r0, r6
    adb8:	4622      	mov	r2, r4
    adba:	6969      	ldr	r1, [r5, #20]
    adbc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    adc0:	f009 b900 	b.w	13fc4 <__aeabi_llsl@@Base+0x128>

0000adc4 <ImageRotation_init@@Base>:
    adc4:	f646 7374 	movw	r3, #28532	; 0x6f74
    adc8:	2200      	movs	r2, #0
    adca:	f6c6 1372 	movt	r3, #26994	; 0x6972
    adce:	7302      	strb	r2, [r0, #12]
    add0:	6043      	str	r3, [r0, #4]
    add2:	4770      	bx	lr

0000add4 <ImageRotation_release@@Base>:
    add4:	4770      	bx	lr
    add6:	bf00      	nop

0000add8 <ImageRotation_parse@@Base>:
    add8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    adda:	460d      	mov	r5, r1
    addc:	4607      	mov	r7, r0
    adde:	688e      	ldr	r6, [r1, #8]
    ade0:	f7fa efa6 	blx	5d30 <Box_parse_header@plt>
    ade4:	4604      	mov	r4, r0
    ade6:	b110      	cbz	r0, adee <ImageRotation_parse@@Base+0x16>
    ade8:	2401      	movs	r4, #1
    adea:	4620      	mov	r0, r4
    adec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    adee:	4628      	mov	r0, r5
    adf0:	2106      	movs	r1, #6
    adf2:	f7fa ef6e 	blx	5cd0 <Bitstream_read_bits@plt>
    adf6:	4628      	mov	r0, r5
    adf8:	2102      	movs	r1, #2
    adfa:	f7fa ef6a 	blx	5cd0 <Bitstream_read_bits@plt>
    adfe:	683b      	ldr	r3, [r7, #0]
    ae00:	441e      	add	r6, r3
    ae02:	7338      	strb	r0, [r7, #12]
    ae04:	4620      	mov	r0, r4
    ae06:	60ae      	str	r6, [r5, #8]
    ae08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    ae0a:	bf00      	nop

0000ae0c <ImageRotation_write@@Base>:
    ae0c:	b538      	push	{r3, r4, r5, lr}
    ae0e:	460c      	mov	r4, r1
    ae10:	4605      	mov	r5, r0
    ae12:	f7fa ef76 	blx	5d00 <Box_write_header@plt>
    ae16:	4620      	mov	r0, r4
    ae18:	2100      	movs	r1, #0
    ae1a:	2206      	movs	r2, #6
    ae1c:	f7fa ef76 	blx	5d0c <Bitstream_write_bits@plt>
    ae20:	7b29      	ldrb	r1, [r5, #12]
    ae22:	4620      	mov	r0, r4
    ae24:	2202      	movs	r2, #2
    ae26:	f7fa ef72 	blx	5d0c <Bitstream_write_bits@plt>
    ae2a:	4628      	mov	r0, r5
    ae2c:	4621      	mov	r1, r4
    ae2e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    ae32:	f009 b897 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    ae36:	bf00      	nop

0000ae38 <ImageSpatialExtentsProperty_init@@Base>:
    ae38:	f247 0265 	movw	r2, #28773	; 0x7065
    ae3c:	2300      	movs	r3, #0
    ae3e:	f6c6 1273 	movt	r2, #26995	; 0x6973
    ae42:	7303      	strb	r3, [r0, #12]
    ae44:	6042      	str	r2, [r0, #4]
    ae46:	6103      	str	r3, [r0, #16]
    ae48:	6143      	str	r3, [r0, #20]
    ae4a:	6183      	str	r3, [r0, #24]
    ae4c:	4770      	bx	lr
    ae4e:	bf00      	nop

0000ae50 <ImageSpatialExtentsProperty_release@@Base>:
    ae50:	4770      	bx	lr
    ae52:	bf00      	nop

0000ae54 <ImageSpatialExtentsProperty_write@@Base>:
    ae54:	b538      	push	{r3, r4, r5, lr}
    ae56:	4605      	mov	r5, r0
    ae58:	460c      	mov	r4, r1
    ae5a:	f7fa eef8 	blx	5c4c <FullBox_write_header@plt>
    ae5e:	6969      	ldr	r1, [r5, #20]
    ae60:	4620      	mov	r0, r4
    ae62:	f7fa ef30 	blx	5cc4 <Bitstream_write_32bit@plt>
    ae66:	69a9      	ldr	r1, [r5, #24]
    ae68:	4620      	mov	r0, r4
    ae6a:	f7fa ef2c 	blx	5cc4 <Bitstream_write_32bit@plt>
    ae6e:	4628      	mov	r0, r5
    ae70:	4621      	mov	r1, r4
    ae72:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    ae76:	f009 b83d 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    ae7a:	bf00      	nop

0000ae7c <ImageSpatialExtentsProperty_parse@@Base>:
    ae7c:	b570      	push	{r4, r5, r6, lr}
    ae7e:	460c      	mov	r4, r1
    ae80:	4605      	mov	r5, r0
    ae82:	688e      	ldr	r6, [r1, #8]
    ae84:	f7fa eefa 	blx	5c7c <FullBox_parse_header@plt>
    ae88:	2301      	movs	r3, #1
    ae8a:	b968      	cbnz	r0, aea8 <ImageSpatialExtentsProperty_parse@@Base+0x2c>
    ae8c:	4620      	mov	r0, r4
    ae8e:	f7fa ee60 	blx	5b50 <Bitstream_read_32bit@plt>
    ae92:	6168      	str	r0, [r5, #20]
    ae94:	4620      	mov	r0, r4
    ae96:	f7fa ee5c 	blx	5b50 <Bitstream_read_32bit@plt>
    ae9a:	68a3      	ldr	r3, [r4, #8]
    ae9c:	682a      	ldr	r2, [r5, #0]
    ae9e:	1b9b      	subs	r3, r3, r6
    aea0:	1a9b      	subs	r3, r3, r2
    aea2:	bf18      	it	ne
    aea4:	2301      	movne	r3, #1
    aea6:	61a8      	str	r0, [r5, #24]
    aea8:	4618      	mov	r0, r3
    aeaa:	bd70      	pop	{r4, r5, r6, pc}

0000aeac <ItemDataBox_init@@Base>:
    aeac:	b510      	push	{r4, lr}
    aeae:	2100      	movs	r1, #0
    aeb0:	2214      	movs	r2, #20
    aeb2:	4604      	mov	r4, r0
    aeb4:	f7fa ee28 	blx	5b08 <memset@plt>
    aeb8:	4804      	ldr	r0, [pc, #16]	; (aecc <ItemDataBox_init@@Base+0x20>)
    aeba:	4478      	add	r0, pc
    aebc:	f7fa eec0 	blx	5c40 <string_type_to_int32@plt>
    aec0:	2300      	movs	r3, #0
    aec2:	60e3      	str	r3, [r4, #12]
    aec4:	6123      	str	r3, [r4, #16]
    aec6:	6060      	str	r0, [r4, #4]
    aec8:	bd10      	pop	{r4, pc}
    aeca:	bf00      	nop
    aecc:	9e5a      	ldr	r6, [sp, #360]	; 0x168
	...

0000aed0 <ItemDataBox_release@@Base>:
    aed0:	68c3      	ldr	r3, [r0, #12]
    aed2:	b13b      	cbz	r3, aee4 <ItemDataBox_release@@Base+0x14>
    aed4:	b510      	push	{r4, lr}
    aed6:	4604      	mov	r4, r0
    aed8:	4618      	mov	r0, r3
    aeda:	f7fa edc8 	blx	5a6c <free@plt>
    aede:	2300      	movs	r3, #0
    aee0:	60e3      	str	r3, [r4, #12]
    aee2:	bd10      	pop	{r4, pc}
    aee4:	4770      	bx	lr
    aee6:	bf00      	nop

0000aee8 <ItemDataBox_write_box@@Base>:
    aee8:	b538      	push	{r3, r4, r5, lr}
    aeea:	4604      	mov	r4, r0
    aeec:	460d      	mov	r5, r1
    aeee:	f7fa ef08 	blx	5d00 <Box_write_header@plt>
    aef2:	68e1      	ldr	r1, [r4, #12]
    aef4:	4628      	mov	r0, r5
    aef6:	6922      	ldr	r2, [r4, #16]
    aef8:	f7fa eeb4 	blx	5c64 <Bitstream_write_bytes@plt>
    aefc:	4620      	mov	r0, r4
    aefe:	4629      	mov	r1, r5
    af00:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    af04:	f009 b82e 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000af08 <ItemDataBox_parse_box@@Base>:
    af08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    af0a:	4606      	mov	r6, r0
    af0c:	460f      	mov	r7, r1
    af0e:	f7fa ef10 	blx	5d30 <Box_parse_header@plt>
    af12:	4604      	mov	r4, r0
    af14:	b910      	cbnz	r0, af1c <ItemDataBox_parse_box@@Base+0x14>
    af16:	6833      	ldr	r3, [r6, #0]
    af18:	2b08      	cmp	r3, #8
    af1a:	dc02      	bgt.n	af22 <ItemDataBox_parse_box@@Base+0x1a>
    af1c:	2401      	movs	r4, #1
    af1e:	4620      	mov	r0, r4
    af20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    af22:	f1a3 0508 	sub.w	r5, r3, #8
    af26:	6135      	str	r5, [r6, #16]
    af28:	4628      	mov	r0, r5
    af2a:	f7fa ed8e 	blx	5a48 <malloc@plt>
    af2e:	60f0      	str	r0, [r6, #12]
    af30:	2800      	cmp	r0, #0
    af32:	d0f3      	beq.n	af1c <ItemDataBox_parse_box@@Base+0x14>
    af34:	68be      	ldr	r6, [r7, #8]
    af36:	462a      	mov	r2, r5
    af38:	6839      	ldr	r1, [r7, #0]
    af3a:	4435      	add	r5, r6
    af3c:	4431      	add	r1, r6
    af3e:	f7fa ed60 	blx	5a00 <memcpy@plt>
    af42:	60bd      	str	r5, [r7, #8]
    af44:	4620      	mov	r0, r4
    af46:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000af48 <ItemInfoEntry_init@@Base>:
    af48:	f246 6265 	movw	r2, #26213	; 0x6665
    af4c:	2300      	movs	r3, #0
    af4e:	f6c6 126e 	movt	r2, #26990	; 0x696e
    af52:	7303      	strb	r3, [r0, #12]
    af54:	6042      	str	r2, [r0, #4]
    af56:	6103      	str	r3, [r0, #16]
    af58:	61c3      	str	r3, [r0, #28]
    af5a:	6203      	str	r3, [r0, #32]
    af5c:	6243      	str	r3, [r0, #36]	; 0x24
    af5e:	6283      	str	r3, [r0, #40]	; 0x28
    af60:	62c3      	str	r3, [r0, #44]	; 0x2c
    af62:	6303      	str	r3, [r0, #48]	; 0x30
    af64:	8303      	strh	r3, [r0, #24]
    af66:	4770      	bx	lr

0000af68 <ItemInfoEntry_release@@Base>:
    af68:	b510      	push	{r4, lr}
    af6a:	4604      	mov	r4, r0
    af6c:	69c0      	ldr	r0, [r0, #28]
    af6e:	b108      	cbz	r0, af74 <ItemInfoEntry_release@@Base+0xc>
    af70:	f7fa ed7c 	blx	5a6c <free@plt>
    af74:	6a20      	ldr	r0, [r4, #32]
    af76:	2300      	movs	r3, #0
    af78:	61e3      	str	r3, [r4, #28]
    af7a:	b108      	cbz	r0, af80 <ItemInfoEntry_release@@Base+0x18>
    af7c:	f7fa ed76 	blx	5a6c <free@plt>
    af80:	6a60      	ldr	r0, [r4, #36]	; 0x24
    af82:	2300      	movs	r3, #0
    af84:	6223      	str	r3, [r4, #32]
    af86:	b108      	cbz	r0, af8c <ItemInfoEntry_release@@Base+0x24>
    af88:	f7fa ed70 	blx	5a6c <free@plt>
    af8c:	6b20      	ldr	r0, [r4, #48]	; 0x30
    af8e:	2300      	movs	r3, #0
    af90:	6263      	str	r3, [r4, #36]	; 0x24
    af92:	b108      	cbz	r0, af98 <ItemInfoEntry_release@@Base+0x30>
    af94:	f7fa ed6a 	blx	5a6c <free@plt>
    af98:	2300      	movs	r3, #0
    af9a:	6323      	str	r3, [r4, #48]	; 0x30
    af9c:	bd10      	pop	{r4, pc}
    af9e:	bf00      	nop

0000afa0 <ItemInfoEntry_write_box@@Base>:
    afa0:	b570      	push	{r4, r5, r6, lr}
    afa2:	4604      	mov	r4, r0
    afa4:	460d      	mov	r5, r1
    afa6:	f7fa ee52 	blx	5c4c <FullBox_write_header@plt>
    afaa:	7b23      	ldrb	r3, [r4, #12]
    afac:	2b01      	cmp	r3, #1
    afae:	d923      	bls.n	aff8 <ItemInfoEntry_write_box@@Base+0x58>
    afb0:	2b02      	cmp	r3, #2
    afb2:	d03c      	beq.n	b02e <ItemInfoEntry_write_box@@Base+0x8e>
    afb4:	2b03      	cmp	r3, #3
    afb6:	d05d      	beq.n	b074 <ItemInfoEntry_write_box@@Base+0xd4>
    afb8:	8b21      	ldrh	r1, [r4, #24]
    afba:	4628      	mov	r0, r5
    afbc:	f7fa eeac 	blx	5d18 <Bitstream_write_16bit@plt>
    afc0:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
    afc2:	4628      	mov	r0, r5
    afc4:	f7fa ee7e 	blx	5cc4 <Bitstream_write_32bit@plt>
    afc8:	4628      	mov	r0, r5
    afca:	69e1      	ldr	r1, [r4, #28]
    afcc:	f7fa ee44 	blx	5c58 <Bitstream_write_terminated_str@plt>
    afd0:	482b      	ldr	r0, [pc, #172]	; (b080 <ItemInfoEntry_write_box@@Base+0xe0>)
    afd2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
    afd4:	4478      	add	r0, pc
    afd6:	f7fa ee34 	blx	5c40 <string_type_to_int32@plt>
    afda:	4286      	cmp	r6, r0
    afdc:	d032      	beq.n	b044 <ItemInfoEntry_write_box@@Base+0xa4>
    afde:	4829      	ldr	r0, [pc, #164]	; (b084 <ItemInfoEntry_write_box@@Base+0xe4>)
    afe0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
    afe2:	4478      	add	r0, pc
    afe4:	f7fa ee2c 	blx	5c40 <string_type_to_int32@plt>
    afe8:	4286      	cmp	r6, r0
    afea:	d039      	beq.n	b060 <ItemInfoEntry_write_box@@Base+0xc0>
    afec:	4620      	mov	r0, r4
    afee:	4629      	mov	r1, r5
    aff0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    aff4:	f008 bf7e 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    aff8:	6961      	ldr	r1, [r4, #20]
    affa:	4628      	mov	r0, r5
    affc:	f7fa ee8c 	blx	5d18 <Bitstream_write_16bit@plt>
    b000:	8b21      	ldrh	r1, [r4, #24]
    b002:	4628      	mov	r0, r5
    b004:	f7fa ee88 	blx	5d18 <Bitstream_write_16bit@plt>
    b008:	4628      	mov	r0, r5
    b00a:	69e1      	ldr	r1, [r4, #28]
    b00c:	f7fa ee24 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b010:	4628      	mov	r0, r5
    b012:	6a21      	ldr	r1, [r4, #32]
    b014:	f7fa ee20 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b018:	4628      	mov	r0, r5
    b01a:	6a61      	ldr	r1, [r4, #36]	; 0x24
    b01c:	f7fa ee1c 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b020:	7b23      	ldrb	r3, [r4, #12]
    b022:	2b01      	cmp	r3, #1
    b024:	d008      	beq.n	b038 <ItemInfoEntry_write_box@@Base+0x98>
    b026:	2b01      	cmp	r3, #1
    b028:	d9e0      	bls.n	afec <ItemInfoEntry_write_box@@Base+0x4c>
    b02a:	2b02      	cmp	r3, #2
    b02c:	d1c2      	bne.n	afb4 <ItemInfoEntry_write_box@@Base+0x14>
    b02e:	4628      	mov	r0, r5
    b030:	6961      	ldr	r1, [r4, #20]
    b032:	f7fa ee72 	blx	5d18 <Bitstream_write_16bit@plt>
    b036:	e7bf      	b.n	afb8 <ItemInfoEntry_write_box@@Base+0x18>
    b038:	4628      	mov	r0, r5
    b03a:	6aa1      	ldr	r1, [r4, #40]	; 0x28
    b03c:	f7fa ee42 	blx	5cc4 <Bitstream_write_32bit@plt>
    b040:	7b23      	ldrb	r3, [r4, #12]
    b042:	e7f0      	b.n	b026 <ItemInfoEntry_write_box@@Base+0x86>
    b044:	4628      	mov	r0, r5
    b046:	6a21      	ldr	r1, [r4, #32]
    b048:	f7fa ee06 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b04c:	4628      	mov	r0, r5
    b04e:	6a61      	ldr	r1, [r4, #36]	; 0x24
    b050:	f7fa ee02 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b054:	4620      	mov	r0, r4
    b056:	4629      	mov	r1, r5
    b058:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    b05c:	f008 bf4a 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    b060:	4628      	mov	r0, r5
    b062:	6b21      	ldr	r1, [r4, #48]	; 0x30
    b064:	f7fa edf8 	blx	5c58 <Bitstream_write_terminated_str@plt>
    b068:	4620      	mov	r0, r4
    b06a:	4629      	mov	r1, r5
    b06c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    b070:	f008 bf40 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    b074:	4628      	mov	r0, r5
    b076:	6961      	ldr	r1, [r4, #20]
    b078:	f7fa ee24 	blx	5cc4 <Bitstream_write_32bit@plt>
    b07c:	e79c      	b.n	afb8 <ItemInfoEntry_write_box@@Base+0x18>
    b07e:	bf00      	nop
    b080:	9d48      	ldr	r5, [sp, #288]	; 0x120
    b082:	0000      	movs	r0, r0
    b084:	9d42      	ldr	r5, [sp, #264]	; 0x108
	...

0000b088 <ItemInfoEntry_parse_box@@Base>:
    b088:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    b08a:	460d      	mov	r5, r1
    b08c:	4604      	mov	r4, r0
    b08e:	688e      	ldr	r6, [r1, #8]
    b090:	f7fa edf4 	blx	5c7c <FullBox_parse_header@plt>
    b094:	bb70      	cbnz	r0, b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b096:	7b23      	ldrb	r3, [r4, #12]
    b098:	2b01      	cmp	r3, #1
    b09a:	d944      	bls.n	b126 <ItemInfoEntry_parse_box@@Base+0x9e>
    b09c:	2b02      	cmp	r3, #2
    b09e:	d02b      	beq.n	b0f8 <ItemInfoEntry_parse_box@@Base+0x70>
    b0a0:	2b03      	cmp	r3, #3
    b0a2:	d065      	beq.n	b170 <ItemInfoEntry_parse_box@@Base+0xe8>
    b0a4:	4628      	mov	r0, r5
    b0a6:	f7fa ee4a 	blx	5d3c <Bitstream_read_16bit@plt>
    b0aa:	8320      	strh	r0, [r4, #24]
    b0ac:	4628      	mov	r0, r5
    b0ae:	f7fa ed50 	blx	5b50 <Bitstream_read_32bit@plt>
    b0b2:	62e0      	str	r0, [r4, #44]	; 0x2c
    b0b4:	4628      	mov	r0, r5
    b0b6:	f7fa ede8 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b0ba:	61e0      	str	r0, [r4, #28]
    b0bc:	b1d0      	cbz	r0, b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b0be:	4832      	ldr	r0, [pc, #200]	; (b188 <ItemInfoEntry_parse_box@@Base+0x100>)
    b0c0:	6ae7      	ldr	r7, [r4, #44]	; 0x2c
    b0c2:	4478      	add	r0, pc
    b0c4:	f7fa edbc 	blx	5c40 <string_type_to_int32@plt>
    b0c8:	4287      	cmp	r7, r0
    b0ca:	d01a      	beq.n	b102 <ItemInfoEntry_parse_box@@Base+0x7a>
    b0cc:	482f      	ldr	r0, [pc, #188]	; (b18c <ItemInfoEntry_parse_box@@Base+0x104>)
    b0ce:	6ae7      	ldr	r7, [r4, #44]	; 0x2c
    b0d0:	4478      	add	r0, pc
    b0d2:	f7fa edb6 	blx	5c40 <string_type_to_int32@plt>
    b0d6:	4287      	cmp	r7, r0
    b0d8:	d006      	beq.n	b0e8 <ItemInfoEntry_parse_box@@Base+0x60>
    b0da:	68ab      	ldr	r3, [r5, #8]
    b0dc:	6820      	ldr	r0, [r4, #0]
    b0de:	1b9b      	subs	r3, r3, r6
    b0e0:	1a18      	subs	r0, r3, r0
    b0e2:	bf18      	it	ne
    b0e4:	2001      	movne	r0, #1
    b0e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    b0e8:	4628      	mov	r0, r5
    b0ea:	f7fa edce 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b0ee:	6320      	str	r0, [r4, #48]	; 0x30
    b0f0:	2800      	cmp	r0, #0
    b0f2:	d1f2      	bne.n	b0da <ItemInfoEntry_parse_box@@Base+0x52>
    b0f4:	2001      	movs	r0, #1
    b0f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    b0f8:	4628      	mov	r0, r5
    b0fa:	f7fa ee20 	blx	5d3c <Bitstream_read_16bit@plt>
    b0fe:	6160      	str	r0, [r4, #20]
    b100:	e7d0      	b.n	b0a4 <ItemInfoEntry_parse_box@@Base+0x1c>
    b102:	4628      	mov	r0, r5
    b104:	f7fa edc0 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b108:	6220      	str	r0, [r4, #32]
    b10a:	2800      	cmp	r0, #0
    b10c:	d0f2      	beq.n	b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b10e:	68ab      	ldr	r3, [r5, #8]
    b110:	6820      	ldr	r0, [r4, #0]
    b112:	1b9b      	subs	r3, r3, r6
    b114:	4283      	cmp	r3, r0
    b116:	d2e3      	bcs.n	b0e0 <ItemInfoEntry_parse_box@@Base+0x58>
    b118:	4628      	mov	r0, r5
    b11a:	f7fa edb6 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b11e:	6260      	str	r0, [r4, #36]	; 0x24
    b120:	2800      	cmp	r0, #0
    b122:	d1da      	bne.n	b0da <ItemInfoEntry_parse_box@@Base+0x52>
    b124:	e7e6      	b.n	b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b126:	4628      	mov	r0, r5
    b128:	f7fa ee08 	blx	5d3c <Bitstream_read_16bit@plt>
    b12c:	6160      	str	r0, [r4, #20]
    b12e:	4628      	mov	r0, r5
    b130:	f7fa ee04 	blx	5d3c <Bitstream_read_16bit@plt>
    b134:	8320      	strh	r0, [r4, #24]
    b136:	4628      	mov	r0, r5
    b138:	f7fa eda6 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b13c:	61e0      	str	r0, [r4, #28]
    b13e:	2800      	cmp	r0, #0
    b140:	d0d8      	beq.n	b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b142:	4628      	mov	r0, r5
    b144:	f7fa eda0 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b148:	6220      	str	r0, [r4, #32]
    b14a:	2800      	cmp	r0, #0
    b14c:	d0d2      	beq.n	b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b14e:	68ab      	ldr	r3, [r5, #8]
    b150:	6822      	ldr	r2, [r4, #0]
    b152:	1b9b      	subs	r3, r3, r6
    b154:	4293      	cmp	r3, r2
    b156:	d310      	bcc.n	b17a <ItemInfoEntry_parse_box@@Base+0xf2>
    b158:	7b23      	ldrb	r3, [r4, #12]
    b15a:	2b01      	cmp	r3, #1
    b15c:	d002      	beq.n	b164 <ItemInfoEntry_parse_box@@Base+0xdc>
    b15e:	2b01      	cmp	r3, #1
    b160:	d89c      	bhi.n	b09c <ItemInfoEntry_parse_box@@Base+0x14>
    b162:	e7ba      	b.n	b0da <ItemInfoEntry_parse_box@@Base+0x52>
    b164:	4628      	mov	r0, r5
    b166:	f7fa ecf4 	blx	5b50 <Bitstream_read_32bit@plt>
    b16a:	7b23      	ldrb	r3, [r4, #12]
    b16c:	62a0      	str	r0, [r4, #40]	; 0x28
    b16e:	e7f6      	b.n	b15e <ItemInfoEntry_parse_box@@Base+0xd6>
    b170:	4628      	mov	r0, r5
    b172:	f7fa ecee 	blx	5b50 <Bitstream_read_32bit@plt>
    b176:	6160      	str	r0, [r4, #20]
    b178:	e794      	b.n	b0a4 <ItemInfoEntry_parse_box@@Base+0x1c>
    b17a:	4628      	mov	r0, r5
    b17c:	f7fa ed84 	blx	5c88 <Bitstream_read_terminated_str@plt>
    b180:	6260      	str	r0, [r4, #36]	; 0x24
    b182:	2800      	cmp	r0, #0
    b184:	d1e8      	bne.n	b158 <ItemInfoEntry_parse_box@@Base+0xd0>
    b186:	e7b5      	b.n	b0f4 <ItemInfoEntry_parse_box@@Base+0x6c>
    b188:	9c6a      	ldr	r4, [sp, #424]	; 0x1a8
    b18a:	0000      	movs	r0, r0
    b18c:	9c54      	ldr	r4, [sp, #336]	; 0x150
	...

0000b190 <FDItemInfoExtension_init@@Base>:
    b190:	2300      	movs	r3, #0
    b192:	6003      	str	r3, [r0, #0]
    b194:	6043      	str	r3, [r0, #4]
    b196:	4770      	bx	lr

0000b198 <FDItemInfoExtension_release@@Base>:
    b198:	b510      	push	{r4, lr}
    b19a:	4604      	mov	r4, r0
    b19c:	6800      	ldr	r0, [r0, #0]
    b19e:	b108      	cbz	r0, b1a4 <FDItemInfoExtension_release@@Base+0xc>
    b1a0:	f7fa ec64 	blx	5a6c <free@plt>
    b1a4:	6860      	ldr	r0, [r4, #4]
    b1a6:	2300      	movs	r3, #0
    b1a8:	6023      	str	r3, [r4, #0]
    b1aa:	b108      	cbz	r0, b1b0 <FDItemInfoExtension_release@@Base+0x18>
    b1ac:	f7fa ec5e 	blx	5a6c <free@plt>
    b1b0:	2300      	movs	r3, #0
    b1b2:	6063      	str	r3, [r4, #4]
    b1b4:	bd10      	pop	{r4, pc}
    b1b6:	bf00      	nop

0000b1b8 <ItemInfoBox_init@@Base>:
    b1b8:	f646 6266 	movw	r2, #28262	; 0x6e66
    b1bc:	2300      	movs	r3, #0
    b1be:	f6c6 1269 	movt	r2, #26985	; 0x6969
    b1c2:	7303      	strb	r3, [r0, #12]
    b1c4:	6042      	str	r2, [r0, #4]
    b1c6:	6103      	str	r3, [r0, #16]
    b1c8:	6183      	str	r3, [r0, #24]
    b1ca:	6143      	str	r3, [r0, #20]
    b1cc:	4770      	bx	lr
    b1ce:	bf00      	nop

0000b1d0 <ItemInfoBox_release@@Base>:
    b1d0:	b570      	push	{r4, r5, r6, lr}
    b1d2:	4606      	mov	r6, r0
    b1d4:	6940      	ldr	r0, [r0, #20]
    b1d6:	b190      	cbz	r0, b1fe <ItemInfoBox_release@@Base+0x2e>
    b1d8:	69b3      	ldr	r3, [r6, #24]
    b1da:	2b00      	cmp	r3, #0
    b1dc:	dd0b      	ble.n	b1f6 <ItemInfoBox_release@@Base+0x26>
    b1de:	2400      	movs	r4, #0
    b1e0:	4625      	mov	r5, r4
    b1e2:	4420      	add	r0, r4
    b1e4:	3501      	adds	r5, #1
    b1e6:	f7fa ee22 	blx	5e2c <ItemInfoEntry_release@plt>
    b1ea:	69b3      	ldr	r3, [r6, #24]
    b1ec:	3434      	adds	r4, #52	; 0x34
    b1ee:	6970      	ldr	r0, [r6, #20]
    b1f0:	42ab      	cmp	r3, r5
    b1f2:	dcf6      	bgt.n	b1e2 <ItemInfoBox_release@@Base+0x12>
    b1f4:	b108      	cbz	r0, b1fa <ItemInfoBox_release@@Base+0x2a>
    b1f6:	f7fa ec3a 	blx	5a6c <free@plt>
    b1fa:	2300      	movs	r3, #0
    b1fc:	6173      	str	r3, [r6, #20]
    b1fe:	bd70      	pop	{r4, r5, r6, pc}

0000b200 <ItemInfoBox_write_box@@Base>:
    b200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    b202:	4606      	mov	r6, r0
    b204:	460f      	mov	r7, r1
    b206:	f7fa ed22 	blx	5c4c <FullBox_write_header@plt>
    b20a:	7b33      	ldrb	r3, [r6, #12]
    b20c:	4638      	mov	r0, r7
    b20e:	69b1      	ldr	r1, [r6, #24]
    b210:	b9bb      	cbnz	r3, b242 <ItemInfoBox_write_box@@Base+0x42>
    b212:	f7fa ed82 	blx	5d18 <Bitstream_write_16bit@plt>
    b216:	69b3      	ldr	r3, [r6, #24]
    b218:	2b00      	cmp	r3, #0
    b21a:	bfc4      	itt	gt
    b21c:	2400      	movgt	r4, #0
    b21e:	4625      	movgt	r5, r4
    b220:	dd09      	ble.n	b236 <ItemInfoBox_write_box@@Base+0x36>
    b222:	6970      	ldr	r0, [r6, #20]
    b224:	4639      	mov	r1, r7
    b226:	3501      	adds	r5, #1
    b228:	4420      	add	r0, r4
    b22a:	3434      	adds	r4, #52	; 0x34
    b22c:	f7fa ee04 	blx	5e38 <ItemInfoEntry_write_box@plt>
    b230:	69b3      	ldr	r3, [r6, #24]
    b232:	42ab      	cmp	r3, r5
    b234:	dcf5      	bgt.n	b222 <ItemInfoBox_write_box@@Base+0x22>
    b236:	4630      	mov	r0, r6
    b238:	4639      	mov	r1, r7
    b23a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    b23e:	f008 be59 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    b242:	f7fa ed40 	blx	5cc4 <Bitstream_write_32bit@plt>
    b246:	e7e6      	b.n	b216 <ItemInfoBox_write_box@@Base+0x16>

0000b248 <ItemInfoBox_parse_box@@Base>:
    b248:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    b24c:	460f      	mov	r7, r1
    b24e:	4604      	mov	r4, r0
    b250:	f8d1 a008 	ldr.w	sl, [r1, #8]
    b254:	f7fa ed12 	blx	5c7c <FullBox_parse_header@plt>
    b258:	4680      	mov	r8, r0
    b25a:	bb98      	cbnz	r0, b2c4 <ItemInfoBox_parse_box@@Base+0x7c>
    b25c:	687b      	ldr	r3, [r7, #4]
    b25e:	6822      	ldr	r2, [r4, #0]
    b260:	ebca 0303 	rsb	r3, sl, r3
    b264:	4293      	cmp	r3, r2
    b266:	d32d      	bcc.n	b2c4 <ItemInfoBox_parse_box@@Base+0x7c>
    b268:	7b23      	ldrb	r3, [r4, #12]
    b26a:	61a0      	str	r0, [r4, #24]
    b26c:	4638      	mov	r0, r7
    b26e:	b373      	cbz	r3, b2ce <ItemInfoBox_parse_box@@Base+0x86>
    b270:	f7fa ec6e 	blx	5b50 <Bitstream_read_32bit@plt>
    b274:	2800      	cmp	r0, #0
    b276:	61a0      	str	r0, [r4, #24]
    b278:	dd2e      	ble.n	b2d8 <ItemInfoBox_parse_box@@Base+0x90>
    b27a:	eb00 0340 	add.w	r3, r0, r0, lsl #1
    b27e:	eb00 0083 	add.w	r0, r0, r3, lsl #2
    b282:	0085      	lsls	r5, r0, #2
    b284:	4628      	mov	r0, r5
    b286:	f7fa ebe0 	blx	5a48 <malloc@plt>
    b28a:	4681      	mov	r9, r0
    b28c:	6160      	str	r0, [r4, #20]
    b28e:	b1c8      	cbz	r0, b2c4 <ItemInfoBox_parse_box@@Base+0x7c>
    b290:	2100      	movs	r1, #0
    b292:	462a      	mov	r2, r5
    b294:	460d      	mov	r5, r1
    b296:	f7fa ec38 	blx	5b08 <memset@plt>
    b29a:	462e      	mov	r6, r5
    b29c:	4648      	mov	r0, r9
    b29e:	e003      	b.n	b2a8 <ItemInfoBox_parse_box@@Base+0x60>
    b2a0:	69a3      	ldr	r3, [r4, #24]
    b2a2:	42b3      	cmp	r3, r6
    b2a4:	dd18      	ble.n	b2d8 <ItemInfoBox_parse_box@@Base+0x90>
    b2a6:	6960      	ldr	r0, [r4, #20]
    b2a8:	4428      	add	r0, r5
    b2aa:	3601      	adds	r6, #1
    b2ac:	f7fa edca 	blx	5e44 <ItemInfoEntry_init@plt>
    b2b0:	6960      	ldr	r0, [r4, #20]
    b2b2:	4639      	mov	r1, r7
    b2b4:	4428      	add	r0, r5
    b2b6:	3534      	adds	r5, #52	; 0x34
    b2b8:	f7fa edca 	blx	5e50 <ItemInfoEntry_parse_box@plt>
    b2bc:	2800      	cmp	r0, #0
    b2be:	d0ef      	beq.n	b2a0 <ItemInfoBox_parse_box@@Base+0x58>
    b2c0:	4680      	mov	r8, r0
    b2c2:	e001      	b.n	b2c8 <ItemInfoBox_parse_box@@Base+0x80>
    b2c4:	f04f 0801 	mov.w	r8, #1
    b2c8:	4640      	mov	r0, r8
    b2ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    b2ce:	f7fa ed36 	blx	5d3c <Bitstream_read_16bit@plt>
    b2d2:	2800      	cmp	r0, #0
    b2d4:	61a0      	str	r0, [r4, #24]
    b2d6:	dcd0      	bgt.n	b27a <ItemInfoBox_parse_box@@Base+0x32>
    b2d8:	6823      	ldr	r3, [r4, #0]
    b2da:	4640      	mov	r0, r8
    b2dc:	4453      	add	r3, sl
    b2de:	60bb      	str	r3, [r7, #8]
    b2e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

0000b2e4 <ItemLocation_init@@Base>:
    b2e4:	efc0 0010 	vmov.i32	d16, #0	; 0x00000000
    b2e8:	2300      	movs	r3, #0
    b2ea:	6003      	str	r3, [r0, #0]
    b2ec:	6043      	str	r3, [r0, #4]
    b2ee:	edc0 0b04 	vstr	d16, [r0, #16]
    b2f2:	8103      	strh	r3, [r0, #8]
    b2f4:	6183      	str	r3, [r0, #24]
    b2f6:	61c3      	str	r3, [r0, #28]
    b2f8:	4770      	bx	lr
    b2fa:	bf00      	nop

0000b2fc <ItemLocation_release@@Base>:
    b2fc:	4770      	bx	lr
    b2fe:	bf00      	nop

0000b300 <ItemLocationBox_init@@Base>:
    b300:	f646 7263 	movw	r2, #28515	; 0x6f63
    b304:	2300      	movs	r3, #0
    b306:	f6c6 126c 	movt	r2, #26988	; 0x696c
    b30a:	7303      	strb	r3, [r0, #12]
    b30c:	6042      	str	r2, [r0, #4]
    b30e:	2204      	movs	r2, #4
    b310:	6103      	str	r3, [r0, #16]
    b312:	75c3      	strb	r3, [r0, #23]
    b314:	6183      	str	r3, [r0, #24]
    b316:	66c3      	str	r3, [r0, #108]	; 0x6c
    b318:	7502      	strb	r2, [r0, #20]
    b31a:	7542      	strb	r2, [r0, #21]
    b31c:	7582      	strb	r2, [r0, #22]
    b31e:	4770      	bx	lr

0000b320 <ItemLocationBox_release@@Base>:
    b320:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    b324:	6986      	ldr	r6, [r0, #24]
    b326:	b306      	cbz	r6, b36a <ItemLocationBox_release@@Base+0x4a>
    b328:	6ec2      	ldr	r2, [r0, #108]	; 0x6c
    b32a:	2400      	movs	r4, #0
    b32c:	4680      	mov	r8, r0
    b32e:	4627      	mov	r7, r4
    b330:	b90a      	cbnz	r2, b336 <ItemLocationBox_release@@Base+0x16>
    b332:	e017      	b.n	b364 <ItemLocationBox_release@@Base+0x44>
    b334:	b1b2      	cbz	r2, b364 <ItemLocationBox_release@@Base+0x44>
    b336:	0165      	lsls	r5, r4, #5
    b338:	3401      	adds	r4, #1
    b33a:	1953      	adds	r3, r2, r5
    b33c:	6999      	ldr	r1, [r3, #24]
    b33e:	b151      	cbz	r1, b356 <ItemLocationBox_release@@Base+0x36>
    b340:	69d9      	ldr	r1, [r3, #28]
    b342:	4608      	mov	r0, r1
    b344:	b131      	cbz	r1, b354 <ItemLocationBox_release@@Base+0x34>
    b346:	f7fa eb92 	blx	5a6c <free@plt>
    b34a:	f8d8 206c 	ldr.w	r2, [r8, #108]	; 0x6c
    b34e:	f8d8 6018 	ldr.w	r6, [r8, #24]
    b352:	1953      	adds	r3, r2, r5
    b354:	61df      	str	r7, [r3, #28]
    b356:	42b4      	cmp	r4, r6
    b358:	d3ec      	bcc.n	b334 <ItemLocationBox_release@@Base+0x14>
    b35a:	b136      	cbz	r6, b36a <ItemLocationBox_release@@Base+0x4a>
    b35c:	b112      	cbz	r2, b364 <ItemLocationBox_release@@Base+0x44>
    b35e:	4610      	mov	r0, r2
    b360:	f7fa eb84 	blx	5a6c <free@plt>
    b364:	2300      	movs	r3, #0
    b366:	f8c8 306c 	str.w	r3, [r8, #108]	; 0x6c
    b36a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    b36e:	bf00      	nop

0000b370 <ItemLocationBox_write_box@@Base>:
    b370:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    b374:	4605      	mov	r5, r0
    b376:	460e      	mov	r6, r1
    b378:	f7fa ec68 	blx	5c4c <FullBox_write_header@plt>
    b37c:	7d29      	ldrb	r1, [r5, #20]
    b37e:	2204      	movs	r2, #4
    b380:	4630      	mov	r0, r6
    b382:	f7fa ecc4 	blx	5d0c <Bitstream_write_bits@plt>
    b386:	7d69      	ldrb	r1, [r5, #21]
    b388:	2204      	movs	r2, #4
    b38a:	4630      	mov	r0, r6
    b38c:	f7fa ecbe 	blx	5d0c <Bitstream_write_bits@plt>
    b390:	7da9      	ldrb	r1, [r5, #22]
    b392:	2204      	movs	r2, #4
    b394:	4630      	mov	r0, r6
    b396:	f7fa ecba 	blx	5d0c <Bitstream_write_bits@plt>
    b39a:	7b2b      	ldrb	r3, [r5, #12]
    b39c:	4630      	mov	r0, r6
    b39e:	2204      	movs	r2, #4
    b3a0:	3b01      	subs	r3, #1
    b3a2:	2b01      	cmp	r3, #1
    b3a4:	bf94      	ite	ls
    b3a6:	7de9      	ldrbls	r1, [r5, #23]
    b3a8:	2100      	movhi	r1, #0
    b3aa:	f7fa ecb0 	blx	5d0c <Bitstream_write_bits@plt>
    b3ae:	7b2b      	ldrb	r3, [r5, #12]
    b3b0:	2b01      	cmp	r3, #1
    b3b2:	d977      	bls.n	b4a4 <ItemLocationBox_write_box@@Base+0x134>
    b3b4:	2b02      	cmp	r3, #2
    b3b6:	d07a      	beq.n	b4ae <ItemLocationBox_write_box@@Base+0x13e>
    b3b8:	69ab      	ldr	r3, [r5, #24]
    b3ba:	f105 0818 	add.w	r8, r5, #24
    b3be:	2700      	movs	r7, #0
    b3c0:	2b00      	cmp	r3, #0
    b3c2:	d051      	beq.n	b468 <ItemLocationBox_write_box@@Base+0xf8>
    b3c4:	7b2b      	ldrb	r3, [r5, #12]
    b3c6:	017a      	lsls	r2, r7, #5
    b3c8:	6ee9      	ldr	r1, [r5, #108]	; 0x6c
    b3ca:	2b01      	cmp	r3, #1
    b3cc:	eb01 0902 	add.w	r9, r1, r2
    b3d0:	d95c      	bls.n	b48c <ItemLocationBox_write_box@@Base+0x11c>
    b3d2:	2b02      	cmp	r3, #2
    b3d4:	d060      	beq.n	b498 <ItemLocationBox_write_box@@Base+0x128>
    b3d6:	3b01      	subs	r3, #1
    b3d8:	2b01      	cmp	r3, #1
    b3da:	d94b      	bls.n	b474 <ItemLocationBox_write_box@@Base+0x104>
    b3dc:	f8b9 1008 	ldrh.w	r1, [r9, #8]
    b3e0:	4630      	mov	r0, r6
    b3e2:	f7fa ec9a 	blx	5d18 <Bitstream_write_16bit@plt>
    b3e6:	68b3      	ldr	r3, [r6, #8]
    b3e8:	f8d9 1010 	ldr.w	r1, [r9, #16]
    b3ec:	4630      	mov	r0, r6
    b3ee:	2400      	movs	r4, #0
    b3f0:	f848 3f04 	str.w	r3, [r8, #4]!
    b3f4:	46a2      	mov	sl, r4
    b3f6:	7daa      	ldrb	r2, [r5, #22]
    b3f8:	00d2      	lsls	r2, r2, #3
    b3fa:	f7fa ec88 	blx	5d0c <Bitstream_write_bits@plt>
    b3fe:	4630      	mov	r0, r6
    b400:	f8d9 1018 	ldr.w	r1, [r9, #24]
    b404:	f7fa ec88 	blx	5d18 <Bitstream_write_16bit@plt>
    b408:	f8d9 3018 	ldr.w	r3, [r9, #24]
    b40c:	b9bb      	cbnz	r3, b43e <ItemLocationBox_write_box@@Base+0xce>
    b40e:	e027      	b.n	b460 <ItemLocationBox_write_box@@Base+0xf0>
    b410:	f8d9 301c 	ldr.w	r3, [r9, #28]
    b414:	4630      	mov	r0, r6
    b416:	7d2a      	ldrb	r2, [r5, #20]
    b418:	4423      	add	r3, r4
    b41a:	00d2      	lsls	r2, r2, #3
    b41c:	6899      	ldr	r1, [r3, #8]
    b41e:	f7fa ec76 	blx	5d0c <Bitstream_write_bits@plt>
    b422:	f8d9 301c 	ldr.w	r3, [r9, #28]
    b426:	7d6a      	ldrb	r2, [r5, #21]
    b428:	4630      	mov	r0, r6
    b42a:	4423      	add	r3, r4
    b42c:	3418      	adds	r4, #24
    b42e:	6919      	ldr	r1, [r3, #16]
    b430:	00d2      	lsls	r2, r2, #3
    b432:	f7fa ec6c 	blx	5d0c <Bitstream_write_bits@plt>
    b436:	f8d9 3018 	ldr.w	r3, [r9, #24]
    b43a:	459a      	cmp	sl, r3
    b43c:	d210      	bcs.n	b460 <ItemLocationBox_write_box@@Base+0xf0>
    b43e:	7b2b      	ldrb	r3, [r5, #12]
    b440:	f10a 0a01 	add.w	sl, sl, #1
    b444:	3b01      	subs	r3, #1
    b446:	2b01      	cmp	r3, #1
    b448:	d8e2      	bhi.n	b410 <ItemLocationBox_write_box@@Base+0xa0>
    b44a:	7dea      	ldrb	r2, [r5, #23]
    b44c:	2a00      	cmp	r2, #0
    b44e:	d0df      	beq.n	b410 <ItemLocationBox_write_box@@Base+0xa0>
    b450:	f8d9 301c 	ldr.w	r3, [r9, #28]
    b454:	00d2      	lsls	r2, r2, #3
    b456:	4630      	mov	r0, r6
    b458:	5919      	ldr	r1, [r3, r4]
    b45a:	f7fa ec58 	blx	5d0c <Bitstream_write_bits@plt>
    b45e:	e7d7      	b.n	b410 <ItemLocationBox_write_box@@Base+0xa0>
    b460:	69ab      	ldr	r3, [r5, #24]
    b462:	3701      	adds	r7, #1
    b464:	429f      	cmp	r7, r3
    b466:	d3ad      	bcc.n	b3c4 <ItemLocationBox_write_box@@Base+0x54>
    b468:	4628      	mov	r0, r5
    b46a:	4631      	mov	r1, r6
    b46c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    b470:	f008 bd40 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    b474:	4630      	mov	r0, r6
    b476:	2100      	movs	r1, #0
    b478:	220c      	movs	r2, #12
    b47a:	f7fa ec48 	blx	5d0c <Bitstream_write_bits@plt>
    b47e:	4630      	mov	r0, r6
    b480:	f8d9 1004 	ldr.w	r1, [r9, #4]
    b484:	2204      	movs	r2, #4
    b486:	f7fa ec42 	blx	5d0c <Bitstream_write_bits@plt>
    b48a:	e7a7      	b.n	b3dc <ItemLocationBox_write_box@@Base+0x6c>
    b48c:	5889      	ldr	r1, [r1, r2]
    b48e:	4630      	mov	r0, r6
    b490:	f7fa ec42 	blx	5d18 <Bitstream_write_16bit@plt>
    b494:	7b2b      	ldrb	r3, [r5, #12]
    b496:	e79e      	b.n	b3d6 <ItemLocationBox_write_box@@Base+0x66>
    b498:	5889      	ldr	r1, [r1, r2]
    b49a:	4630      	mov	r0, r6
    b49c:	f7fa ec12 	blx	5cc4 <Bitstream_write_32bit@plt>
    b4a0:	7b2b      	ldrb	r3, [r5, #12]
    b4a2:	e798      	b.n	b3d6 <ItemLocationBox_write_box@@Base+0x66>
    b4a4:	4630      	mov	r0, r6
    b4a6:	69a9      	ldr	r1, [r5, #24]
    b4a8:	f7fa ec36 	blx	5d18 <Bitstream_write_16bit@plt>
    b4ac:	e784      	b.n	b3b8 <ItemLocationBox_write_box@@Base+0x48>
    b4ae:	4630      	mov	r0, r6
    b4b0:	69a9      	ldr	r1, [r5, #24]
    b4b2:	f7fa ec08 	blx	5cc4 <Bitstream_write_32bit@plt>
    b4b6:	e77f      	b.n	b3b8 <ItemLocationBox_write_box@@Base+0x48>

0000b4b8 <ItemLocationBox_parse_box@@Base>:
    b4b8:	688b      	ldr	r3, [r1, #8]
    b4ba:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b4be:	b083      	sub	sp, #12
    b4c0:	4688      	mov	r8, r1
    b4c2:	4606      	mov	r6, r0
    b4c4:	9300      	str	r3, [sp, #0]
    b4c6:	f7fa ebda 	blx	5c7c <FullBox_parse_header@plt>
    b4ca:	b930      	cbnz	r0, b4da <ItemLocationBox_parse_box@@Base+0x22>
    b4cc:	f8d8 3004 	ldr.w	r3, [r8, #4]
    b4d0:	9900      	ldr	r1, [sp, #0]
    b4d2:	6832      	ldr	r2, [r6, #0]
    b4d4:	1a5b      	subs	r3, r3, r1
    b4d6:	4293      	cmp	r3, r2
    b4d8:	d203      	bcs.n	b4e2 <ItemLocationBox_parse_box@@Base+0x2a>
    b4da:	2001      	movs	r0, #1
    b4dc:	b003      	add	sp, #12
    b4de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b4e2:	2104      	movs	r1, #4
    b4e4:	4640      	mov	r0, r8
    b4e6:	f7fa ebf4 	blx	5cd0 <Bitstream_read_bits@plt>
    b4ea:	2104      	movs	r1, #4
    b4ec:	7530      	strb	r0, [r6, #20]
    b4ee:	4640      	mov	r0, r8
    b4f0:	f7fa ebee 	blx	5cd0 <Bitstream_read_bits@plt>
    b4f4:	2104      	movs	r1, #4
    b4f6:	7570      	strb	r0, [r6, #21]
    b4f8:	4640      	mov	r0, r8
    b4fa:	f7fa ebea 	blx	5cd0 <Bitstream_read_bits@plt>
    b4fe:	7b33      	ldrb	r3, [r6, #12]
    b500:	2104      	movs	r1, #4
    b502:	3b01      	subs	r3, #1
    b504:	2b01      	cmp	r3, #1
    b506:	75b0      	strb	r0, [r6, #22]
    b508:	4640      	mov	r0, r8
    b50a:	d915      	bls.n	b538 <ItemLocationBox_parse_box@@Base+0x80>
    b50c:	f7fa ebe0 	blx	5cd0 <Bitstream_read_bits@plt>
    b510:	7b33      	ldrb	r3, [r6, #12]
    b512:	2b01      	cmp	r3, #1
    b514:	f240 80b9 	bls.w	b68a <ItemLocationBox_parse_box@@Base+0x1d2>
    b518:	2b02      	cmp	r3, #2
    b51a:	f000 80bb 	beq.w	b694 <ItemLocationBox_parse_box@@Base+0x1dc>
    b51e:	69b0      	ldr	r0, [r6, #24]
    b520:	1e42      	subs	r2, r0, #1
    b522:	f647 73fe 	movw	r3, #32766	; 0x7ffe
    b526:	429a      	cmp	r2, r3
    b528:	d90a      	bls.n	b540 <ItemLocationBox_parse_box@@Base+0x88>
    b52a:	2300      	movs	r3, #0
    b52c:	2001      	movs	r0, #1
    b52e:	61b3      	str	r3, [r6, #24]
    b530:	66f3      	str	r3, [r6, #108]	; 0x6c
    b532:	b003      	add	sp, #12
    b534:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b538:	f7fa ebca 	blx	5cd0 <Bitstream_read_bits@plt>
    b53c:	75f0      	strb	r0, [r6, #23]
    b53e:	e7e7      	b.n	b510 <ItemLocationBox_parse_box@@Base+0x58>
    b540:	ea4f 1940 	mov.w	r9, r0, lsl #5
    b544:	4648      	mov	r0, r9
    b546:	f7fa ea80 	blx	5a48 <malloc@plt>
    b54a:	4604      	mov	r4, r0
    b54c:	66f0      	str	r0, [r6, #108]	; 0x6c
    b54e:	2800      	cmp	r0, #0
    b550:	d0c3      	beq.n	b4da <ItemLocationBox_parse_box@@Base+0x22>
    b552:	2100      	movs	r1, #0
    b554:	464a      	mov	r2, r9
    b556:	9101      	str	r1, [sp, #4]
    b558:	f7fa ead6 	blx	5b08 <memset@plt>
    b55c:	9b01      	ldr	r3, [sp, #4]
    b55e:	015d      	lsls	r5, r3, #5
    b560:	eb04 0a05 	add.w	sl, r4, r5
    b564:	4650      	mov	r0, sl
    b566:	f7fa ec7a 	blx	5e5c <ItemLocation_init@plt>
    b56a:	7b33      	ldrb	r3, [r6, #12]
    b56c:	2b01      	cmp	r3, #1
    b56e:	d97f      	bls.n	b670 <ItemLocationBox_parse_box@@Base+0x1b8>
    b570:	2b02      	cmp	r3, #2
    b572:	f000 8083 	beq.w	b67c <ItemLocationBox_parse_box@@Base+0x1c4>
    b576:	3b01      	subs	r3, #1
    b578:	2b01      	cmp	r3, #1
    b57a:	d96e      	bls.n	b65a <ItemLocationBox_parse_box@@Base+0x1a2>
    b57c:	4640      	mov	r0, r8
    b57e:	f7fa ebde 	blx	5d3c <Bitstream_read_16bit@plt>
    b582:	f8aa 0008 	strh.w	r0, [sl, #8]
    b586:	4640      	mov	r0, r8
    b588:	7db1      	ldrb	r1, [r6, #22]
    b58a:	00c9      	lsls	r1, r1, #3
    b58c:	f7fa eba0 	blx	5cd0 <Bitstream_read_bits@plt>
    b590:	2300      	movs	r3, #0
    b592:	f8ca 3014 	str.w	r3, [sl, #20]
    b596:	f8ca 0010 	str.w	r0, [sl, #16]
    b59a:	4640      	mov	r0, r8
    b59c:	f7fa ebce 	blx	5d3c <Bitstream_read_16bit@plt>
    b5a0:	f8d8 2008 	ldr.w	r2, [r8, #8]
    b5a4:	9b00      	ldr	r3, [sp, #0]
    b5a6:	1ad2      	subs	r2, r2, r3
    b5a8:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
    b5ac:	4604      	mov	r4, r0
    b5ae:	f8ca 0018 	str.w	r0, [sl, #24]
    b5b2:	d292      	bcs.n	b4da <ItemLocationBox_parse_box@@Base+0x22>
    b5b4:	6831      	ldr	r1, [r6, #0]
    b5b6:	428a      	cmp	r2, r1
    b5b8:	dc8f      	bgt.n	b4da <ItemLocationBox_parse_box@@Base+0x22>
    b5ba:	7d30      	ldrb	r0, [r6, #20]
    b5bc:	1a89      	subs	r1, r1, r2
    b5be:	7d73      	ldrb	r3, [r6, #21]
    b5c0:	7df2      	ldrb	r2, [r6, #23]
    b5c2:	4403      	add	r3, r0
    b5c4:	4413      	add	r3, r2
    b5c6:	fb03 f304 	mul.w	r3, r3, r4
    b5ca:	428b      	cmp	r3, r1
    b5cc:	d885      	bhi.n	b4da <ItemLocationBox_parse_box@@Base+0x22>
    b5ce:	eb04 0044 	add.w	r0, r4, r4, lsl #1
    b5d2:	00c0      	lsls	r0, r0, #3
    b5d4:	f7fa ea38 	blx	5a48 <malloc@plt>
    b5d8:	f8ca 001c 	str.w	r0, [sl, #28]
    b5dc:	2800      	cmp	r0, #0
    b5de:	f43f af7c 	beq.w	b4da <ItemLocationBox_parse_box@@Base+0x22>
    b5e2:	b394      	cbz	r4, b64a <ItemLocationBox_parse_box@@Base+0x192>
    b5e4:	2400      	movs	r4, #0
    b5e6:	4627      	mov	r7, r4
    b5e8:	e01e      	b.n	b628 <ItemLocationBox_parse_box@@Base+0x170>
    b5ea:	7d31      	ldrb	r1, [r6, #20]
    b5ec:	4640      	mov	r0, r8
    b5ee:	3701      	adds	r7, #1
    b5f0:	00c9      	lsls	r1, r1, #3
    b5f2:	f7fa eb6e 	blx	5cd0 <Bitstream_read_bits@plt>
    b5f6:	7d71      	ldrb	r1, [r6, #21]
    b5f8:	00c9      	lsls	r1, r1, #3
    b5fa:	4683      	mov	fp, r0
    b5fc:	4640      	mov	r0, r8
    b5fe:	f7fa eb68 	blx	5cd0 <Bitstream_read_bits@plt>
    b602:	f8da 201c 	ldr.w	r2, [sl, #28]
    b606:	f8da 1018 	ldr.w	r1, [sl, #24]
    b60a:	1913      	adds	r3, r2, r4
    b60c:	428f      	cmp	r7, r1
    b60e:	5115      	str	r5, [r2, r4]
    b610:	f04f 0200 	mov.w	r2, #0
    b614:	f8c3 b008 	str.w	fp, [r3, #8]
    b618:	f104 0418 	add.w	r4, r4, #24
    b61c:	f8c3 9004 	str.w	r9, [r3, #4]
    b620:	60da      	str	r2, [r3, #12]
    b622:	615a      	str	r2, [r3, #20]
    b624:	6118      	str	r0, [r3, #16]
    b626:	d210      	bcs.n	b64a <ItemLocationBox_parse_box@@Base+0x192>
    b628:	7b33      	ldrb	r3, [r6, #12]
    b62a:	2500      	movs	r5, #0
    b62c:	46a9      	mov	r9, r5
    b62e:	3b01      	subs	r3, #1
    b630:	2b01      	cmp	r3, #1
    b632:	d8da      	bhi.n	b5ea <ItemLocationBox_parse_box@@Base+0x132>
    b634:	7df1      	ldrb	r1, [r6, #23]
    b636:	460d      	mov	r5, r1
    b638:	b909      	cbnz	r1, b63e <ItemLocationBox_parse_box@@Base+0x186>
    b63a:	4689      	mov	r9, r1
    b63c:	e7d5      	b.n	b5ea <ItemLocationBox_parse_box@@Base+0x132>
    b63e:	00c9      	lsls	r1, r1, #3
    b640:	4640      	mov	r0, r8
    b642:	f7fa eb46 	blx	5cd0 <Bitstream_read_bits@plt>
    b646:	4605      	mov	r5, r0
    b648:	e7cf      	b.n	b5ea <ItemLocationBox_parse_box@@Base+0x132>
    b64a:	9a01      	ldr	r2, [sp, #4]
    b64c:	69b3      	ldr	r3, [r6, #24]
    b64e:	3201      	adds	r2, #1
    b650:	9201      	str	r2, [sp, #4]
    b652:	429a      	cmp	r2, r3
    b654:	d223      	bcs.n	b69e <ItemLocationBox_parse_box@@Base+0x1e6>
    b656:	6ef4      	ldr	r4, [r6, #108]	; 0x6c
    b658:	e780      	b.n	b55c <ItemLocationBox_parse_box@@Base+0xa4>
    b65a:	210c      	movs	r1, #12
    b65c:	4640      	mov	r0, r8
    b65e:	f7fa eb38 	blx	5cd0 <Bitstream_read_bits@plt>
    b662:	4640      	mov	r0, r8
    b664:	2104      	movs	r1, #4
    b666:	f7fa eb34 	blx	5cd0 <Bitstream_read_bits@plt>
    b66a:	f8ca 0004 	str.w	r0, [sl, #4]
    b66e:	e785      	b.n	b57c <ItemLocationBox_parse_box@@Base+0xc4>
    b670:	4640      	mov	r0, r8
    b672:	f7fa eb64 	blx	5d3c <Bitstream_read_16bit@plt>
    b676:	5160      	str	r0, [r4, r5]
    b678:	7b33      	ldrb	r3, [r6, #12]
    b67a:	e77c      	b.n	b576 <ItemLocationBox_parse_box@@Base+0xbe>
    b67c:	4640      	mov	r0, r8
    b67e:	f7fa ea68 	blx	5b50 <Bitstream_read_32bit@plt>
    b682:	f8ca 0000 	str.w	r0, [sl]
    b686:	7b33      	ldrb	r3, [r6, #12]
    b688:	e775      	b.n	b576 <ItemLocationBox_parse_box@@Base+0xbe>
    b68a:	4640      	mov	r0, r8
    b68c:	f7fa eb56 	blx	5d3c <Bitstream_read_16bit@plt>
    b690:	61b0      	str	r0, [r6, #24]
    b692:	e745      	b.n	b520 <ItemLocationBox_parse_box@@Base+0x68>
    b694:	4640      	mov	r0, r8
    b696:	f7fa ea5c 	blx	5b50 <Bitstream_read_32bit@plt>
    b69a:	61b0      	str	r0, [r6, #24]
    b69c:	e740      	b.n	b520 <ItemLocationBox_parse_box@@Base+0x68>
    b69e:	f8d8 3008 	ldr.w	r3, [r8, #8]
    b6a2:	9a00      	ldr	r2, [sp, #0]
    b6a4:	6830      	ldr	r0, [r6, #0]
    b6a6:	1a9b      	subs	r3, r3, r2
    b6a8:	1a18      	subs	r0, r3, r0
    b6aa:	bf18      	it	ne
    b6ac:	2001      	movne	r0, #1
    b6ae:	e715      	b.n	b4dc <ItemLocationBox_parse_box@@Base+0x24>

0000b6b0 <ItemPropertyContainer_init@@Base>:
    b6b0:	f246 326f 	movw	r2, #25455	; 0x636f
    b6b4:	2300      	movs	r3, #0
    b6b6:	f6c6 1270 	movt	r2, #26992	; 0x6970
    b6ba:	7403      	strb	r3, [r0, #16]
    b6bc:	6042      	str	r2, [r0, #4]
    b6be:	60c3      	str	r3, [r0, #12]
    b6c0:	4770      	bx	lr
    b6c2:	bf00      	nop

0000b6c4 <ItemPropertyContainer_release@@Base>:
    b6c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b6c8:	4683      	mov	fp, r0
    b6ca:	7c01      	ldrb	r1, [r0, #16]
    b6cc:	b083      	sub	sp, #12
    b6ce:	68c3      	ldr	r3, [r0, #12]
    b6d0:	2900      	cmp	r1, #0
    b6d2:	d069      	beq.n	b7a8 <ItemPropertyContainer_release@@Base+0xe4>
    b6d4:	4a43      	ldr	r2, [pc, #268]	; (b7e4 <ItemPropertyContainer_release@@Base+0x120>)
    b6d6:	f246 3643 	movw	r6, #25411	; 0x6343
    b6da:	f247 0765 	movw	r7, #28773	; 0x7065
    b6de:	f246 1870 	movw	r8, #24944	; 0x6170
    b6e2:	447a      	add	r2, pc
    b6e4:	9200      	str	r2, [sp, #0]
    b6e6:	4a40      	ldr	r2, [pc, #256]	; (b7e8 <ItemPropertyContainer_release@@Base+0x124>)
    b6e8:	f646 7974 	movw	r9, #28532	; 0x6f74
    b6ec:	f6c6 0676 	movt	r6, #26742	; 0x6876
    b6f0:	f6c6 1773 	movt	r7, #26995	; 0x6973
    b6f4:	447a      	add	r2, pc
    b6f6:	f2c6 386c 	movt	r8, #25452	; 0x636c
    b6fa:	9201      	str	r2, [sp, #4]
    b6fc:	f6c6 1972 	movt	r9, #26994	; 0x6972
    b700:	2400      	movs	r4, #0
    b702:	e015      	b.n	b730 <ItemPropertyContainer_release@@Base+0x6c>
    b704:	9800      	ldr	r0, [sp, #0]
    b706:	f7fa ea9c 	blx	5c40 <string_type_to_int32@plt>
    b70a:	f8db 300c 	ldr.w	r3, [fp, #12]
    b70e:	4582      	cmp	sl, r0
    b710:	d037      	beq.n	b782 <ItemPropertyContainer_release@@Base+0xbe>
    b712:	595b      	ldr	r3, [r3, r5]
    b714:	9801      	ldr	r0, [sp, #4]
    b716:	f8d3 a004 	ldr.w	sl, [r3, #4]
    b71a:	f7fa ea92 	blx	5c40 <string_type_to_int32@plt>
    b71e:	f8db 300c 	ldr.w	r3, [fp, #12]
    b722:	4582      	cmp	sl, r0
    b724:	d053      	beq.n	b7ce <ItemPropertyContainer_release@@Base+0x10a>
    b726:	f89b 1010 	ldrb.w	r1, [fp, #16]
    b72a:	3401      	adds	r4, #1
    b72c:	42a1      	cmp	r1, r4
    b72e:	dd3b      	ble.n	b7a8 <ItemPropertyContainer_release@@Base+0xe4>
    b730:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
    b734:	00a5      	lsls	r5, r4, #2
    b736:	2800      	cmp	r0, #0
    b738:	d0f7      	beq.n	b72a <ItemPropertyContainer_release@@Base+0x66>
    b73a:	f8d0 a004 	ldr.w	sl, [r0, #4]
    b73e:	45b2      	cmp	sl, r6
    b740:	d016      	beq.n	b770 <ItemPropertyContainer_release@@Base+0xac>
    b742:	45ba      	cmp	sl, r7
    b744:	d027      	beq.n	b796 <ItemPropertyContainer_release@@Base+0xd2>
    b746:	45c2      	cmp	sl, r8
    b748:	d038      	beq.n	b7bc <ItemPropertyContainer_release@@Base+0xf8>
    b74a:	45ca      	cmp	sl, r9
    b74c:	d1da      	bne.n	b704 <ItemPropertyContainer_release@@Base+0x40>
    b74e:	f7fa eb8c 	blx	5e68 <ImageRotation_release@plt>
    b752:	f8db 100c 	ldr.w	r1, [fp, #12]
    b756:	194b      	adds	r3, r1, r5
    b758:	5948      	ldr	r0, [r1, r5]
    b75a:	b120      	cbz	r0, b766 <ItemPropertyContainer_release@@Base+0xa2>
    b75c:	f7fa e986 	blx	5a6c <free@plt>
    b760:	f8db 300c 	ldr.w	r3, [fp, #12]
    b764:	442b      	add	r3, r5
    b766:	2100      	movs	r1, #0
    b768:	6019      	str	r1, [r3, #0]
    b76a:	f8db 300c 	ldr.w	r3, [fp, #12]
    b76e:	e7da      	b.n	b726 <ItemPropertyContainer_release@@Base+0x62>
    b770:	f7fa eb80 	blx	5e74 <Bytevc1ConfigurationBox_release@plt>
    b774:	f8db 100c 	ldr.w	r1, [fp, #12]
    b778:	194b      	adds	r3, r1, r5
    b77a:	5948      	ldr	r0, [r1, r5]
    b77c:	2800      	cmp	r0, #0
    b77e:	d1ed      	bne.n	b75c <ItemPropertyContainer_release@@Base+0x98>
    b780:	e7f1      	b.n	b766 <ItemPropertyContainer_release@@Base+0xa2>
    b782:	5958      	ldr	r0, [r3, r5]
    b784:	f7fa eb7c 	blx	5e80 <ColourInformationBox_release@plt>
    b788:	f8db 100c 	ldr.w	r1, [fp, #12]
    b78c:	194b      	adds	r3, r1, r5
    b78e:	5948      	ldr	r0, [r1, r5]
    b790:	2800      	cmp	r0, #0
    b792:	d1e3      	bne.n	b75c <ItemPropertyContainer_release@@Base+0x98>
    b794:	e7e7      	b.n	b766 <ItemPropertyContainer_release@@Base+0xa2>
    b796:	f7fa eb7a 	blx	5e8c <ImageSpatialExtentsProperty_release@plt>
    b79a:	f8db 100c 	ldr.w	r1, [fp, #12]
    b79e:	194b      	adds	r3, r1, r5
    b7a0:	5948      	ldr	r0, [r1, r5]
    b7a2:	2800      	cmp	r0, #0
    b7a4:	d1da      	bne.n	b75c <ItemPropertyContainer_release@@Base+0x98>
    b7a6:	e7de      	b.n	b766 <ItemPropertyContainer_release@@Base+0xa2>
    b7a8:	b113      	cbz	r3, b7b0 <ItemPropertyContainer_release@@Base+0xec>
    b7aa:	4618      	mov	r0, r3
    b7ac:	f7fa e95e 	blx	5a6c <free@plt>
    b7b0:	2300      	movs	r3, #0
    b7b2:	f8cb 300c 	str.w	r3, [fp, #12]
    b7b6:	b003      	add	sp, #12
    b7b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b7bc:	f7fa eb6c 	blx	5e98 <CleanAperture_release@plt>
    b7c0:	f8db 100c 	ldr.w	r1, [fp, #12]
    b7c4:	194b      	adds	r3, r1, r5
    b7c6:	5948      	ldr	r0, [r1, r5]
    b7c8:	2800      	cmp	r0, #0
    b7ca:	d1c7      	bne.n	b75c <ItemPropertyContainer_release@@Base+0x98>
    b7cc:	e7cb      	b.n	b766 <ItemPropertyContainer_release@@Base+0xa2>
    b7ce:	5958      	ldr	r0, [r3, r5]
    b7d0:	f7fa eb68 	blx	5ea4 <ImageAuxiliaryTypeProperty_release@plt>
    b7d4:	f8db 100c 	ldr.w	r1, [fp, #12]
    b7d8:	194b      	adds	r3, r1, r5
    b7da:	5948      	ldr	r0, [r1, r5]
    b7dc:	2800      	cmp	r0, #0
    b7de:	d1bd      	bne.n	b75c <ItemPropertyContainer_release@@Base+0x98>
    b7e0:	e7c1      	b.n	b766 <ItemPropertyContainer_release@@Base+0xa2>
    b7e2:	bf00      	nop
    b7e4:	95d2      	str	r5, [sp, #840]	; 0x348
    b7e6:	0000      	movs	r0, r0
    b7e8:	95a8      	str	r5, [sp, #672]	; 0x2a0
	...

0000b7ec <ItemPropertyAssociation_init@@Base>:
    b7ec:	f646 5261 	movw	r2, #28001	; 0x6d61
    b7f0:	2300      	movs	r3, #0
    b7f2:	f6c6 1270 	movt	r2, #26992	; 0x6970
    b7f6:	7303      	strb	r3, [r0, #12]
    b7f8:	6042      	str	r2, [r0, #4]
    b7fa:	6103      	str	r3, [r0, #16]
    b7fc:	6183      	str	r3, [r0, #24]
    b7fe:	6143      	str	r3, [r0, #20]
    b800:	4770      	bx	lr
    b802:	bf00      	nop

0000b804 <ItemPropertyAssociation_release@@Base>:
    b804:	6981      	ldr	r1, [r0, #24]
    b806:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    b808:	4607      	mov	r7, r0
    b80a:	6942      	ldr	r2, [r0, #20]
    b80c:	b1a1      	cbz	r1, b838 <ItemPropertyAssociation_release@@Base+0x34>
    b80e:	2400      	movs	r4, #0
    b810:	4625      	mov	r5, r4
    b812:	4626      	mov	r6, r4
    b814:	b90a      	cbnz	r2, b81a <ItemPropertyAssociation_release@@Base+0x16>
    b816:	e018      	b.n	b84a <ItemPropertyAssociation_release@@Base+0x46>
    b818:	b1b2      	cbz	r2, b848 <ItemPropertyAssociation_release@@Base+0x44>
    b81a:	1913      	adds	r3, r2, r4
    b81c:	3501      	adds	r5, #1
    b81e:	689b      	ldr	r3, [r3, #8]
    b820:	4618      	mov	r0, r3
    b822:	b11b      	cbz	r3, b82c <ItemPropertyAssociation_release@@Base+0x28>
    b824:	f7fa e922 	blx	5a6c <free@plt>
    b828:	69b9      	ldr	r1, [r7, #24]
    b82a:	697a      	ldr	r2, [r7, #20]
    b82c:	1913      	adds	r3, r2, r4
    b82e:	428d      	cmp	r5, r1
    b830:	f104 040c 	add.w	r4, r4, #12
    b834:	609e      	str	r6, [r3, #8]
    b836:	d3ef      	bcc.n	b818 <ItemPropertyAssociation_release@@Base+0x14>
    b838:	b12a      	cbz	r2, b846 <ItemPropertyAssociation_release@@Base+0x42>
    b83a:	4610      	mov	r0, r2
    b83c:	f7fa e916 	blx	5a6c <free@plt>
    b840:	2300      	movs	r3, #0
    b842:	617b      	str	r3, [r7, #20]
    b844:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    b846:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    b848:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    b84a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000b84c <ItemPropertiesBox_init@@Base>:
    b84c:	b510      	push	{r4, lr}
    b84e:	f247 2370 	movw	r3, #29296	; 0x7270
    b852:	4604      	mov	r4, r0
    b854:	f6c6 1370 	movt	r3, #26992	; 0x6970
    b858:	3014      	adds	r0, #20
    b85a:	6063      	str	r3, [r4, #4]
    b85c:	f7fa eb28 	blx	5eb0 <ItemPropertyContainer_init@plt>
    b860:	f104 0028 	add.w	r0, r4, #40	; 0x28
    b864:	f7fa eb2a 	blx	5ebc <ItemPropertyAssociation_init@plt>
    b868:	2300      	movs	r3, #0
    b86a:	60e3      	str	r3, [r4, #12]
    b86c:	7423      	strb	r3, [r4, #16]
    b86e:	bd10      	pop	{r4, pc}

0000b870 <ItemPropertiesBox_release@@Base>:
    b870:	b510      	push	{r4, lr}
    b872:	4604      	mov	r4, r0
    b874:	3014      	adds	r0, #20
    b876:	f7fa eb28 	blx	5ec8 <ItemPropertyContainer_release@plt>
    b87a:	f104 0028 	add.w	r0, r4, #40	; 0x28
    b87e:	f7fa eb2a 	blx	5ed4 <ItemPropertyAssociation_release@plt>
    b882:	68e0      	ldr	r0, [r4, #12]
    b884:	b108      	cbz	r0, b88a <ItemPropertiesBox_release@@Base+0x1a>
    b886:	f7fa e8f2 	blx	5a6c <free@plt>
    b88a:	2300      	movs	r3, #0
    b88c:	60e3      	str	r3, [r4, #12]
    b88e:	bd10      	pop	{r4, pc}

0000b890 <ItemPropertiesBox_write_box@@Base>:
    b890:	f100 0314 	add.w	r3, r0, #20
    b894:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b898:	b087      	sub	sp, #28
    b89a:	461e      	mov	r6, r3
    b89c:	460d      	mov	r5, r1
    b89e:	4604      	mov	r4, r0
    b8a0:	9305      	str	r3, [sp, #20]
    b8a2:	f7fa ea2e 	blx	5d00 <Box_write_header@plt>
    b8a6:	4630      	mov	r0, r6
    b8a8:	4629      	mov	r1, r5
    b8aa:	f7fa ea2a 	blx	5d00 <Box_write_header@plt>
    b8ae:	7c23      	ldrb	r3, [r4, #16]
    b8b0:	2b00      	cmp	r3, #0
    b8b2:	d055      	beq.n	b960 <ItemPropertiesBox_write_box@@Base+0xd0>
    b8b4:	4b67      	ldr	r3, [pc, #412]	; (ba54 <ItemPropertiesBox_write_box@@Base+0x1c4>)
    b8b6:	f04f 0a00 	mov.w	sl, #0
    b8ba:	f246 3643 	movw	r6, #25411	; 0x6343
    b8be:	f247 0765 	movw	r7, #28773	; 0x7065
    b8c2:	447b      	add	r3, pc
    b8c4:	9303      	str	r3, [sp, #12]
    b8c6:	4b64      	ldr	r3, [pc, #400]	; (ba58 <ItemPropertiesBox_write_box@@Base+0x1c8>)
    b8c8:	f246 1870 	movw	r8, #24944	; 0x6170
    b8cc:	f646 7974 	movw	r9, #28532	; 0x6f74
    b8d0:	f6c6 0676 	movt	r6, #26742	; 0x6876
    b8d4:	447b      	add	r3, pc
    b8d6:	9304      	str	r3, [sp, #16]
    b8d8:	4623      	mov	r3, r4
    b8da:	f6c6 1972 	movt	r9, #26994	; 0x6972
    b8de:	f6c6 1773 	movt	r7, #26995	; 0x6973
    b8e2:	f2c6 386c 	movt	r8, #25452	; 0x636c
    b8e6:	4654      	mov	r4, sl
    b8e8:	e88d 0220 	stmia.w	sp, {r5, r9}
    b8ec:	469b      	mov	fp, r3
    b8ee:	e018      	b.n	b922 <ItemPropertiesBox_write_box@@Base+0x92>
    b8f0:	9803      	ldr	r0, [sp, #12]
    b8f2:	f7fa e9a6 	blx	5c40 <string_type_to_int32@plt>
    b8f6:	4285      	cmp	r5, r0
    b8f8:	f000 808b 	beq.w	ba12 <ItemPropertiesBox_write_box@@Base+0x182>
    b8fc:	f8db 100c 	ldr.w	r1, [fp, #12]
    b900:	9804      	ldr	r0, [sp, #16]
    b902:	f851 1009 	ldr.w	r1, [r1, r9]
    b906:	9102      	str	r1, [sp, #8]
    b908:	f7fa e99a 	blx	5c40 <string_type_to_int32@plt>
    b90c:	9902      	ldr	r1, [sp, #8]
    b90e:	4281      	cmp	r1, r0
    b910:	f000 8097 	beq.w	ba42 <ItemPropertiesBox_write_box@@Base+0x1b2>
    b914:	f89b 1010 	ldrb.w	r1, [fp, #16]
    b918:	3401      	adds	r4, #1
    b91a:	f10a 0a04 	add.w	sl, sl, #4
    b91e:	42a1      	cmp	r1, r4
    b920:	dd1c      	ble.n	b95c <ItemPropertiesBox_write_box@@Base+0xcc>
    b922:	f8db 100c 	ldr.w	r1, [fp, #12]
    b926:	eb0a 094a 	add.w	r9, sl, sl, lsl #1
    b92a:	f851 5009 	ldr.w	r5, [r1, r9]
    b92e:	42b5      	cmp	r5, r6
    b930:	d067      	beq.n	ba02 <ItemPropertiesBox_write_box@@Base+0x172>
    b932:	42bd      	cmp	r5, r7
    b934:	d075      	beq.n	ba22 <ItemPropertiesBox_write_box@@Base+0x192>
    b936:	4545      	cmp	r5, r8
    b938:	d07b      	beq.n	ba32 <ItemPropertiesBox_write_box@@Base+0x1a2>
    b93a:	9b01      	ldr	r3, [sp, #4]
    b93c:	429d      	cmp	r5, r3
    b93e:	d1d7      	bne.n	b8f0 <ItemPropertiesBox_write_box@@Base+0x60>
    b940:	f8db 0020 	ldr.w	r0, [fp, #32]
    b944:	3401      	adds	r4, #1
    b946:	9900      	ldr	r1, [sp, #0]
    b948:	f850 000a 	ldr.w	r0, [r0, sl]
    b94c:	f10a 0a04 	add.w	sl, sl, #4
    b950:	f7fa eac6 	blx	5ee0 <ImageRotation_write@plt>
    b954:	f89b 1010 	ldrb.w	r1, [fp, #16]
    b958:	42a1      	cmp	r1, r4
    b95a:	dce2      	bgt.n	b922 <ItemPropertiesBox_write_box@@Base+0x92>
    b95c:	9d00      	ldr	r5, [sp, #0]
    b95e:	465c      	mov	r4, fp
    b960:	f104 0828 	add.w	r8, r4, #40	; 0x28
    b964:	9805      	ldr	r0, [sp, #20]
    b966:	4629      	mov	r1, r5
    b968:	f7fa e9dc 	blx	5d24 <Box_update_size@plt>
    b96c:	4640      	mov	r0, r8
    b96e:	4629      	mov	r1, r5
    b970:	f7fa e96c 	blx	5c4c <FullBox_write_header@plt>
    b974:	4628      	mov	r0, r5
    b976:	6c21      	ldr	r1, [r4, #64]	; 0x40
    b978:	f7fa e9a4 	blx	5cc4 <Bitstream_write_32bit@plt>
    b97c:	6c23      	ldr	r3, [r4, #64]	; 0x40
    b97e:	2b00      	cmp	r3, #0
    b980:	d034      	beq.n	b9ec <ItemPropertiesBox_write_box@@Base+0x15c>
    b982:	6be6      	ldr	r6, [r4, #60]	; 0x3c
    b984:	f04f 0900 	mov.w	r9, #0
    b988:	eb09 0a49 	add.w	sl, r9, r9, lsl #1
    b98c:	4628      	mov	r0, r5
    b98e:	f856 102a 	ldr.w	r1, [r6, sl, lsl #2]
    b992:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
    b996:	f7fa e9c0 	blx	5d18 <Bitstream_write_16bit@plt>
    b99a:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    b99c:	4628      	mov	r0, r5
    b99e:	4453      	add	r3, sl
    b9a0:	7919      	ldrb	r1, [r3, #4]
    b9a2:	f7fa e984 	blx	5cac <Bitstream_write_byte@plt>
    b9a6:	6be6      	ldr	r6, [r4, #60]	; 0x3c
    b9a8:	eb06 030a 	add.w	r3, r6, sl
    b9ac:	791a      	ldrb	r2, [r3, #4]
    b9ae:	b1c2      	cbz	r2, b9e2 <ItemPropertiesBox_write_box@@Base+0x152>
    b9b0:	2700      	movs	r7, #0
    b9b2:	689b      	ldr	r3, [r3, #8]
    b9b4:	2201      	movs	r2, #1
    b9b6:	4628      	mov	r0, r5
    b9b8:	00be      	lsls	r6, r7, #2
    b9ba:	f813 1027 	ldrb.w	r1, [r3, r7, lsl #2]
    b9be:	4417      	add	r7, r2
    b9c0:	f7fa e9a4 	blx	5d0c <Bitstream_write_bits@plt>
    b9c4:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    b9c6:	2207      	movs	r2, #7
    b9c8:	4628      	mov	r0, r5
    b9ca:	4453      	add	r3, sl
    b9cc:	689b      	ldr	r3, [r3, #8]
    b9ce:	441e      	add	r6, r3
    b9d0:	8871      	ldrh	r1, [r6, #2]
    b9d2:	f7fa e99c 	blx	5d0c <Bitstream_write_bits@plt>
    b9d6:	6be6      	ldr	r6, [r4, #60]	; 0x3c
    b9d8:	eb06 030a 	add.w	r3, r6, sl
    b9dc:	791a      	ldrb	r2, [r3, #4]
    b9de:	42ba      	cmp	r2, r7
    b9e0:	dce7      	bgt.n	b9b2 <ItemPropertiesBox_write_box@@Base+0x122>
    b9e2:	6c23      	ldr	r3, [r4, #64]	; 0x40
    b9e4:	f109 0901 	add.w	r9, r9, #1
    b9e8:	4599      	cmp	r9, r3
    b9ea:	d3cd      	bcc.n	b988 <ItemPropertiesBox_write_box@@Base+0xf8>
    b9ec:	4640      	mov	r0, r8
    b9ee:	4629      	mov	r1, r5
    b9f0:	f7fa e93e 	blx	5c70 <FullBox_update_size@plt>
    b9f4:	4620      	mov	r0, r4
    b9f6:	4629      	mov	r1, r5
    b9f8:	b007      	add	sp, #28
    b9fa:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b9fe:	f008 bab1 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    ba02:	f8db 0020 	ldr.w	r0, [fp, #32]
    ba06:	9900      	ldr	r1, [sp, #0]
    ba08:	f850 000a 	ldr.w	r0, [r0, sl]
    ba0c:	f7fa ea6e 	blx	5eec <Bytevc1ConfigurationBox_write_box@plt>
    ba10:	e780      	b.n	b914 <ItemPropertiesBox_write_box@@Base+0x84>
    ba12:	f8db 0020 	ldr.w	r0, [fp, #32]
    ba16:	9900      	ldr	r1, [sp, #0]
    ba18:	f850 000a 	ldr.w	r0, [r0, sl]
    ba1c:	f7fa ea6c 	blx	5ef8 <ColourInformationBox_write@plt>
    ba20:	e778      	b.n	b914 <ItemPropertiesBox_write_box@@Base+0x84>
    ba22:	f8db 0020 	ldr.w	r0, [fp, #32]
    ba26:	9900      	ldr	r1, [sp, #0]
    ba28:	f850 000a 	ldr.w	r0, [r0, sl]
    ba2c:	f7fa ea6a 	blx	5f04 <ImageSpatialExtentsProperty_write@plt>
    ba30:	e770      	b.n	b914 <ItemPropertiesBox_write_box@@Base+0x84>
    ba32:	f8db 0020 	ldr.w	r0, [fp, #32]
    ba36:	9900      	ldr	r1, [sp, #0]
    ba38:	f850 000a 	ldr.w	r0, [r0, sl]
    ba3c:	f7fa ea68 	blx	5f10 <CleanAperture_write@plt>
    ba40:	e768      	b.n	b914 <ItemPropertiesBox_write_box@@Base+0x84>
    ba42:	f8db 0020 	ldr.w	r0, [fp, #32]
    ba46:	9900      	ldr	r1, [sp, #0]
    ba48:	f850 000a 	ldr.w	r0, [r0, sl]
    ba4c:	f7fa ea66 	blx	5f1c <ImageAuxiliaryTypeProperty_write@plt>
    ba50:	e760      	b.n	b914 <ItemPropertiesBox_write_box@@Base+0x84>
    ba52:	bf00      	nop
    ba54:	93f2      	str	r3, [sp, #968]	; 0x3c8
    ba56:	0000      	movs	r0, r0
    ba58:	93c8      	str	r3, [sp, #800]	; 0x320
	...

0000ba5c <ItemPropertiesBox_parse_box@@Base>:
    ba5c:	688b      	ldr	r3, [r1, #8]
    ba5e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ba62:	b08b      	sub	sp, #44	; 0x2c
    ba64:	460c      	mov	r4, r1
    ba66:	4607      	mov	r7, r0
    ba68:	9300      	str	r3, [sp, #0]
    ba6a:	f7fa e962 	blx	5d30 <Box_parse_header@plt>
    ba6e:	b928      	cbnz	r0, ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    ba70:	6863      	ldr	r3, [r4, #4]
    ba72:	9900      	ldr	r1, [sp, #0]
    ba74:	683a      	ldr	r2, [r7, #0]
    ba76:	1a5b      	subs	r3, r3, r1
    ba78:	4293      	cmp	r3, r2
    ba7a:	d204      	bcs.n	ba86 <ItemPropertiesBox_parse_box@@Base+0x2a>
    ba7c:	2501      	movs	r5, #1
    ba7e:	4628      	mov	r0, r5
    ba80:	b00b      	add	sp, #44	; 0x2c
    ba82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ba86:	f107 0014 	add.w	r0, r7, #20
    ba8a:	4621      	mov	r1, r4
    ba8c:	f7fa e950 	blx	5d30 <Box_parse_header@plt>
    ba90:	2800      	cmp	r0, #0
    ba92:	d1f3      	bne.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    ba94:	697b      	ldr	r3, [r7, #20]
    ba96:	f1a3 0908 	sub.w	r9, r3, #8
    ba9a:	f1b9 0f00 	cmp.w	r9, #0
    ba9e:	f340 8082 	ble.w	bba6 <ItemPropertiesBox_parse_box@@Base+0x14a>
    baa2:	f8df 341c 	ldr.w	r3, [pc, #1052]	; bec0 <ItemPropertiesBox_parse_box@@Base+0x464>
    baa6:	4606      	mov	r6, r0
    baa8:	f8df 2418 	ldr.w	r2, [pc, #1048]	; bec4 <ItemPropertiesBox_parse_box@@Base+0x468>
    baac:	f04f 0a01 	mov.w	sl, #1
    bab0:	f8df 1414 	ldr.w	r1, [pc, #1044]	; bec8 <ItemPropertiesBox_parse_box@@Base+0x46c>
    bab4:	447b      	add	r3, pc
    bab6:	f8df 5414 	ldr.w	r5, [pc, #1044]	; becc <ItemPropertiesBox_parse_box@@Base+0x470>
    baba:	447a      	add	r2, pc
    babc:	9304      	str	r3, [sp, #16]
    babe:	230a      	movs	r3, #10
    bac0:	4479      	add	r1, pc
    bac2:	9207      	str	r2, [sp, #28]
    bac4:	9108      	str	r1, [sp, #32]
    bac6:	f246 3243 	movw	r2, #25411	; 0x6343
    baca:	f247 0165 	movw	r1, #28773	; 0x7065
    bace:	469b      	mov	fp, r3
    bad0:	447d      	add	r5, pc
    bad2:	f6c6 0276 	movt	r2, #26742	; 0x6876
    bad6:	f6c6 1173 	movt	r1, #26995	; 0x6973
    bada:	9303      	str	r3, [sp, #12]
    badc:	9509      	str	r5, [sp, #36]	; 0x24
    bade:	9201      	str	r2, [sp, #4]
    bae0:	9102      	str	r1, [sp, #8]
    bae2:	4620      	mov	r0, r4
    bae4:	f7fa e834 	blx	5b50 <Bitstream_read_32bit@plt>
    bae8:	4680      	mov	r8, r0
    baea:	4620      	mov	r0, r4
    baec:	f7fa e830 	blx	5b50 <Bitstream_read_32bit@plt>
    baf0:	68a3      	ldr	r3, [r4, #8]
    baf2:	f1b8 0f00 	cmp.w	r8, #0
    baf6:	f1a3 0308 	sub.w	r3, r3, #8
    bafa:	60a3      	str	r3, [r4, #8]
    bafc:	4605      	mov	r5, r0
    bafe:	ddbd      	ble.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bb00:	6863      	ldr	r3, [r4, #4]
    bb02:	4598      	cmp	r8, r3
    bb04:	d8ba      	bhi.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bb06:	9b01      	ldr	r3, [sp, #4]
    bb08:	1ac2      	subs	r2, r0, r3
    bb0a:	9b02      	ldr	r3, [sp, #8]
    bb0c:	fab2 f282 	clz	r2, r2
    bb10:	ebc3 0c00 	rsb	ip, r3, r0
    bb14:	fabc fc8c 	clz	ip, ip
    bb18:	0952      	lsrs	r2, r2, #5
    bb1a:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
    bb1e:	ea52 030c 	orrs.w	r3, r2, ip
    bb22:	d10c      	bne.n	bb3e <ItemPropertiesBox_parse_box@@Base+0xe2>
    bb24:	f246 1170 	movw	r1, #24944	; 0x6170
    bb28:	f646 7374 	movw	r3, #28532	; 0x6f74
    bb2c:	f2c6 316c 	movt	r1, #25452	; 0x636c
    bb30:	f6c6 1372 	movt	r3, #26994	; 0x6972
    bb34:	4298      	cmp	r0, r3
    bb36:	bf18      	it	ne
    bb38:	4288      	cmpne	r0, r1
    bb3a:	f040 80a5 	bne.w	bc88 <ItemPropertiesBox_parse_box@@Base+0x22c>
    bb3e:	6a3b      	ldr	r3, [r7, #32]
    bb40:	2b00      	cmp	r3, #0
    bb42:	f000 8100 	beq.w	bd46 <ItemPropertiesBox_parse_box@@Base+0x2ea>
    bb46:	455e      	cmp	r6, fp
    bb48:	da4c      	bge.n	bbe4 <ItemPropertiesBox_parse_box@@Base+0x188>
    bb4a:	2a00      	cmp	r2, #0
    bb4c:	d15e      	bne.n	bc0c <ItemPropertiesBox_parse_box@@Base+0x1b0>
    bb4e:	f1bc 0f00 	cmp.w	ip, #0
    bb52:	f040 80d4 	bne.w	bcfe <ItemPropertiesBox_parse_box@@Base+0x2a2>
    bb56:	f246 1370 	movw	r3, #24944	; 0x6170
    bb5a:	f2c6 336c 	movt	r3, #25452	; 0x636c
    bb5e:	429d      	cmp	r5, r3
    bb60:	f000 80df 	beq.w	bd22 <ItemPropertiesBox_parse_box@@Base+0x2c6>
    bb64:	f646 7374 	movw	r3, #28532	; 0x6f74
    bb68:	f6c6 1372 	movt	r3, #26994	; 0x6972
    bb6c:	429d      	cmp	r5, r3
    bb6e:	d079      	beq.n	bc64 <ItemPropertiesBox_parse_box@@Base+0x208>
    bb70:	9804      	ldr	r0, [sp, #16]
    bb72:	f7fa e866 	blx	5c40 <string_type_to_int32@plt>
    bb76:	4285      	cmp	r5, r0
    bb78:	f000 809c 	beq.w	bcb4 <ItemPropertiesBox_parse_box@@Base+0x258>
    bb7c:	9807      	ldr	r0, [sp, #28]
    bb7e:	f7fa e860 	blx	5c40 <string_type_to_int32@plt>
    bb82:	4285      	cmp	r5, r0
    bb84:	f000 80ef 	beq.w	bd66 <ItemPropertiesBox_parse_box@@Base+0x30a>
    bb88:	68a3      	ldr	r3, [r4, #8]
    bb8a:	6862      	ldr	r2, [r4, #4]
    bb8c:	4443      	add	r3, r8
    bb8e:	60a3      	str	r3, [r4, #8]
    bb90:	4293      	cmp	r3, r2
    bb92:	f63f af73 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bb96:	ebc8 0909 	rsb	r9, r8, r9
    bb9a:	f10a 0a01 	add.w	sl, sl, #1
    bb9e:	f1b9 0f00 	cmp.w	r9, #0
    bba2:	dc9e      	bgt.n	bae2 <ItemPropertiesBox_parse_box@@Base+0x86>
    bba4:	b2f0      	uxtb	r0, r6
    bba6:	f887 0024 	strb.w	r0, [r7, #36]	; 0x24
    bbaa:	7438      	strb	r0, [r7, #16]
    bbac:	9900      	ldr	r1, [sp, #0]
    bbae:	68a3      	ldr	r3, [r4, #8]
    bbb0:	683a      	ldr	r2, [r7, #0]
    bbb2:	1a5b      	subs	r3, r3, r1
    bbb4:	4293      	cmp	r3, r2
    bbb6:	f63f af61 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bbba:	f107 0028 	add.w	r0, r7, #40	; 0x28
    bbbe:	4621      	mov	r1, r4
    bbc0:	f7fa e85c 	blx	5c7c <FullBox_parse_header@plt>
    bbc4:	4605      	mov	r5, r0
    bbc6:	2800      	cmp	r0, #0
    bbc8:	f47f af58 	bne.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bbcc:	4620      	mov	r0, r4
    bbce:	f7f9 efc0 	blx	5b50 <Bitstream_read_32bit@plt>
    bbd2:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
    bbd6:	4606      	mov	r6, r0
    bbd8:	6438      	str	r0, [r7, #64]	; 0x40
    bbda:	f0c0 80e4 	bcc.w	bda6 <ItemPropertiesBox_parse_box@@Base+0x34a>
    bbde:	643d      	str	r5, [r7, #64]	; 0x40
    bbe0:	63fd      	str	r5, [r7, #60]	; 0x3c
    bbe2:	e74b      	b.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bbe4:	f10b 0b0a 	add.w	fp, fp, #10
    bbe8:	4618      	mov	r0, r3
    bbea:	f8cd c018 	str.w	ip, [sp, #24]
    bbee:	ea4f 018b 	mov.w	r1, fp, lsl #2
    bbf2:	9205      	str	r2, [sp, #20]
    bbf4:	f7f9 ef1c 	blx	5a30 <realloc@plt>
    bbf8:	f8dd c018 	ldr.w	ip, [sp, #24]
    bbfc:	9a05      	ldr	r2, [sp, #20]
    bbfe:	4603      	mov	r3, r0
    bc00:	6238      	str	r0, [r7, #32]
    bc02:	2b00      	cmp	r3, #0
    bc04:	f43f af3a 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bc08:	2a00      	cmp	r2, #0
    bc0a:	d0a0      	beq.n	bb4e <ItemPropertiesBox_parse_box@@Base+0xf2>
    bc0c:	2001      	movs	r0, #1
    bc0e:	2184      	movs	r1, #132	; 0x84
    bc10:	9305      	str	r3, [sp, #20]
    bc12:	f7fa e8d0 	blx	5db4 <calloc@plt>
    bc16:	9b05      	ldr	r3, [sp, #20]
    bc18:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bc1c:	6a3b      	ldr	r3, [r7, #32]
    bc1e:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bc22:	2800      	cmp	r0, #0
    bc24:	f43f af2a 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bc28:	4621      	mov	r1, r4
    bc2a:	f7fa e97e 	blx	5f28 <Bytevc1ConfigurationBox_parse_box@plt>
    bc2e:	2800      	cmp	r0, #0
    bc30:	f47f af24 	bne.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bc34:	68a2      	ldr	r2, [r4, #8]
    bc36:	6863      	ldr	r3, [r4, #4]
    bc38:	429a      	cmp	r2, r3
    bc3a:	f63f af1f 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bc3e:	68f8      	ldr	r0, [r7, #12]
    bc40:	9b03      	ldr	r3, [sp, #12]
    bc42:	2800      	cmp	r0, #0
    bc44:	f000 80a5 	beq.w	bd92 <ItemPropertiesBox_parse_box@@Base+0x336>
    bc48:	429e      	cmp	r6, r3
    bc4a:	da4c      	bge.n	bce6 <ItemPropertiesBox_parse_box@@Base+0x28a>
    bc4c:	eb06 0346 	add.w	r3, r6, r6, lsl #1
    bc50:	2201      	movs	r2, #1
    bc52:	4416      	add	r6, r2
    bc54:	f840 5023 	str.w	r5, [r0, r3, lsl #2]
    bc58:	eb00 0083 	add.w	r0, r0, r3, lsl #2
    bc5c:	f8c0 a004 	str.w	sl, [r0, #4]
    bc60:	7202      	strb	r2, [r0, #8]
    bc62:	e798      	b.n	bb96 <ItemPropertiesBox_parse_box@@Base+0x13a>
    bc64:	6a3b      	ldr	r3, [r7, #32]
    bc66:	2010      	movs	r0, #16
    bc68:	9305      	str	r3, [sp, #20]
    bc6a:	f7f9 eeee 	blx	5a48 <malloc@plt>
    bc6e:	9b05      	ldr	r3, [sp, #20]
    bc70:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bc74:	6a3b      	ldr	r3, [r7, #32]
    bc76:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bc7a:	2800      	cmp	r0, #0
    bc7c:	f43f aefe 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bc80:	4621      	mov	r1, r4
    bc82:	f7fa e958 	blx	5f34 <ImageRotation_parse@plt>
    bc86:	e7d2      	b.n	bc2e <ItemPropertiesBox_parse_box@@Base+0x1d2>
    bc88:	9808      	ldr	r0, [sp, #32]
    bc8a:	f8cd c018 	str.w	ip, [sp, #24]
    bc8e:	9205      	str	r2, [sp, #20]
    bc90:	f7f9 efd6 	blx	5c40 <string_type_to_int32@plt>
    bc94:	9a05      	ldr	r2, [sp, #20]
    bc96:	f8dd c018 	ldr.w	ip, [sp, #24]
    bc9a:	4285      	cmp	r5, r0
    bc9c:	f43f af4f 	beq.w	bb3e <ItemPropertiesBox_parse_box@@Base+0xe2>
    bca0:	9809      	ldr	r0, [sp, #36]	; 0x24
    bca2:	f7f9 efce 	blx	5c40 <string_type_to_int32@plt>
    bca6:	9a05      	ldr	r2, [sp, #20]
    bca8:	f8dd c018 	ldr.w	ip, [sp, #24]
    bcac:	4285      	cmp	r5, r0
    bcae:	f47f af52 	bne.w	bb56 <ItemPropertiesBox_parse_box@@Base+0xfa>
    bcb2:	e744      	b.n	bb3e <ItemPropertiesBox_parse_box@@Base+0xe2>
    bcb4:	6a3b      	ldr	r3, [r7, #32]
    bcb6:	2028      	movs	r0, #40	; 0x28
    bcb8:	9305      	str	r3, [sp, #20]
    bcba:	f7f9 eec6 	blx	5a48 <malloc@plt>
    bcbe:	9b05      	ldr	r3, [sp, #20]
    bcc0:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bcc4:	6a3b      	ldr	r3, [r7, #32]
    bcc6:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bcca:	2800      	cmp	r0, #0
    bccc:	f43f aed6 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bcd0:	2100      	movs	r1, #0
    bcd2:	2228      	movs	r2, #40	; 0x28
    bcd4:	f7f9 ef18 	blx	5b08 <memset@plt>
    bcd8:	6a3b      	ldr	r3, [r7, #32]
    bcda:	4621      	mov	r1, r4
    bcdc:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bce0:	f7fa e92e 	blx	5f40 <ColourInformationBox_parse@plt>
    bce4:	e7a3      	b.n	bc2e <ItemPropertiesBox_parse_box@@Base+0x1d2>
    bce6:	330a      	adds	r3, #10
    bce8:	9303      	str	r3, [sp, #12]
    bcea:	eb03 0143 	add.w	r1, r3, r3, lsl #1
    bcee:	0089      	lsls	r1, r1, #2
    bcf0:	f7f9 ee9e 	blx	5a30 <realloc@plt>
    bcf4:	4603      	mov	r3, r0
    bcf6:	60fb      	str	r3, [r7, #12]
    bcf8:	2800      	cmp	r0, #0
    bcfa:	d1a7      	bne.n	bc4c <ItemPropertiesBox_parse_box@@Base+0x1f0>
    bcfc:	e6be      	b.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bcfe:	6a3b      	ldr	r3, [r7, #32]
    bd00:	201c      	movs	r0, #28
    bd02:	9305      	str	r3, [sp, #20]
    bd04:	f7f9 eea0 	blx	5a48 <malloc@plt>
    bd08:	9b05      	ldr	r3, [sp, #20]
    bd0a:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bd0e:	6a3b      	ldr	r3, [r7, #32]
    bd10:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bd14:	2800      	cmp	r0, #0
    bd16:	f43f aeb1 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bd1a:	4621      	mov	r1, r4
    bd1c:	f7fa e916 	blx	5f4c <ImageSpatialExtentsProperty_parse@plt>
    bd20:	e785      	b.n	bc2e <ItemPropertiesBox_parse_box@@Base+0x1d2>
    bd22:	6a3b      	ldr	r3, [r7, #32]
    bd24:	202c      	movs	r0, #44	; 0x2c
    bd26:	9305      	str	r3, [sp, #20]
    bd28:	f7f9 ee8e 	blx	5a48 <malloc@plt>
    bd2c:	9b05      	ldr	r3, [sp, #20]
    bd2e:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bd32:	6a3b      	ldr	r3, [r7, #32]
    bd34:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bd38:	2800      	cmp	r0, #0
    bd3a:	f43f ae9f 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bd3e:	4621      	mov	r1, r4
    bd40:	f7fa e90a 	blx	5f58 <CleanAperture_parse@plt>
    bd44:	e773      	b.n	bc2e <ItemPropertiesBox_parse_box@@Base+0x1d2>
    bd46:	ea4f 008b 	mov.w	r0, fp, lsl #2
    bd4a:	f8cd c018 	str.w	ip, [sp, #24]
    bd4e:	9205      	str	r2, [sp, #20]
    bd50:	f7f9 ee7a 	blx	5a48 <malloc@plt>
    bd54:	9a05      	ldr	r2, [sp, #20]
    bd56:	f8dd c018 	ldr.w	ip, [sp, #24]
    bd5a:	4603      	mov	r3, r0
    bd5c:	6238      	str	r0, [r7, #32]
    bd5e:	2b00      	cmp	r3, #0
    bd60:	f47f af52 	bne.w	bc08 <ItemPropertiesBox_parse_box@@Base+0x1ac>
    bd64:	e68a      	b.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bd66:	6a3b      	ldr	r3, [r7, #32]
    bd68:	2020      	movs	r0, #32
    bd6a:	9305      	str	r3, [sp, #20]
    bd6c:	f7f9 ee6c 	blx	5a48 <malloc@plt>
    bd70:	9b05      	ldr	r3, [sp, #20]
    bd72:	2100      	movs	r1, #0
    bd74:	2220      	movs	r2, #32
    bd76:	f843 0026 	str.w	r0, [r3, r6, lsl #2]
    bd7a:	6a3b      	ldr	r3, [r7, #32]
    bd7c:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bd80:	f7f9 eec2 	blx	5b08 <memset@plt>
    bd84:	6a3b      	ldr	r3, [r7, #32]
    bd86:	4621      	mov	r1, r4
    bd88:	f853 0026 	ldr.w	r0, [r3, r6, lsl #2]
    bd8c:	f7fa e8ea 	blx	5f64 <ImageAuxiliaryTypeProperty_parse@plt>
    bd90:	e74d      	b.n	bc2e <ItemPropertiesBox_parse_box@@Base+0x1d2>
    bd92:	eb03 0043 	add.w	r0, r3, r3, lsl #1
    bd96:	0080      	lsls	r0, r0, #2
    bd98:	f7f9 ee56 	blx	5a48 <malloc@plt>
    bd9c:	60f8      	str	r0, [r7, #12]
    bd9e:	2800      	cmp	r0, #0
    bda0:	f47f af54 	bne.w	bc4c <ItemPropertiesBox_parse_box@@Base+0x1f0>
    bda4:	e66a      	b.n	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bda6:	210c      	movs	r1, #12
    bda8:	f7fa e804 	blx	5db4 <calloc@plt>
    bdac:	63f8      	str	r0, [r7, #60]	; 0x3c
    bdae:	2800      	cmp	r0, #0
    bdb0:	f43f ae64 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bdb4:	2e00      	cmp	r6, #0
    bdb6:	d07e      	beq.n	beb6 <ItemPropertiesBox_parse_box@@Base+0x45a>
    bdb8:	68a3      	ldr	r3, [r4, #8]
    bdba:	9900      	ldr	r1, [sp, #0]
    bdbc:	683a      	ldr	r2, [r7, #0]
    bdbe:	3303      	adds	r3, #3
    bdc0:	1a5b      	subs	r3, r3, r1
    bdc2:	429a      	cmp	r2, r3
    bdc4:	f4ff ae5a 	bcc.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bdc8:	4681      	mov	r9, r0
    bdca:	462e      	mov	r6, r5
    bdcc:	46a8      	mov	r8, r5
    bdce:	468a      	mov	sl, r1
    bdd0:	9501      	str	r5, [sp, #4]
    bdd2:	f897 3034 	ldrb.w	r3, [r7, #52]	; 0x34
    bdd6:	4620      	mov	r0, r4
    bdd8:	2b00      	cmp	r3, #0
    bdda:	d166      	bne.n	beaa <ItemPropertiesBox_parse_box@@Base+0x44e>
    bddc:	f7f9 efae 	blx	5d3c <Bitstream_read_16bit@plt>
    bde0:	f849 0006 	str.w	r0, [r9, r6]
    bde4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    bde6:	4620      	mov	r0, r4
    bde8:	eb03 0906 	add.w	r9, r3, r6
    bdec:	f7f9 ef52 	blx	5c94 <Bitstream_read_byte@plt>
    bdf0:	f889 0004 	strb.w	r0, [r9, #4]
    bdf4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    bdf6:	eb03 0906 	add.w	r9, r3, r6
    bdfa:	f899 5004 	ldrb.w	r5, [r9, #4]
    bdfe:	00a8      	lsls	r0, r5, #2
    be00:	f7f9 ee22 	blx	5a48 <malloc@plt>
    be04:	f8c9 0008 	str.w	r0, [r9, #8]
    be08:	2800      	cmp	r0, #0
    be0a:	f43f ae37 	beq.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    be0e:	2d00      	cmp	r5, #0
    be10:	d03a      	beq.n	be88 <ItemPropertiesBox_parse_box@@Base+0x42c>
    be12:	68a2      	ldr	r2, [r4, #8]
    be14:	683b      	ldr	r3, [r7, #0]
    be16:	3201      	adds	r2, #1
    be18:	ebca 0902 	rsb	r9, sl, r2
    be1c:	4599      	cmp	r9, r3
    be1e:	f63f ae2d 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    be22:	4605      	mov	r5, r0
    be24:	f04f 0900 	mov.w	r9, #0
    be28:	e008      	b.n	be3c <ItemPropertiesBox_parse_box@@Base+0x3e0>
    be2a:	68a3      	ldr	r3, [r4, #8]
    be2c:	683a      	ldr	r2, [r7, #0]
    be2e:	3301      	adds	r3, #1
    be30:	ebca 0303 	rsb	r3, sl, r3
    be34:	4293      	cmp	r3, r2
    be36:	f63f ae21 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    be3a:	688d      	ldr	r5, [r1, #8]
    be3c:	2101      	movs	r1, #1
    be3e:	4620      	mov	r0, r4
    be40:	f7f9 ef46 	blx	5cd0 <Bitstream_read_bits@plt>
    be44:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    be46:	210f      	movs	r1, #15
    be48:	ea4f 0289 	mov.w	r2, r9, lsl #2
    be4c:	f110 0e00 	adds.w	lr, r0, #0
    be50:	4620      	mov	r0, r4
    be52:	bf18      	it	ne
    be54:	f04f 0e01 	movne.w	lr, #1
    be58:	f013 0f01 	tst.w	r3, #1
    be5c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    be5e:	bf08      	it	eq
    be60:	2107      	moveq	r1, #7
    be62:	f805 e029 	strb.w	lr, [r5, r9, lsl #2]
    be66:	4433      	add	r3, r6
    be68:	bf08      	it	eq
    be6a:	4620      	moveq	r0, r4
    be6c:	f109 0901 	add.w	r9, r9, #1
    be70:	689b      	ldr	r3, [r3, #8]
    be72:	eb03 0b02 	add.w	fp, r3, r2
    be76:	f7f9 ef2c 	blx	5cd0 <Bitstream_read_bits@plt>
    be7a:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
    be7c:	4431      	add	r1, r6
    be7e:	f8ab 0002 	strh.w	r0, [fp, #2]
    be82:	790b      	ldrb	r3, [r1, #4]
    be84:	454b      	cmp	r3, r9
    be86:	dcd0      	bgt.n	be2a <ItemPropertiesBox_parse_box@@Base+0x3ce>
    be88:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    be8a:	f108 0801 	add.w	r8, r8, #1
    be8e:	4598      	cmp	r8, r3
    be90:	d210      	bcs.n	beb4 <ItemPropertiesBox_parse_box@@Base+0x458>
    be92:	68a3      	ldr	r3, [r4, #8]
    be94:	360c      	adds	r6, #12
    be96:	683a      	ldr	r2, [r7, #0]
    be98:	3303      	adds	r3, #3
    be9a:	ebca 0303 	rsb	r3, sl, r3
    be9e:	4293      	cmp	r3, r2
    bea0:	f63f adec 	bhi.w	ba7c <ItemPropertiesBox_parse_box@@Base+0x20>
    bea4:	f8d7 903c 	ldr.w	r9, [r7, #60]	; 0x3c
    bea8:	e793      	b.n	bdd2 <ItemPropertiesBox_parse_box@@Base+0x376>
    beaa:	f7f9 ee52 	blx	5b50 <Bitstream_read_32bit@plt>
    beae:	f849 0006 	str.w	r0, [r9, r6]
    beb2:	e797      	b.n	bde4 <ItemPropertiesBox_parse_box@@Base+0x388>
    beb4:	9d01      	ldr	r5, [sp, #4]
    beb6:	683b      	ldr	r3, [r7, #0]
    beb8:	9a00      	ldr	r2, [sp, #0]
    beba:	4413      	add	r3, r2
    bebc:	60a3      	str	r3, [r4, #8]
    bebe:	e5de      	b.n	ba7e <ItemPropertiesBox_parse_box@@Base+0x22>
    bec0:	9200      	str	r2, [sp, #0]
    bec2:	0000      	movs	r0, r0
    bec4:	91e2      	str	r1, [sp, #904]	; 0x388
    bec6:	0000      	movs	r0, r0
    bec8:	91f4      	str	r1, [sp, #976]	; 0x3d0
    beca:	0000      	movs	r0, r0
    becc:	91cc      	str	r1, [sp, #816]	; 0x330
	...

0000bed0 <SingleItemTypeRefBox_init@@Base>:
    bed0:	2300      	movs	r3, #0
    bed2:	6043      	str	r3, [r0, #4]
    bed4:	6143      	str	r3, [r0, #20]
    bed6:	60c3      	str	r3, [r0, #12]
    bed8:	6103      	str	r3, [r0, #16]
    beda:	4770      	bx	lr

0000bedc <SingleItemTypeRefBox_set_ref@@Base>:
    bedc:	b410      	push	{r4}
    bede:	6903      	ldr	r3, [r0, #16]
    bee0:	6944      	ldr	r4, [r0, #20]
    bee2:	60c1      	str	r1, [r0, #12]
    bee4:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
    bee8:	6943      	ldr	r3, [r0, #20]
    beea:	f85d 4b04 	ldr.w	r4, [sp], #4
    beee:	3301      	adds	r3, #1
    bef0:	6143      	str	r3, [r0, #20]
    bef2:	4770      	bx	lr

0000bef4 <SingleItemTypeRefBox_release@@Base>:
    bef4:	6943      	ldr	r3, [r0, #20]
    bef6:	b510      	push	{r4, lr}
    bef8:	4604      	mov	r4, r0
    befa:	b12b      	cbz	r3, bf08 <SingleItemTypeRefBox_release@@Base+0x14>
    befc:	6900      	ldr	r0, [r0, #16]
    befe:	b108      	cbz	r0, bf04 <SingleItemTypeRefBox_release@@Base+0x10>
    bf00:	f7f9 edb4 	blx	5a6c <free@plt>
    bf04:	2300      	movs	r3, #0
    bf06:	6123      	str	r3, [r4, #16]
    bf08:	2300      	movs	r3, #0
    bf0a:	6163      	str	r3, [r4, #20]
    bf0c:	bd10      	pop	{r4, pc}
    bf0e:	bf00      	nop

0000bf10 <ItemReferenceBox_init@@Base>:
    bf10:	f246 5266 	movw	r2, #25958	; 0x6566
    bf14:	2300      	movs	r3, #0
    bf16:	f6c6 1272 	movt	r2, #26994	; 0x6972
    bf1a:	7303      	strb	r3, [r0, #12]
    bf1c:	6042      	str	r2, [r0, #4]
    bf1e:	6103      	str	r3, [r0, #16]
    bf20:	7603      	strb	r3, [r0, #24]
    bf22:	6143      	str	r3, [r0, #20]
    bf24:	4770      	bx	lr
    bf26:	bf00      	nop

0000bf28 <ItemReferenceBox_release@@Base>:
    bf28:	b570      	push	{r4, r5, r6, lr}
    bf2a:	4606      	mov	r6, r0
    bf2c:	7e03      	ldrb	r3, [r0, #24]
    bf2e:	b173      	cbz	r3, bf4e <ItemReferenceBox_release@@Base+0x26>
    bf30:	6940      	ldr	r0, [r0, #20]
    bf32:	2400      	movs	r4, #0
    bf34:	4625      	mov	r5, r4
    bf36:	b910      	cbnz	r0, bf3e <ItemReferenceBox_release@@Base+0x16>
    bf38:	e00d      	b.n	bf56 <ItemReferenceBox_release@@Base+0x2e>
    bf3a:	6970      	ldr	r0, [r6, #20]
    bf3c:	b158      	cbz	r0, bf56 <ItemReferenceBox_release@@Base+0x2e>
    bf3e:	4420      	add	r0, r4
    bf40:	3501      	adds	r5, #1
    bf42:	f7fa e816 	blx	5f70 <SingleItemTypeRefBox_release@plt>
    bf46:	7e33      	ldrb	r3, [r6, #24]
    bf48:	3418      	adds	r4, #24
    bf4a:	42ab      	cmp	r3, r5
    bf4c:	dcf5      	bgt.n	bf3a <ItemReferenceBox_release@@Base+0x12>
    bf4e:	6970      	ldr	r0, [r6, #20]
    bf50:	b108      	cbz	r0, bf56 <ItemReferenceBox_release@@Base+0x2e>
    bf52:	f7f9 ed8c 	blx	5a6c <free@plt>
    bf56:	2300      	movs	r3, #0
    bf58:	6173      	str	r3, [r6, #20]
    bf5a:	bd70      	pop	{r4, r5, r6, pc}

0000bf5c <ItemReferenceBox_write_box@@Base>:
    bf5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    bf60:	4680      	mov	r8, r0
    bf62:	7e03      	ldrb	r3, [r0, #24]
    bf64:	b90b      	cbnz	r3, bf6a <ItemReferenceBox_write_box@@Base+0xe>
    bf66:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    bf6a:	460e      	mov	r6, r1
    bf6c:	f7f9 ee6e 	blx	5c4c <FullBox_write_header@plt>
    bf70:	f898 3018 	ldrb.w	r3, [r8, #24]
    bf74:	2500      	movs	r5, #0
    bf76:	462f      	mov	r7, r5
    bf78:	b37b      	cbz	r3, bfda <ItemReferenceBox_write_box@@Base+0x7e>
    bf7a:	f8d8 0014 	ldr.w	r0, [r8, #20]
    bf7e:	4631      	mov	r1, r6
    bf80:	4428      	add	r0, r5
    bf82:	f7f9 eebe 	blx	5d00 <Box_write_header@plt>
    bf86:	f8d8 3014 	ldr.w	r3, [r8, #20]
    bf8a:	4630      	mov	r0, r6
    bf8c:	442b      	add	r3, r5
    bf8e:	68d9      	ldr	r1, [r3, #12]
    bf90:	f7f9 eec2 	blx	5d18 <Bitstream_write_16bit@plt>
    bf94:	f8d8 3014 	ldr.w	r3, [r8, #20]
    bf98:	4630      	mov	r0, r6
    bf9a:	442b      	add	r3, r5
    bf9c:	6959      	ldr	r1, [r3, #20]
    bf9e:	f7f9 eebc 	blx	5d18 <Bitstream_write_16bit@plt>
    bfa2:	f8d8 0014 	ldr.w	r0, [r8, #20]
    bfa6:	4428      	add	r0, r5
    bfa8:	6943      	ldr	r3, [r0, #20]
    bfaa:	b16b      	cbz	r3, bfc8 <ItemReferenceBox_write_box@@Base+0x6c>
    bfac:	2400      	movs	r4, #0
    bfae:	6903      	ldr	r3, [r0, #16]
    bfb0:	4630      	mov	r0, r6
    bfb2:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    bfb6:	3401      	adds	r4, #1
    bfb8:	f7f9 eeae 	blx	5d18 <Bitstream_write_16bit@plt>
    bfbc:	f8d8 0014 	ldr.w	r0, [r8, #20]
    bfc0:	4428      	add	r0, r5
    bfc2:	6943      	ldr	r3, [r0, #20]
    bfc4:	429c      	cmp	r4, r3
    bfc6:	d3f2      	bcc.n	bfae <ItemReferenceBox_write_box@@Base+0x52>
    bfc8:	4631      	mov	r1, r6
    bfca:	3701      	adds	r7, #1
    bfcc:	f7f9 eeaa 	blx	5d24 <Box_update_size@plt>
    bfd0:	f898 3018 	ldrb.w	r3, [r8, #24]
    bfd4:	3518      	adds	r5, #24
    bfd6:	42bb      	cmp	r3, r7
    bfd8:	dccf      	bgt.n	bf7a <ItemReferenceBox_write_box@@Base+0x1e>
    bfda:	4640      	mov	r0, r8
    bfdc:	4631      	mov	r1, r6
    bfde:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    bfe2:	f007 bf87 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    bfe6:	bf00      	nop

0000bfe8 <ItemReferenceBox_parse_box@@Base>:
    bfe8:	4b56      	ldr	r3, [pc, #344]	; (c144 <ItemReferenceBox_parse_box@@Base+0x15c>)
    bfea:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bfee:	447b      	add	r3, pc
    bff0:	681b      	ldr	r3, [r3, #0]
    bff2:	b08b      	sub	sp, #44	; 0x2c
    bff4:	688a      	ldr	r2, [r1, #8]
    bff6:	460c      	mov	r4, r1
    bff8:	4607      	mov	r7, r0
    bffa:	9300      	str	r3, [sp, #0]
    bffc:	681b      	ldr	r3, [r3, #0]
    bffe:	4616      	mov	r6, r2
    c000:	9201      	str	r2, [sp, #4]
    c002:	9309      	str	r3, [sp, #36]	; 0x24
    c004:	f7f9 ee3a 	blx	5c7c <FullBox_parse_header@plt>
    c008:	2800      	cmp	r0, #0
    c00a:	d167      	bne.n	c0dc <ItemReferenceBox_parse_box@@Base+0xf4>
    c00c:	6865      	ldr	r5, [r4, #4]
    c00e:	683b      	ldr	r3, [r7, #0]
    c010:	1bad      	subs	r5, r5, r6
    c012:	429d      	cmp	r5, r3
    c014:	4618      	mov	r0, r3
    c016:	d361      	bcc.n	c0dc <ItemReferenceBox_parse_box@@Base+0xf4>
    c018:	f1a3 080c 	sub.w	r8, r3, #12
    c01c:	f897 a00c 	ldrb.w	sl, [r7, #12]
    c020:	f1b8 0f00 	cmp.w	r8, #0
    c024:	dd50      	ble.n	c0c8 <ItemReferenceBox_parse_box@@Base+0xe0>
    c026:	f10d 090c 	add.w	r9, sp, #12
    c02a:	f04f 0b05 	mov.w	fp, #5
    c02e:	4656      	mov	r6, sl
    c030:	4648      	mov	r0, r9
    c032:	f7f9 efa4 	blx	5f7c <SingleItemTypeRefBox_init@plt>
    c036:	4648      	mov	r0, r9
    c038:	4621      	mov	r1, r4
    c03a:	f7f9 ee7a 	blx	5d30 <Box_parse_header@plt>
    c03e:	2800      	cmp	r0, #0
    c040:	d14c      	bne.n	c0dc <ItemReferenceBox_parse_box@@Base+0xf4>
    c042:	4620      	mov	r0, r4
    c044:	2e00      	cmp	r6, #0
    c046:	d06c      	beq.n	c122 <ItemReferenceBox_parse_box@@Base+0x13a>
    c048:	f7f9 ed82 	blx	5b50 <Bitstream_read_32bit@plt>
    c04c:	4603      	mov	r3, r0
    c04e:	4620      	mov	r0, r4
    c050:	9306      	str	r3, [sp, #24]
    c052:	f7f9 ee74 	blx	5d3c <Bitstream_read_16bit@plt>
    c056:	2800      	cmp	r0, #0
    c058:	9008      	str	r0, [sp, #32]
    c05a:	dd3f      	ble.n	c0dc <ItemReferenceBox_parse_box@@Base+0xf4>
    c05c:	0080      	lsls	r0, r0, #2
    c05e:	f7f9 ecf4 	blx	5a48 <malloc@plt>
    c062:	9007      	str	r0, [sp, #28]
    c064:	2800      	cmp	r0, #0
    c066:	d039      	beq.n	c0dc <ItemReferenceBox_parse_box@@Base+0xf4>
    c068:	4605      	mov	r5, r0
    c06a:	f04f 0a00 	mov.w	sl, #0
    c06e:	2e00      	cmp	r6, #0
    c070:	d13e      	bne.n	c0f0 <ItemReferenceBox_parse_box@@Base+0x108>
    c072:	46b2      	mov	sl, r6
    c074:	e000      	b.n	c078 <ItemReferenceBox_parse_box@@Base+0x90>
    c076:	9d07      	ldr	r5, [sp, #28]
    c078:	4620      	mov	r0, r4
    c07a:	f7f9 ee60 	blx	5d3c <Bitstream_read_16bit@plt>
    c07e:	f845 002a 	str.w	r0, [r5, sl, lsl #2]
    c082:	f10a 0a01 	add.w	sl, sl, #1
    c086:	9b08      	ldr	r3, [sp, #32]
    c088:	4553      	cmp	r3, sl
    c08a:	d8f4      	bhi.n	c076 <ItemReferenceBox_parse_box@@Base+0x8e>
    c08c:	697d      	ldr	r5, [r7, #20]
    c08e:	2d00      	cmp	r5, #0
    c090:	d03b      	beq.n	c10a <ItemReferenceBox_parse_box@@Base+0x122>
    c092:	f897 c018 	ldrb.w	ip, [r7, #24]
    c096:	45dc      	cmp	ip, fp
    c098:	da47      	bge.n	c12a <ItemReferenceBox_parse_box@@Base+0x142>
    c09a:	46ce      	mov	lr, r9
    c09c:	eb0c 0a4c 	add.w	sl, ip, ip, lsl #1
    c0a0:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
    c0a4:	eb05 05ca 	add.w	r5, r5, sl, lsl #3
    c0a8:	f10c 0c01 	add.w	ip, ip, #1
    c0ac:	f887 c018 	strb.w	ip, [r7, #24]
    c0b0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
    c0b2:	9b03      	ldr	r3, [sp, #12]
    c0b4:	e89e 0003 	ldmia.w	lr, {r0, r1}
    c0b8:	ebc3 0808 	rsb	r8, r3, r8
    c0bc:	f1b8 0f00 	cmp.w	r8, #0
    c0c0:	e885 0003 	stmia.w	r5, {r0, r1}
    c0c4:	dcb4      	bgt.n	c030 <ItemReferenceBox_parse_box@@Base+0x48>
    c0c6:	6838      	ldr	r0, [r7, #0]
    c0c8:	68a3      	ldr	r3, [r4, #8]
    c0ca:	9a01      	ldr	r2, [sp, #4]
    c0cc:	1a9b      	subs	r3, r3, r2
    c0ce:	1a18      	subs	r0, r3, r0
    c0d0:	bf18      	it	ne
    c0d2:	2001      	movne	r0, #1
    c0d4:	e003      	b.n	c0de <ItemReferenceBox_parse_box@@Base+0xf6>
    c0d6:	4648      	mov	r0, r9
    c0d8:	f7f9 ef4a 	blx	5f70 <SingleItemTypeRefBox_release@plt>
    c0dc:	2001      	movs	r0, #1
    c0de:	9b00      	ldr	r3, [sp, #0]
    c0e0:	9a09      	ldr	r2, [sp, #36]	; 0x24
    c0e2:	681b      	ldr	r3, [r3, #0]
    c0e4:	429a      	cmp	r2, r3
    c0e6:	d12b      	bne.n	c140 <ItemReferenceBox_parse_box@@Base+0x158>
    c0e8:	b00b      	add	sp, #44	; 0x2c
    c0ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c0ee:	9d07      	ldr	r5, [sp, #28]
    c0f0:	4620      	mov	r0, r4
    c0f2:	f7f9 ed2e 	blx	5b50 <Bitstream_read_32bit@plt>
    c0f6:	f845 002a 	str.w	r0, [r5, sl, lsl #2]
    c0fa:	f10a 0a01 	add.w	sl, sl, #1
    c0fe:	9b08      	ldr	r3, [sp, #32]
    c100:	459a      	cmp	sl, r3
    c102:	d3f4      	bcc.n	c0ee <ItemReferenceBox_parse_box@@Base+0x106>
    c104:	697d      	ldr	r5, [r7, #20]
    c106:	2d00      	cmp	r5, #0
    c108:	d1c3      	bne.n	c092 <ItemReferenceBox_parse_box@@Base+0xaa>
    c10a:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
    c10e:	00c0      	lsls	r0, r0, #3
    c110:	f7f9 ec9a 	blx	5a48 <malloc@plt>
    c114:	4605      	mov	r5, r0
    c116:	6178      	str	r0, [r7, #20]
    c118:	2d00      	cmp	r5, #0
    c11a:	d0dc      	beq.n	c0d6 <ItemReferenceBox_parse_box@@Base+0xee>
    c11c:	f897 c018 	ldrb.w	ip, [r7, #24]
    c120:	e7bb      	b.n	c09a <ItemReferenceBox_parse_box@@Base+0xb2>
    c122:	f7f9 ee0c 	blx	5d3c <Bitstream_read_16bit@plt>
    c126:	4603      	mov	r3, r0
    c128:	e791      	b.n	c04e <ItemReferenceBox_parse_box@@Base+0x66>
    c12a:	f10b 0b05 	add.w	fp, fp, #5
    c12e:	4628      	mov	r0, r5
    c130:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
    c134:	00c9      	lsls	r1, r1, #3
    c136:	f7f9 ec7c 	blx	5a30 <realloc@plt>
    c13a:	4605      	mov	r5, r0
    c13c:	6178      	str	r0, [r7, #20]
    c13e:	e7eb      	b.n	c118 <ItemReferenceBox_parse_box@@Base+0x130>
    c140:	f7f9 ec64 	blx	5a0c <__stack_chk_fail@plt>
    c144:	aace      	add	r2, sp, #824	; 0x338
	...

0000c148 <write_media_box@@Base>:
    c148:	b538      	push	{r3, r4, r5, lr}
    c14a:	4605      	mov	r5, r0
    c14c:	480a      	ldr	r0, [pc, #40]	; (c178 <write_media_box@@Base+0x30>)
    c14e:	460c      	mov	r4, r1
    c150:	4478      	add	r0, pc
    c152:	f7f9 ed76 	blx	5c40 <string_type_to_int32@plt>
    c156:	f104 0110 	add.w	r1, r4, #16
    c15a:	6060      	str	r0, [r4, #4]
    c15c:	4628      	mov	r0, r5
    c15e:	f7f9 ef14 	blx	5f88 <write_media_header_box@plt>
    c162:	f104 0050 	add.w	r0, r4, #80	; 0x50
    c166:	f7f9 ef16 	blx	5f94 <write_media_handler_box@plt>
    c16a:	4628      	mov	r0, r5
    c16c:	f104 017c 	add.w	r1, r4, #124	; 0x7c
    c170:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c174:	f007 bf2e 	b.w	13fd4 <__aeabi_llsl@@Base+0x138>
    c178:	8be4      	ldrh	r4, [r4, #30]
	...

0000c17c <Media_write_box@@Base>:
    c17c:	b538      	push	{r3, r4, r5, lr}
    c17e:	460c      	mov	r4, r1
    c180:	4605      	mov	r5, r0
    c182:	f7f9 edbe 	blx	5d00 <Box_write_header@plt>
    c186:	f105 0010 	add.w	r0, r5, #16
    c18a:	4621      	mov	r1, r4
    c18c:	f7f9 ef0e 	blx	5fac <MediaHeader_write_box@plt>
    c190:	f105 0050 	add.w	r0, r5, #80	; 0x50
    c194:	4621      	mov	r1, r4
    c196:	f7f9 ef10 	blx	5fb8 <MediaHandler_write_box@plt>
    c19a:	f105 007c 	add.w	r0, r5, #124	; 0x7c
    c19e:	4621      	mov	r1, r4
    c1a0:	f7f9 ef10 	blx	5fc4 <MediaInformation_write_box@plt>
    c1a4:	4628      	mov	r0, r5
    c1a6:	4621      	mov	r1, r4
    c1a8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c1ac:	f007 beda 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000c1b0 <Media_parse_box@@Base>:
    c1b0:	688b      	ldr	r3, [r1, #8]
    c1b2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c1b6:	b083      	sub	sp, #12
    c1b8:	460c      	mov	r4, r1
    c1ba:	4680      	mov	r8, r0
    c1bc:	9301      	str	r3, [sp, #4]
    c1be:	f7f9 edb8 	blx	5d30 <Box_parse_header@plt>
    c1c2:	2800      	cmp	r0, #0
    c1c4:	d141      	bne.n	c24a <Media_parse_box@@Base+0x9a>
    c1c6:	f8d8 0000 	ldr.w	r0, [r8]
    c1ca:	f1a0 0708 	sub.w	r7, r0, #8
    c1ce:	2f00      	cmp	r7, #0
    c1d0:	dd51      	ble.n	c276 <Media_parse_box@@Base+0xc6>
    c1d2:	f8df 90b8 	ldr.w	r9, [pc, #184]	; c28c <Media_parse_box@@Base+0xdc>
    c1d6:	f8df a0b8 	ldr.w	sl, [pc, #184]	; c290 <Media_parse_box@@Base+0xe0>
    c1da:	f8df b0b8 	ldr.w	fp, [pc, #184]	; c294 <Media_parse_box@@Base+0xe4>
    c1de:	44f9      	add	r9, pc
    c1e0:	44fa      	add	sl, pc
    c1e2:	44fb      	add	fp, pc
    c1e4:	e015      	b.n	c212 <Media_parse_box@@Base+0x62>
    c1e6:	4650      	mov	r0, sl
    c1e8:	f7f9 ed2a 	blx	5c40 <string_type_to_int32@plt>
    c1ec:	4286      	cmp	r6, r0
    c1ee:	d030      	beq.n	c252 <Media_parse_box@@Base+0xa2>
    c1f0:	4658      	mov	r0, fp
    c1f2:	f7f9 ed26 	blx	5c40 <string_type_to_int32@plt>
    c1f6:	4286      	cmp	r6, r0
    c1f8:	d033      	beq.n	c262 <Media_parse_box@@Base+0xb2>
    c1fa:	68a3      	ldr	r3, [r4, #8]
    c1fc:	9901      	ldr	r1, [sp, #4]
    c1fe:	f8d8 2000 	ldr.w	r2, [r8]
    c202:	1a59      	subs	r1, r3, r1
    c204:	4291      	cmp	r1, r2
    c206:	d820      	bhi.n	c24a <Media_parse_box@@Base+0x9a>
    c208:	442b      	add	r3, r5
    c20a:	60a3      	str	r3, [r4, #8]
    c20c:	1b7f      	subs	r7, r7, r5
    c20e:	2f00      	cmp	r7, #0
    c210:	dd2f      	ble.n	c272 <Media_parse_box@@Base+0xc2>
    c212:	4620      	mov	r0, r4
    c214:	f7f9 ec9c 	blx	5b50 <Bitstream_read_32bit@plt>
    c218:	4605      	mov	r5, r0
    c21a:	4620      	mov	r0, r4
    c21c:	f7f9 ec98 	blx	5b50 <Bitstream_read_32bit@plt>
    c220:	4606      	mov	r6, r0
    c222:	b195      	cbz	r5, c24a <Media_parse_box@@Base+0x9a>
    c224:	f8d8 3000 	ldr.w	r3, [r8]
    c228:	429d      	cmp	r5, r3
    c22a:	d80e      	bhi.n	c24a <Media_parse_box@@Base+0x9a>
    c22c:	68a3      	ldr	r3, [r4, #8]
    c22e:	4648      	mov	r0, r9
    c230:	3b08      	subs	r3, #8
    c232:	60a3      	str	r3, [r4, #8]
    c234:	f7f9 ed04 	blx	5c40 <string_type_to_int32@plt>
    c238:	4286      	cmp	r6, r0
    c23a:	d1d4      	bne.n	c1e6 <Media_parse_box@@Base+0x36>
    c23c:	f108 0010 	add.w	r0, r8, #16
    c240:	4621      	mov	r1, r4
    c242:	f7f9 eec6 	blx	5fd0 <MediaHeader_parse_box@plt>
    c246:	2800      	cmp	r0, #0
    c248:	d0e0      	beq.n	c20c <Media_parse_box@@Base+0x5c>
    c24a:	2001      	movs	r0, #1
    c24c:	b003      	add	sp, #12
    c24e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c252:	f108 0050 	add.w	r0, r8, #80	; 0x50
    c256:	4621      	mov	r1, r4
    c258:	f7f9 eec0 	blx	5fdc <MediaHandler_parse_box@plt>
    c25c:	2800      	cmp	r0, #0
    c25e:	d0d5      	beq.n	c20c <Media_parse_box@@Base+0x5c>
    c260:	e7f3      	b.n	c24a <Media_parse_box@@Base+0x9a>
    c262:	f108 007c 	add.w	r0, r8, #124	; 0x7c
    c266:	4621      	mov	r1, r4
    c268:	f7f9 eebe 	blx	5fe8 <MediaInformation_parse_box@plt>
    c26c:	2800      	cmp	r0, #0
    c26e:	d0cd      	beq.n	c20c <Media_parse_box@@Base+0x5c>
    c270:	e7eb      	b.n	c24a <Media_parse_box@@Base+0x9a>
    c272:	f8d8 0000 	ldr.w	r0, [r8]
    c276:	68a3      	ldr	r3, [r4, #8]
    c278:	9a01      	ldr	r2, [sp, #4]
    c27a:	ebc2 0b03 	rsb	fp, r2, r3
    c27e:	ebbb 0000 	subs.w	r0, fp, r0
    c282:	bf18      	it	ne
    c284:	2001      	movne	r0, #1
    c286:	b003      	add	sp, #12
    c288:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c28c:	8b5e      	ldrh	r6, [r3, #26]
    c28e:	0000      	movs	r0, r0
    c290:	8b2c      	ldrh	r4, [r5, #24]
    c292:	0000      	movs	r0, r0
    c294:	8b62      	ldrh	r2, [r4, #26]
	...

0000c298 <MediaBox_release@@Base>:
    c298:	b510      	push	{r4, lr}
    c29a:	4604      	mov	r4, r0
    c29c:	3050      	adds	r0, #80	; 0x50
    c29e:	f7f9 eeaa 	blx	5ff4 <MediaHandler_release@plt>
    c2a2:	f104 007c 	add.w	r0, r4, #124	; 0x7c
    c2a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    c2aa:	f007 be9b 	b.w	13fe4 <__aeabi_llsl@@Base+0x148>
    c2ae:	bf00      	nop

0000c2b0 <MediaDataBox_init@@Base>:
    c2b0:	b538      	push	{r3, r4, r5, lr}
    c2b2:	4604      	mov	r4, r0
    c2b4:	4807      	ldr	r0, [pc, #28]	; (c2d4 <MediaDataBox_init@@Base+0x24>)
    c2b6:	460d      	mov	r5, r1
    c2b8:	4478      	add	r0, pc
    c2ba:	f7f9 ecc2 	blx	5c40 <string_type_to_int32@plt>
    c2be:	4623      	mov	r3, r4
    c2c0:	4629      	mov	r1, r5
    c2c2:	2201      	movs	r2, #1
    c2c4:	6060      	str	r0, [r4, #4]
    c2c6:	f843 2b0c 	str.w	r2, [r3], #12
    c2ca:	4618      	mov	r0, r3
    c2cc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c2d0:	f007 be90 	b.w	13ff4 <__aeabi_llsl@@Base+0x158>
    c2d4:	8a94      	ldrh	r4, [r2, #20]
	...

0000c2d8 <MediaDataBox_release@@Base>:
    c2d8:	300c      	adds	r0, #12
    c2da:	f007 be2b 	b.w	13f34 <__aeabi_llsl@@Base+0x98>
    c2de:	bf00      	nop

0000c2e0 <MediaDataBox_add_data@@Base>:
    c2e0:	b410      	push	{r4}
    c2e2:	300c      	adds	r0, #12
    c2e4:	680c      	ldr	r4, [r1, #0]
    c2e6:	688b      	ldr	r3, [r1, #8]
    c2e8:	684a      	ldr	r2, [r1, #4]
    c2ea:	18e1      	adds	r1, r4, r3
    c2ec:	f85d 4b04 	ldr.w	r4, [sp], #4
    c2f0:	f007 be88 	b.w	14004 <__aeabi_llsl@@Base+0x168>

0000c2f4 <MediaDataBox_add_nal_data@@Base>:
    c2f4:	b538      	push	{r3, r4, r5, lr}
    c2f6:	f100 050c 	add.w	r5, r0, #12
    c2fa:	460c      	mov	r4, r1
    c2fc:	6889      	ldr	r1, [r1, #8]
    c2fe:	4628      	mov	r0, r5
    c300:	f7f9 ece0 	blx	5cc4 <Bitstream_write_32bit@plt>
    c304:	4628      	mov	r0, r5
    c306:	6821      	ldr	r1, [r4, #0]
    c308:	68a2      	ldr	r2, [r4, #8]
    c30a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c30e:	f007 be79 	b.w	14004 <__aeabi_llsl@@Base+0x168>
    c312:	bf00      	nop

0000c314 <MediaDataBox_write_box_sequence@@Base>:
    c314:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    c316:	460c      	mov	r4, r1
    c318:	4605      	mov	r5, r0
    c31a:	f7f9 ecf2 	blx	5d00 <Box_write_header@plt>
    c31e:	4620      	mov	r0, r4
    c320:	2100      	movs	r1, #0
    c322:	f7f9 ecd0 	blx	5cc4 <Bitstream_write_32bit@plt>
    c326:	68a3      	ldr	r3, [r4, #8]
    c328:	4620      	mov	r0, r4
    c32a:	2100      	movs	r1, #0
    c32c:	60ab      	str	r3, [r5, #8]
    c32e:	f7f9 ecca 	blx	5cc4 <Bitstream_write_32bit@plt>
    c332:	68e9      	ldr	r1, [r5, #12]
    c334:	696a      	ldr	r2, [r5, #20]
    c336:	4620      	mov	r0, r4
    c338:	68a6      	ldr	r6, [r4, #8]
    c33a:	f7f9 ec94 	blx	5c64 <Bitstream_write_bytes@plt>
    c33e:	68a3      	ldr	r3, [r4, #8]
    c340:	68aa      	ldr	r2, [r5, #8]
    c342:	6821      	ldr	r1, [r4, #0]
    c344:	330c      	adds	r3, #12
    c346:	1a9b      	subs	r3, r3, r2
    c348:	4630      	mov	r0, r6
    c34a:	0e1e      	lsrs	r6, r3, #24
    c34c:	548e      	strb	r6, [r1, r2]
    c34e:	6827      	ldr	r7, [r4, #0]
    c350:	141e      	asrs	r6, r3, #16
    c352:	68aa      	ldr	r2, [r5, #8]
    c354:	1219      	asrs	r1, r3, #8
    c356:	443a      	add	r2, r7
    c358:	7056      	strb	r6, [r2, #1]
    c35a:	6826      	ldr	r6, [r4, #0]
    c35c:	68aa      	ldr	r2, [r5, #8]
    c35e:	4432      	add	r2, r6
    c360:	7091      	strb	r1, [r2, #2]
    c362:	6821      	ldr	r1, [r4, #0]
    c364:	68aa      	ldr	r2, [r5, #8]
    c366:	440a      	add	r2, r1
    c368:	70d3      	strb	r3, [r2, #3]
    c36a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0000c36c <MediaDataBox_write_box_image@@Base>:
    c36c:	b538      	push	{r3, r4, r5, lr}
    c36e:	4604      	mov	r4, r0
    c370:	460d      	mov	r5, r1
    c372:	f7f9 ecc6 	blx	5d00 <Box_write_header@plt>
    c376:	68e1      	ldr	r1, [r4, #12]
    c378:	4628      	mov	r0, r5
    c37a:	6962      	ldr	r2, [r4, #20]
    c37c:	f7f9 ec72 	blx	5c64 <Bitstream_write_bytes@plt>
    c380:	4620      	mov	r0, r4
    c382:	4629      	mov	r1, r5
    c384:	f7f9 ecce 	blx	5d24 <Box_update_size@plt>
    c388:	2000      	movs	r0, #0
    c38a:	bd38      	pop	{r3, r4, r5, pc}

0000c38c <MediaDataBox_parse_box@@Base>:
    c38c:	2000      	movs	r0, #0
    c38e:	4770      	bx	lr

0000c390 <write_media_information_box@@Base>:
    c390:	b538      	push	{r3, r4, r5, lr}
    c392:	4605      	mov	r5, r0
    c394:	480a      	ldr	r0, [pc, #40]	; (c3c0 <write_media_information_box@@Base+0x30>)
    c396:	460c      	mov	r4, r1
    c398:	4478      	add	r0, pc
    c39a:	f7f9 ec52 	blx	5c40 <string_type_to_int32@plt>
    c39e:	6060      	str	r0, [r4, #4]
    c3a0:	f104 000c 	add.w	r0, r4, #12
    c3a4:	f7f9 ee32 	blx	600c <write_video_header_box@plt>
    c3a8:	f104 0028 	add.w	r0, r4, #40	; 0x28
    c3ac:	f7f9 ee34 	blx	6018 <write_data_information_box@plt>
    c3b0:	4628      	mov	r0, r5
    c3b2:	f104 0150 	add.w	r1, r4, #80	; 0x50
    c3b6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c3ba:	f007 be2b 	b.w	14014 <__aeabi_llsl@@Base+0x178>
    c3be:	bf00      	nop
    c3c0:	89ac      	ldrh	r4, [r5, #12]
	...

0000c3c4 <MediaInformation_write_box@@Base>:
    c3c4:	b538      	push	{r3, r4, r5, lr}
    c3c6:	460c      	mov	r4, r1
    c3c8:	4605      	mov	r5, r0
    c3ca:	f7f9 ec9a 	blx	5d00 <Box_write_header@plt>
    c3ce:	f105 000c 	add.w	r0, r5, #12
    c3d2:	4621      	mov	r1, r4
    c3d4:	f7f9 ee2c 	blx	6030 <VideoHeader_write_box@plt>
    c3d8:	f105 0028 	add.w	r0, r5, #40	; 0x28
    c3dc:	4621      	mov	r1, r4
    c3de:	f7f9 ee2e 	blx	603c <DataInformation_write_box@plt>
    c3e2:	f105 0050 	add.w	r0, r5, #80	; 0x50
    c3e6:	4621      	mov	r1, r4
    c3e8:	f7f9 ee2e 	blx	6048 <SampleTable_write_box@plt>
    c3ec:	4628      	mov	r0, r5
    c3ee:	4621      	mov	r1, r4
    c3f0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c3f4:	f007 bdb6 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000c3f8 <MediaInformation_parse_box@@Base>:
    c3f8:	688b      	ldr	r3, [r1, #8]
    c3fa:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c3fe:	b083      	sub	sp, #12
    c400:	460c      	mov	r4, r1
    c402:	4680      	mov	r8, r0
    c404:	9301      	str	r3, [sp, #4]
    c406:	f7f9 ec94 	blx	5d30 <Box_parse_header@plt>
    c40a:	2800      	cmp	r0, #0
    c40c:	d141      	bne.n	c492 <MediaInformation_parse_box@@Base+0x9a>
    c40e:	f8d8 0000 	ldr.w	r0, [r8]
    c412:	f1a0 0708 	sub.w	r7, r0, #8
    c416:	2f00      	cmp	r7, #0
    c418:	dd51      	ble.n	c4be <MediaInformation_parse_box@@Base+0xc6>
    c41a:	f8df 90b8 	ldr.w	r9, [pc, #184]	; c4d4 <MediaInformation_parse_box@@Base+0xdc>
    c41e:	f8df a0b8 	ldr.w	sl, [pc, #184]	; c4d8 <MediaInformation_parse_box@@Base+0xe0>
    c422:	f8df b0b8 	ldr.w	fp, [pc, #184]	; c4dc <MediaInformation_parse_box@@Base+0xe4>
    c426:	44f9      	add	r9, pc
    c428:	44fa      	add	sl, pc
    c42a:	44fb      	add	fp, pc
    c42c:	e015      	b.n	c45a <MediaInformation_parse_box@@Base+0x62>
    c42e:	4650      	mov	r0, sl
    c430:	f7f9 ec06 	blx	5c40 <string_type_to_int32@plt>
    c434:	4286      	cmp	r6, r0
    c436:	d030      	beq.n	c49a <MediaInformation_parse_box@@Base+0xa2>
    c438:	4658      	mov	r0, fp
    c43a:	f7f9 ec02 	blx	5c40 <string_type_to_int32@plt>
    c43e:	4286      	cmp	r6, r0
    c440:	d033      	beq.n	c4aa <MediaInformation_parse_box@@Base+0xb2>
    c442:	68a3      	ldr	r3, [r4, #8]
    c444:	9901      	ldr	r1, [sp, #4]
    c446:	f8d8 2000 	ldr.w	r2, [r8]
    c44a:	1a59      	subs	r1, r3, r1
    c44c:	4291      	cmp	r1, r2
    c44e:	d820      	bhi.n	c492 <MediaInformation_parse_box@@Base+0x9a>
    c450:	442b      	add	r3, r5
    c452:	60a3      	str	r3, [r4, #8]
    c454:	1b7f      	subs	r7, r7, r5
    c456:	2f00      	cmp	r7, #0
    c458:	dd2f      	ble.n	c4ba <MediaInformation_parse_box@@Base+0xc2>
    c45a:	4620      	mov	r0, r4
    c45c:	f7f9 eb78 	blx	5b50 <Bitstream_read_32bit@plt>
    c460:	4605      	mov	r5, r0
    c462:	4620      	mov	r0, r4
    c464:	f7f9 eb74 	blx	5b50 <Bitstream_read_32bit@plt>
    c468:	4606      	mov	r6, r0
    c46a:	b195      	cbz	r5, c492 <MediaInformation_parse_box@@Base+0x9a>
    c46c:	f8d8 3000 	ldr.w	r3, [r8]
    c470:	429d      	cmp	r5, r3
    c472:	d80e      	bhi.n	c492 <MediaInformation_parse_box@@Base+0x9a>
    c474:	68a3      	ldr	r3, [r4, #8]
    c476:	4648      	mov	r0, r9
    c478:	3b08      	subs	r3, #8
    c47a:	60a3      	str	r3, [r4, #8]
    c47c:	f7f9 ebe0 	blx	5c40 <string_type_to_int32@plt>
    c480:	4286      	cmp	r6, r0
    c482:	d1d4      	bne.n	c42e <MediaInformation_parse_box@@Base+0x36>
    c484:	f108 000c 	add.w	r0, r8, #12
    c488:	4621      	mov	r1, r4
    c48a:	f7f9 ede4 	blx	6054 <VideoHeader_parse_box@plt>
    c48e:	2800      	cmp	r0, #0
    c490:	d0e0      	beq.n	c454 <MediaInformation_parse_box@@Base+0x5c>
    c492:	2001      	movs	r0, #1
    c494:	b003      	add	sp, #12
    c496:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c49a:	f108 0028 	add.w	r0, r8, #40	; 0x28
    c49e:	4621      	mov	r1, r4
    c4a0:	f7f9 edde 	blx	6060 <DataInformation_parse_box@plt>
    c4a4:	2800      	cmp	r0, #0
    c4a6:	d0d5      	beq.n	c454 <MediaInformation_parse_box@@Base+0x5c>
    c4a8:	e7f3      	b.n	c492 <MediaInformation_parse_box@@Base+0x9a>
    c4aa:	f108 0050 	add.w	r0, r8, #80	; 0x50
    c4ae:	4621      	mov	r1, r4
    c4b0:	f7f9 eddc 	blx	606c <SampleTable_parse_box@plt>
    c4b4:	2800      	cmp	r0, #0
    c4b6:	d0cd      	beq.n	c454 <MediaInformation_parse_box@@Base+0x5c>
    c4b8:	e7eb      	b.n	c492 <MediaInformation_parse_box@@Base+0x9a>
    c4ba:	f8d8 0000 	ldr.w	r0, [r8]
    c4be:	68a3      	ldr	r3, [r4, #8]
    c4c0:	9a01      	ldr	r2, [sp, #4]
    c4c2:	ebc2 0b03 	rsb	fp, r2, r3
    c4c6:	ebbb 0000 	subs.w	r0, fp, r0
    c4ca:	bf18      	it	ne
    c4cc:	2001      	movne	r0, #1
    c4ce:	b003      	add	sp, #12
    c4d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c4d4:	892e      	ldrh	r6, [r5, #8]
    c4d6:	0000      	movs	r0, r0
    c4d8:	88ac      	ldrh	r4, [r5, #4]
    c4da:	0000      	movs	r0, r0
    c4dc:	8932      	ldrh	r2, [r6, #8]
	...

0000c4e0 <MediaInformationBox_release@@Base>:
    c4e0:	b510      	push	{r4, lr}
    c4e2:	4604      	mov	r4, r0
    c4e4:	3028      	adds	r0, #40	; 0x28
    c4e6:	f7f9 edc8 	blx	6078 <DataInformationBox_release@plt>
    c4ea:	f104 0050 	add.w	r0, r4, #80	; 0x50
    c4ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    c4f2:	f007 bd97 	b.w	14024 <__aeabi_llsl@@Base+0x188>
    c4f6:	bf00      	nop

0000c4f8 <write_media_header_box@@Base>:
    c4f8:	b570      	push	{r4, r5, r6, lr}
    c4fa:	4606      	mov	r6, r0
    c4fc:	481a      	ldr	r0, [pc, #104]	; (c568 <write_media_header_box@@Base+0x70>)
    c4fe:	460c      	mov	r4, r1
    c500:	2500      	movs	r5, #0
    c502:	4478      	add	r0, pc
    c504:	f7f9 eb9c 	blx	5c40 <string_type_to_int32@plt>
    c508:	7325      	strb	r5, [r4, #12]
    c50a:	6125      	str	r5, [r4, #16]
    c50c:	6060      	str	r0, [r4, #4]
    c50e:	4628      	mov	r0, r5
    c510:	f7f9 edbe 	blx	6090 <time@plt>
    c514:	f44f 4215 	mov.w	r2, #38144	; 0x9500
    c518:	f6c3 026e 	movt	r2, #14446	; 0x386e
    c51c:	4402      	add	r2, r0
    c51e:	4628      	mov	r0, r5
    c520:	17d3      	asrs	r3, r2, #31
    c522:	e9c4 2306 	strd	r2, r3, [r4, #24]
    c526:	f7f9 edb4 	blx	6090 <time@plt>
    c52a:	6bb1      	ldr	r1, [r6, #56]	; 0x38
    c52c:	f44f 4215 	mov.w	r2, #38144	; 0x9500
    c530:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
    c534:	f6c3 026e 	movt	r2, #14446	; 0x386e
    c538:	62a3      	str	r3, [r4, #40]	; 0x28
    c53a:	4402      	add	r2, r0
    c53c:	17d3      	asrs	r3, r2, #31
    c53e:	e9c4 2308 	strd	r2, r3, [r4, #32]
    c542:	f44f 72a0 	mov.w	r2, #320	; 0x140
    c546:	2300      	movs	r3, #0
    c548:	b109      	cbz	r1, c54e <write_media_header_box@@Base+0x56>
    c54a:	e9d6 2370 	ldrd	r2, r3, [r6, #448]	; 0x1c0
    c54e:	e9c4 230c 	strd	r2, r3, [r4, #48]	; 0x30
    c552:	2300      	movs	r3, #0
    c554:	f884 3038 	strb.w	r3, [r4, #56]	; 0x38
    c558:	f884 3039 	strb.w	r3, [r4, #57]	; 0x39
    c55c:	f884 303a 	strb.w	r3, [r4, #58]	; 0x3a
    c560:	f884 303b 	strb.w	r3, [r4, #59]	; 0x3b
    c564:	87a3      	strh	r3, [r4, #60]	; 0x3c
    c566:	bd70      	pop	{r4, r5, r6, pc}
    c568:	883a      	ldrh	r2, [r7, #0]
	...

0000c56c <write_media_handler_box@@Base>:
    c56c:	b538      	push	{r3, r4, r5, lr}
    c56e:	4604      	mov	r4, r0
    c570:	4813      	ldr	r0, [pc, #76]	; (c5c0 <write_media_handler_box@@Base+0x54>)
    c572:	2500      	movs	r5, #0
    c574:	4478      	add	r0, pc
    c576:	f7f9 eb64 	blx	5c40 <string_type_to_int32@plt>
    c57a:	7325      	strb	r5, [r4, #12]
    c57c:	6125      	str	r5, [r4, #16]
    c57e:	6165      	str	r5, [r4, #20]
    c580:	6060      	str	r0, [r4, #4]
    c582:	4810      	ldr	r0, [pc, #64]	; (c5c4 <write_media_handler_box@@Base+0x58>)
    c584:	4478      	add	r0, pc
    c586:	f7f9 eb5c 	blx	5c40 <string_type_to_int32@plt>
    c58a:	7725      	strb	r5, [r4, #28]
    c58c:	7765      	strb	r5, [r4, #29]
    c58e:	77a5      	strb	r5, [r4, #30]
    c590:	77e5      	strb	r5, [r4, #31]
    c592:	f884 5020 	strb.w	r5, [r4, #32]
    c596:	f884 5021 	strb.w	r5, [r4, #33]	; 0x21
    c59a:	f884 5022 	strb.w	r5, [r4, #34]	; 0x22
    c59e:	f884 5023 	strb.w	r5, [r4, #35]	; 0x23
    c5a2:	f884 5024 	strb.w	r5, [r4, #36]	; 0x24
    c5a6:	f884 5025 	strb.w	r5, [r4, #37]	; 0x25
    c5aa:	f884 5026 	strb.w	r5, [r4, #38]	; 0x26
    c5ae:	f884 5027 	strb.w	r5, [r4, #39]	; 0x27
    c5b2:	61a0      	str	r0, [r4, #24]
    c5b4:	4804      	ldr	r0, [pc, #16]	; (c5c8 <write_media_handler_box@@Base+0x5c>)
    c5b6:	4478      	add	r0, pc
    c5b8:	f7f9 ed70 	blx	609c <strdup@plt>
    c5bc:	62a0      	str	r0, [r4, #40]	; 0x28
    c5be:	bd38      	pop	{r3, r4, r5, pc}
    c5c0:	8798      	strh	r0, [r3, #60]	; 0x3c
    c5c2:	0000      	movs	r0, r0
    c5c4:	87e0      	strh	r0, [r4, #62]	; 0x3e
    c5c6:	0000      	movs	r0, r0
    c5c8:	87b6      	strh	r6, [r6, #60]	; 0x3c
	...

0000c5cc <MediaHeader_write_box@@Base>:
    c5cc:	b538      	push	{r3, r4, r5, lr}
    c5ce:	460c      	mov	r4, r1
    c5d0:	4605      	mov	r5, r0
    c5d2:	f7f9 eb96 	blx	5d00 <Box_write_header@plt>
    c5d6:	7b29      	ldrb	r1, [r5, #12]
    c5d8:	4620      	mov	r0, r4
    c5da:	f7f9 eb68 	blx	5cac <Bitstream_write_byte@plt>
    c5de:	6929      	ldr	r1, [r5, #16]
    c5e0:	4620      	mov	r0, r4
    c5e2:	f7f9 ebd6 	blx	5d90 <Bitstream_write_24bit@plt>
    c5e6:	69a9      	ldr	r1, [r5, #24]
    c5e8:	4620      	mov	r0, r4
    c5ea:	f7f9 eb6c 	blx	5cc4 <Bitstream_write_32bit@plt>
    c5ee:	6a29      	ldr	r1, [r5, #32]
    c5f0:	4620      	mov	r0, r4
    c5f2:	f7f9 eb68 	blx	5cc4 <Bitstream_write_32bit@plt>
    c5f6:	6aa9      	ldr	r1, [r5, #40]	; 0x28
    c5f8:	4620      	mov	r0, r4
    c5fa:	f7f9 eb64 	blx	5cc4 <Bitstream_write_32bit@plt>
    c5fe:	6b29      	ldr	r1, [r5, #48]	; 0x30
    c600:	4620      	mov	r0, r4
    c602:	f7f9 eb60 	blx	5cc4 <Bitstream_write_32bit@plt>
    c606:	4620      	mov	r0, r4
    c608:	2100      	movs	r1, #0
    c60a:	f7f9 eb86 	blx	5d18 <Bitstream_write_16bit@plt>
    c60e:	8fa9      	ldrh	r1, [r5, #60]	; 0x3c
    c610:	4620      	mov	r0, r4
    c612:	f7f9 eb82 	blx	5d18 <Bitstream_write_16bit@plt>
    c616:	4628      	mov	r0, r5
    c618:	4621      	mov	r1, r4
    c61a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c61e:	f007 bca1 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    c622:	bf00      	nop

0000c624 <MediaHandler_write_box@@Base>:
    c624:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    c628:	4607      	mov	r7, r0
    c62a:	460e      	mov	r6, r1
    c62c:	f7f9 eb68 	blx	5d00 <Box_write_header@plt>
    c630:	7b39      	ldrb	r1, [r7, #12]
    c632:	4630      	mov	r0, r6
    c634:	f7f9 eb3a 	blx	5cac <Bitstream_write_byte@plt>
    c638:	6939      	ldr	r1, [r7, #16]
    c63a:	4630      	mov	r0, r6
    c63c:	463c      	mov	r4, r7
    c63e:	f7f9 eba8 	blx	5d90 <Bitstream_write_24bit@plt>
    c642:	6979      	ldr	r1, [r7, #20]
    c644:	4630      	mov	r0, r6
    c646:	f107 0524 	add.w	r5, r7, #36	; 0x24
    c64a:	f7f9 eb3c 	blx	5cc4 <Bitstream_write_32bit@plt>
    c64e:	f854 1f18 	ldr.w	r1, [r4, #24]!
    c652:	4630      	mov	r0, r6
    c654:	f7f9 eb36 	blx	5cc4 <Bitstream_write_32bit@plt>
    c658:	f854 1f04 	ldr.w	r1, [r4, #4]!
    c65c:	4630      	mov	r0, r6
    c65e:	f7f9 eb32 	blx	5cc4 <Bitstream_write_32bit@plt>
    c662:	42ac      	cmp	r4, r5
    c664:	d1f8      	bne.n	c658 <MediaHandler_write_box@@Base+0x34>
    c666:	6abd      	ldr	r5, [r7, #40]	; 0x28
    c668:	4628      	mov	r0, r5
    c66a:	f7f9 eb1a 	blx	5ca0 <strlen@plt>
    c66e:	f1b0 0800 	subs.w	r8, r0, #0
    c672:	db09      	blt.n	c688 <MediaHandler_write_box@@Base+0x64>
    c674:	2400      	movs	r4, #0
    c676:	e000      	b.n	c67a <MediaHandler_write_box@@Base+0x56>
    c678:	6abd      	ldr	r5, [r7, #40]	; 0x28
    c67a:	5d29      	ldrb	r1, [r5, r4]
    c67c:	4630      	mov	r0, r6
    c67e:	3401      	adds	r4, #1
    c680:	f7f9 eb14 	blx	5cac <Bitstream_write_byte@plt>
    c684:	45a0      	cmp	r8, r4
    c686:	daf7      	bge.n	c678 <MediaHandler_write_box@@Base+0x54>
    c688:	4638      	mov	r0, r7
    c68a:	4631      	mov	r1, r6
    c68c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    c690:	f007 bc68 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000c694 <MediaHeader_parse_box@@Base>:
    c694:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    c696:	460d      	mov	r5, r1
    c698:	4604      	mov	r4, r0
    c69a:	688f      	ldr	r7, [r1, #8]
    c69c:	f7f9 eb48 	blx	5d30 <Box_parse_header@plt>
    c6a0:	4606      	mov	r6, r0
    c6a2:	b110      	cbz	r0, c6aa <MediaHeader_parse_box@@Base+0x16>
    c6a4:	2601      	movs	r6, #1
    c6a6:	4630      	mov	r0, r6
    c6a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    c6aa:	4628      	mov	r0, r5
    c6ac:	f7f9 eaf2 	blx	5c94 <Bitstream_read_byte@plt>
    c6b0:	7320      	strb	r0, [r4, #12]
    c6b2:	4628      	mov	r0, r5
    c6b4:	f7f9 eb78 	blx	5da8 <Bitstream_read_24bit@plt>
    c6b8:	6120      	str	r0, [r4, #16]
    c6ba:	4628      	mov	r0, r5
    c6bc:	f7f9 ea48 	blx	5b50 <Bitstream_read_32bit@plt>
    c6c0:	61e6      	str	r6, [r4, #28]
    c6c2:	61a0      	str	r0, [r4, #24]
    c6c4:	4628      	mov	r0, r5
    c6c6:	f7f9 ea44 	blx	5b50 <Bitstream_read_32bit@plt>
    c6ca:	6266      	str	r6, [r4, #36]	; 0x24
    c6cc:	6220      	str	r0, [r4, #32]
    c6ce:	4628      	mov	r0, r5
    c6d0:	f7f9 ea3e 	blx	5b50 <Bitstream_read_32bit@plt>
    c6d4:	62a0      	str	r0, [r4, #40]	; 0x28
    c6d6:	4628      	mov	r0, r5
    c6d8:	f7f9 ea3a 	blx	5b50 <Bitstream_read_32bit@plt>
    c6dc:	6366      	str	r6, [r4, #52]	; 0x34
    c6de:	2101      	movs	r1, #1
    c6e0:	6320      	str	r0, [r4, #48]	; 0x30
    c6e2:	4628      	mov	r0, r5
    c6e4:	f7f9 eaf4 	blx	5cd0 <Bitstream_read_bits@plt>
    c6e8:	210f      	movs	r1, #15
    c6ea:	f884 0038 	strb.w	r0, [r4, #56]	; 0x38
    c6ee:	4628      	mov	r0, r5
    c6f0:	f7f9 eaee 	blx	5cd0 <Bitstream_read_bits@plt>
    c6f4:	f884 603b 	strb.w	r6, [r4, #59]	; 0x3b
    c6f8:	f000 031f 	and.w	r3, r0, #31
    c6fc:	f020 001f 	bic.w	r0, r0, #31
    c700:	f884 3039 	strb.w	r3, [r4, #57]	; 0x39
    c704:	f884 003a 	strb.w	r0, [r4, #58]	; 0x3a
    c708:	4628      	mov	r0, r5
    c70a:	f7f9 eb18 	blx	5d3c <Bitstream_read_16bit@plt>
    c70e:	6823      	ldr	r3, [r4, #0]
    c710:	441f      	add	r7, r3
    c712:	87a0      	strh	r0, [r4, #60]	; 0x3c
    c714:	4630      	mov	r0, r6
    c716:	60af      	str	r7, [r5, #8]
    c718:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    c71a:	bf00      	nop

0000c71c <MediaHandler_parse_box@@Base>:
    c71c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    c720:	460c      	mov	r4, r1
    c722:	4606      	mov	r6, r0
    c724:	f8d1 8008 	ldr.w	r8, [r1, #8]
    c728:	f7f9 eb02 	blx	5d30 <Box_parse_header@plt>
    c72c:	4607      	mov	r7, r0
    c72e:	b118      	cbz	r0, c738 <MediaHandler_parse_box@@Base+0x1c>
    c730:	2701      	movs	r7, #1
    c732:	4638      	mov	r0, r7
    c734:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    c738:	4620      	mov	r0, r4
    c73a:	f106 0924 	add.w	r9, r6, #36	; 0x24
    c73e:	f7f9 eaaa 	blx	5c94 <Bitstream_read_byte@plt>
    c742:	4635      	mov	r5, r6
    c744:	7330      	strb	r0, [r6, #12]
    c746:	4620      	mov	r0, r4
    c748:	f7f9 eb2e 	blx	5da8 <Bitstream_read_24bit@plt>
    c74c:	6130      	str	r0, [r6, #16]
    c74e:	4620      	mov	r0, r4
    c750:	f7f9 e9fe 	blx	5b50 <Bitstream_read_32bit@plt>
    c754:	6170      	str	r0, [r6, #20]
    c756:	4620      	mov	r0, r4
    c758:	f7f9 e9fa 	blx	5b50 <Bitstream_read_32bit@plt>
    c75c:	f845 0f18 	str.w	r0, [r5, #24]!
    c760:	4620      	mov	r0, r4
    c762:	f7f9 e9f6 	blx	5b50 <Bitstream_read_32bit@plt>
    c766:	f845 0f04 	str.w	r0, [r5, #4]!
    c76a:	454d      	cmp	r5, r9
    c76c:	d1f8      	bne.n	c760 <MediaHandler_parse_box@@Base+0x44>
    c76e:	4620      	mov	r0, r4
    c770:	f7f9 ea8a 	blx	5c88 <Bitstream_read_terminated_str@plt>
    c774:	6833      	ldr	r3, [r6, #0]
    c776:	4443      	add	r3, r8
    c778:	62b0      	str	r0, [r6, #40]	; 0x28
    c77a:	4638      	mov	r0, r7
    c77c:	60a3      	str	r3, [r4, #8]
    c77e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    c782:	bf00      	nop

0000c784 <MediaHandler_release@@Base>:
    c784:	b510      	push	{r4, lr}
    c786:	4604      	mov	r4, r0
    c788:	6a80      	ldr	r0, [r0, #40]	; 0x28
    c78a:	b108      	cbz	r0, c790 <MediaHandler_release@@Base+0xc>
    c78c:	f7f9 e96e 	blx	5a6c <free@plt>
    c790:	2300      	movs	r3, #0
    c792:	62a3      	str	r3, [r4, #40]	; 0x28
    c794:	bd10      	pop	{r4, pc}
    c796:	bf00      	nop

0000c798 <MetaBox_init@@Base>:
    c798:	b538      	push	{r3, r4, r5, lr}
    c79a:	2100      	movs	r1, #0
    c79c:	f44f 72a4 	mov.w	r2, #328	; 0x148
    c7a0:	4604      	mov	r4, r0
    c7a2:	f7f9 e9b2 	blx	5b08 <memset@plt>
    c7a6:	f247 4361 	movw	r3, #29793	; 0x7461
    c7aa:	f6c6 5365 	movt	r3, #28005	; 0x6d65
    c7ae:	2500      	movs	r5, #0
    c7b0:	6063      	str	r3, [r4, #4]
    c7b2:	f104 0014 	add.w	r0, r4, #20
    c7b6:	7325      	strb	r5, [r4, #12]
    c7b8:	f7f9 ec76 	blx	60a8 <HandlerBox_init@plt>
    c7bc:	f104 0030 	add.w	r0, r4, #48	; 0x30
    c7c0:	f7f9 ec78 	blx	60b4 <PrimaryItemBox_init@plt>
    c7c4:	f104 0078 	add.w	r0, r4, #120	; 0x78
    c7c8:	f7f9 ec7a 	blx	60c0 <ItemLocationBox_init@plt>
    c7cc:	f104 0048 	add.w	r0, r4, #72	; 0x48
    c7d0:	f7f9 ec7c 	blx	60cc <ItemInfoBox_init@plt>
    c7d4:	f104 00e8 	add.w	r0, r4, #232	; 0xe8
    c7d8:	f884 5054 	strb.w	r5, [r4, #84]	; 0x54
    c7dc:	f7f9 ec7c 	blx	60d8 <ItemReferenceBox_init@plt>
    c7e0:	f504 7082 	add.w	r0, r4, #260	; 0x104
    c7e4:	f7f9 ec7e 	blx	60e4 <ItemPropertiesBox_init@plt>
    c7e8:	f104 0064 	add.w	r0, r4, #100	; 0x64
    c7ec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c7f0:	f007 bc20 	b.w	14034 <__aeabi_llsl@@Base+0x198>

0000c7f4 <MetaBox_release@@Base>:
    c7f4:	b510      	push	{r4, lr}
    c7f6:	4604      	mov	r4, r0
    c7f8:	3014      	adds	r0, #20
    c7fa:	f7f9 ec80 	blx	60fc <HandlerBox_release@plt>
    c7fe:	f104 0030 	add.w	r0, r4, #48	; 0x30
    c802:	f7f9 ec82 	blx	6108 <PrimaryItemBox_release@plt>
    c806:	f104 0078 	add.w	r0, r4, #120	; 0x78
    c80a:	f7f9 ec84 	blx	6114 <ItemLocationBox_release@plt>
    c80e:	f104 0048 	add.w	r0, r4, #72	; 0x48
    c812:	f7f9 ec86 	blx	6120 <ItemInfoBox_release@plt>
    c816:	f104 00e8 	add.w	r0, r4, #232	; 0xe8
    c81a:	f7f9 ec88 	blx	612c <ItemReferenceBox_release@plt>
    c81e:	f504 7082 	add.w	r0, r4, #260	; 0x104
    c822:	f7f9 ec8a 	blx	6138 <ItemPropertiesBox_release@plt>
    c826:	f104 0064 	add.w	r0, r4, #100	; 0x64
    c82a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    c82e:	f007 bc09 	b.w	14044 <__aeabi_llsl@@Base+0x1a8>
    c832:	bf00      	nop

0000c834 <MetaBox_write_box@@Base>:
    c834:	b538      	push	{r3, r4, r5, lr}
    c836:	460d      	mov	r5, r1
    c838:	4604      	mov	r4, r0
    c83a:	f7f9 ea08 	blx	5c4c <FullBox_write_header@plt>
    c83e:	f104 0014 	add.w	r0, r4, #20
    c842:	4629      	mov	r1, r5
    c844:	f7f9 ec84 	blx	6150 <HandlerBox_write_box@plt>
    c848:	f104 0030 	add.w	r0, r4, #48	; 0x30
    c84c:	4629      	mov	r1, r5
    c84e:	f7f9 ec86 	blx	615c <PrimaryItemBox_write_box@plt>
    c852:	f104 0048 	add.w	r0, r4, #72	; 0x48
    c856:	4629      	mov	r1, r5
    c858:	f7f9 ec86 	blx	6168 <ItemInfoBox_write_box@plt>
    c85c:	f104 00e8 	add.w	r0, r4, #232	; 0xe8
    c860:	4629      	mov	r1, r5
    c862:	f7f9 ec88 	blx	6174 <ItemReferenceBox_write_box@plt>
    c866:	f504 7082 	add.w	r0, r4, #260	; 0x104
    c86a:	4629      	mov	r1, r5
    c86c:	f7f9 ec88 	blx	6180 <ItemPropertiesBox_write_box@plt>
    c870:	6f23      	ldr	r3, [r4, #112]	; 0x70
    c872:	b13b      	cbz	r3, c884 <MetaBox_write_box@@Base+0x50>
    c874:	6f63      	ldr	r3, [r4, #116]	; 0x74
    c876:	2b00      	cmp	r3, #0
    c878:	db04      	blt.n	c884 <MetaBox_write_box@@Base+0x50>
    c87a:	f104 0064 	add.w	r0, r4, #100	; 0x64
    c87e:	4629      	mov	r1, r5
    c880:	f7f9 ec84 	blx	618c <ItemDataBox_write_box@plt>
    c884:	f104 0078 	add.w	r0, r4, #120	; 0x78
    c888:	4629      	mov	r1, r5
    c88a:	f7f9 ec86 	blx	6198 <ItemLocationBox_write_box@plt>
    c88e:	4620      	mov	r0, r4
    c890:	4629      	mov	r1, r5
    c892:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    c896:	f007 bb2d 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    c89a:	bf00      	nop

0000c89c <MetaBox_parse_box@@Base>:
    c89c:	688b      	ldr	r3, [r1, #8]
    c89e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c8a2:	b085      	sub	sp, #20
    c8a4:	468b      	mov	fp, r1
    c8a6:	4606      	mov	r6, r0
    c8a8:	9303      	str	r3, [sp, #12]
    c8aa:	f7f9 e9e8 	blx	5c7c <FullBox_parse_header@plt>
    c8ae:	2800      	cmp	r0, #0
    c8b0:	d166      	bne.n	c980 <MetaBox_parse_box@@Base+0xe4>
    c8b2:	f8db 2004 	ldr.w	r2, [fp, #4]
    c8b6:	9b03      	ldr	r3, [sp, #12]
    c8b8:	6830      	ldr	r0, [r6, #0]
    c8ba:	1ad2      	subs	r2, r2, r3
    c8bc:	4282      	cmp	r2, r0
    c8be:	d35f      	bcc.n	c980 <MetaBox_parse_box@@Base+0xe4>
    c8c0:	f1a0 040c 	sub.w	r4, r0, #12
    c8c4:	2c08      	cmp	r4, #8
    c8c6:	bfd8      	it	le
    c8c8:	f8db 2008 	ldrle.w	r2, [fp, #8]
    c8cc:	f340 8081 	ble.w	c9d2 <MetaBox_parse_box@@Base+0x136>
    c8d0:	f646 4572 	movw	r5, #27762	; 0x6c72
    c8d4:	f247 476d 	movw	r7, #29805	; 0x746d
    c8d8:	f646 7863 	movw	r8, #28515	; 0x6f63
    c8dc:	f646 6966 	movw	r9, #28262	; 0x6e66
    c8e0:	f246 5366 	movw	r3, #25958	; 0x6566
    c8e4:	f246 1274 	movw	r2, #24948	; 0x6174
    c8e8:	f6c6 1372 	movt	r3, #26994	; 0x6972
    c8ec:	f6c6 1264 	movt	r2, #26980	; 0x6964
    c8f0:	f6c6 0564 	movt	r5, #26724	; 0x6864
    c8f4:	f2c7 0769 	movt	r7, #28777	; 0x7069
    c8f8:	f6c6 186c 	movt	r8, #26988	; 0x696c
    c8fc:	f6c6 1969 	movt	r9, #26985	; 0x6969
    c900:	9301      	str	r3, [sp, #4]
    c902:	9202      	str	r2, [sp, #8]
    c904:	e01b      	b.n	c93e <MetaBox_parse_box@@Base+0xa2>
    c906:	42b8      	cmp	r0, r7
    c908:	d03e      	beq.n	c988 <MetaBox_parse_box@@Base+0xec>
    c90a:	4540      	cmp	r0, r8
    c90c:	d042      	beq.n	c994 <MetaBox_parse_box@@Base+0xf8>
    c90e:	4548      	cmp	r0, r9
    c910:	d046      	beq.n	c9a0 <MetaBox_parse_box@@Base+0x104>
    c912:	9b01      	ldr	r3, [sp, #4]
    c914:	4298      	cmp	r0, r3
    c916:	d049      	beq.n	c9ac <MetaBox_parse_box@@Base+0x110>
    c918:	f247 2e70 	movw	lr, #29296	; 0x7270
    c91c:	f6c6 1e70 	movt	lr, #26992	; 0x6970
    c920:	4570      	cmp	r0, lr
    c922:	d049      	beq.n	c9b8 <MetaBox_parse_box@@Base+0x11c>
    c924:	9b02      	ldr	r3, [sp, #8]
    c926:	4298      	cmp	r0, r3
    c928:	bf1c      	itt	ne
    c92a:	4452      	addne	r2, sl
    c92c:	f8cb 2008 	strne.w	r2, [fp, #8]
    c930:	d048      	beq.n	c9c4 <MetaBox_parse_box@@Base+0x128>
    c932:	428a      	cmp	r2, r1
    c934:	d824      	bhi.n	c980 <MetaBox_parse_box@@Base+0xe4>
    c936:	ebca 0404 	rsb	r4, sl, r4
    c93a:	2c08      	cmp	r4, #8
    c93c:	dd48      	ble.n	c9d0 <MetaBox_parse_box@@Base+0x134>
    c93e:	4658      	mov	r0, fp
    c940:	f7f9 e906 	blx	5b50 <Bitstream_read_32bit@plt>
    c944:	4682      	mov	sl, r0
    c946:	4658      	mov	r0, fp
    c948:	f7f9 e902 	blx	5b50 <Bitstream_read_32bit@plt>
    c94c:	f1ba 0f00 	cmp.w	sl, #0
    c950:	dd16      	ble.n	c980 <MetaBox_parse_box@@Base+0xe4>
    c952:	f8db 1004 	ldr.w	r1, [fp, #4]
    c956:	458a      	cmp	sl, r1
    c958:	d812      	bhi.n	c980 <MetaBox_parse_box@@Base+0xe4>
    c95a:	f8db 2008 	ldr.w	r2, [fp, #8]
    c95e:	42a8      	cmp	r0, r5
    c960:	f1a2 0208 	sub.w	r2, r2, #8
    c964:	f8cb 2008 	str.w	r2, [fp, #8]
    c968:	d1cd      	bne.n	c906 <MetaBox_parse_box@@Base+0x6a>
    c96a:	f106 0014 	add.w	r0, r6, #20
    c96e:	4659      	mov	r1, fp
    c970:	f7f9 ec18 	blx	61a4 <HandlerBox_parse_box@plt>
    c974:	b920      	cbnz	r0, c980 <MetaBox_parse_box@@Base+0xe4>
    c976:	f8db 2008 	ldr.w	r2, [fp, #8]
    c97a:	f8db 1004 	ldr.w	r1, [fp, #4]
    c97e:	e7d8      	b.n	c932 <MetaBox_parse_box@@Base+0x96>
    c980:	2001      	movs	r0, #1
    c982:	b005      	add	sp, #20
    c984:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c988:	f106 0030 	add.w	r0, r6, #48	; 0x30
    c98c:	4659      	mov	r1, fp
    c98e:	f7f9 ec10 	blx	61b0 <PrimaryItemBox_parse_box@plt>
    c992:	e7ef      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c994:	f106 0078 	add.w	r0, r6, #120	; 0x78
    c998:	4659      	mov	r1, fp
    c99a:	f7f9 ec10 	blx	61bc <ItemLocationBox_parse_box@plt>
    c99e:	e7e9      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c9a0:	f106 0048 	add.w	r0, r6, #72	; 0x48
    c9a4:	4659      	mov	r1, fp
    c9a6:	f7f9 ec10 	blx	61c8 <ItemInfoBox_parse_box@plt>
    c9aa:	e7e3      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c9ac:	f106 00e8 	add.w	r0, r6, #232	; 0xe8
    c9b0:	4659      	mov	r1, fp
    c9b2:	f7f9 ec10 	blx	61d4 <ItemReferenceBox_parse_box@plt>
    c9b6:	e7dd      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c9b8:	f506 7082 	add.w	r0, r6, #260	; 0x104
    c9bc:	4659      	mov	r1, fp
    c9be:	f7f9 ec10 	blx	61e0 <ItemPropertiesBox_parse_box@plt>
    c9c2:	e7d7      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c9c4:	f106 0064 	add.w	r0, r6, #100	; 0x64
    c9c8:	4659      	mov	r1, fp
    c9ca:	f7f9 ec10 	blx	61ec <ItemDataBox_parse_box@plt>
    c9ce:	e7d1      	b.n	c974 <MetaBox_parse_box@@Base+0xd8>
    c9d0:	6830      	ldr	r0, [r6, #0]
    c9d2:	9b03      	ldr	r3, [sp, #12]
    c9d4:	1ad2      	subs	r2, r2, r3
    c9d6:	1a10      	subs	r0, r2, r0
    c9d8:	bf18      	it	ne
    c9da:	2001      	movne	r0, #1
    c9dc:	e7d1      	b.n	c982 <MetaBox_parse_box@@Base+0xe6>
    c9de:	bf00      	nop

0000c9e0 <MoovBox_init@@Base>:
    c9e0:	b510      	push	{r4, lr}
    c9e2:	2100      	movs	r1, #0
    c9e4:	f44f 7246 	mov.w	r2, #792	; 0x318
    c9e8:	4604      	mov	r4, r0
    c9ea:	f7f9 e88e 	blx	5b08 <memset@plt>
    c9ee:	4803      	ldr	r0, [pc, #12]	; (c9fc <MoovBox_init@@Base+0x1c>)
    c9f0:	4478      	add	r0, pc
    c9f2:	f7f9 e926 	blx	5c40 <string_type_to_int32@plt>
    c9f6:	6060      	str	r0, [r4, #4]
    c9f8:	bd10      	pop	{r4, pc}
    c9fa:	bf00      	nop
    c9fc:	83a0      	strh	r0, [r4, #28]
	...

0000ca00 <MoovBox_write_box@@Base>:
    ca00:	b538      	push	{r3, r4, r5, lr}
    ca02:	460c      	mov	r4, r1
    ca04:	4605      	mov	r5, r0
    ca06:	f7f9 e97c 	blx	5d00 <Box_write_header@plt>
    ca0a:	f105 0010 	add.w	r0, r5, #16
    ca0e:	4621      	mov	r1, r4
    ca10:	f7f9 ebf2 	blx	61f8 <MovieHeader_write_box@plt>
    ca14:	f105 0098 	add.w	r0, r5, #152	; 0x98
    ca18:	4621      	mov	r1, r4
    ca1a:	f7f9 ebf4 	blx	6204 <Track_write_box@plt>
    ca1e:	4628      	mov	r0, r5
    ca20:	4621      	mov	r1, r4
    ca22:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    ca26:	f007 ba9d 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    ca2a:	bf00      	nop

0000ca2c <MoovBox_parse_box@@Base>:
    ca2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ca30:	f5ad 7d27 	sub.w	sp, sp, #668	; 0x29c
    ca34:	f8df 9128 	ldr.w	r9, [pc, #296]	; cb60 <MoovBox_parse_box@@Base+0x134>
    ca38:	460c      	mov	r4, r1
    ca3a:	f8d1 b008 	ldr.w	fp, [r1, #8]
    ca3e:	4680      	mov	r8, r0
    ca40:	44f9      	add	r9, pc
    ca42:	f8d9 9000 	ldr.w	r9, [r9]
    ca46:	f8d9 3000 	ldr.w	r3, [r9]
    ca4a:	93a5      	str	r3, [sp, #660]	; 0x294
    ca4c:	f7f9 e970 	blx	5d30 <Box_parse_header@plt>
    ca50:	2800      	cmp	r0, #0
    ca52:	d142      	bne.n	cada <MoovBox_parse_box@@Base+0xae>
    ca54:	6865      	ldr	r5, [r4, #4]
    ca56:	f8d8 6000 	ldr.w	r6, [r8]
    ca5a:	ebcb 0505 	rsb	r5, fp, r5
    ca5e:	42b5      	cmp	r5, r6
    ca60:	4630      	mov	r0, r6
    ca62:	d33a      	bcc.n	cada <MoovBox_parse_box@@Base+0xae>
    ca64:	3e0c      	subs	r6, #12
    ca66:	2e08      	cmp	r6, #8
    ca68:	dd68      	ble.n	cb3c <MoovBox_parse_box@@Base+0x110>
    ca6a:	4b3e      	ldr	r3, [pc, #248]	; (cb64 <MoovBox_parse_box@@Base+0x138>)
    ca6c:	f8df a0f8 	ldr.w	sl, [pc, #248]	; cb68 <MoovBox_parse_box@@Base+0x13c>
    ca70:	447b      	add	r3, pc
    ca72:	9300      	str	r3, [sp, #0]
    ca74:	4b3d      	ldr	r3, [pc, #244]	; (cb6c <MoovBox_parse_box@@Base+0x140>)
    ca76:	44fa      	add	sl, pc
    ca78:	447b      	add	r3, pc
    ca7a:	9302      	str	r3, [sp, #8]
    ca7c:	e010      	b.n	caa0 <MoovBox_parse_box@@Base+0x74>
    ca7e:	9800      	ldr	r0, [sp, #0]
    ca80:	f7f9 e8de 	blx	5c40 <string_type_to_int32@plt>
    ca84:	4287      	cmp	r7, r0
    ca86:	d032      	beq.n	caee <MoovBox_parse_box@@Base+0xc2>
    ca88:	68a3      	ldr	r3, [r4, #8]
    ca8a:	f8d8 2000 	ldr.w	r2, [r8]
    ca8e:	ebcb 0103 	rsb	r1, fp, r3
    ca92:	4291      	cmp	r1, r2
    ca94:	d821      	bhi.n	cada <MoovBox_parse_box@@Base+0xae>
    ca96:	442b      	add	r3, r5
    ca98:	60a3      	str	r3, [r4, #8]
    ca9a:	1b76      	subs	r6, r6, r5
    ca9c:	2e08      	cmp	r6, #8
    ca9e:	dd4b      	ble.n	cb38 <MoovBox_parse_box@@Base+0x10c>
    caa0:	4620      	mov	r0, r4
    caa2:	f7f9 e856 	blx	5b50 <Bitstream_read_32bit@plt>
    caa6:	4605      	mov	r5, r0
    caa8:	4620      	mov	r0, r4
    caaa:	f7f9 e852 	blx	5b50 <Bitstream_read_32bit@plt>
    caae:	4607      	mov	r7, r0
    cab0:	b19d      	cbz	r5, cada <MoovBox_parse_box@@Base+0xae>
    cab2:	f8d8 3000 	ldr.w	r3, [r8]
    cab6:	429d      	cmp	r5, r3
    cab8:	d80f      	bhi.n	cada <MoovBox_parse_box@@Base+0xae>
    caba:	68a3      	ldr	r3, [r4, #8]
    cabc:	4650      	mov	r0, sl
    cabe:	3b08      	subs	r3, #8
    cac0:	60a3      	str	r3, [r4, #8]
    cac2:	f7f9 e8be 	blx	5c40 <string_type_to_int32@plt>
    cac6:	4287      	cmp	r7, r0
    cac8:	d1d9      	bne.n	ca7e <MoovBox_parse_box@@Base+0x52>
    caca:	f108 0010 	add.w	r0, r8, #16
    cace:	4621      	mov	r1, r4
    cad0:	f7f9 eb9e 	blx	6210 <MovieHeader_parse_box@plt>
    cad4:	4607      	mov	r7, r0
    cad6:	2f00      	cmp	r7, #0
    cad8:	d0df      	beq.n	ca9a <MoovBox_parse_box@@Base+0x6e>
    cada:	2001      	movs	r0, #1
    cadc:	9aa5      	ldr	r2, [sp, #660]	; 0x294
    cade:	f8d9 3000 	ldr.w	r3, [r9]
    cae2:	429a      	cmp	r2, r3
    cae4:	d13a      	bne.n	cb5c <MoovBox_parse_box@@Base+0x130>
    cae6:	f50d 7d27 	add.w	sp, sp, #668	; 0x29c
    caea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    caee:	ab04      	add	r3, sp, #16
    caf0:	2100      	movs	r1, #0
    caf2:	f44f 7220 	mov.w	r2, #640	; 0x280
    caf6:	9301      	str	r3, [sp, #4]
    caf8:	4618      	mov	r0, r3
    cafa:	f7f9 e806 	blx	5b08 <memset@plt>
    cafe:	9b01      	ldr	r3, [sp, #4]
    cb00:	4621      	mov	r1, r4
    cb02:	4618      	mov	r0, r3
    cb04:	f7f9 eb8a 	blx	621c <Track_parse_box@plt>
    cb08:	9b01      	ldr	r3, [sp, #4]
    cb0a:	4607      	mov	r7, r0
    cb0c:	b970      	cbnz	r0, cb2c <MoovBox_parse_box@@Base+0x100>
    cb0e:	f893 2278 	ldrb.w	r2, [r3, #632]	; 0x278
    cb12:	2a01      	cmp	r2, #1
    cb14:	d00a      	beq.n	cb2c <MoovBox_parse_box@@Base+0x100>
    cb16:	f8d3 2108 	ldr.w	r2, [r3, #264]	; 0x108
    cb1a:	9802      	ldr	r0, [sp, #8]
    cb1c:	9303      	str	r3, [sp, #12]
    cb1e:	9201      	str	r2, [sp, #4]
    cb20:	f7f9 e88e 	blx	5c40 <string_type_to_int32@plt>
    cb24:	9a01      	ldr	r2, [sp, #4]
    cb26:	9b03      	ldr	r3, [sp, #12]
    cb28:	4282      	cmp	r2, r0
    cb2a:	d00f      	beq.n	cb4c <MoovBox_parse_box@@Base+0x120>
    cb2c:	4618      	mov	r0, r3
    cb2e:	f7f9 eb7c 	blx	6228 <TrackBox_release@plt>
    cb32:	2f00      	cmp	r7, #0
    cb34:	d0b1      	beq.n	ca9a <MoovBox_parse_box@@Base+0x6e>
    cb36:	e7d0      	b.n	cada <MoovBox_parse_box@@Base+0xae>
    cb38:	f8d8 0000 	ldr.w	r0, [r8]
    cb3c:	68a3      	ldr	r3, [r4, #8]
    cb3e:	ebcb 0b03 	rsb	fp, fp, r3
    cb42:	ebbb 0000 	subs.w	r0, fp, r0
    cb46:	bf18      	it	ne
    cb48:	2001      	movne	r0, #1
    cb4a:	e7c7      	b.n	cadc <MoovBox_parse_box@@Base+0xb0>
    cb4c:	4619      	mov	r1, r3
    cb4e:	f108 0098 	add.w	r0, r8, #152	; 0x98
    cb52:	f44f 7220 	mov.w	r2, #640	; 0x280
    cb56:	f7f8 ef54 	blx	5a00 <memcpy@plt>
    cb5a:	e79e      	b.n	ca9a <MoovBox_parse_box@@Base+0x6e>
    cb5c:	f7f8 ef56 	blx	5a0c <__stack_chk_fail@plt>
    cb60:	a07c      	add	r0, pc, #496	; (adr r0, cd54 <MovieHeader_parse_box@@Base+0x80>)
    cb62:	0000      	movs	r0, r0
    cb64:	8330      	strh	r0, [r6, #24]
    cb66:	0000      	movs	r0, r0
    cb68:	8322      	strh	r2, [r4, #24]
    cb6a:	0000      	movs	r0, r0
    cb6c:	82ec      	strh	r4, [r5, #22]
	...

0000cb70 <MoovBox_release@@Base>:
    cb70:	3098      	adds	r0, #152	; 0x98
    cb72:	f007 ba6f 	b.w	14054 <__aeabi_llsl@@Base+0x1b8>
    cb76:	bf00      	nop

0000cb78 <write_movie_header_box@@Base>:
    cb78:	b570      	push	{r4, r5, r6, lr}
    cb7a:	4606      	mov	r6, r0
    cb7c:	482b      	ldr	r0, [pc, #172]	; (cc2c <write_movie_header_box@@Base+0xb4>)
    cb7e:	460c      	mov	r4, r1
    cb80:	2500      	movs	r5, #0
    cb82:	4478      	add	r0, pc
    cb84:	f7f9 e85c 	blx	5c40 <string_type_to_int32@plt>
    cb88:	7325      	strb	r5, [r4, #12]
    cb8a:	6125      	str	r5, [r4, #16]
    cb8c:	6060      	str	r0, [r4, #4]
    cb8e:	4628      	mov	r0, r5
    cb90:	f7f9 ea7e 	blx	6090 <time@plt>
    cb94:	f44f 4215 	mov.w	r2, #38144	; 0x9500
    cb98:	f6c3 026e 	movt	r2, #14446	; 0x386e
    cb9c:	4402      	add	r2, r0
    cb9e:	4628      	mov	r0, r5
    cba0:	17d3      	asrs	r3, r2, #31
    cba2:	e9c4 2306 	strd	r2, r3, [r4, #24]
    cba6:	f7f9 ea74 	blx	6090 <time@plt>
    cbaa:	6bb1      	ldr	r1, [r6, #56]	; 0x38
    cbac:	f44f 4215 	mov.w	r2, #38144	; 0x9500
    cbb0:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
    cbb4:	f6c3 026e 	movt	r2, #14446	; 0x386e
    cbb8:	62a3      	str	r3, [r4, #40]	; 0x28
    cbba:	4402      	add	r2, r0
    cbbc:	17d3      	asrs	r3, r2, #31
    cbbe:	e9c4 2308 	strd	r2, r3, [r4, #32]
    cbc2:	f44f 72a0 	mov.w	r2, #320	; 0x140
    cbc6:	2300      	movs	r3, #0
    cbc8:	b109      	cbz	r1, cbce <write_movie_header_box@@Base+0x56>
    cbca:	e9d6 2370 	ldrd	r2, r3, [r6, #448]	; 0x1c0
    cbce:	2500      	movs	r5, #0
    cbd0:	e9c4 230c 	strd	r2, r3, [r4, #48]	; 0x30
    cbd4:	f44f 3680 	mov.w	r6, #65536	; 0x10000
    cbd8:	f44f 7380 	mov.w	r3, #256	; 0x100
    cbdc:	4629      	mov	r1, r5
    cbde:	2224      	movs	r2, #36	; 0x24
    cbe0:	87a3      	strh	r3, [r4, #60]	; 0x3c
    cbe2:	f104 0048 	add.w	r0, r4, #72	; 0x48
    cbe6:	87e5      	strh	r5, [r4, #62]	; 0x3e
    cbe8:	f884 5040 	strb.w	r5, [r4, #64]	; 0x40
    cbec:	f884 5041 	strb.w	r5, [r4, #65]	; 0x41
    cbf0:	f884 5042 	strb.w	r5, [r4, #66]	; 0x42
    cbf4:	f884 5043 	strb.w	r5, [r4, #67]	; 0x43
    cbf8:	f884 5044 	strb.w	r5, [r4, #68]	; 0x44
    cbfc:	f884 5045 	strb.w	r5, [r4, #69]	; 0x45
    cc00:	f884 5046 	strb.w	r5, [r4, #70]	; 0x46
    cc04:	f884 5047 	strb.w	r5, [r4, #71]	; 0x47
    cc08:	63a6      	str	r6, [r4, #56]	; 0x38
    cc0a:	f7f8 ef7e 	blx	5b08 <memset@plt>
    cc0e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    cc12:	64a6      	str	r6, [r4, #72]	; 0x48
    cc14:	4629      	mov	r1, r5
    cc16:	66a3      	str	r3, [r4, #104]	; 0x68
    cc18:	f104 006c 	add.w	r0, r4, #108	; 0x6c
    cc1c:	65a6      	str	r6, [r4, #88]	; 0x58
    cc1e:	2218      	movs	r2, #24
    cc20:	f7f8 ef72 	blx	5b08 <memset@plt>
    cc24:	2302      	movs	r3, #2
    cc26:	f8c4 3084 	str.w	r3, [r4, #132]	; 0x84
    cc2a:	bd70      	pop	{r4, r5, r6, pc}
    cc2c:	8216      	strh	r6, [r2, #16]
	...

0000cc30 <MovieHeader_write_box@@Base>:
    cc30:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    cc32:	4607      	mov	r7, r0
    cc34:	460d      	mov	r5, r1
    cc36:	f7f9 e864 	blx	5d00 <Box_write_header@plt>
    cc3a:	7b39      	ldrb	r1, [r7, #12]
    cc3c:	4628      	mov	r0, r5
    cc3e:	f7f9 e836 	blx	5cac <Bitstream_write_byte@plt>
    cc42:	6939      	ldr	r1, [r7, #16]
    cc44:	4628      	mov	r0, r5
    cc46:	463c      	mov	r4, r7
    cc48:	f7f9 e8a2 	blx	5d90 <Bitstream_write_24bit@plt>
    cc4c:	69b9      	ldr	r1, [r7, #24]
    cc4e:	4628      	mov	r0, r5
    cc50:	f107 0668 	add.w	r6, r7, #104	; 0x68
    cc54:	f7f9 e836 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc58:	6a39      	ldr	r1, [r7, #32]
    cc5a:	4628      	mov	r0, r5
    cc5c:	f7f9 e832 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc60:	6ab9      	ldr	r1, [r7, #40]	; 0x28
    cc62:	4628      	mov	r0, r5
    cc64:	f7f9 e82e 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc68:	6b39      	ldr	r1, [r7, #48]	; 0x30
    cc6a:	4628      	mov	r0, r5
    cc6c:	f7f9 e82a 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc70:	6bb9      	ldr	r1, [r7, #56]	; 0x38
    cc72:	4628      	mov	r0, r5
    cc74:	f7f9 e826 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc78:	f9b7 103c 	ldrsh.w	r1, [r7, #60]	; 0x3c
    cc7c:	4628      	mov	r0, r5
    cc7e:	f7f9 e84c 	blx	5d18 <Bitstream_write_16bit@plt>
    cc82:	8ff9      	ldrh	r1, [r7, #62]	; 0x3e
    cc84:	4628      	mov	r0, r5
    cc86:	f7f9 e848 	blx	5d18 <Bitstream_write_16bit@plt>
    cc8a:	6c39      	ldr	r1, [r7, #64]	; 0x40
    cc8c:	4628      	mov	r0, r5
    cc8e:	f7f9 e81a 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc92:	f854 1f44 	ldr.w	r1, [r4, #68]!
    cc96:	4628      	mov	r0, r5
    cc98:	f7f9 e814 	blx	5cc4 <Bitstream_write_32bit@plt>
    cc9c:	f854 1f04 	ldr.w	r1, [r4, #4]!
    cca0:	4628      	mov	r0, r5
    cca2:	f7f9 e810 	blx	5cc4 <Bitstream_write_32bit@plt>
    cca6:	42b4      	cmp	r4, r6
    cca8:	d1f8      	bne.n	cc9c <MovieHeader_write_box@@Base+0x6c>
    ccaa:	f107 0480 	add.w	r4, r7, #128	; 0x80
    ccae:	f856 1f04 	ldr.w	r1, [r6, #4]!
    ccb2:	4628      	mov	r0, r5
    ccb4:	f7f9 e806 	blx	5cc4 <Bitstream_write_32bit@plt>
    ccb8:	42a6      	cmp	r6, r4
    ccba:	d1f8      	bne.n	ccae <MovieHeader_write_box@@Base+0x7e>
    ccbc:	f8d7 1084 	ldr.w	r1, [r7, #132]	; 0x84
    ccc0:	4628      	mov	r0, r5
    ccc2:	f7f9 e800 	blx	5cc4 <Bitstream_write_32bit@plt>
    ccc6:	4638      	mov	r0, r7
    ccc8:	4629      	mov	r1, r5
    ccca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    ccce:	f007 b949 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    ccd2:	bf00      	nop

0000ccd4 <MovieHeader_parse_box@@Base>:
    ccd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    ccd8:	4607      	mov	r7, r0
    ccda:	460d      	mov	r5, r1
    ccdc:	f7f9 e828 	blx	5d30 <Box_parse_header@plt>
    cce0:	4680      	mov	r8, r0
    cce2:	b120      	cbz	r0, ccee <MovieHeader_parse_box@@Base+0x1a>
    cce4:	f04f 0801 	mov.w	r8, #1
    cce8:	4640      	mov	r0, r8
    ccea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ccee:	4628      	mov	r0, r5
    ccf0:	f107 0668 	add.w	r6, r7, #104	; 0x68
    ccf4:	f7f8 efce 	blx	5c94 <Bitstream_read_byte@plt>
    ccf8:	463c      	mov	r4, r7
    ccfa:	7338      	strb	r0, [r7, #12]
    ccfc:	4628      	mov	r0, r5
    ccfe:	f7f9 e854 	blx	5da8 <Bitstream_read_24bit@plt>
    cd02:	6138      	str	r0, [r7, #16]
    cd04:	4628      	mov	r0, r5
    cd06:	f7f8 ef24 	blx	5b50 <Bitstream_read_32bit@plt>
    cd0a:	f8c7 801c 	str.w	r8, [r7, #28]
    cd0e:	61b8      	str	r0, [r7, #24]
    cd10:	4628      	mov	r0, r5
    cd12:	f7f8 ef1e 	blx	5b50 <Bitstream_read_32bit@plt>
    cd16:	f8c7 8024 	str.w	r8, [r7, #36]	; 0x24
    cd1a:	6238      	str	r0, [r7, #32]
    cd1c:	4628      	mov	r0, r5
    cd1e:	f7f8 ef18 	blx	5b50 <Bitstream_read_32bit@plt>
    cd22:	62b8      	str	r0, [r7, #40]	; 0x28
    cd24:	4628      	mov	r0, r5
    cd26:	f7f8 ef14 	blx	5b50 <Bitstream_read_32bit@plt>
    cd2a:	f8c7 8034 	str.w	r8, [r7, #52]	; 0x34
    cd2e:	6338      	str	r0, [r7, #48]	; 0x30
    cd30:	4628      	mov	r0, r5
    cd32:	f7f8 ef0e 	blx	5b50 <Bitstream_read_32bit@plt>
    cd36:	63b8      	str	r0, [r7, #56]	; 0x38
    cd38:	4628      	mov	r0, r5
    cd3a:	f7f9 e800 	blx	5d3c <Bitstream_read_16bit@plt>
    cd3e:	87b8      	strh	r0, [r7, #60]	; 0x3c
    cd40:	4628      	mov	r0, r5
    cd42:	f7f8 effc 	blx	5d3c <Bitstream_read_16bit@plt>
    cd46:	87f8      	strh	r0, [r7, #62]	; 0x3e
    cd48:	4628      	mov	r0, r5
    cd4a:	f7f8 ef02 	blx	5b50 <Bitstream_read_32bit@plt>
    cd4e:	6438      	str	r0, [r7, #64]	; 0x40
    cd50:	4628      	mov	r0, r5
    cd52:	f7f8 eefe 	blx	5b50 <Bitstream_read_32bit@plt>
    cd56:	f844 0f44 	str.w	r0, [r4, #68]!
    cd5a:	4628      	mov	r0, r5
    cd5c:	f7f8 eef8 	blx	5b50 <Bitstream_read_32bit@plt>
    cd60:	f844 0f04 	str.w	r0, [r4, #4]!
    cd64:	42b4      	cmp	r4, r6
    cd66:	d1f8      	bne.n	cd5a <MovieHeader_parse_box@@Base+0x86>
    cd68:	f107 0480 	add.w	r4, r7, #128	; 0x80
    cd6c:	4628      	mov	r0, r5
    cd6e:	f7f8 eef0 	blx	5b50 <Bitstream_read_32bit@plt>
    cd72:	f846 0f04 	str.w	r0, [r6, #4]!
    cd76:	42a6      	cmp	r6, r4
    cd78:	d1f8      	bne.n	cd6c <MovieHeader_parse_box@@Base+0x98>
    cd7a:	4628      	mov	r0, r5
    cd7c:	f7f8 eee8 	blx	5b50 <Bitstream_read_32bit@plt>
    cd80:	f8c7 0084 	str.w	r0, [r7, #132]	; 0x84
    cd84:	4640      	mov	r0, r8
    cd86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    cd8a:	bf00      	nop

0000cd8c <PrimaryItemBox_init@@Base>:
    cd8c:	f247 426d 	movw	r2, #29805	; 0x746d
    cd90:	2300      	movs	r3, #0
    cd92:	f2c7 0269 	movt	r2, #28777	; 0x7069
    cd96:	7303      	strb	r3, [r0, #12]
    cd98:	6042      	str	r2, [r0, #4]
    cd9a:	6103      	str	r3, [r0, #16]
    cd9c:	6143      	str	r3, [r0, #20]
    cd9e:	4770      	bx	lr

0000cda0 <PrimaryItemBox_write_box@@Base>:
    cda0:	b538      	push	{r3, r4, r5, lr}
    cda2:	4604      	mov	r4, r0
    cda4:	460d      	mov	r5, r1
    cda6:	f7f8 ef52 	blx	5c4c <FullBox_write_header@plt>
    cdaa:	7b23      	ldrb	r3, [r4, #12]
    cdac:	4628      	mov	r0, r5
    cdae:	6961      	ldr	r1, [r4, #20]
    cdb0:	b13b      	cbz	r3, cdc2 <PrimaryItemBox_write_box@@Base+0x22>
    cdb2:	f7f8 ef88 	blx	5cc4 <Bitstream_write_32bit@plt>
    cdb6:	4620      	mov	r0, r4
    cdb8:	4629      	mov	r1, r5
    cdba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    cdbe:	f007 b899 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    cdc2:	f7f8 efaa 	blx	5d18 <Bitstream_write_16bit@plt>
    cdc6:	4620      	mov	r0, r4
    cdc8:	4629      	mov	r1, r5
    cdca:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    cdce:	f007 b891 	b.w	13ef4 <__aeabi_llsl@@Base+0x58>
    cdd2:	bf00      	nop

0000cdd4 <PrimaryItemBox_parse_box@@Base>:
    cdd4:	b570      	push	{r4, r5, r6, lr}
    cdd6:	460c      	mov	r4, r1
    cdd8:	4605      	mov	r5, r0
    cdda:	688e      	ldr	r6, [r1, #8]
    cddc:	f7f8 ef4e 	blx	5c7c <FullBox_parse_header@plt>
    cde0:	b988      	cbnz	r0, ce06 <PrimaryItemBox_parse_box@@Base+0x32>
    cde2:	6863      	ldr	r3, [r4, #4]
    cde4:	682a      	ldr	r2, [r5, #0]
    cde6:	1b9b      	subs	r3, r3, r6
    cde8:	4293      	cmp	r3, r2
    cdea:	d30c      	bcc.n	ce06 <PrimaryItemBox_parse_box@@Base+0x32>
    cdec:	7b2b      	ldrb	r3, [r5, #12]
    cdee:	4620      	mov	r0, r4
    cdf0:	b15b      	cbz	r3, ce0a <PrimaryItemBox_parse_box@@Base+0x36>
    cdf2:	f7f8 eeae 	blx	5b50 <Bitstream_read_32bit@plt>
    cdf6:	6168      	str	r0, [r5, #20]
    cdf8:	68a3      	ldr	r3, [r4, #8]
    cdfa:	6828      	ldr	r0, [r5, #0]
    cdfc:	1b9b      	subs	r3, r3, r6
    cdfe:	1a18      	subs	r0, r3, r0
    ce00:	bf18      	it	ne
    ce02:	2001      	movne	r0, #1
    ce04:	bd70      	pop	{r4, r5, r6, pc}
    ce06:	2001      	movs	r0, #1
    ce08:	bd70      	pop	{r4, r5, r6, pc}
    ce0a:	f7f8 ef98 	blx	5d3c <Bitstream_read_16bit@plt>
    ce0e:	6168      	str	r0, [r5, #20]
    ce10:	e7f2      	b.n	cdf8 <PrimaryItemBox_parse_box@@Base+0x24>
    ce12:	bf00      	nop

0000ce14 <PrimaryItemBox_release@@Base>:
    ce14:	4770      	bx	lr
    ce16:	bf00      	nop

0000ce18 <write_sample_description_box@@Base>:
    ce18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    ce1a:	4607      	mov	r7, r0
    ce1c:	480e      	ldr	r0, [pc, #56]	; (ce58 <write_sample_description_box@@Base+0x40>)
    ce1e:	460e      	mov	r6, r1
    ce20:	4478      	add	r0, pc
    ce22:	f7f8 ef0e 	blx	5c40 <string_type_to_int32@plt>
    ce26:	2300      	movs	r3, #0
    ce28:	2201      	movs	r2, #1
    ce2a:	7333      	strb	r3, [r6, #12]
    ce2c:	6172      	str	r2, [r6, #20]
    ce2e:	461c      	mov	r4, r3
    ce30:	6133      	str	r3, [r6, #16]
    ce32:	461d      	mov	r5, r3
    ce34:	6070      	str	r0, [r6, #4]
    ce36:	20a8      	movs	r0, #168	; 0xa8
    ce38:	f7f8 ee06 	blx	5a48 <malloc@plt>
    ce3c:	4601      	mov	r1, r0
    ce3e:	61b0      	str	r0, [r6, #24]
    ce40:	e000      	b.n	ce44 <write_sample_description_box@@Base+0x2c>
    ce42:	69b1      	ldr	r1, [r6, #24]
    ce44:	4421      	add	r1, r4
    ce46:	4638      	mov	r0, r7
    ce48:	f7f9 e9f4 	blx	6234 <write_sample_entry_box@plt>
    ce4c:	6973      	ldr	r3, [r6, #20]
    ce4e:	3501      	adds	r5, #1
    ce50:	34a8      	adds	r4, #168	; 0xa8
    ce52:	429d      	cmp	r5, r3
    ce54:	d3f5      	bcc.n	ce42 <write_sample_description_box@@Base+0x2a>
    ce56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    ce58:	7f88      	ldrb	r0, [r1, #30]
	...

0000ce5c <write_sample_time_box@@Base>:
    ce5c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ce60:	4682      	mov	sl, r0
    ce62:	483e      	ldr	r0, [pc, #248]	; (cf5c <write_sample_time_box@@Base+0x100>)
    ce64:	b083      	sub	sp, #12
    ce66:	4688      	mov	r8, r1
    ce68:	2700      	movs	r7, #0
    ce6a:	4478      	add	r0, pc
    ce6c:	f04f 0901 	mov.w	r9, #1
    ce70:	f7f8 eee6 	blx	5c40 <string_type_to_int32@plt>
    ce74:	f888 700c 	strb.w	r7, [r8, #12]
    ce78:	f8da 6034 	ldr.w	r6, [sl, #52]	; 0x34
    ce7c:	2104      	movs	r1, #4
    ce7e:	f8c8 7010 	str.w	r7, [r8, #16]
    ce82:	f8c8 9014 	str.w	r9, [r8, #20]
    ce86:	f8c8 0004 	str.w	r0, [r8, #4]
    ce8a:	4630      	mov	r0, r6
    ce8c:	f7f8 ef92 	blx	5db4 <calloc@plt>
    ce90:	2104      	movs	r1, #4
    ce92:	f8c8 0018 	str.w	r0, [r8, #24]
    ce96:	4604      	mov	r4, r0
    ce98:	4630      	mov	r0, r6
    ce9a:	f7f8 ef8c 	blx	5db4 <calloc@plt>
    ce9e:	f8da 31cc 	ldr.w	r3, [sl, #460]	; 0x1cc
    cea2:	9300      	str	r3, [sp, #0]
    cea4:	4605      	mov	r5, r0
    cea6:	f8c8 001c 	str.w	r0, [r8, #28]
    ceaa:	2b00      	cmp	r3, #0
    ceac:	d043      	beq.n	cf36 <write_sample_time_box@@Base+0xda>
    ceae:	454e      	cmp	r6, r9
    ceb0:	d04b      	beq.n	cf4a <write_sample_time_box@@Base+0xee>
    ceb2:	f106 5300 	add.w	r3, r6, #536870912	; 0x20000000
    ceb6:	f8d4 e000 	ldr.w	lr, [r4]
    ceba:	3b01      	subs	r3, #1
    cebc:	9a00      	ldr	r2, [sp, #0]
    cebe:	4620      	mov	r0, r4
    cec0:	9301      	str	r3, [sp, #4]
    cec2:	eb02 0ac3 	add.w	sl, r2, r3, lsl #3
    cec6:	4671      	mov	r1, lr
    cec8:	4694      	mov	ip, r2
    ceca:	46ae      	mov	lr, r5
    cecc:	f8d8 3014 	ldr.w	r3, [r8, #20]
    ced0:	f109 4280 	add.w	r2, r9, #1073741824	; 0x40000000
    ced4:	e9dc 6700 	ldrd	r6, r7, [ip]
    ced8:	3a01      	subs	r2, #1
    ceda:	e9fc 4502 	ldrd	r4, r5, [ip, #8]!
    cede:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
    cee2:	3b01      	subs	r3, #1
    cee4:	ea4f 0b82 	mov.w	fp, r2, lsl #2
    cee8:	42af      	cmp	r7, r5
    ceea:	f101 0101 	add.w	r1, r1, #1
    ceee:	bf08      	it	eq
    cef0:	42a6      	cmpeq	r6, r4
    cef2:	f84e 6023 	str.w	r6, [lr, r3, lsl #2]
    cef6:	eb00 030b 	add.w	r3, r0, fp
    cefa:	bf1c      	itt	ne
    cefc:	f10b 0b04 	addne.w	fp, fp, #4
    cf00:	f109 0901 	addne.w	r9, r9, #1
    cf04:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
    cf08:	bf1e      	ittt	ne
    cf0a:	f8c8 9014 	strne.w	r9, [r8, #20]
    cf0e:	eb00 030b 	addne.w	r3, r0, fp
    cf12:	f850 100b 	ldrne.w	r1, [r0, fp]
    cf16:	45d4      	cmp	ip, sl
    cf18:	d1d8      	bne.n	cecc <write_sample_time_box@@Base+0x70>
    cf1a:	4675      	mov	r5, lr
    cf1c:	468e      	mov	lr, r1
    cf1e:	9901      	ldr	r1, [sp, #4]
    cf20:	9a00      	ldr	r2, [sp, #0]
    cf22:	f10e 0001 	add.w	r0, lr, #1
    cf26:	f852 2031 	ldr.w	r2, [r2, r1, lsl #3]
    cf2a:	6018      	str	r0, [r3, #0]
    cf2c:	f845 200b 	str.w	r2, [r5, fp]
    cf30:	b003      	add	sp, #12
    cf32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    cf36:	4632      	mov	r2, r6
    cf38:	e9da 0170 	ldrd	r0, r1, [sl, #448]	; 0x1c0
    cf3c:	6026      	str	r6, [r4, #0]
    cf3e:	f7f8 ee62 	blx	5c04 <__aeabi_uldivmod@plt>
    cf42:	6028      	str	r0, [r5, #0]
    cf44:	b003      	add	sp, #12
    cf46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    cf4a:	f04f 5200 	mov.w	r2, #536870912	; 0x20000000
    cf4e:	46bb      	mov	fp, r7
    cf50:	f8d4 e000 	ldr.w	lr, [r4]
    cf54:	4623      	mov	r3, r4
    cf56:	9201      	str	r2, [sp, #4]
    cf58:	4611      	mov	r1, r2
    cf5a:	e7e1      	b.n	cf20 <write_sample_time_box@@Base+0xc4>
    cf5c:	7f46      	ldrb	r6, [r0, #29]
	...

0000cf60 <write_sample_chunk_box@@Base>:
    cf60:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    cf64:	4680      	mov	r8, r0
    cf66:	4810      	ldr	r0, [pc, #64]	; (cfa8 <write_sample_chunk_box@@Base+0x48>)
    cf68:	460c      	mov	r4, r1
    cf6a:	2501      	movs	r5, #1
    cf6c:	4478      	add	r0, pc
    cf6e:	f7f8 ee68 	blx	5c40 <string_type_to_int32@plt>
    cf72:	2300      	movs	r3, #0
    cf74:	6165      	str	r5, [r4, #20]
    cf76:	7323      	strb	r3, [r4, #12]
    cf78:	6123      	str	r3, [r4, #16]
    cf7a:	6060      	str	r0, [r4, #4]
    cf7c:	2004      	movs	r0, #4
    cf7e:	f7f8 ed64 	blx	5a48 <malloc@plt>
    cf82:	4607      	mov	r7, r0
    cf84:	2004      	movs	r0, #4
    cf86:	61a7      	str	r7, [r4, #24]
    cf88:	f7f8 ed5e 	blx	5a48 <malloc@plt>
    cf8c:	4606      	mov	r6, r0
    cf8e:	2004      	movs	r0, #4
    cf90:	61e6      	str	r6, [r4, #28]
    cf92:	f7f8 ed5a 	blx	5a48 <malloc@plt>
    cf96:	f8d8 3034 	ldr.w	r3, [r8, #52]	; 0x34
    cf9a:	603d      	str	r5, [r7, #0]
    cf9c:	6033      	str	r3, [r6, #0]
    cf9e:	6220      	str	r0, [r4, #32]
    cfa0:	6005      	str	r5, [r0, #0]
    cfa2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    cfa6:	bf00      	nop
    cfa8:	7e4c      	ldrb	r4, [r1, #25]
	...

0000cfac <write_sample_offset_box@@Base>:
    cfac:	b538      	push	{r3, r4, r5, lr}
    cfae:	4605      	mov	r5, r0
    cfb0:	4809      	ldr	r0, [pc, #36]	; (cfd8 <write_sample_offset_box@@Base+0x2c>)
    cfb2:	460c      	mov	r4, r1
    cfb4:	4478      	add	r0, pc
    cfb6:	f7f8 ee44 	blx	5c40 <string_type_to_int32@plt>
    cfba:	2300      	movs	r3, #0
    cfbc:	2201      	movs	r2, #1
    cfbe:	7323      	strb	r3, [r4, #12]
    cfc0:	6123      	str	r3, [r4, #16]
    cfc2:	6162      	str	r2, [r4, #20]
    cfc4:	6060      	str	r0, [r4, #4]
    cfc6:	2004      	movs	r0, #4
    cfc8:	f7f8 ed3e 	blx	5a48 <malloc@plt>
    cfcc:	6d2b      	ldr	r3, [r5, #80]	; 0x50
    cfce:	681b      	ldr	r3, [r3, #0]
    cfd0:	61a0      	str	r0, [r4, #24]
    cfd2:	6003      	str	r3, [r0, #0]
    cfd4:	bd38      	pop	{r3, r4, r5, pc}
    cfd6:	bf00      	nop
    cfd8:	7e0c      	ldrb	r4, [r1, #24]
	...

0000cfdc <write_sample_size_box@@Base>:
    cfdc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    cfe0:	4680      	mov	r8, r0
    cfe2:	482c      	ldr	r0, [pc, #176]	; (d094 <write_sample_size_box@@Base+0xb8>)
    cfe4:	460e      	mov	r6, r1
    cfe6:	2400      	movs	r4, #0
    cfe8:	4478      	add	r0, pc
    cfea:	f7f8 ee2a 	blx	5c40 <string_type_to_int32@plt>
    cfee:	7334      	strb	r4, [r6, #12]
    cff0:	f8d8 5034 	ldr.w	r5, [r8, #52]	; 0x34
    cff4:	6134      	str	r4, [r6, #16]
    cff6:	6174      	str	r4, [r6, #20]
    cff8:	00af      	lsls	r7, r5, #2
    cffa:	61b5      	str	r5, [r6, #24]
    cffc:	6070      	str	r0, [r6, #4]
    cffe:	4638      	mov	r0, r7
    d000:	f7f8 ed22 	blx	5a48 <malloc@plt>
    d004:	61f0      	str	r0, [r6, #28]
    d006:	2d00      	cmp	r5, #0
    d008:	d040      	beq.n	d08c <write_sample_size_box@@Base+0xb0>
    d00a:	f8d8 304c 	ldr.w	r3, [r8, #76]	; 0x4c
    d00e:	f100 0210 	add.w	r2, r0, #16
    d012:	f103 0110 	add.w	r1, r3, #16
    d016:	4288      	cmp	r0, r1
    d018:	bf38      	it	cc
    d01a:	4293      	cmpcc	r3, r2
    d01c:	bf2c      	ite	cs
    d01e:	2201      	movcs	r2, #1
    d020:	2200      	movcc	r2, #0
    d022:	2d08      	cmp	r5, #8
    d024:	bf94      	ite	ls
    d026:	2200      	movls	r2, #0
    d028:	f002 0201 	andhi.w	r2, r2, #1
    d02c:	b332      	cbz	r2, d07c <write_sample_size_box@@Base+0xa0>
    d02e:	1f2a      	subs	r2, r5, #4
    d030:	461f      	mov	r7, r3
    d032:	4606      	mov	r6, r0
    d034:	0892      	lsrs	r2, r2, #2
    d036:	3201      	adds	r2, #1
    d038:	0091      	lsls	r1, r2, #2
    d03a:	3401      	adds	r4, #1
    d03c:	f967 0a8f 	vld1.32	{d16-d17}, [r7]
    d040:	4294      	cmp	r4, r2
    d042:	f107 0710 	add.w	r7, r7, #16
    d046:	f946 0adf 	vst1.64	{d16-d17}, [r6 :64]
    d04a:	f106 0610 	add.w	r6, r6, #16
    d04e:	d3f4      	bcc.n	d03a <write_sample_size_box@@Base+0x5e>
    d050:	428d      	cmp	r5, r1
    d052:	d01b      	beq.n	d08c <write_sample_size_box@@Base+0xb0>
    d054:	f853 4021 	ldr.w	r4, [r3, r1, lsl #2]
    d058:	1c4a      	adds	r2, r1, #1
    d05a:	4295      	cmp	r5, r2
    d05c:	f840 4021 	str.w	r4, [r0, r1, lsl #2]
    d060:	d914      	bls.n	d08c <write_sample_size_box@@Base+0xb0>
    d062:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
    d066:	3102      	adds	r1, #2
    d068:	428d      	cmp	r5, r1
    d06a:	f840 4022 	str.w	r4, [r0, r2, lsl #2]
    d06e:	d90f      	bls.n	d090 <write_sample_size_box@@Base+0xb4>
    d070:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    d074:	f840 3021 	str.w	r3, [r0, r1, lsl #2]
    d078:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d07c:	3804      	subs	r0, #4
    d07e:	19d9      	adds	r1, r3, r7
    d080:	f853 2b04 	ldr.w	r2, [r3], #4
    d084:	428b      	cmp	r3, r1
    d086:	f840 2f04 	str.w	r2, [r0, #4]!
    d08a:	d1f9      	bne.n	d080 <write_sample_size_box@@Base+0xa4>
    d08c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d090:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d094:	7de0      	ldrb	r0, [r4, #23]
	...

0000d098 <write_sample_table_box@@Base>:
    d098:	b538      	push	{r3, r4, r5, lr}
    d09a:	4605      	mov	r5, r0
    d09c:	4810      	ldr	r0, [pc, #64]	; (d0e0 <write_sample_table_box@@Base+0x48>)
    d09e:	460c      	mov	r4, r1
    d0a0:	4478      	add	r0, pc
    d0a2:	f7f8 edce 	blx	5c40 <string_type_to_int32@plt>
    d0a6:	f104 010c 	add.w	r1, r4, #12
    d0aa:	6060      	str	r0, [r4, #4]
    d0ac:	4628      	mov	r0, r5
    d0ae:	f7f9 e8c8 	blx	6240 <write_sample_description_box@plt>
    d0b2:	4628      	mov	r0, r5
    d0b4:	f104 0128 	add.w	r1, r4, #40	; 0x28
    d0b8:	f7f9 e8c8 	blx	624c <write_sample_time_box@plt>
    d0bc:	4628      	mov	r0, r5
    d0be:	f104 0148 	add.w	r1, r4, #72	; 0x48
    d0c2:	f7f9 e8ca 	blx	6258 <write_sample_chunk_box@plt>
    d0c6:	4628      	mov	r0, r5
    d0c8:	f104 016c 	add.w	r1, r4, #108	; 0x6c
    d0cc:	f7f9 e8ca 	blx	6264 <write_sample_offset_box@plt>
    d0d0:	4628      	mov	r0, r5
    d0d2:	f104 0188 	add.w	r1, r4, #136	; 0x88
    d0d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    d0da:	f006 bfc3 	b.w	14064 <__aeabi_llsl@@Base+0x1c8>
    d0de:	bf00      	nop
    d0e0:	7cbc      	ldrb	r4, [r7, #18]
	...

0000d0e4 <SampleDescription_write_box@@Base>:
    d0e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    d0e6:	4606      	mov	r6, r0
    d0e8:	460f      	mov	r7, r1
    d0ea:	f7f8 ee0a 	blx	5d00 <Box_write_header@plt>
    d0ee:	7b31      	ldrb	r1, [r6, #12]
    d0f0:	4638      	mov	r0, r7
    d0f2:	f7f8 eddc 	blx	5cac <Bitstream_write_byte@plt>
    d0f6:	6931      	ldr	r1, [r6, #16]
    d0f8:	4638      	mov	r0, r7
    d0fa:	2400      	movs	r4, #0
    d0fc:	f7f8 ee48 	blx	5d90 <Bitstream_write_24bit@plt>
    d100:	4638      	mov	r0, r7
    d102:	6971      	ldr	r1, [r6, #20]
    d104:	4625      	mov	r5, r4
    d106:	f7f8 edde 	blx	5cc4 <Bitstream_write_32bit@plt>
    d10a:	6973      	ldr	r3, [r6, #20]
    d10c:	b14b      	cbz	r3, d122 <SampleDescription_write_box@@Base+0x3e>
    d10e:	69b0      	ldr	r0, [r6, #24]
    d110:	4639      	mov	r1, r7
    d112:	3501      	adds	r5, #1
    d114:	4420      	add	r0, r4
    d116:	34a8      	adds	r4, #168	; 0xa8
    d118:	f7f9 e8b0 	blx	627c <SampleEntry_write_box@plt>
    d11c:	6973      	ldr	r3, [r6, #20]
    d11e:	429d      	cmp	r5, r3
    d120:	d3f5      	bcc.n	d10e <SampleDescription_write_box@@Base+0x2a>
    d122:	4630      	mov	r0, r6
    d124:	4639      	mov	r1, r7
    d126:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    d12a:	f006 bf1b 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    d12e:	bf00      	nop

0000d130 <SampleTime_write_box@@Base>:
    d130:	b570      	push	{r4, r5, r6, lr}
    d132:	4605      	mov	r5, r0
    d134:	460e      	mov	r6, r1
    d136:	f7f8 ede4 	blx	5d00 <Box_write_header@plt>
    d13a:	7b29      	ldrb	r1, [r5, #12]
    d13c:	4630      	mov	r0, r6
    d13e:	f7f8 edb6 	blx	5cac <Bitstream_write_byte@plt>
    d142:	6929      	ldr	r1, [r5, #16]
    d144:	4630      	mov	r0, r6
    d146:	2400      	movs	r4, #0
    d148:	f7f8 ee22 	blx	5d90 <Bitstream_write_24bit@plt>
    d14c:	4630      	mov	r0, r6
    d14e:	6969      	ldr	r1, [r5, #20]
    d150:	f7f8 edb8 	blx	5cc4 <Bitstream_write_32bit@plt>
    d154:	696b      	ldr	r3, [r5, #20]
    d156:	b17b      	cbz	r3, d178 <SampleTime_write_box@@Base+0x48>
    d158:	69ab      	ldr	r3, [r5, #24]
    d15a:	4630      	mov	r0, r6
    d15c:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d160:	f7f8 edb0 	blx	5cc4 <Bitstream_write_32bit@plt>
    d164:	69eb      	ldr	r3, [r5, #28]
    d166:	4630      	mov	r0, r6
    d168:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d16c:	3401      	adds	r4, #1
    d16e:	f7f8 edaa 	blx	5cc4 <Bitstream_write_32bit@plt>
    d172:	696b      	ldr	r3, [r5, #20]
    d174:	429c      	cmp	r4, r3
    d176:	d3ef      	bcc.n	d158 <SampleTime_write_box@@Base+0x28>
    d178:	4628      	mov	r0, r5
    d17a:	4631      	mov	r1, r6
    d17c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    d180:	f006 bef0 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000d184 <SampleChunk_write_box@@Base>:
    d184:	b570      	push	{r4, r5, r6, lr}
    d186:	4605      	mov	r5, r0
    d188:	460e      	mov	r6, r1
    d18a:	f7f8 edba 	blx	5d00 <Box_write_header@plt>
    d18e:	7b29      	ldrb	r1, [r5, #12]
    d190:	4630      	mov	r0, r6
    d192:	f7f8 ed8c 	blx	5cac <Bitstream_write_byte@plt>
    d196:	6929      	ldr	r1, [r5, #16]
    d198:	4630      	mov	r0, r6
    d19a:	2400      	movs	r4, #0
    d19c:	f7f8 edf8 	blx	5d90 <Bitstream_write_24bit@plt>
    d1a0:	4630      	mov	r0, r6
    d1a2:	6969      	ldr	r1, [r5, #20]
    d1a4:	f7f8 ed8e 	blx	5cc4 <Bitstream_write_32bit@plt>
    d1a8:	696b      	ldr	r3, [r5, #20]
    d1aa:	b1ab      	cbz	r3, d1d8 <SampleChunk_write_box@@Base+0x54>
    d1ac:	69ab      	ldr	r3, [r5, #24]
    d1ae:	4630      	mov	r0, r6
    d1b0:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d1b4:	f7f8 ed86 	blx	5cc4 <Bitstream_write_32bit@plt>
    d1b8:	69eb      	ldr	r3, [r5, #28]
    d1ba:	4630      	mov	r0, r6
    d1bc:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d1c0:	f7f8 ed80 	blx	5cc4 <Bitstream_write_32bit@plt>
    d1c4:	6a2b      	ldr	r3, [r5, #32]
    d1c6:	4630      	mov	r0, r6
    d1c8:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d1cc:	3401      	adds	r4, #1
    d1ce:	f7f8 ed7a 	blx	5cc4 <Bitstream_write_32bit@plt>
    d1d2:	696b      	ldr	r3, [r5, #20]
    d1d4:	429c      	cmp	r4, r3
    d1d6:	d3e9      	bcc.n	d1ac <SampleChunk_write_box@@Base+0x28>
    d1d8:	4628      	mov	r0, r5
    d1da:	4631      	mov	r1, r6
    d1dc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    d1e0:	f006 bec0 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000d1e4 <SampleOffset_write_box@@Base>:
    d1e4:	b570      	push	{r4, r5, r6, lr}
    d1e6:	4605      	mov	r5, r0
    d1e8:	460e      	mov	r6, r1
    d1ea:	f7f8 ed8a 	blx	5d00 <Box_write_header@plt>
    d1ee:	7b29      	ldrb	r1, [r5, #12]
    d1f0:	4630      	mov	r0, r6
    d1f2:	f7f8 ed5c 	blx	5cac <Bitstream_write_byte@plt>
    d1f6:	6929      	ldr	r1, [r5, #16]
    d1f8:	4630      	mov	r0, r6
    d1fa:	2400      	movs	r4, #0
    d1fc:	f7f8 edc8 	blx	5d90 <Bitstream_write_24bit@plt>
    d200:	4630      	mov	r0, r6
    d202:	6969      	ldr	r1, [r5, #20]
    d204:	f7f8 ed5e 	blx	5cc4 <Bitstream_write_32bit@plt>
    d208:	696b      	ldr	r3, [r5, #20]
    d20a:	b15b      	cbz	r3, d224 <SampleOffset_write_box@@Base+0x40>
    d20c:	68b3      	ldr	r3, [r6, #8]
    d20e:	4630      	mov	r0, r6
    d210:	69aa      	ldr	r2, [r5, #24]
    d212:	4619      	mov	r1, r3
    d214:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
    d218:	3401      	adds	r4, #1
    d21a:	f7f8 ed54 	blx	5cc4 <Bitstream_write_32bit@plt>
    d21e:	696b      	ldr	r3, [r5, #20]
    d220:	429c      	cmp	r4, r3
    d222:	d3f3      	bcc.n	d20c <SampleOffset_write_box@@Base+0x28>
    d224:	4628      	mov	r0, r5
    d226:	4631      	mov	r1, r6
    d228:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    d22c:	f006 be9a 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000d230 <SampleSize_write_box@@Base>:
    d230:	b570      	push	{r4, r5, r6, lr}
    d232:	4605      	mov	r5, r0
    d234:	460e      	mov	r6, r1
    d236:	f7f8 ed64 	blx	5d00 <Box_write_header@plt>
    d23a:	7b29      	ldrb	r1, [r5, #12]
    d23c:	4630      	mov	r0, r6
    d23e:	f7f8 ed36 	blx	5cac <Bitstream_write_byte@plt>
    d242:	6929      	ldr	r1, [r5, #16]
    d244:	4630      	mov	r0, r6
    d246:	2400      	movs	r4, #0
    d248:	f7f8 eda2 	blx	5d90 <Bitstream_write_24bit@plt>
    d24c:	6969      	ldr	r1, [r5, #20]
    d24e:	4630      	mov	r0, r6
    d250:	f7f8 ed38 	blx	5cc4 <Bitstream_write_32bit@plt>
    d254:	4630      	mov	r0, r6
    d256:	69a9      	ldr	r1, [r5, #24]
    d258:	f7f8 ed34 	blx	5cc4 <Bitstream_write_32bit@plt>
    d25c:	69ab      	ldr	r3, [r5, #24]
    d25e:	b14b      	cbz	r3, d274 <SampleSize_write_box@@Base+0x44>
    d260:	69eb      	ldr	r3, [r5, #28]
    d262:	4630      	mov	r0, r6
    d264:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
    d268:	3401      	adds	r4, #1
    d26a:	f7f8 ed2c 	blx	5cc4 <Bitstream_write_32bit@plt>
    d26e:	69ab      	ldr	r3, [r5, #24]
    d270:	429c      	cmp	r4, r3
    d272:	d3f5      	bcc.n	d260 <SampleSize_write_box@@Base+0x30>
    d274:	4628      	mov	r0, r5
    d276:	4631      	mov	r1, r6
    d278:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    d27c:	f006 be72 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000d280 <SampleTable_write_box@@Base>:
    d280:	b538      	push	{r3, r4, r5, lr}
    d282:	460c      	mov	r4, r1
    d284:	4605      	mov	r5, r0
    d286:	f7f8 ed3c 	blx	5d00 <Box_write_header@plt>
    d28a:	f105 000c 	add.w	r0, r5, #12
    d28e:	4621      	mov	r1, r4
    d290:	f7f8 effa 	blx	6288 <SampleDescription_write_box@plt>
    d294:	f105 0028 	add.w	r0, r5, #40	; 0x28
    d298:	4621      	mov	r1, r4
    d29a:	f7f8 effc 	blx	6294 <SampleTime_write_box@plt>
    d29e:	f105 0048 	add.w	r0, r5, #72	; 0x48
    d2a2:	4621      	mov	r1, r4
    d2a4:	f7f8 effc 	blx	62a0 <SampleChunk_write_box@plt>
    d2a8:	f105 006c 	add.w	r0, r5, #108	; 0x6c
    d2ac:	4621      	mov	r1, r4
    d2ae:	f7f8 effe 	blx	62ac <SampleOffset_write_box@plt>
    d2b2:	f105 0088 	add.w	r0, r5, #136	; 0x88
    d2b6:	4621      	mov	r1, r4
    d2b8:	f7f8 effe 	blx	62b8 <SampleSize_write_box@plt>
    d2bc:	4628      	mov	r0, r5
    d2be:	4621      	mov	r1, r4
    d2c0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    d2c4:	f006 be4e 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000d2c8 <SampleDescription_parse_box@@Base>:
    d2c8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d2cc:	460c      	mov	r4, r1
    d2ce:	4682      	mov	sl, r0
    d2d0:	688e      	ldr	r6, [r1, #8]
    d2d2:	f7f8 ed2e 	blx	5d30 <Box_parse_header@plt>
    d2d6:	4605      	mov	r5, r0
    d2d8:	b110      	cbz	r0, d2e0 <SampleDescription_parse_box@@Base+0x18>
    d2da:	2001      	movs	r0, #1
    d2dc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d2e0:	4620      	mov	r0, r4
    d2e2:	f7f8 ecd8 	blx	5c94 <Bitstream_read_byte@plt>
    d2e6:	f88a 000c 	strb.w	r0, [sl, #12]
    d2ea:	4620      	mov	r0, r4
    d2ec:	f7f8 ed5c 	blx	5da8 <Bitstream_read_24bit@plt>
    d2f0:	f8ca 0010 	str.w	r0, [sl, #16]
    d2f4:	4620      	mov	r0, r4
    d2f6:	f7f8 ec2c 	blx	5b50 <Bitstream_read_32bit@plt>
    d2fa:	2800      	cmp	r0, #0
    d2fc:	4607      	mov	r7, r0
    d2fe:	f8ca 0014 	str.w	r0, [sl, #20]
    d302:	dbea      	blt.n	d2da <SampleDescription_parse_box@@Base+0x12>
    d304:	21a8      	movs	r1, #168	; 0xa8
    d306:	f7f8 ed56 	blx	5db4 <calloc@plt>
    d30a:	f8ca 0018 	str.w	r0, [sl, #24]
    d30e:	2800      	cmp	r0, #0
    d310:	d0e3      	beq.n	d2da <SampleDescription_parse_box@@Base+0x12>
    d312:	b37f      	cbz	r7, d374 <SampleDescription_parse_box@@Base+0xac>
    d314:	4f1c      	ldr	r7, [pc, #112]	; (d388 <SampleDescription_parse_box@@Base+0xc0>)
    d316:	46a8      	mov	r8, r5
    d318:	447f      	add	r7, pc
    d31a:	e00c      	b.n	d336 <SampleDescription_parse_box@@Base+0x6e>
    d31c:	68a3      	ldr	r3, [r4, #8]
    d31e:	f8da 2000 	ldr.w	r2, [sl]
    d322:	444b      	add	r3, r9
    d324:	60a3      	str	r3, [r4, #8]
    d326:	1b9b      	subs	r3, r3, r6
    d328:	4293      	cmp	r3, r2
    d32a:	d8d6      	bhi.n	d2da <SampleDescription_parse_box@@Base+0x12>
    d32c:	f8da 3014 	ldr.w	r3, [sl, #20]
    d330:	35a8      	adds	r5, #168	; 0xa8
    d332:	4598      	cmp	r8, r3
    d334:	d21e      	bcs.n	d374 <SampleDescription_parse_box@@Base+0xac>
    d336:	4620      	mov	r0, r4
    d338:	f108 0801 	add.w	r8, r8, #1
    d33c:	f7f8 ec08 	blx	5b50 <Bitstream_read_32bit@plt>
    d340:	4681      	mov	r9, r0
    d342:	4620      	mov	r0, r4
    d344:	f7f8 ec04 	blx	5b50 <Bitstream_read_32bit@plt>
    d348:	68a3      	ldr	r3, [r4, #8]
    d34a:	3b08      	subs	r3, #8
    d34c:	60a3      	str	r3, [r4, #8]
    d34e:	4683      	mov	fp, r0
    d350:	4638      	mov	r0, r7
    d352:	f7f8 ec76 	blx	5c40 <string_type_to_int32@plt>
    d356:	4583      	cmp	fp, r0
    d358:	d1e0      	bne.n	d31c <SampleDescription_parse_box@@Base+0x54>
    d35a:	f8da 0018 	ldr.w	r0, [sl, #24]
    d35e:	4621      	mov	r1, r4
    d360:	4428      	add	r0, r5
    d362:	f7f8 efb0 	blx	62c4 <SampleEntry_parse_box@plt>
    d366:	2800      	cmp	r0, #0
    d368:	d1b7      	bne.n	d2da <SampleDescription_parse_box@@Base+0x12>
    d36a:	f8da 3014 	ldr.w	r3, [sl, #20]
    d36e:	35a8      	adds	r5, #168	; 0xa8
    d370:	4598      	cmp	r8, r3
    d372:	d3e0      	bcc.n	d336 <SampleDescription_parse_box@@Base+0x6e>
    d374:	68a3      	ldr	r3, [r4, #8]
    d376:	f8da 0000 	ldr.w	r0, [sl]
    d37a:	1b9e      	subs	r6, r3, r6
    d37c:	1a30      	subs	r0, r6, r0
    d37e:	bf18      	it	ne
    d380:	2001      	movne	r0, #1
    d382:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d386:	bf00      	nop
    d388:	79dc      	ldrb	r4, [r3, #7]
	...

0000d38c <SampleTime_parse_box@@Base>:
    d38c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    d390:	460e      	mov	r6, r1
    d392:	4604      	mov	r4, r0
    d394:	f8d1 9008 	ldr.w	r9, [r1, #8]
    d398:	f7f8 ecca 	blx	5d30 <Box_parse_header@plt>
    d39c:	4680      	mov	r8, r0
    d39e:	b120      	cbz	r0, d3aa <SampleTime_parse_box@@Base+0x1e>
    d3a0:	f04f 0801 	mov.w	r8, #1
    d3a4:	4640      	mov	r0, r8
    d3a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    d3aa:	4630      	mov	r0, r6
    d3ac:	f7f8 ec72 	blx	5c94 <Bitstream_read_byte@plt>
    d3b0:	7320      	strb	r0, [r4, #12]
    d3b2:	4630      	mov	r0, r6
    d3b4:	f7f8 ecf8 	blx	5da8 <Bitstream_read_24bit@plt>
    d3b8:	6120      	str	r0, [r4, #16]
    d3ba:	4630      	mov	r0, r6
    d3bc:	f7f8 ebc8 	blx	5b50 <Bitstream_read_32bit@plt>
    d3c0:	2800      	cmp	r0, #0
    d3c2:	4605      	mov	r5, r0
    d3c4:	6160      	str	r0, [r4, #20]
    d3c6:	dbeb      	blt.n	d3a0 <SampleTime_parse_box@@Base+0x14>
    d3c8:	ea4f 0a80 	mov.w	sl, r0, lsl #2
    d3cc:	4650      	mov	r0, sl
    d3ce:	f7f8 eb3c 	blx	5a48 <malloc@plt>
    d3d2:	4607      	mov	r7, r0
    d3d4:	4650      	mov	r0, sl
    d3d6:	61a7      	str	r7, [r4, #24]
    d3d8:	f7f8 eb36 	blx	5a48 <malloc@plt>
    d3dc:	2800      	cmp	r0, #0
    d3de:	bf18      	it	ne
    d3e0:	2f00      	cmpne	r7, #0
    d3e2:	61e0      	str	r0, [r4, #28]
    d3e4:	d0dc      	beq.n	d3a0 <SampleTime_parse_box@@Base+0x14>
    d3e6:	b1f5      	cbz	r5, d426 <SampleTime_parse_box@@Base+0x9a>
    d3e8:	68b3      	ldr	r3, [r6, #8]
    d3ea:	6822      	ldr	r2, [r4, #0]
    d3ec:	ebc9 0303 	rsb	r3, r9, r3
    d3f0:	4293      	cmp	r3, r2
    d3f2:	d8d5      	bhi.n	d3a0 <SampleTime_parse_box@@Base+0x14>
    d3f4:	4645      	mov	r5, r8
    d3f6:	e006      	b.n	d406 <SampleTime_parse_box@@Base+0x7a>
    d3f8:	68b3      	ldr	r3, [r6, #8]
    d3fa:	6822      	ldr	r2, [r4, #0]
    d3fc:	ebc9 0303 	rsb	r3, r9, r3
    d400:	4293      	cmp	r3, r2
    d402:	d8cd      	bhi.n	d3a0 <SampleTime_parse_box@@Base+0x14>
    d404:	69a7      	ldr	r7, [r4, #24]
    d406:	4630      	mov	r0, r6
    d408:	f7f8 eba2 	blx	5b50 <Bitstream_read_32bit@plt>
    d40c:	f8d4 a01c 	ldr.w	sl, [r4, #28]
    d410:	f847 0025 	str.w	r0, [r7, r5, lsl #2]
    d414:	4630      	mov	r0, r6
    d416:	f7f8 eb9c 	blx	5b50 <Bitstream_read_32bit@plt>
    d41a:	f84a 0025 	str.w	r0, [sl, r5, lsl #2]
    d41e:	3501      	adds	r5, #1
    d420:	6963      	ldr	r3, [r4, #20]
    d422:	429d      	cmp	r5, r3
    d424:	d3e8      	bcc.n	d3f8 <SampleTime_parse_box@@Base+0x6c>
    d426:	6823      	ldr	r3, [r4, #0]
    d428:	4640      	mov	r0, r8
    d42a:	444b      	add	r3, r9
    d42c:	60b3      	str	r3, [r6, #8]
    d42e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    d432:	bf00      	nop

0000d434 <SampleChunk_parse_box@@Base>:
    d434:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    d438:	460e      	mov	r6, r1
    d43a:	4605      	mov	r5, r0
    d43c:	688f      	ldr	r7, [r1, #8]
    d43e:	f7f8 ec78 	blx	5d30 <Box_parse_header@plt>
    d442:	b110      	cbz	r0, d44a <SampleChunk_parse_box@@Base+0x16>
    d444:	2001      	movs	r0, #1
    d446:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    d44a:	4630      	mov	r0, r6
    d44c:	f7f8 ec22 	blx	5c94 <Bitstream_read_byte@plt>
    d450:	7328      	strb	r0, [r5, #12]
    d452:	4630      	mov	r0, r6
    d454:	f7f8 eca8 	blx	5da8 <Bitstream_read_24bit@plt>
    d458:	6128      	str	r0, [r5, #16]
    d45a:	4630      	mov	r0, r6
    d45c:	f7f8 eb78 	blx	5b50 <Bitstream_read_32bit@plt>
    d460:	2800      	cmp	r0, #0
    d462:	6168      	str	r0, [r5, #20]
    d464:	ddee      	ble.n	d444 <SampleChunk_parse_box@@Base+0x10>
    d466:	ea4f 0980 	mov.w	r9, r0, lsl #2
    d46a:	4648      	mov	r0, r9
    d46c:	f7f8 eaec 	blx	5a48 <malloc@plt>
    d470:	4680      	mov	r8, r0
    d472:	4648      	mov	r0, r9
    d474:	f8c5 8018 	str.w	r8, [r5, #24]
    d478:	f7f8 eae6 	blx	5a48 <malloc@plt>
    d47c:	4604      	mov	r4, r0
    d47e:	4648      	mov	r0, r9
    d480:	61ec      	str	r4, [r5, #28]
    d482:	f7f8 eae2 	blx	5a48 <malloc@plt>
    d486:	2c00      	cmp	r4, #0
    d488:	bf18      	it	ne
    d48a:	f1b8 0f00 	cmpne.w	r8, #0
    d48e:	bf0c      	ite	eq
    d490:	2401      	moveq	r4, #1
    d492:	2400      	movne	r4, #0
    d494:	2800      	cmp	r0, #0
    d496:	bf08      	it	eq
    d498:	f044 0401 	orreq.w	r4, r4, #1
    d49c:	6228      	str	r0, [r5, #32]
    d49e:	2c00      	cmp	r4, #0
    d4a0:	d1d0      	bne.n	d444 <SampleChunk_parse_box@@Base+0x10>
    d4a2:	68b3      	ldr	r3, [r6, #8]
    d4a4:	682a      	ldr	r2, [r5, #0]
    d4a6:	1bdb      	subs	r3, r3, r7
    d4a8:	4293      	cmp	r3, r2
    d4aa:	d907      	bls.n	d4bc <SampleChunk_parse_box@@Base+0x88>
    d4ac:	e7ca      	b.n	d444 <SampleChunk_parse_box@@Base+0x10>
    d4ae:	68b3      	ldr	r3, [r6, #8]
    d4b0:	682a      	ldr	r2, [r5, #0]
    d4b2:	1bdb      	subs	r3, r3, r7
    d4b4:	4293      	cmp	r3, r2
    d4b6:	d8c5      	bhi.n	d444 <SampleChunk_parse_box@@Base+0x10>
    d4b8:	f8d5 8018 	ldr.w	r8, [r5, #24]
    d4bc:	4630      	mov	r0, r6
    d4be:	f7f8 eb48 	blx	5b50 <Bitstream_read_32bit@plt>
    d4c2:	f8d5 901c 	ldr.w	r9, [r5, #28]
    d4c6:	f848 0024 	str.w	r0, [r8, r4, lsl #2]
    d4ca:	4630      	mov	r0, r6
    d4cc:	f7f8 eb40 	blx	5b50 <Bitstream_read_32bit@plt>
    d4d0:	f8d5 8020 	ldr.w	r8, [r5, #32]
    d4d4:	f849 0024 	str.w	r0, [r9, r4, lsl #2]
    d4d8:	4630      	mov	r0, r6
    d4da:	f7f8 eb3a 	blx	5b50 <Bitstream_read_32bit@plt>
    d4de:	f848 0024 	str.w	r0, [r8, r4, lsl #2]
    d4e2:	3401      	adds	r4, #1
    d4e4:	696b      	ldr	r3, [r5, #20]
    d4e6:	429c      	cmp	r4, r3
    d4e8:	d3e1      	bcc.n	d4ae <SampleChunk_parse_box@@Base+0x7a>
    d4ea:	68b3      	ldr	r3, [r6, #8]
    d4ec:	6828      	ldr	r0, [r5, #0]
    d4ee:	1bdf      	subs	r7, r3, r7
    d4f0:	1a38      	subs	r0, r7, r0
    d4f2:	bf18      	it	ne
    d4f4:	2001      	movne	r0, #1
    d4f6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    d4fa:	bf00      	nop

0000d4fc <SampleOffset_parse_box@@Base>:
    d4fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    d500:	460e      	mov	r6, r1
    d502:	4605      	mov	r5, r0
    d504:	f8d1 8008 	ldr.w	r8, [r1, #8]
    d508:	f7f8 ec12 	blx	5d30 <Box_parse_header@plt>
    d50c:	4604      	mov	r4, r0
    d50e:	b110      	cbz	r0, d516 <SampleOffset_parse_box@@Base+0x1a>
    d510:	2001      	movs	r0, #1
    d512:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d516:	4630      	mov	r0, r6
    d518:	f7f8 ebbc 	blx	5c94 <Bitstream_read_byte@plt>
    d51c:	7328      	strb	r0, [r5, #12]
    d51e:	4630      	mov	r0, r6
    d520:	f7f8 ec42 	blx	5da8 <Bitstream_read_24bit@plt>
    d524:	6128      	str	r0, [r5, #16]
    d526:	4630      	mov	r0, r6
    d528:	f7f8 eb12 	blx	5b50 <Bitstream_read_32bit@plt>
    d52c:	2800      	cmp	r0, #0
    d52e:	4607      	mov	r7, r0
    d530:	6168      	str	r0, [r5, #20]
    d532:	dbed      	blt.n	d510 <SampleOffset_parse_box@@Base+0x14>
    d534:	0080      	lsls	r0, r0, #2
    d536:	f7f8 ea88 	blx	5a48 <malloc@plt>
    d53a:	61a8      	str	r0, [r5, #24]
    d53c:	2800      	cmp	r0, #0
    d53e:	d0e7      	beq.n	d510 <SampleOffset_parse_box@@Base+0x14>
    d540:	b1bf      	cbz	r7, d572 <SampleOffset_parse_box@@Base+0x76>
    d542:	68b3      	ldr	r3, [r6, #8]
    d544:	682a      	ldr	r2, [r5, #0]
    d546:	ebc8 0303 	rsb	r3, r8, r3
    d54a:	4293      	cmp	r3, r2
    d54c:	d8e0      	bhi.n	d510 <SampleOffset_parse_box@@Base+0x14>
    d54e:	4607      	mov	r7, r0
    d550:	e006      	b.n	d560 <SampleOffset_parse_box@@Base+0x64>
    d552:	68b3      	ldr	r3, [r6, #8]
    d554:	682a      	ldr	r2, [r5, #0]
    d556:	ebc8 0303 	rsb	r3, r8, r3
    d55a:	4293      	cmp	r3, r2
    d55c:	d8d8      	bhi.n	d510 <SampleOffset_parse_box@@Base+0x14>
    d55e:	69af      	ldr	r7, [r5, #24]
    d560:	4630      	mov	r0, r6
    d562:	f7f8 eaf6 	blx	5b50 <Bitstream_read_32bit@plt>
    d566:	f847 0024 	str.w	r0, [r7, r4, lsl #2]
    d56a:	3401      	adds	r4, #1
    d56c:	696b      	ldr	r3, [r5, #20]
    d56e:	429c      	cmp	r4, r3
    d570:	d3ef      	bcc.n	d552 <SampleOffset_parse_box@@Base+0x56>
    d572:	68b3      	ldr	r3, [r6, #8]
    d574:	6828      	ldr	r0, [r5, #0]
    d576:	ebc8 0803 	rsb	r8, r8, r3
    d57a:	ebb8 0000 	subs.w	r0, r8, r0
    d57e:	bf18      	it	ne
    d580:	2001      	movne	r0, #1
    d582:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d586:	bf00      	nop

0000d588 <SampleSize_parse_box@@Base>:
    d588:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    d58c:	460e      	mov	r6, r1
    d58e:	4605      	mov	r5, r0
    d590:	f8d1 8008 	ldr.w	r8, [r1, #8]
    d594:	f7f8 ebcc 	blx	5d30 <Box_parse_header@plt>
    d598:	4604      	mov	r4, r0
    d59a:	b110      	cbz	r0, d5a2 <SampleSize_parse_box@@Base+0x1a>
    d59c:	2001      	movs	r0, #1
    d59e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d5a2:	4630      	mov	r0, r6
    d5a4:	f7f8 eb76 	blx	5c94 <Bitstream_read_byte@plt>
    d5a8:	7328      	strb	r0, [r5, #12]
    d5aa:	4630      	mov	r0, r6
    d5ac:	f7f8 ebfc 	blx	5da8 <Bitstream_read_24bit@plt>
    d5b0:	6128      	str	r0, [r5, #16]
    d5b2:	4630      	mov	r0, r6
    d5b4:	f7f8 eacc 	blx	5b50 <Bitstream_read_32bit@plt>
    d5b8:	6168      	str	r0, [r5, #20]
    d5ba:	4630      	mov	r0, r6
    d5bc:	f7f8 eac8 	blx	5b50 <Bitstream_read_32bit@plt>
    d5c0:	2800      	cmp	r0, #0
    d5c2:	4607      	mov	r7, r0
    d5c4:	61a8      	str	r0, [r5, #24]
    d5c6:	dbe9      	blt.n	d59c <SampleSize_parse_box@@Base+0x14>
    d5c8:	0080      	lsls	r0, r0, #2
    d5ca:	f7f8 ea3e 	blx	5a48 <malloc@plt>
    d5ce:	61e8      	str	r0, [r5, #28]
    d5d0:	2800      	cmp	r0, #0
    d5d2:	d0e3      	beq.n	d59c <SampleSize_parse_box@@Base+0x14>
    d5d4:	b1bf      	cbz	r7, d606 <SampleSize_parse_box@@Base+0x7e>
    d5d6:	68b3      	ldr	r3, [r6, #8]
    d5d8:	682a      	ldr	r2, [r5, #0]
    d5da:	ebc8 0303 	rsb	r3, r8, r3
    d5de:	4293      	cmp	r3, r2
    d5e0:	d8dc      	bhi.n	d59c <SampleSize_parse_box@@Base+0x14>
    d5e2:	4607      	mov	r7, r0
    d5e4:	e006      	b.n	d5f4 <SampleSize_parse_box@@Base+0x6c>
    d5e6:	68b3      	ldr	r3, [r6, #8]
    d5e8:	682a      	ldr	r2, [r5, #0]
    d5ea:	ebc8 0303 	rsb	r3, r8, r3
    d5ee:	4293      	cmp	r3, r2
    d5f0:	d8d4      	bhi.n	d59c <SampleSize_parse_box@@Base+0x14>
    d5f2:	69ef      	ldr	r7, [r5, #28]
    d5f4:	4630      	mov	r0, r6
    d5f6:	f7f8 eaac 	blx	5b50 <Bitstream_read_32bit@plt>
    d5fa:	f847 0024 	str.w	r0, [r7, r4, lsl #2]
    d5fe:	3401      	adds	r4, #1
    d600:	69ab      	ldr	r3, [r5, #24]
    d602:	429c      	cmp	r4, r3
    d604:	d3ef      	bcc.n	d5e6 <SampleSize_parse_box@@Base+0x5e>
    d606:	68b3      	ldr	r3, [r6, #8]
    d608:	6828      	ldr	r0, [r5, #0]
    d60a:	ebc8 0803 	rsb	r8, r8, r3
    d60e:	ebb8 0000 	subs.w	r0, r8, r0
    d612:	bf18      	it	ne
    d614:	2001      	movne	r0, #1
    d616:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    d61a:	bf00      	nop

0000d61c <SampleTable_parse_box@@Base>:
    d61c:	688b      	ldr	r3, [r1, #8]
    d61e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d622:	b085      	sub	sp, #20
    d624:	460c      	mov	r4, r1
    d626:	4680      	mov	r8, r0
    d628:	9301      	str	r3, [sp, #4]
    d62a:	f7f8 eb82 	blx	5d30 <Box_parse_header@plt>
    d62e:	2800      	cmp	r0, #0
    d630:	d154      	bne.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d632:	f8d8 0000 	ldr.w	r0, [r8]
    d636:	f1a0 0708 	sub.w	r7, r0, #8
    d63a:	2f00      	cmp	r7, #0
    d63c:	dd73      	ble.n	d726 <SampleTable_parse_box@@Base+0x10a>
    d63e:	f108 0388 	add.w	r3, r8, #136	; 0x88
    d642:	9303      	str	r3, [sp, #12]
    d644:	4b3c      	ldr	r3, [pc, #240]	; (d738 <SampleTable_parse_box@@Base+0x11c>)
    d646:	f8df 90f4 	ldr.w	r9, [pc, #244]	; d73c <SampleTable_parse_box@@Base+0x120>
    d64a:	447b      	add	r3, pc
    d64c:	f8df a0f0 	ldr.w	sl, [pc, #240]	; d740 <SampleTable_parse_box@@Base+0x124>
    d650:	f8df b0f0 	ldr.w	fp, [pc, #240]	; d744 <SampleTable_parse_box@@Base+0x128>
    d654:	44f9      	add	r9, pc
    d656:	9300      	str	r3, [sp, #0]
    d658:	44fa      	add	sl, pc
    d65a:	4b3b      	ldr	r3, [pc, #236]	; (d748 <SampleTable_parse_box@@Base+0x12c>)
    d65c:	44fb      	add	fp, pc
    d65e:	447b      	add	r3, pc
    d660:	9302      	str	r3, [sp, #8]
    d662:	e01f      	b.n	d6a4 <SampleTable_parse_box@@Base+0x88>
    d664:	4650      	mov	r0, sl
    d666:	f7f8 eaec 	blx	5c40 <string_type_to_int32@plt>
    d66a:	4286      	cmp	r6, r0
    d66c:	d03a      	beq.n	d6e4 <SampleTable_parse_box@@Base+0xc8>
    d66e:	4658      	mov	r0, fp
    d670:	f7f8 eae6 	blx	5c40 <string_type_to_int32@plt>
    d674:	4286      	cmp	r6, r0
    d676:	d03d      	beq.n	d6f4 <SampleTable_parse_box@@Base+0xd8>
    d678:	9800      	ldr	r0, [sp, #0]
    d67a:	f7f8 eae2 	blx	5c40 <string_type_to_int32@plt>
    d67e:	4286      	cmp	r6, r0
    d680:	d040      	beq.n	d704 <SampleTable_parse_box@@Base+0xe8>
    d682:	9802      	ldr	r0, [sp, #8]
    d684:	f7f8 eadc 	blx	5c40 <string_type_to_int32@plt>
    d688:	4286      	cmp	r6, r0
    d68a:	d043      	beq.n	d714 <SampleTable_parse_box@@Base+0xf8>
    d68c:	68a3      	ldr	r3, [r4, #8]
    d68e:	9901      	ldr	r1, [sp, #4]
    d690:	f8d8 2000 	ldr.w	r2, [r8]
    d694:	1a59      	subs	r1, r3, r1
    d696:	4291      	cmp	r1, r2
    d698:	d820      	bhi.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d69a:	442b      	add	r3, r5
    d69c:	60a3      	str	r3, [r4, #8]
    d69e:	1b7f      	subs	r7, r7, r5
    d6a0:	2f00      	cmp	r7, #0
    d6a2:	dd3e      	ble.n	d722 <SampleTable_parse_box@@Base+0x106>
    d6a4:	4620      	mov	r0, r4
    d6a6:	f7f8 ea54 	blx	5b50 <Bitstream_read_32bit@plt>
    d6aa:	4605      	mov	r5, r0
    d6ac:	4620      	mov	r0, r4
    d6ae:	f7f8 ea50 	blx	5b50 <Bitstream_read_32bit@plt>
    d6b2:	4606      	mov	r6, r0
    d6b4:	b195      	cbz	r5, d6dc <SampleTable_parse_box@@Base+0xc0>
    d6b6:	f8d8 3000 	ldr.w	r3, [r8]
    d6ba:	429d      	cmp	r5, r3
    d6bc:	d80e      	bhi.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d6be:	68a3      	ldr	r3, [r4, #8]
    d6c0:	4648      	mov	r0, r9
    d6c2:	3b08      	subs	r3, #8
    d6c4:	60a3      	str	r3, [r4, #8]
    d6c6:	f7f8 eabc 	blx	5c40 <string_type_to_int32@plt>
    d6ca:	4286      	cmp	r6, r0
    d6cc:	d1ca      	bne.n	d664 <SampleTable_parse_box@@Base+0x48>
    d6ce:	f108 000c 	add.w	r0, r8, #12
    d6d2:	4621      	mov	r1, r4
    d6d4:	f7f8 edfc 	blx	62d0 <SampleDescription_parse_box@plt>
    d6d8:	2800      	cmp	r0, #0
    d6da:	d0e0      	beq.n	d69e <SampleTable_parse_box@@Base+0x82>
    d6dc:	2001      	movs	r0, #1
    d6de:	b005      	add	sp, #20
    d6e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d6e4:	f108 0028 	add.w	r0, r8, #40	; 0x28
    d6e8:	4621      	mov	r1, r4
    d6ea:	f7f8 edf8 	blx	62dc <SampleTime_parse_box@plt>
    d6ee:	2800      	cmp	r0, #0
    d6f0:	d0d5      	beq.n	d69e <SampleTable_parse_box@@Base+0x82>
    d6f2:	e7f3      	b.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d6f4:	f108 0048 	add.w	r0, r8, #72	; 0x48
    d6f8:	4621      	mov	r1, r4
    d6fa:	f7f8 edf6 	blx	62e8 <SampleChunk_parse_box@plt>
    d6fe:	2800      	cmp	r0, #0
    d700:	d0cd      	beq.n	d69e <SampleTable_parse_box@@Base+0x82>
    d702:	e7eb      	b.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d704:	f108 006c 	add.w	r0, r8, #108	; 0x6c
    d708:	4621      	mov	r1, r4
    d70a:	f7f8 edf4 	blx	62f4 <SampleOffset_parse_box@plt>
    d70e:	2800      	cmp	r0, #0
    d710:	d0c5      	beq.n	d69e <SampleTable_parse_box@@Base+0x82>
    d712:	e7e3      	b.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d714:	9803      	ldr	r0, [sp, #12]
    d716:	4621      	mov	r1, r4
    d718:	f7f8 edf2 	blx	6300 <SampleSize_parse_box@plt>
    d71c:	2800      	cmp	r0, #0
    d71e:	d0be      	beq.n	d69e <SampleTable_parse_box@@Base+0x82>
    d720:	e7dc      	b.n	d6dc <SampleTable_parse_box@@Base+0xc0>
    d722:	f8d8 0000 	ldr.w	r0, [r8]
    d726:	68a3      	ldr	r3, [r4, #8]
    d728:	9a01      	ldr	r2, [sp, #4]
    d72a:	1a9b      	subs	r3, r3, r2
    d72c:	1a18      	subs	r0, r3, r0
    d72e:	bf18      	it	ne
    d730:	2001      	movne	r0, #1
    d732:	b005      	add	sp, #20
    d734:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d738:	7776      	strb	r6, [r6, #29]
    d73a:	0000      	movs	r0, r0
    d73c:	7754      	strb	r4, [r2, #29]
    d73e:	0000      	movs	r0, r0
    d740:	7758      	strb	r0, [r3, #29]
    d742:	0000      	movs	r0, r0
    d744:	775c      	strb	r4, [r3, #29]
    d746:	0000      	movs	r0, r0
    d748:	776a      	strb	r2, [r5, #29]
	...

0000d74c <SampleTableBox_release@@Base>:
    d74c:	6a03      	ldr	r3, [r0, #32]
    d74e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d752:	b085      	sub	sp, #20
    d754:	9003      	str	r0, [sp, #12]
    d756:	2b00      	cmp	r3, #0
    d758:	f000 8097 	beq.w	d88a <SampleTableBox_release@@Base+0x13e>
    d75c:	9a03      	ldr	r2, [sp, #12]
    d75e:	6a50      	ldr	r0, [r2, #36]	; 0x24
    d760:	2200      	movs	r2, #0
    d762:	4615      	mov	r5, r2
    d764:	9201      	str	r2, [sp, #4]
    d766:	9202      	str	r2, [sp, #8]
    d768:	9a01      	ldr	r2, [sp, #4]
    d76a:	1886      	adds	r6, r0, r2
    d76c:	f8d6 e088 	ldr.w	lr, [r6, #136]	; 0x88
    d770:	f8d6 8084 	ldr.w	r8, [r6, #132]	; 0x84
    d774:	f1be 0f00 	cmp.w	lr, #0
    d778:	d040      	beq.n	d7fc <SampleTableBox_release@@Base+0xb0>
    d77a:	f1b8 0f00 	cmp.w	r8, #0
    d77e:	dd35      	ble.n	d7ec <SampleTableBox_release@@Base+0xa0>
    d780:	2700      	movs	r7, #0
    d782:	4671      	mov	r1, lr
    d784:	eb07 0b47 	add.w	fp, r7, r7, lsl #1
    d788:	ea4f 0b8b 	mov.w	fp, fp, lsl #2
    d78c:	eb01 030b 	add.w	r3, r1, fp
    d790:	6898      	ldr	r0, [r3, #8]
    d792:	889c      	ldrh	r4, [r3, #4]
    d794:	b328      	cbz	r0, d7e2 <SampleTableBox_release@@Base+0x96>
    d796:	b1ec      	cbz	r4, d7d4 <SampleTableBox_release@@Base+0x88>
    d798:	f04f 0900 	mov.w	r9, #0
    d79c:	4603      	mov	r3, r0
    d79e:	e000      	b.n	d7a2 <SampleTableBox_release@@Base+0x56>
    d7a0:	6893      	ldr	r3, [r2, #8]
    d7a2:	ea4f 0ac9 	mov.w	sl, r9, lsl #3
    d7a6:	f109 0901 	add.w	r9, r9, #1
    d7aa:	4453      	add	r3, sl
    d7ac:	685a      	ldr	r2, [r3, #4]
    d7ae:	4610      	mov	r0, r2
    d7b0:	b13a      	cbz	r2, d7c2 <SampleTableBox_release@@Base+0x76>
    d7b2:	f7f8 e95c 	blx	5a6c <free@plt>
    d7b6:	f8d6 1088 	ldr.w	r1, [r6, #136]	; 0x88
    d7ba:	eb01 030b 	add.w	r3, r1, fp
    d7be:	689b      	ldr	r3, [r3, #8]
    d7c0:	4453      	add	r3, sl
    d7c2:	454c      	cmp	r4, r9
    d7c4:	eb01 020b 	add.w	r2, r1, fp
    d7c8:	605d      	str	r5, [r3, #4]
    d7ca:	d1e9      	bne.n	d7a0 <SampleTableBox_release@@Base+0x54>
    d7cc:	eb01 030b 	add.w	r3, r1, fp
    d7d0:	6898      	ldr	r0, [r3, #8]
    d7d2:	b128      	cbz	r0, d7e0 <SampleTableBox_release@@Base+0x94>
    d7d4:	f7f8 e94a 	blx	5a6c <free@plt>
    d7d8:	f8d6 1088 	ldr.w	r1, [r6, #136]	; 0x88
    d7dc:	eb01 030b 	add.w	r3, r1, fp
    d7e0:	609d      	str	r5, [r3, #8]
    d7e2:	3701      	adds	r7, #1
    d7e4:	4547      	cmp	r7, r8
    d7e6:	d1cd      	bne.n	d784 <SampleTableBox_release@@Base+0x38>
    d7e8:	468e      	mov	lr, r1
    d7ea:	b111      	cbz	r1, d7f2 <SampleTableBox_release@@Base+0xa6>
    d7ec:	4670      	mov	r0, lr
    d7ee:	f7f8 e93e 	blx	5a6c <free@plt>
    d7f2:	9a03      	ldr	r2, [sp, #12]
    d7f4:	6a50      	ldr	r0, [r2, #36]	; 0x24
    d7f6:	6a13      	ldr	r3, [r2, #32]
    d7f8:	f8c6 5088 	str.w	r5, [r6, #136]	; 0x88
    d7fc:	9a02      	ldr	r2, [sp, #8]
    d7fe:	9901      	ldr	r1, [sp, #4]
    d800:	3201      	adds	r2, #1
    d802:	9202      	str	r2, [sp, #8]
    d804:	429a      	cmp	r2, r3
    d806:	f101 01a8 	add.w	r1, r1, #168	; 0xa8
    d80a:	9101      	str	r1, [sp, #4]
    d80c:	d3ac      	bcc.n	d768 <SampleTableBox_release@@Base+0x1c>
    d80e:	b108      	cbz	r0, d814 <SampleTableBox_release@@Base+0xc8>
    d810:	f7f8 e92c 	blx	5a6c <free@plt>
    d814:	9a03      	ldr	r2, [sp, #12]
    d816:	2300      	movs	r3, #0
    d818:	f8d2 00a4 	ldr.w	r0, [r2, #164]	; 0xa4
    d81c:	6253      	str	r3, [r2, #36]	; 0x24
    d81e:	b110      	cbz	r0, d826 <SampleTableBox_release@@Base+0xda>
    d820:	f7f8 e924 	blx	5a6c <free@plt>
    d824:	9a03      	ldr	r2, [sp, #12]
    d826:	6e10      	ldr	r0, [r2, #96]	; 0x60
    d828:	2300      	movs	r3, #0
    d82a:	f8c2 30a4 	str.w	r3, [r2, #164]	; 0xa4
    d82e:	b110      	cbz	r0, d836 <SampleTableBox_release@@Base+0xea>
    d830:	f7f8 e91c 	blx	5a6c <free@plt>
    d834:	9a03      	ldr	r2, [sp, #12]
    d836:	6e50      	ldr	r0, [r2, #100]	; 0x64
    d838:	2300      	movs	r3, #0
    d83a:	6613      	str	r3, [r2, #96]	; 0x60
    d83c:	b110      	cbz	r0, d844 <SampleTableBox_release@@Base+0xf8>
    d83e:	f7f8 e916 	blx	5a6c <free@plt>
    d842:	9a03      	ldr	r2, [sp, #12]
    d844:	6e90      	ldr	r0, [r2, #104]	; 0x68
    d846:	2300      	movs	r3, #0
    d848:	6653      	str	r3, [r2, #100]	; 0x64
    d84a:	b110      	cbz	r0, d852 <SampleTableBox_release@@Base+0x106>
    d84c:	f7f8 e90e 	blx	5a6c <free@plt>
    d850:	9a03      	ldr	r2, [sp, #12]
    d852:	f8d2 0084 	ldr.w	r0, [r2, #132]	; 0x84
    d856:	2300      	movs	r3, #0
    d858:	6693      	str	r3, [r2, #104]	; 0x68
    d85a:	b110      	cbz	r0, d862 <SampleTableBox_release@@Base+0x116>
    d85c:	f7f8 e906 	blx	5a6c <free@plt>
    d860:	9a03      	ldr	r2, [sp, #12]
    d862:	6c10      	ldr	r0, [r2, #64]	; 0x40
    d864:	2300      	movs	r3, #0
    d866:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
    d86a:	b110      	cbz	r0, d872 <SampleTableBox_release@@Base+0x126>
    d86c:	f7f8 e8fe 	blx	5a6c <free@plt>
    d870:	9a03      	ldr	r2, [sp, #12]
    d872:	6c50      	ldr	r0, [r2, #68]	; 0x44
    d874:	2300      	movs	r3, #0
    d876:	6413      	str	r3, [r2, #64]	; 0x40
    d878:	b110      	cbz	r0, d880 <SampleTableBox_release@@Base+0x134>
    d87a:	f7f8 e8f8 	blx	5a6c <free@plt>
    d87e:	9a03      	ldr	r2, [sp, #12]
    d880:	2300      	movs	r3, #0
    d882:	6453      	str	r3, [r2, #68]	; 0x44
    d884:	b005      	add	sp, #20
    d886:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d88a:	6a40      	ldr	r0, [r0, #36]	; 0x24
    d88c:	e7bf      	b.n	d80e <SampleTableBox_release@@Base+0xc2>
    d88e:	bf00      	nop

0000d890 <write_track_box@@Base>:
    d890:	b538      	push	{r3, r4, r5, lr}
    d892:	4605      	mov	r5, r0
    d894:	4808      	ldr	r0, [pc, #32]	; (d8b8 <write_track_box@@Base+0x28>)
    d896:	460c      	mov	r4, r1
    d898:	4478      	add	r0, pc
    d89a:	f7f8 e9d2 	blx	5c40 <string_type_to_int32@plt>
    d89e:	f104 0110 	add.w	r1, r4, #16
    d8a2:	6060      	str	r0, [r4, #4]
    d8a4:	4628      	mov	r0, r5
    d8a6:	f7f8 ed32 	blx	630c <write_track_header_box@plt>
    d8aa:	4628      	mov	r0, r5
    d8ac:	f104 01a0 	add.w	r1, r4, #160	; 0xa0
    d8b0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    d8b4:	f006 bbde 	b.w	14074 <__aeabi_llsl@@Base+0x1d8>
    d8b8:	7508      	strb	r0, [r1, #20]
	...

0000d8bc <Track_write_box@@Base>:
    d8bc:	b538      	push	{r3, r4, r5, lr}
    d8be:	460c      	mov	r4, r1
    d8c0:	4605      	mov	r5, r0
    d8c2:	f7f8 ea1e 	blx	5d00 <Box_write_header@plt>
    d8c6:	f105 0010 	add.w	r0, r5, #16
    d8ca:	4621      	mov	r1, r4
    d8cc:	f7f8 ed2a 	blx	6324 <TrackHeader_write_box@plt>
    d8d0:	f105 00a0 	add.w	r0, r5, #160	; 0xa0
    d8d4:	4621      	mov	r1, r4
    d8d6:	f7f8 ed2c 	blx	6330 <Media_write_box@plt>
    d8da:	4628      	mov	r0, r5
    d8dc:	4621      	mov	r1, r4
    d8de:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    d8e2:	f006 bb3f 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>
    d8e6:	bf00      	nop

0000d8e8 <Track_parse_box@@Base>:
    d8e8:	688b      	ldr	r3, [r1, #8]
    d8ea:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d8ee:	b083      	sub	sp, #12
    d8f0:	460c      	mov	r4, r1
    d8f2:	4680      	mov	r8, r0
    d8f4:	9301      	str	r3, [sp, #4]
    d8f6:	f7f8 ea1c 	blx	5d30 <Box_parse_header@plt>
    d8fa:	2800      	cmp	r0, #0
    d8fc:	d141      	bne.n	d982 <Track_parse_box@@Base+0x9a>
    d8fe:	f8d8 0000 	ldr.w	r0, [r8]
    d902:	f1a0 0708 	sub.w	r7, r0, #8
    d906:	2f00      	cmp	r7, #0
    d908:	dd54      	ble.n	d9b4 <Track_parse_box@@Base+0xcc>
    d90a:	f8df 90c0 	ldr.w	r9, [pc, #192]	; d9cc <Track_parse_box@@Base+0xe4>
    d90e:	f8df a0c0 	ldr.w	sl, [pc, #192]	; d9d0 <Track_parse_box@@Base+0xe8>
    d912:	f8df b0c0 	ldr.w	fp, [pc, #192]	; d9d4 <Track_parse_box@@Base+0xec>
    d916:	44f9      	add	r9, pc
    d918:	44fa      	add	sl, pc
    d91a:	44fb      	add	fp, pc
    d91c:	e015      	b.n	d94a <Track_parse_box@@Base+0x62>
    d91e:	4650      	mov	r0, sl
    d920:	f7f8 e98e 	blx	5c40 <string_type_to_int32@plt>
    d924:	4286      	cmp	r6, r0
    d926:	d030      	beq.n	d98a <Track_parse_box@@Base+0xa2>
    d928:	4658      	mov	r0, fp
    d92a:	f7f8 e98a 	blx	5c40 <string_type_to_int32@plt>
    d92e:	4286      	cmp	r6, r0
    d930:	d036      	beq.n	d9a0 <Track_parse_box@@Base+0xb8>
    d932:	68a3      	ldr	r3, [r4, #8]
    d934:	9901      	ldr	r1, [sp, #4]
    d936:	f8d8 2000 	ldr.w	r2, [r8]
    d93a:	1a59      	subs	r1, r3, r1
    d93c:	4291      	cmp	r1, r2
    d93e:	d820      	bhi.n	d982 <Track_parse_box@@Base+0x9a>
    d940:	442b      	add	r3, r5
    d942:	60a3      	str	r3, [r4, #8]
    d944:	1b7f      	subs	r7, r7, r5
    d946:	2f00      	cmp	r7, #0
    d948:	dd32      	ble.n	d9b0 <Track_parse_box@@Base+0xc8>
    d94a:	4620      	mov	r0, r4
    d94c:	f7f8 e900 	blx	5b50 <Bitstream_read_32bit@plt>
    d950:	4605      	mov	r5, r0
    d952:	4620      	mov	r0, r4
    d954:	f7f8 e8fc 	blx	5b50 <Bitstream_read_32bit@plt>
    d958:	4606      	mov	r6, r0
    d95a:	b195      	cbz	r5, d982 <Track_parse_box@@Base+0x9a>
    d95c:	f8d8 3000 	ldr.w	r3, [r8]
    d960:	429d      	cmp	r5, r3
    d962:	d80e      	bhi.n	d982 <Track_parse_box@@Base+0x9a>
    d964:	68a3      	ldr	r3, [r4, #8]
    d966:	4648      	mov	r0, r9
    d968:	3b08      	subs	r3, #8
    d96a:	60a3      	str	r3, [r4, #8]
    d96c:	f7f8 e968 	blx	5c40 <string_type_to_int32@plt>
    d970:	4286      	cmp	r6, r0
    d972:	d1d4      	bne.n	d91e <Track_parse_box@@Base+0x36>
    d974:	f108 0010 	add.w	r0, r8, #16
    d978:	4621      	mov	r1, r4
    d97a:	f7f8 ece0 	blx	633c <TrackHeader_parse_box@plt>
    d97e:	2800      	cmp	r0, #0
    d980:	d0e0      	beq.n	d944 <Track_parse_box@@Base+0x5c>
    d982:	2001      	movs	r0, #1
    d984:	b003      	add	sp, #12
    d986:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d98a:	f108 0088 	add.w	r0, r8, #136	; 0x88
    d98e:	4621      	mov	r1, r4
    d990:	f7f8 ecda 	blx	6348 <TrackReference_parse_box@plt>
    d994:	2301      	movs	r3, #1
    d996:	f888 3278 	strb.w	r3, [r8, #632]	; 0x278
    d99a:	2800      	cmp	r0, #0
    d99c:	d0d2      	beq.n	d944 <Track_parse_box@@Base+0x5c>
    d99e:	e7f0      	b.n	d982 <Track_parse_box@@Base+0x9a>
    d9a0:	f108 00a0 	add.w	r0, r8, #160	; 0xa0
    d9a4:	4621      	mov	r1, r4
    d9a6:	f7f8 ecd6 	blx	6354 <Media_parse_box@plt>
    d9aa:	2800      	cmp	r0, #0
    d9ac:	d0ca      	beq.n	d944 <Track_parse_box@@Base+0x5c>
    d9ae:	e7e8      	b.n	d982 <Track_parse_box@@Base+0x9a>
    d9b0:	f8d8 0000 	ldr.w	r0, [r8]
    d9b4:	68a3      	ldr	r3, [r4, #8]
    d9b6:	9a01      	ldr	r2, [sp, #4]
    d9b8:	ebc2 0b03 	rsb	fp, r2, r3
    d9bc:	ebbb 0000 	subs.w	r0, fp, r0
    d9c0:	bf18      	it	ne
    d9c2:	2001      	movne	r0, #1
    d9c4:	b003      	add	sp, #12
    d9c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d9ca:	bf00      	nop
    d9cc:	74ba      	strb	r2, [r7, #18]
    d9ce:	0000      	movs	r0, r0
    d9d0:	74c0      	strb	r0, [r0, #19]
    d9d2:	0000      	movs	r0, r0
    d9d4:	741a      	strb	r2, [r3, #16]
	...

0000d9d8 <TrackBox_release@@Base>:
    d9d8:	b510      	push	{r4, lr}
    d9da:	4604      	mov	r4, r0
    d9dc:	30a0      	adds	r0, #160	; 0xa0
    d9de:	f7f8 ecc0 	blx	6360 <MediaBox_release@plt>
    d9e2:	f894 3278 	ldrb.w	r3, [r4, #632]	; 0x278
    d9e6:	b903      	cbnz	r3, d9ea <TrackBox_release@@Base+0x12>
    d9e8:	bd10      	pop	{r4, pc}
    d9ea:	f104 0088 	add.w	r0, r4, #136	; 0x88
    d9ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    d9f2:	f006 bb47 	b.w	14084 <__aeabi_llsl@@Base+0x1e8>
    d9f6:	bf00      	nop

0000d9f8 <write_track_header_box@@Base>:
    d9f8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
    d9fc:	4680      	mov	r8, r0
    d9fe:	4829      	ldr	r0, [pc, #164]	; (daa4 <write_track_header_box@@Base+0xac>)
    da00:	460c      	mov	r4, r1
    da02:	2500      	movs	r5, #0
    da04:	f44f 4615 	mov.w	r6, #38144	; 0x9500
    da08:	4478      	add	r0, pc
    da0a:	f6c3 066e 	movt	r6, #14446	; 0x386e
    da0e:	f7f8 e918 	blx	5c40 <string_type_to_int32@plt>
    da12:	2303      	movs	r3, #3
    da14:	7325      	strb	r5, [r4, #12]
    da16:	6123      	str	r3, [r4, #16]
    da18:	6060      	str	r0, [r4, #4]
    da1a:	4628      	mov	r0, r5
    da1c:	f7f8 eb38 	blx	6090 <time@plt>
    da20:	1982      	adds	r2, r0, r6
    da22:	4628      	mov	r0, r5
    da24:	17d3      	asrs	r3, r2, #31
    da26:	e9c4 2306 	strd	r2, r3, [r4, #24]
    da2a:	f7f8 eb32 	blx	6090 <time@plt>
    da2e:	e9d8 ab70 	ldrd	sl, fp, [r8, #448]	; 0x1c0
    da32:	2301      	movs	r3, #1
    da34:	4629      	mov	r1, r5
    da36:	62a3      	str	r3, [r4, #40]	; 0x28
    da38:	2224      	movs	r2, #36	; 0x24
    da3a:	62e5      	str	r5, [r4, #44]	; 0x2c
    da3c:	f884 5038 	strb.w	r5, [r4, #56]	; 0x38
    da40:	e9c4 ab0c 	strd	sl, fp, [r4, #48]	; 0x30
    da44:	f884 5039 	strb.w	r5, [r4, #57]	; 0x39
    da48:	f884 503a 	strb.w	r5, [r4, #58]	; 0x3a
    da4c:	f884 503b 	strb.w	r5, [r4, #59]	; 0x3b
    da50:	f884 503c 	strb.w	r5, [r4, #60]	; 0x3c
    da54:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
    da58:	f884 503e 	strb.w	r5, [r4, #62]	; 0x3e
    da5c:	f884 503f 	strb.w	r5, [r4, #63]	; 0x3f
    da60:	f8a4 5040 	strh.w	r5, [r4, #64]	; 0x40
    da64:	f8a4 5042 	strh.w	r5, [r4, #66]	; 0x42
    da68:	f8a4 5044 	strh.w	r5, [r4, #68]	; 0x44
    da6c:	f8a4 5046 	strh.w	r5, [r4, #70]	; 0x46
    da70:	4406      	add	r6, r0
    da72:	f104 0048 	add.w	r0, r4, #72	; 0x48
    da76:	17f7      	asrs	r7, r6, #31
    da78:	e9c4 6708 	strd	r6, r7, [r4, #32]
    da7c:	f7f8 e844 	blx	5b08 <memset@plt>
    da80:	f8d8 203c 	ldr.w	r2, [r8, #60]	; 0x3c
    da84:	f8d8 3040 	ldr.w	r3, [r8, #64]	; 0x40
    da88:	f44f 3180 	mov.w	r1, #65536	; 0x10000
    da8c:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
    da90:	64a1      	str	r1, [r4, #72]	; 0x48
    da92:	0412      	lsls	r2, r2, #16
    da94:	66a0      	str	r0, [r4, #104]	; 0x68
    da96:	041b      	lsls	r3, r3, #16
    da98:	66e2      	str	r2, [r4, #108]	; 0x6c
    da9a:	65a1      	str	r1, [r4, #88]	; 0x58
    da9c:	6723      	str	r3, [r4, #112]	; 0x70
    da9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
    daa2:	bf00      	nop
    daa4:	73c8      	strb	r0, [r1, #15]
	...

0000daa8 <TrackHeader_write_box@@Base>:
    daa8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    daaa:	4606      	mov	r6, r0
    daac:	460d      	mov	r5, r1
    daae:	f7f8 e928 	blx	5d00 <Box_write_header@plt>
    dab2:	7b31      	ldrb	r1, [r6, #12]
    dab4:	4628      	mov	r0, r5
    dab6:	f7f8 e8fa 	blx	5cac <Bitstream_write_byte@plt>
    daba:	6931      	ldr	r1, [r6, #16]
    dabc:	4628      	mov	r0, r5
    dabe:	f106 0444 	add.w	r4, r6, #68	; 0x44
    dac2:	f7f8 e966 	blx	5d90 <Bitstream_write_24bit@plt>
    dac6:	69b1      	ldr	r1, [r6, #24]
    dac8:	4628      	mov	r0, r5
    daca:	f106 0768 	add.w	r7, r6, #104	; 0x68
    dace:	f7f8 e8fa 	blx	5cc4 <Bitstream_write_32bit@plt>
    dad2:	6a31      	ldr	r1, [r6, #32]
    dad4:	4628      	mov	r0, r5
    dad6:	f7f8 e8f6 	blx	5cc4 <Bitstream_write_32bit@plt>
    dada:	6ab1      	ldr	r1, [r6, #40]	; 0x28
    dadc:	4628      	mov	r0, r5
    dade:	f7f8 e8f2 	blx	5cc4 <Bitstream_write_32bit@plt>
    dae2:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    dae4:	4628      	mov	r0, r5
    dae6:	f7f8 e8ee 	blx	5cc4 <Bitstream_write_32bit@plt>
    daea:	6b31      	ldr	r1, [r6, #48]	; 0x30
    daec:	4628      	mov	r0, r5
    daee:	f7f8 e8ea 	blx	5cc4 <Bitstream_write_32bit@plt>
    daf2:	6bb1      	ldr	r1, [r6, #56]	; 0x38
    daf4:	4628      	mov	r0, r5
    daf6:	f7f8 e8e6 	blx	5cc4 <Bitstream_write_32bit@plt>
    dafa:	6bf1      	ldr	r1, [r6, #60]	; 0x3c
    dafc:	4628      	mov	r0, r5
    dafe:	f7f8 e8e2 	blx	5cc4 <Bitstream_write_32bit@plt>
    db02:	f9b6 1040 	ldrsh.w	r1, [r6, #64]	; 0x40
    db06:	4628      	mov	r0, r5
    db08:	f7f8 e906 	blx	5d18 <Bitstream_write_16bit@plt>
    db0c:	f9b6 1042 	ldrsh.w	r1, [r6, #66]	; 0x42
    db10:	4628      	mov	r0, r5
    db12:	f7f8 e902 	blx	5d18 <Bitstream_write_16bit@plt>
    db16:	f9b6 1044 	ldrsh.w	r1, [r6, #68]	; 0x44
    db1a:	4628      	mov	r0, r5
    db1c:	f7f8 e8fc 	blx	5d18 <Bitstream_write_16bit@plt>
    db20:	4628      	mov	r0, r5
    db22:	f8b6 1046 	ldrh.w	r1, [r6, #70]	; 0x46
    db26:	f7f8 e8f8 	blx	5d18 <Bitstream_write_16bit@plt>
    db2a:	f854 1f04 	ldr.w	r1, [r4, #4]!
    db2e:	4628      	mov	r0, r5
    db30:	f7f8 e8c8 	blx	5cc4 <Bitstream_write_32bit@plt>
    db34:	42bc      	cmp	r4, r7
    db36:	d1f8      	bne.n	db2a <TrackHeader_write_box@@Base+0x82>
    db38:	6ef1      	ldr	r1, [r6, #108]	; 0x6c
    db3a:	4628      	mov	r0, r5
    db3c:	f7f8 e8c2 	blx	5cc4 <Bitstream_write_32bit@plt>
    db40:	6f31      	ldr	r1, [r6, #112]	; 0x70
    db42:	4628      	mov	r0, r5
    db44:	f7f8 e8be 	blx	5cc4 <Bitstream_write_32bit@plt>
    db48:	4630      	mov	r0, r6
    db4a:	4629      	mov	r1, r5
    db4c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    db50:	f006 ba08 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000db54 <TrackHeader_parse_box@@Base>:
    db54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    db58:	4606      	mov	r6, r0
    db5a:	460d      	mov	r5, r1
    db5c:	f7f8 e8e8 	blx	5d30 <Box_parse_header@plt>
    db60:	4607      	mov	r7, r0
    db62:	b118      	cbz	r0, db6c <TrackHeader_parse_box@@Base+0x18>
    db64:	2701      	movs	r7, #1
    db66:	4638      	mov	r0, r7
    db68:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    db6c:	4628      	mov	r0, r5
    db6e:	f106 0444 	add.w	r4, r6, #68	; 0x44
    db72:	f7f8 e890 	blx	5c94 <Bitstream_read_byte@plt>
    db76:	f106 0868 	add.w	r8, r6, #104	; 0x68
    db7a:	7330      	strb	r0, [r6, #12]
    db7c:	4628      	mov	r0, r5
    db7e:	f7f8 e914 	blx	5da8 <Bitstream_read_24bit@plt>
    db82:	6130      	str	r0, [r6, #16]
    db84:	4628      	mov	r0, r5
    db86:	f7f7 efe4 	blx	5b50 <Bitstream_read_32bit@plt>
    db8a:	61f7      	str	r7, [r6, #28]
    db8c:	61b0      	str	r0, [r6, #24]
    db8e:	4628      	mov	r0, r5
    db90:	f7f7 efde 	blx	5b50 <Bitstream_read_32bit@plt>
    db94:	6277      	str	r7, [r6, #36]	; 0x24
    db96:	6230      	str	r0, [r6, #32]
    db98:	4628      	mov	r0, r5
    db9a:	f7f7 efda 	blx	5b50 <Bitstream_read_32bit@plt>
    db9e:	62b0      	str	r0, [r6, #40]	; 0x28
    dba0:	4628      	mov	r0, r5
    dba2:	f7f7 efd6 	blx	5b50 <Bitstream_read_32bit@plt>
    dba6:	62f0      	str	r0, [r6, #44]	; 0x2c
    dba8:	4628      	mov	r0, r5
    dbaa:	f7f7 efd2 	blx	5b50 <Bitstream_read_32bit@plt>
    dbae:	6377      	str	r7, [r6, #52]	; 0x34
    dbb0:	6330      	str	r0, [r6, #48]	; 0x30
    dbb2:	4628      	mov	r0, r5
    dbb4:	f7f7 efcc 	blx	5b50 <Bitstream_read_32bit@plt>
    dbb8:	63b0      	str	r0, [r6, #56]	; 0x38
    dbba:	4628      	mov	r0, r5
    dbbc:	f7f7 efc8 	blx	5b50 <Bitstream_read_32bit@plt>
    dbc0:	63f0      	str	r0, [r6, #60]	; 0x3c
    dbc2:	4628      	mov	r0, r5
    dbc4:	f7f8 e8ba 	blx	5d3c <Bitstream_read_16bit@plt>
    dbc8:	f8a6 0040 	strh.w	r0, [r6, #64]	; 0x40
    dbcc:	4628      	mov	r0, r5
    dbce:	f7f8 e8b6 	blx	5d3c <Bitstream_read_16bit@plt>
    dbd2:	f8a6 0042 	strh.w	r0, [r6, #66]	; 0x42
    dbd6:	4628      	mov	r0, r5
    dbd8:	f7f8 e8b0 	blx	5d3c <Bitstream_read_16bit@plt>
    dbdc:	f8a6 0044 	strh.w	r0, [r6, #68]	; 0x44
    dbe0:	4628      	mov	r0, r5
    dbe2:	f7f8 e8ac 	blx	5d3c <Bitstream_read_16bit@plt>
    dbe6:	f8a6 0046 	strh.w	r0, [r6, #70]	; 0x46
    dbea:	4628      	mov	r0, r5
    dbec:	f7f7 efb0 	blx	5b50 <Bitstream_read_32bit@plt>
    dbf0:	f844 0f04 	str.w	r0, [r4, #4]!
    dbf4:	4544      	cmp	r4, r8
    dbf6:	d1f8      	bne.n	dbea <TrackHeader_parse_box@@Base+0x96>
    dbf8:	4628      	mov	r0, r5
    dbfa:	f7f7 efaa 	blx	5b50 <Bitstream_read_32bit@plt>
    dbfe:	66f0      	str	r0, [r6, #108]	; 0x6c
    dc00:	4628      	mov	r0, r5
    dc02:	f7f7 efa6 	blx	5b50 <Bitstream_read_32bit@plt>
    dc06:	6730      	str	r0, [r6, #112]	; 0x70
    dc08:	4638      	mov	r0, r7
    dc0a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    dc0e:	bf00      	nop

0000dc10 <TrackReference_parse_box@@Base>:
    dc10:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    dc14:	4688      	mov	r8, r1
    dc16:	4607      	mov	r7, r0
    dc18:	f8d1 a008 	ldr.w	sl, [r1, #8]
    dc1c:	f7f8 e888 	blx	5d30 <Box_parse_header@plt>
    dc20:	2800      	cmp	r0, #0
    dc22:	d157      	bne.n	dcd4 <TrackReference_parse_box@@Base+0xc4>
    dc24:	6838      	ldr	r0, [r7, #0]
    dc26:	f1a0 0908 	sub.w	r9, r0, #8
    dc2a:	f1b9 0f00 	cmp.w	r9, #0
    dc2e:	dd3a      	ble.n	dca6 <TrackReference_parse_box@@Base+0x96>
    dc30:	68fd      	ldr	r5, [r7, #12]
    dc32:	6939      	ldr	r1, [r7, #16]
    dc34:	3101      	adds	r1, #1
    dc36:	6139      	str	r1, [r7, #16]
    dc38:	2d00      	cmp	r5, #0
    dc3a:	d03e      	beq.n	dcba <TrackReference_parse_box@@Base+0xaa>
    dc3c:	eb01 0181 	add.w	r1, r1, r1, lsl #2
    dc40:	4628      	mov	r0, r5
    dc42:	0089      	lsls	r1, r1, #2
    dc44:	f7f7 eef4 	blx	5a30 <realloc@plt>
    dc48:	4641      	mov	r1, r8
    dc4a:	4603      	mov	r3, r0
    dc4c:	60fb      	str	r3, [r7, #12]
    dc4e:	f7f8 e870 	blx	5d30 <Box_parse_header@plt>
    dc52:	4604      	mov	r4, r0
    dc54:	2800      	cmp	r0, #0
    dc56:	d13d      	bne.n	dcd4 <TrackReference_parse_box@@Base+0xc4>
    dc58:	68fd      	ldr	r5, [r7, #12]
    dc5a:	f8d5 b000 	ldr.w	fp, [r5]
    dc5e:	f1bb 0608 	subs.w	r6, fp, #8
    dc62:	f1ab 0305 	sub.w	r3, fp, #5
    dc66:	bf48      	it	mi
    dc68:	461e      	movmi	r6, r3
    dc6a:	10b6      	asrs	r6, r6, #2
    dc6c:	612e      	str	r6, [r5, #16]
    dc6e:	00b0      	lsls	r0, r6, #2
    dc70:	f7f7 eeea 	blx	5a48 <malloc@plt>
    dc74:	60e8      	str	r0, [r5, #12]
    dc76:	b368      	cbz	r0, dcd4 <TrackReference_parse_box@@Base+0xc4>
    dc78:	2e00      	cmp	r6, #0
    dc7a:	dd0e      	ble.n	dc9a <TrackReference_parse_box@@Base+0x8a>
    dc7c:	4606      	mov	r6, r0
    dc7e:	e000      	b.n	dc82 <TrackReference_parse_box@@Base+0x72>
    dc80:	68ee      	ldr	r6, [r5, #12]
    dc82:	4640      	mov	r0, r8
    dc84:	f7f7 ef64 	blx	5b50 <Bitstream_read_32bit@plt>
    dc88:	68fd      	ldr	r5, [r7, #12]
    dc8a:	f846 0024 	str.w	r0, [r6, r4, lsl #2]
    dc8e:	3401      	adds	r4, #1
    dc90:	692b      	ldr	r3, [r5, #16]
    dc92:	42a3      	cmp	r3, r4
    dc94:	dcf4      	bgt.n	dc80 <TrackReference_parse_box@@Base+0x70>
    dc96:	f8d5 b000 	ldr.w	fp, [r5]
    dc9a:	ebcb 0909 	rsb	r9, fp, r9
    dc9e:	f1b9 0f00 	cmp.w	r9, #0
    dca2:	dcc6      	bgt.n	dc32 <TrackReference_parse_box@@Base+0x22>
    dca4:	6838      	ldr	r0, [r7, #0]
    dca6:	f8d8 3008 	ldr.w	r3, [r8, #8]
    dcaa:	ebca 0a03 	rsb	sl, sl, r3
    dcae:	ebba 0000 	subs.w	r0, sl, r0
    dcb2:	bf18      	it	ne
    dcb4:	2001      	movne	r0, #1
    dcb6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    dcba:	eb01 0081 	add.w	r0, r1, r1, lsl #2
    dcbe:	0080      	lsls	r0, r0, #2
    dcc0:	f7f7 eec2 	blx	5a48 <malloc@plt>
    dcc4:	4641      	mov	r1, r8
    dcc6:	4603      	mov	r3, r0
    dcc8:	60fb      	str	r3, [r7, #12]
    dcca:	f7f8 e832 	blx	5d30 <Box_parse_header@plt>
    dcce:	4604      	mov	r4, r0
    dcd0:	2800      	cmp	r0, #0
    dcd2:	d0c1      	beq.n	dc58 <TrackReference_parse_box@@Base+0x48>
    dcd4:	2001      	movs	r0, #1
    dcd6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    dcda:	bf00      	nop

0000dcdc <TrackReferenceBox_release@@Base>:
    dcdc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    dce0:	4607      	mov	r7, r0
    dce2:	6900      	ldr	r0, [r0, #16]
    dce4:	2800      	cmp	r0, #0
    dce6:	dd21      	ble.n	dd2c <TrackReferenceBox_release@@Base+0x50>
    dce8:	68f9      	ldr	r1, [r7, #12]
    dcea:	2500      	movs	r5, #0
    dcec:	46a8      	mov	r8, r5
    dcee:	462e      	mov	r6, r5
    dcf0:	194b      	adds	r3, r1, r5
    dcf2:	691a      	ldr	r2, [r3, #16]
    dcf4:	2a00      	cmp	r2, #0
    dcf6:	dd0c      	ble.n	dd12 <TrackReferenceBox_release@@Base+0x36>
    dcf8:	68d8      	ldr	r0, [r3, #12]
    dcfa:	2400      	movs	r4, #0
    dcfc:	b120      	cbz	r0, dd08 <TrackReferenceBox_release@@Base+0x2c>
    dcfe:	f7f7 eeb6 	blx	5a6c <free@plt>
    dd02:	68f9      	ldr	r1, [r7, #12]
    dd04:	194b      	adds	r3, r1, r5
    dd06:	691a      	ldr	r2, [r3, #16]
    dd08:	3401      	adds	r4, #1
    dd0a:	60de      	str	r6, [r3, #12]
    dd0c:	4294      	cmp	r4, r2
    dd0e:	dbfb      	blt.n	dd08 <TrackReferenceBox_release@@Base+0x2c>
    dd10:	6938      	ldr	r0, [r7, #16]
    dd12:	f108 0801 	add.w	r8, r8, #1
    dd16:	3514      	adds	r5, #20
    dd18:	4580      	cmp	r8, r0
    dd1a:	dbe9      	blt.n	dcf0 <TrackReferenceBox_release@@Base+0x14>
    dd1c:	b111      	cbz	r1, dd24 <TrackReferenceBox_release@@Base+0x48>
    dd1e:	4608      	mov	r0, r1
    dd20:	f7f7 eea4 	blx	5a6c <free@plt>
    dd24:	2300      	movs	r3, #0
    dd26:	60fb      	str	r3, [r7, #12]
    dd28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    dd2c:	68f9      	ldr	r1, [r7, #12]
    dd2e:	e7f5      	b.n	dd1c <TrackReferenceBox_release@@Base+0x40>

0000dd30 <write_video_header_box@@Base>:
    dd30:	b510      	push	{r4, lr}
    dd32:	4604      	mov	r4, r0
    dd34:	4808      	ldr	r0, [pc, #32]	; (dd58 <write_video_header_box@@Base+0x28>)
    dd36:	4478      	add	r0, pc
    dd38:	f7f7 ef82 	blx	5c40 <string_type_to_int32@plt>
    dd3c:	2300      	movs	r3, #0
    dd3e:	2201      	movs	r2, #1
    dd40:	7323      	strb	r3, [r4, #12]
    dd42:	6122      	str	r2, [r4, #16]
    dd44:	82a3      	strh	r3, [r4, #20]
    dd46:	75a3      	strb	r3, [r4, #22]
    dd48:	75e3      	strb	r3, [r4, #23]
    dd4a:	7623      	strb	r3, [r4, #24]
    dd4c:	7663      	strb	r3, [r4, #25]
    dd4e:	76a3      	strb	r3, [r4, #26]
    dd50:	76e3      	strb	r3, [r4, #27]
    dd52:	6060      	str	r0, [r4, #4]
    dd54:	bd10      	pop	{r4, pc}
    dd56:	bf00      	nop
    dd58:	701e      	strb	r6, [r3, #0]
	...

0000dd5c <VideoHeader_write_box@@Base>:
    dd5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    dd5e:	4606      	mov	r6, r0
    dd60:	460d      	mov	r5, r1
    dd62:	f7f7 efce 	blx	5d00 <Box_write_header@plt>
    dd66:	7b31      	ldrb	r1, [r6, #12]
    dd68:	4628      	mov	r0, r5
    dd6a:	f7f7 efa0 	blx	5cac <Bitstream_write_byte@plt>
    dd6e:	4634      	mov	r4, r6
    dd70:	6931      	ldr	r1, [r6, #16]
    dd72:	4628      	mov	r0, r5
    dd74:	f7f8 e80c 	blx	5d90 <Bitstream_write_24bit@plt>
    dd78:	f834 1f14 	ldrh.w	r1, [r4, #20]!
    dd7c:	4628      	mov	r0, r5
    dd7e:	f106 071a 	add.w	r7, r6, #26
    dd82:	f7f7 efca 	blx	5d18 <Bitstream_write_16bit@plt>
    dd86:	f834 1f02 	ldrh.w	r1, [r4, #2]!
    dd8a:	4628      	mov	r0, r5
    dd8c:	f7f7 efc4 	blx	5d18 <Bitstream_write_16bit@plt>
    dd90:	42bc      	cmp	r4, r7
    dd92:	d1f8      	bne.n	dd86 <VideoHeader_write_box@@Base+0x2a>
    dd94:	4630      	mov	r0, r6
    dd96:	4629      	mov	r1, r5
    dd98:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    dd9c:	f006 b8e2 	b.w	13f64 <__aeabi_llsl@@Base+0xc8>

0000dda0 <VideoHeader_parse_box@@Base>:
    dda0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    dda4:	4607      	mov	r7, r0
    dda6:	460e      	mov	r6, r1
    dda8:	f7f7 efc2 	blx	5d30 <Box_parse_header@plt>
    ddac:	4605      	mov	r5, r0
    ddae:	b118      	cbz	r0, ddb8 <VideoHeader_parse_box@@Base+0x18>
    ddb0:	2501      	movs	r5, #1
    ddb2:	4628      	mov	r0, r5
    ddb4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ddb8:	4630      	mov	r0, r6
    ddba:	f107 081a 	add.w	r8, r7, #26
    ddbe:	f7f7 ef6a 	blx	5c94 <Bitstream_read_byte@plt>
    ddc2:	463c      	mov	r4, r7
    ddc4:	7338      	strb	r0, [r7, #12]
    ddc6:	4630      	mov	r0, r6
    ddc8:	f7f7 efee 	blx	5da8 <Bitstream_read_24bit@plt>
    ddcc:	6138      	str	r0, [r7, #16]
    ddce:	4630      	mov	r0, r6
    ddd0:	f7f7 efb4 	blx	5d3c <Bitstream_read_16bit@plt>
    ddd4:	f824 0f14 	strh.w	r0, [r4, #20]!
    ddd8:	4630      	mov	r0, r6
    ddda:	f7f7 efb0 	blx	5d3c <Bitstream_read_16bit@plt>
    ddde:	f824 0f02 	strh.w	r0, [r4, #2]!
    dde2:	4544      	cmp	r4, r8
    dde4:	d1f8      	bne.n	ddd8 <VideoHeader_parse_box@@Base+0x38>
    dde6:	4628      	mov	r0, r5
    dde8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ddec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ddf0:	b091      	sub	sp, #68	; 0x44
    ddf2:	6884      	ldr	r4, [r0, #8]
    ddf4:	2200      	movs	r2, #0
    ddf6:	6843      	ldr	r3, [r0, #4]
    ddf8:	f647 1970 	movw	r9, #31088	; 0x7970
    ddfc:	f247 4a61 	movw	sl, #29793	; 0x7461
    de00:	9209      	str	r2, [sp, #36]	; 0x24
    de02:	4ab4      	ldr	r2, [pc, #720]	; (e0d4 <VideoHeader_parse_box@@Base+0x334>)
    de04:	4683      	mov	fp, r0
    de06:	4688      	mov	r8, r1
    de08:	f2c6 6974 	movt	r9, #26228	; 0x6674
    de0c:	f6c6 5a65 	movt	sl, #28005	; 0x6d65
    de10:	447a      	add	r2, pc
    de12:	9201      	str	r2, [sp, #4]
    de14:	f104 0208 	add.w	r2, r4, #8
    de18:	429a      	cmp	r2, r3
    de1a:	d222      	bcs.n	de62 <VideoHeader_parse_box@@Base+0xc2>
    de1c:	4658      	mov	r0, fp
    de1e:	f7f7 ee98 	blx	5b50 <Bitstream_read_32bit@plt>
    de22:	4606      	mov	r6, r0
    de24:	4658      	mov	r0, fp
    de26:	f7f7 ee94 	blx	5b50 <Bitstream_read_32bit@plt>
    de2a:	f8cb 4008 	str.w	r4, [fp, #8]
    de2e:	4548      	cmp	r0, r9
    de30:	4605      	mov	r5, r0
    de32:	d02d      	beq.n	de90 <VideoHeader_parse_box@@Base+0xf0>
    de34:	4550      	cmp	r0, sl
    de36:	d01a      	beq.n	de6e <VideoHeader_parse_box@@Base+0xce>
    de38:	9801      	ldr	r0, [sp, #4]
    de3a:	f7f7 ef02 	blx	5c40 <string_type_to_int32@plt>
    de3e:	4285      	cmp	r5, r0
    de40:	d037      	beq.n	deb2 <VideoHeader_parse_box@@Base+0x112>
    de42:	b176      	cbz	r6, de62 <VideoHeader_parse_box@@Base+0xc2>
    de44:	f8db 3004 	ldr.w	r3, [fp, #4]
    de48:	429e      	cmp	r6, r3
    de4a:	d80a      	bhi.n	de62 <VideoHeader_parse_box@@Base+0xc2>
    de4c:	f8db 4008 	ldr.w	r4, [fp, #8]
    de50:	4434      	add	r4, r6
    de52:	42a3      	cmp	r3, r4
    de54:	d305      	bcc.n	de62 <VideoHeader_parse_box@@Base+0xc2>
    de56:	f104 0208 	add.w	r2, r4, #8
    de5a:	f8cb 4008 	str.w	r4, [fp, #8]
    de5e:	429a      	cmp	r2, r3
    de60:	d3dc      	bcc.n	de1c <VideoHeader_parse_box@@Base+0x7c>
    de62:	9b09      	ldr	r3, [sp, #36]	; 0x24
    de64:	f083 0001 	eor.w	r0, r3, #1
    de68:	b011      	add	sp, #68	; 0x44
    de6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    de6e:	f108 0420 	add.w	r4, r8, #32
    de72:	4620      	mov	r0, r4
    de74:	f7f7 ee84 	blx	5b80 <MetaBox_init@plt>
    de78:	4620      	mov	r0, r4
    de7a:	4659      	mov	r1, fp
    de7c:	f7f8 ea7c 	blx	6378 <MetaBox_parse_box@plt>
    de80:	2800      	cmp	r0, #0
    de82:	f040 80c7 	bne.w	e014 <VideoHeader_parse_box@@Base+0x274>
    de86:	f8db 4008 	ldr.w	r4, [fp, #8]
    de8a:	f8db 3004 	ldr.w	r3, [fp, #4]
    de8e:	e7c1      	b.n	de14 <VideoHeader_parse_box@@Base+0x74>
    de90:	4640      	mov	r0, r8
    de92:	f7f7 ee70 	blx	5b74 <FileTypeBox_init@plt>
    de96:	4640      	mov	r0, r8
    de98:	4659      	mov	r1, fp
    de9a:	f7f8 ea74 	blx	6384 <FileTypeBox_parse_box@plt>
    de9e:	2800      	cmp	r0, #0
    dea0:	f040 80b8 	bne.w	e014 <VideoHeader_parse_box@@Base+0x274>
    dea4:	2301      	movs	r3, #1
    dea6:	f8db 4008 	ldr.w	r4, [fp, #8]
    deaa:	9309      	str	r3, [sp, #36]	; 0x24
    deac:	f8db 3004 	ldr.w	r3, [fp, #4]
    deb0:	e7b0      	b.n	de14 <VideoHeader_parse_box@@Base+0x74>
    deb2:	f508 74b4 	add.w	r4, r8, #360	; 0x168
    deb6:	4620      	mov	r0, r4
    deb8:	f7f7 ee68 	blx	5b8c <MoovBox_init@plt>
    debc:	4620      	mov	r0, r4
    debe:	4659      	mov	r1, fp
    dec0:	f7f8 ea66 	blx	6390 <MoovBox_parse_box@plt>
    dec4:	2800      	cmp	r0, #0
    dec6:	f040 80a5 	bne.w	e014 <VideoHeader_parse_box@@Base+0x274>
    deca:	f8d8 33c8 	ldr.w	r3, [r8, #968]	; 0x3c8
    dece:	f8d8 1390 	ldr.w	r1, [r8, #912]	; 0x390
    ded2:	f8d8 c3d0 	ldr.w	ip, [r8, #976]	; 0x3d0
    ded6:	461a      	mov	r2, r3
    ded8:	930c      	str	r3, [sp, #48]	; 0x30
    deda:	2301      	movs	r3, #1
    dedc:	f888 3480 	strb.w	r3, [r8, #1152]	; 0x480
    dee0:	f8d8 33a8 	ldr.w	r3, [r8, #936]	; 0x3a8
    dee4:	9103      	str	r1, [sp, #12]
    dee6:	9304      	str	r3, [sp, #16]
    dee8:	f8d8 33ac 	ldr.w	r3, [r8, #940]	; 0x3ac
    deec:	930a      	str	r3, [sp, #40]	; 0x28
    deee:	f8d8 33b0 	ldr.w	r3, [r8, #944]	; 0x3b0
    def2:	930b      	str	r3, [sp, #44]	; 0x2c
    def4:	f8d8 33cc 	ldr.w	r3, [r8, #972]	; 0x3cc
    def8:	4619      	mov	r1, r3
    defa:	9305      	str	r3, [sp, #20]
    defc:	f8d8 33d4 	ldr.w	r3, [r8, #980]	; 0x3d4
    df00:	9302      	str	r3, [sp, #8]
    df02:	f8d8 33f0 	ldr.w	r3, [r8, #1008]	; 0x3f0
    df06:	9307      	str	r3, [sp, #28]
    df08:	f8d8 3410 	ldr.w	r3, [r8, #1040]	; 0x410
    df0c:	930d      	str	r3, [sp, #52]	; 0x34
    df0e:	4613      	mov	r3, r2
    df10:	2a00      	cmp	r2, #0
    df12:	d07f      	beq.n	e014 <VideoHeader_parse_box@@Base+0x274>
    df14:	eb01 0783 	add.w	r7, r1, r3, lsl #2
    df18:	4602      	mov	r2, r0
    df1a:	460e      	mov	r6, r1
    df1c:	4665      	mov	r5, ip
    df1e:	f856 4b04 	ldr.w	r4, [r6], #4
    df22:	1aa2      	subs	r2, r4, r2
    df24:	d007      	beq.n	df36 <VideoHeader_parse_box@@Base+0x196>
    df26:	6829      	ldr	r1, [r5, #0]
    df28:	2300      	movs	r3, #0
    df2a:	2900      	cmp	r1, #0
    df2c:	d076      	beq.n	e01c <VideoHeader_parse_box@@Base+0x27c>
    df2e:	3301      	adds	r3, #1
    df30:	4408      	add	r0, r1
    df32:	4293      	cmp	r3, r2
    df34:	d1fb      	bne.n	df2e <VideoHeader_parse_box@@Base+0x18e>
    df36:	42be      	cmp	r6, r7
    df38:	f105 0504 	add.w	r5, r5, #4
    df3c:	4622      	mov	r2, r4
    df3e:	d1ee      	bne.n	df1e <VideoHeader_parse_box@@Base+0x17e>
    df40:	2800      	cmp	r0, #0
    df42:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
    df46:	dd65      	ble.n	e014 <VideoHeader_parse_box@@Base+0x274>
    df48:	2118      	movs	r1, #24
    df4a:	f7f7 ef34 	blx	5db4 <calloc@plt>
    df4e:	9006      	str	r0, [sp, #24]
    df50:	f8c8 0484 	str.w	r0, [r8, #1156]	; 0x484
    df54:	2800      	cmp	r0, #0
    df56:	d05d      	beq.n	e014 <VideoHeader_parse_box@@Base+0x274>
    df58:	9902      	ldr	r1, [sp, #8]
    df5a:	9c03      	ldr	r4, [sp, #12]
    df5c:	9807      	ldr	r0, [sp, #28]
    df5e:	680b      	ldr	r3, [r1, #0]
    df60:	6802      	ldr	r2, [r0, #0]
    df62:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    df66:	2a00      	cmp	r2, #0
    df68:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
    df6c:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
    df70:	f1a3 03a8 	sub.w	r3, r3, #168	; 0xa8
    df74:	f8b3 e024 	ldrh.w	lr, [r3, #36]	; 0x24
    df78:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    df7a:	461c      	mov	r4, r3
    df7c:	db4a      	blt.n	e014 <VideoHeader_parse_box@@Base+0x274>
    df7e:	2700      	movs	r7, #0
    df80:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
    df84:	4638      	mov	r0, r7
    df86:	46a0      	mov	r8, r4
    df88:	f8dd c038 	ldr.w	ip, [sp, #56]	; 0x38
    df8c:	9108      	str	r1, [sp, #32]
    df8e:	9702      	str	r7, [sp, #8]
    df90:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    df94:	9b05      	ldr	r3, [sp, #20]
    df96:	9902      	ldr	r1, [sp, #8]
    df98:	f853 3027 	ldr.w	r3, [r3, r7, lsl #2]
    df9c:	428b      	cmp	r3, r1
    df9e:	bf1c      	itt	ne
    dfa0:	f85c 1027 	ldrne.w	r1, [ip, r7, lsl #2]
    dfa4:	f04f 0b00 	movne.w	fp, #0
    dfa8:	d04a      	beq.n	e040 <VideoHeader_parse_box@@Base+0x2a0>
    dfaa:	2900      	cmp	r1, #0
    dfac:	d062      	beq.n	e074 <VideoHeader_parse_box@@Base+0x2d4>
    dfae:	eb00 0140 	add.w	r1, r0, r0, lsl #1
    dfb2:	9e06      	ldr	r6, [sp, #24]
    dfb4:	9d0d      	ldr	r5, [sp, #52]	; 0x34
    dfb6:	eb06 03c1 	add.w	r3, r6, r1, lsl #3
    dfba:	f846 0031 	str.w	r0, [r6, r1, lsl #3]
    dfbe:	eb05 0480 	add.w	r4, r5, r0, lsl #2
    dfc2:	60da      	str	r2, [r3, #12]
    dfc4:	f855 1020 	ldr.w	r1, [r5, r0, lsl #2]
    dfc8:	f8c3 e004 	str.w	lr, [r3, #4]
    dfcc:	2900      	cmp	r1, #0
    dfce:	f8c3 8008 	str.w	r8, [r3, #8]
    dfd2:	6119      	str	r1, [r3, #16]
    dfd4:	f855 6020 	ldr.w	r6, [r5, r0, lsl #2]
    dfd8:	db1c      	blt.n	e014 <VideoHeader_parse_box@@Base+0x274>
    dfda:	2500      	movs	r5, #0
    dfdc:	e014      	b.n	e008 <VideoHeader_parse_box@@Base+0x268>
    dfde:	f85c 1027 	ldr.w	r1, [ip, r7, lsl #2]
    dfe2:	428d      	cmp	r5, r1
    dfe4:	d221      	bcs.n	e02a <VideoHeader_parse_box@@Base+0x28a>
    dfe6:	4432      	add	r2, r6
    dfe8:	6198      	str	r0, [r3, #24]
    dfea:	625a      	str	r2, [r3, #36]	; 0x24
    dfec:	2a00      	cmp	r2, #0
    dfee:	6861      	ldr	r1, [r4, #4]
    dff0:	f103 0318 	add.w	r3, r3, #24
    dff4:	f8c3 e004 	str.w	lr, [r3, #4]
    dff8:	f8c3 8008 	str.w	r8, [r3, #8]
    dffc:	6119      	str	r1, [r3, #16]
    dffe:	f854 6f04 	ldr.w	r6, [r4, #4]!
    e002:	db07      	blt.n	e014 <VideoHeader_parse_box@@Base+0x274>
    e004:	2900      	cmp	r1, #0
    e006:	db05      	blt.n	e014 <VideoHeader_parse_box@@Base+0x274>
    e008:	42d1      	cmn	r1, r2
    e00a:	f105 0501 	add.w	r5, r5, #1
    e00e:	f100 0001 	add.w	r0, r0, #1
    e012:	d5e4      	bpl.n	dfde <VideoHeader_parse_box@@Base+0x23e>
    e014:	2001      	movs	r0, #1
    e016:	b011      	add	sp, #68	; 0x44
    e018:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    e01c:	3301      	adds	r3, #1
    e01e:	4293      	cmp	r3, r2
    e020:	d089      	beq.n	df36 <VideoHeader_parse_box@@Base+0x196>
    e022:	3301      	adds	r3, #1
    e024:	4293      	cmp	r3, r2
    e026:	d1f9      	bne.n	e01c <VideoHeader_parse_box@@Base+0x27c>
    e028:	e785      	b.n	df36 <VideoHeader_parse_box@@Base+0x196>
    e02a:	9b05      	ldr	r3, [sp, #20]
    e02c:	f853 4027 	ldr.w	r4, [r3, r7, lsl #2]
    e030:	9b02      	ldr	r3, [sp, #8]
    e032:	f10b 0b01 	add.w	fp, fp, #1
    e036:	1ae5      	subs	r5, r4, r3
    e038:	4623      	mov	r3, r4
    e03a:	45ab      	cmp	fp, r5
    e03c:	d3b5      	bcc.n	dfaa <VideoHeader_parse_box@@Base+0x20a>
    e03e:	9402      	str	r4, [sp, #8]
    e040:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    e042:	3701      	adds	r7, #1
    e044:	429f      	cmp	r7, r3
    e046:	d017      	beq.n	e078 <VideoHeader_parse_box@@Base+0x2d8>
    e048:	9a08      	ldr	r2, [sp, #32]
    e04a:	9907      	ldr	r1, [sp, #28]
    e04c:	f852 3f04 	ldr.w	r3, [r2, #4]!
    e050:	9208      	str	r2, [sp, #32]
    e052:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    e056:	f851 2f04 	ldr.w	r2, [r1, #4]!
    e05a:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
    e05e:	2a00      	cmp	r2, #0
    e060:	9107      	str	r1, [sp, #28]
    e062:	9903      	ldr	r1, [sp, #12]
    e064:	eb01 03c3 	add.w	r3, r1, r3, lsl #3
    e068:	f833 ec84 	ldrh.w	lr, [r3, #-132]
    e06c:	f833 8c82 	ldrh.w	r8, [r3, #-130]
    e070:	da90      	bge.n	df94 <VideoHeader_parse_box@@Base+0x1f4>
    e072:	e7cf      	b.n	e014 <VideoHeader_parse_box@@Base+0x274>
    e074:	461c      	mov	r4, r3
    e076:	e7db      	b.n	e030 <VideoHeader_parse_box@@Base+0x290>
    e078:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
    e07c:	9b04      	ldr	r3, [sp, #16]
    e07e:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    e082:	f8c8 0488 	str.w	r0, [r8, #1160]	; 0x488
    e086:	2b00      	cmp	r3, #0
    e088:	f43f aefd 	beq.w	de86 <VideoHeader_parse_box@@Base+0xe6>
    e08c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    e08e:	2100      	movs	r1, #0
    e090:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
    e092:	460d      	mov	r5, r1
    e094:	9c06      	ldr	r4, [sp, #24]
    e096:	f1a3 0e04 	sub.w	lr, r3, #4
    e09a:	f85e 2f04 	ldr.w	r2, [lr, #4]!
    e09e:	2a00      	cmp	r2, #0
    e0a0:	dd0f      	ble.n	e0c2 <VideoHeader_parse_box@@Base+0x322>
    e0a2:	eb01 0341 	add.w	r3, r1, r1, lsl #1
    e0a6:	4411      	add	r1, r2
    e0a8:	eb01 0241 	add.w	r2, r1, r1, lsl #1
    e0ac:	eb04 03c3 	add.w	r3, r4, r3, lsl #3
    e0b0:	eb04 02c2 	add.w	r2, r4, r2, lsl #3
    e0b4:	f857 6025 	ldr.w	r6, [r7, r5, lsl #2]
    e0b8:	3318      	adds	r3, #24
    e0ba:	f843 6c04 	str.w	r6, [r3, #-4]
    e0be:	4293      	cmp	r3, r2
    e0c0:	d1f8      	bne.n	e0b4 <VideoHeader_parse_box@@Base+0x314>
    e0c2:	4281      	cmp	r1, r0
    e0c4:	f4bf aedf 	bcs.w	de86 <VideoHeader_parse_box@@Base+0xe6>
    e0c8:	9b04      	ldr	r3, [sp, #16]
    e0ca:	3501      	adds	r5, #1
    e0cc:	429d      	cmp	r5, r3
    e0ce:	d1e4      	bne.n	e09a <VideoHeader_parse_box@@Base+0x2fa>
    e0d0:	e6d9      	b.n	de86 <VideoHeader_parse_box@@Base+0xe6>
    e0d2:	bf00      	nop
    e0d4:	6f80      	ldr	r0, [r0, #120]	; 0x78
	...

0000e0d8 <HeifBox_init@@Base>:
    e0d8:	b510      	push	{r4, lr}
    e0da:	2300      	movs	r3, #0
    e0dc:	f880 3480 	strb.w	r3, [r0, #1152]	; 0x480
    e0e0:	4604      	mov	r4, r0
    e0e2:	f7f7 ed48 	blx	5b74 <FileTypeBox_init@plt>
    e0e6:	f104 0020 	add.w	r0, r4, #32
    e0ea:	f7f7 ed4a 	blx	5b80 <MetaBox_init@plt>
    e0ee:	f504 70b4 	add.w	r0, r4, #360	; 0x168
    e0f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    e0f6:	f005 bfcd 	b.w	14094 <__aeabi_llsl@@Base+0x1f8>
    e0fa:	bf00      	nop

0000e0fc <HeifBox_release@@Base>:
    e0fc:	b510      	push	{r4, lr}
    e0fe:	4604      	mov	r4, r0
    e100:	f7f8 e94c 	blx	639c <FileTypeBox_release@plt>
    e104:	f104 0020 	add.w	r0, r4, #32
    e108:	f7f8 e94e 	blx	63a8 <MetaBox_release@plt>
    e10c:	f504 70b4 	add.w	r0, r4, #360	; 0x168
    e110:	f7f8 e950 	blx	63b4 <MoovBox_release@plt>
    e114:	f8d4 0484 	ldr.w	r0, [r4, #1156]	; 0x484
    e118:	b108      	cbz	r0, e11e <HeifBox_release@@Base+0x22>
    e11a:	f7f7 eca8 	blx	5a6c <free@plt>
    e11e:	2300      	movs	r3, #0
    e120:	f8c4 3484 	str.w	r3, [r4, #1156]	; 0x484
    e124:	bd10      	pop	{r4, pc}
    e126:	bf00      	nop

0000e128 <parse_heifbox_from_heif_bitstream@@Base>:
    e128:	6802      	ldr	r2, [r0, #0]
    e12a:	b122      	cbz	r2, e136 <parse_heifbox_from_heif_bitstream@@Base+0xe>
    e12c:	6843      	ldr	r3, [r0, #4]
    e12e:	2b07      	cmp	r3, #7
    e130:	d901      	bls.n	e136 <parse_heifbox_from_heif_bitstream@@Base+0xe>
    e132:	f7ff be5b 	b.w	ddec <VideoHeader_parse_box@@Base+0x4c>
    e136:	2001      	movs	r0, #1
    e138:	4770      	bx	lr
    e13a:	bf00      	nop

0000e13c <get_bytevc1_config@@Base>:
    e13c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e140:	b095      	sub	sp, #84	; 0x54
    e142:	4b5a      	ldr	r3, [pc, #360]	; (e2ac <get_bytevc1_config@@Base+0x170>)
    e144:	468a      	mov	sl, r1
    e146:	9205      	str	r2, [sp, #20]
    e148:	2500      	movs	r5, #0
    e14a:	f8d0 2390 	ldr.w	r2, [r0, #912]	; 0x390
    e14e:	447b      	add	r3, pc
    e150:	681b      	ldr	r3, [r3, #0]
    e152:	f8d0 73c8 	ldr.w	r7, [r0, #968]	; 0x3c8
    e156:	9304      	str	r3, [sp, #16]
    e158:	4611      	mov	r1, r2
    e15a:	681a      	ldr	r2, [r3, #0]
    e15c:	9507      	str	r5, [sp, #28]
    e15e:	f8d0 33d4 	ldr.w	r3, [r0, #980]	; 0x3d4
    e162:	9213      	str	r2, [sp, #76]	; 0x4c
    e164:	9508      	str	r5, [sp, #32]
    e166:	9509      	str	r5, [sp, #36]	; 0x24
    e168:	950a      	str	r5, [sp, #40]	; 0x28
    e16a:	950b      	str	r5, [sp, #44]	; 0x2c
    e16c:	950c      	str	r5, [sp, #48]	; 0x30
    e16e:	950d      	str	r5, [sp, #52]	; 0x34
    e170:	950e      	str	r5, [sp, #56]	; 0x38
    e172:	950f      	str	r5, [sp, #60]	; 0x3c
    e174:	9510      	str	r5, [sp, #64]	; 0x40
    e176:	9511      	str	r5, [sp, #68]	; 0x44
    e178:	9512      	str	r5, [sp, #72]	; 0x48
    e17a:	2f00      	cmp	r7, #0
    e17c:	d07f      	beq.n	e27e <get_bytevc1_config@@Base+0x142>
    e17e:	f1a3 0b04 	sub.w	fp, r3, #4
    e182:	f8df 912c 	ldr.w	r9, [pc, #300]	; e2b0 <get_bytevc1_config@@Base+0x174>
    e186:	f8cd a004 	str.w	sl, [sp, #4]
    e18a:	f10d 081c 	add.w	r8, sp, #28
    e18e:	46da      	mov	sl, fp
    e190:	44f9      	add	r9, pc
    e192:	46bb      	mov	fp, r7
    e194:	460f      	mov	r7, r1
    e196:	e002      	b.n	e19e <get_bytevc1_config@@Base+0x62>
    e198:	3501      	adds	r5, #1
    e19a:	455d      	cmp	r5, fp
    e19c:	d06f      	beq.n	e27e <get_bytevc1_config@@Base+0x142>
    e19e:	f85a 4f04 	ldr.w	r4, [sl, #4]!
    e1a2:	46c6      	mov	lr, r8
    e1a4:	eb04 0444 	add.w	r4, r4, r4, lsl #1
    e1a8:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
    e1ac:	eb07 04c4 	add.w	r4, r7, r4, lsl #3
    e1b0:	3c4c      	subs	r4, #76	; 0x4c
    e1b2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    e1b4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
    e1b8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    e1ba:	9e08      	ldr	r6, [sp, #32]
    e1bc:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
    e1c0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
    e1c4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
    e1c8:	4648      	mov	r0, r9
    e1ca:	f7f7 ed3a 	blx	5c40 <string_type_to_int32@plt>
    e1ce:	4286      	cmp	r6, r0
    e1d0:	d1e2      	bne.n	e198 <get_bytevc1_config@@Base+0x5c>
    e1d2:	9d11      	ldr	r5, [sp, #68]	; 0x44
    e1d4:	f8dd a004 	ldr.w	sl, [sp, #4]
    e1d8:	2d00      	cmp	r5, #0
    e1da:	dd63      	ble.n	e2a4 <get_bytevc1_config@@Base+0x168>
    e1dc:	2300      	movs	r3, #0
    e1de:	9a12      	ldr	r2, [sp, #72]	; 0x48
    e1e0:	4699      	mov	r9, r3
    e1e2:	4698      	mov	r8, r3
    e1e4:	464c      	mov	r4, r9
    e1e6:	9303      	str	r3, [sp, #12]
    e1e8:	9201      	str	r2, [sp, #4]
    e1ea:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    e1ee:	9a01      	ldr	r2, [sp, #4]
    e1f0:	009b      	lsls	r3, r3, #2
    e1f2:	9302      	str	r3, [sp, #8]
    e1f4:	441a      	add	r2, r3
    e1f6:	8891      	ldrh	r1, [r2, #4]
    e1f8:	2900      	cmp	r1, #0
    e1fa:	d04a      	beq.n	e292 <get_bytevc1_config@@Base+0x156>
    e1fc:	2500      	movs	r5, #0
    e1fe:	6892      	ldr	r2, [r2, #8]
    e200:	46ab      	mov	fp, r5
    e202:	e02d      	b.n	e260 <get_bytevc1_config@@Base+0x124>
    e204:	f832 103b 	ldrh.w	r1, [r2, fp, lsl #3]
    e208:	ea4f 07cb 	mov.w	r7, fp, lsl #3
    e20c:	3104      	adds	r1, #4
    e20e:	4449      	add	r1, r9
    e210:	f7f7 ec0e 	blx	5a30 <realloc@plt>
    e214:	4686      	mov	lr, r0
    e216:	f8ca 0000 	str.w	r0, [sl]
    e21a:	9b12      	ldr	r3, [sp, #72]	; 0x48
    e21c:	eb0e 0104 	add.w	r1, lr, r4
    e220:	9a02      	ldr	r2, [sp, #8]
    e222:	1d25      	adds	r5, r4, #4
    e224:	eb0e 0005 	add.w	r0, lr, r5
    e228:	f10b 0b01 	add.w	fp, fp, #1
    e22c:	189e      	adds	r6, r3, r2
    e22e:	9301      	str	r3, [sp, #4]
    e230:	2301      	movs	r3, #1
    e232:	68b2      	ldr	r2, [r6, #8]
    e234:	5bd2      	ldrh	r2, [r2, r7]
    e236:	f80e 8004 	strb.w	r8, [lr, r4]
    e23a:	3204      	adds	r2, #4
    e23c:	f881 8001 	strb.w	r8, [r1, #1]
    e240:	f881 8002 	strb.w	r8, [r1, #2]
    e244:	4491      	add	r9, r2
    e246:	70cb      	strb	r3, [r1, #3]
    e248:	68b2      	ldr	r2, [r6, #8]
    e24a:	19d1      	adds	r1, r2, r7
    e24c:	5bd2      	ldrh	r2, [r2, r7]
    e24e:	6849      	ldr	r1, [r1, #4]
    e250:	f7f7 ebd6 	blx	5a00 <memcpy@plt>
    e254:	68b2      	ldr	r2, [r6, #8]
    e256:	88b1      	ldrh	r1, [r6, #4]
    e258:	5bd4      	ldrh	r4, [r2, r7]
    e25a:	4559      	cmp	r1, fp
    e25c:	442c      	add	r4, r5
    e25e:	dd17      	ble.n	e290 <get_bytevc1_config@@Base+0x154>
    e260:	f8da 0000 	ldr.w	r0, [sl]
    e264:	2800      	cmp	r0, #0
    e266:	d1cd      	bne.n	e204 <get_bytevc1_config@@Base+0xc8>
    e268:	f832 003b 	ldrh.w	r0, [r2, fp, lsl #3]
    e26c:	ea4f 07cb 	mov.w	r7, fp, lsl #3
    e270:	3004      	adds	r0, #4
    e272:	f7f7 ebea 	blx	5a48 <malloc@plt>
    e276:	4686      	mov	lr, r0
    e278:	f8ca 0000 	str.w	r0, [sl]
    e27c:	e7cd      	b.n	e21a <get_bytevc1_config@@Base+0xde>
    e27e:	2001      	movs	r0, #1
    e280:	9b04      	ldr	r3, [sp, #16]
    e282:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    e284:	681b      	ldr	r3, [r3, #0]
    e286:	429a      	cmp	r2, r3
    e288:	d10e      	bne.n	e2a8 <get_bytevc1_config@@Base+0x16c>
    e28a:	b015      	add	sp, #84	; 0x54
    e28c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    e290:	9d11      	ldr	r5, [sp, #68]	; 0x44
    e292:	9b03      	ldr	r3, [sp, #12]
    e294:	3301      	adds	r3, #1
    e296:	9303      	str	r3, [sp, #12]
    e298:	42ab      	cmp	r3, r5
    e29a:	dba6      	blt.n	e1ea <get_bytevc1_config@@Base+0xae>
    e29c:	9b05      	ldr	r3, [sp, #20]
    e29e:	2000      	movs	r0, #0
    e2a0:	601c      	str	r4, [r3, #0]
    e2a2:	e7ed      	b.n	e280 <get_bytevc1_config@@Base+0x144>
    e2a4:	2400      	movs	r4, #0
    e2a6:	e7f9      	b.n	e29c <get_bytevc1_config@@Base+0x160>
    e2a8:	f7f7 ebb0 	blx	5a0c <__stack_chk_fail@plt>
    e2ac:	896e      	ldrh	r6, [r5, #10]
    e2ae:	0000      	movs	r0, r0
    e2b0:	6b14      	ldr	r4, [r2, #48]	; 0x30
	...

0000e2b4 <Bytevc1Bitstream_init@@Base>:
    e2b4:	2100      	movs	r1, #0
    e2b6:	2268      	movs	r2, #104	; 0x68
    e2b8:	f005 be7c 	b.w	13fb4 <__aeabi_llsl@@Base+0x118>

0000e2bc <Bytevc1Bitstream_release@@Base>:
    e2bc:	b510      	push	{r4, lr}
    e2be:	4604      	mov	r4, r0
    e2c0:	6800      	ldr	r0, [r0, #0]
    e2c2:	b118      	cbz	r0, e2cc <Bytevc1Bitstream_release@@Base+0x10>
    e2c4:	f7f7 ebd2 	blx	5a6c <free@plt>
    e2c8:	2300      	movs	r3, #0
    e2ca:	6023      	str	r3, [r4, #0]
    e2cc:	6ce0      	ldr	r0, [r4, #76]	; 0x4c
    e2ce:	b120      	cbz	r0, e2da <Bytevc1Bitstream_release@@Base+0x1e>
    e2d0:	f7f7 ebcc 	blx	5a6c <free@plt>
    e2d4:	2300      	movs	r3, #0
    e2d6:	64e3      	str	r3, [r4, #76]	; 0x4c
    e2d8:	bd10      	pop	{r4, pc}
    e2da:	bd10      	pop	{r4, pc}

0000e2dc <is_file_type_valid@@Base>:
    e2dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e2e0:	b08d      	sub	sp, #52	; 0x34
    e2e2:	4c33      	ldr	r4, [pc, #204]	; (e3b0 <is_file_type_valid@@Base+0xd4>)
    e2e4:	4605      	mov	r5, r0
    e2e6:	6886      	ldr	r6, [r0, #8]
    e2e8:	447c      	add	r4, pc
    e2ea:	6824      	ldr	r4, [r4, #0]
    e2ec:	6823      	ldr	r3, [r4, #0]
    e2ee:	930b      	str	r3, [sp, #44]	; 0x2c
    e2f0:	f7f7 ec2e 	blx	5b50 <Bitstream_read_32bit@plt>
    e2f4:	4628      	mov	r0, r5
    e2f6:	f7f7 ec2c 	blx	5b50 <Bitstream_read_32bit@plt>
    e2fa:	f647 1370 	movw	r3, #31088	; 0x7970
    e2fe:	f2c6 6374 	movt	r3, #26228	; 0x6674
    e302:	60ae      	str	r6, [r5, #8]
    e304:	4298      	cmp	r0, r3
    e306:	bf18      	it	ne
    e308:	2000      	movne	r0, #0
    e30a:	d006      	beq.n	e31a <is_file_type_valid@@Base+0x3e>
    e30c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    e30e:	6823      	ldr	r3, [r4, #0]
    e310:	429a      	cmp	r2, r3
    e312:	d14b      	bne.n	e3ac <is_file_type_valid@@Base+0xd0>
    e314:	b00d      	add	sp, #52	; 0x34
    e316:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    e31a:	f10d 0b0c 	add.w	fp, sp, #12
    e31e:	4658      	mov	r0, fp
    e320:	f7f7 ec28 	blx	5b74 <FileTypeBox_init@plt>
    e324:	4658      	mov	r0, fp
    e326:	4629      	mov	r1, r5
    e328:	f7f8 e82c 	blx	6384 <FileTypeBox_parse_box@plt>
    e32c:	2800      	cmp	r0, #0
    e32e:	d138      	bne.n	e3a2 <is_file_type_valid@@Base+0xc6>
    e330:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    e332:	2b00      	cmp	r3, #0
    e334:	dd35      	ble.n	e3a2 <is_file_type_valid@@Base+0xc6>
    e336:	9d07      	ldr	r5, [sp, #28]
    e338:	4607      	mov	r7, r0
    e33a:	f8df 9078 	ldr.w	r9, [pc, #120]	; e3b4 <is_file_type_valid@@Base+0xd8>
    e33e:	eb05 0883 	add.w	r8, r5, r3, lsl #2
    e342:	4b1d      	ldr	r3, [pc, #116]	; (e3b8 <is_file_type_valid@@Base+0xdc>)
    e344:	f8df a074 	ldr.w	sl, [pc, #116]	; e3bc <is_file_type_valid@@Base+0xe0>
    e348:	44f9      	add	r9, pc
    e34a:	447b      	add	r3, pc
    e34c:	9300      	str	r3, [sp, #0]
    e34e:	4b1c      	ldr	r3, [pc, #112]	; (e3c0 <is_file_type_valid@@Base+0xe4>)
    e350:	44fa      	add	sl, pc
    e352:	447b      	add	r3, pc
    e354:	9301      	str	r3, [sp, #4]
    e356:	e012      	b.n	e37e <is_file_type_valid@@Base+0xa2>
    e358:	4630      	mov	r0, r6
    e35a:	4651      	mov	r1, sl
    e35c:	f7f8 e830 	blx	63c0 <strcmp@plt>
    e360:	b1a8      	cbz	r0, e38e <is_file_type_valid@@Base+0xb2>
    e362:	4630      	mov	r0, r6
    e364:	9900      	ldr	r1, [sp, #0]
    e366:	f7f8 e82c 	blx	63c0 <strcmp@plt>
    e36a:	b180      	cbz	r0, e38e <is_file_type_valid@@Base+0xb2>
    e36c:	4630      	mov	r0, r6
    e36e:	9901      	ldr	r1, [sp, #4]
    e370:	f7f8 e826 	blx	63c0 <strcmp@plt>
    e374:	2800      	cmp	r0, #0
    e376:	bf08      	it	eq
    e378:	2701      	moveq	r7, #1
    e37a:	4545      	cmp	r5, r8
    e37c:	d00b      	beq.n	e396 <is_file_type_valid@@Base+0xba>
    e37e:	f855 6b04 	ldr.w	r6, [r5], #4
    e382:	4649      	mov	r1, r9
    e384:	4630      	mov	r0, r6
    e386:	f7f8 e81c 	blx	63c0 <strcmp@plt>
    e38a:	2800      	cmp	r0, #0
    e38c:	d1e4      	bne.n	e358 <is_file_type_valid@@Base+0x7c>
    e38e:	4545      	cmp	r5, r8
    e390:	f04f 0701 	mov.w	r7, #1
    e394:	d1f3      	bne.n	e37e <is_file_type_valid@@Base+0xa2>
    e396:	b127      	cbz	r7, e3a2 <is_file_type_valid@@Base+0xc6>
    e398:	4658      	mov	r0, fp
    e39a:	f7f8 e800 	blx	639c <FileTypeBox_release@plt>
    e39e:	2001      	movs	r0, #1
    e3a0:	e7b4      	b.n	e30c <is_file_type_valid@@Base+0x30>
    e3a2:	4658      	mov	r0, fp
    e3a4:	f7f7 effa 	blx	639c <FileTypeBox_release@plt>
    e3a8:	2000      	movs	r0, #0
    e3aa:	e7af      	b.n	e30c <is_file_type_valid@@Base+0x30>
    e3ac:	f7f7 eb2e 	blx	5a0c <__stack_chk_fail@plt>
    e3b0:	87d4      	strh	r4, [r2, #62]	; 0x3e
    e3b2:	0000      	movs	r0, r0
    e3b4:	6a98      	ldr	r0, [r3, #40]	; 0x28
    e3b6:	0000      	movs	r0, r0
    e3b8:	6aa6      	ldr	r6, [r4, #40]	; 0x28
    e3ba:	0000      	movs	r0, r0
    e3bc:	6a98      	ldr	r0, [r3, #40]	; 0x28
    e3be:	0000      	movs	r0, r0
    e3c0:	6aa6      	ldr	r6, [r4, #40]	; 0x28
	...

0000e3c4 <check_heif_file@@Base>:
    e3c4:	f8df 3454 	ldr.w	r3, [pc, #1108]	; e81c <check_heif_file@@Base+0x458>
    e3c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e3cc:	447b      	add	r3, pc
    e3ce:	681b      	ldr	r3, [r3, #0]
    e3d0:	b0ff      	sub	sp, #508	; 0x1fc
    e3d2:	4604      	mov	r4, r0
    e3d4:	f10d 097c 	add.w	r9, sp, #124	; 0x7c
    e3d8:	460d      	mov	r5, r1
    e3da:	9307      	str	r3, [sp, #28]
    e3dc:	681b      	ldr	r3, [r3, #0]
    e3de:	4648      	mov	r0, r9
    e3e0:	937d      	str	r3, [sp, #500]	; 0x1f4
    e3e2:	f7f7 eb50 	blx	5a84 <Bitstream_init@plt>
    e3e6:	2c00      	cmp	r4, #0
    e3e8:	bf18      	it	ne
    e3ea:	2d08      	cmpne	r5, #8
    e3ec:	e889 0030 	stmia.w	r9, {r4, r5}
    e3f0:	bf9a      	itte	ls
    e3f2:	2001      	movls	r0, #1
    e3f4:	2401      	movls	r4, #1
    e3f6:	2400      	movhi	r4, #0
    e3f8:	d808      	bhi.n	e40c <check_heif_file@@Base+0x48>
    e3fa:	9b07      	ldr	r3, [sp, #28]
    e3fc:	9a7d      	ldr	r2, [sp, #500]	; 0x1f4
    e3fe:	681b      	ldr	r3, [r3, #0]
    e400:	429a      	cmp	r2, r3
    e402:	f040 8208 	bne.w	e816 <check_heif_file@@Base+0x452>
    e406:	b07f      	add	sp, #508	; 0x1fc
    e408:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    e40c:	4648      	mov	r0, r9
    e40e:	f7f7 eba0 	blx	5b50 <Bitstream_read_32bit@plt>
    e412:	4648      	mov	r0, r9
    e414:	f7f7 eb9c 	blx	5b50 <Bitstream_read_32bit@plt>
    e418:	f647 1370 	movw	r3, #31088	; 0x7970
    e41c:	f2c6 6374 	movt	r3, #26228	; 0x6674
    e420:	f8c9 4008 	str.w	r4, [r9, #8]
    e424:	4298      	cmp	r0, r3
    e426:	bf18      	it	ne
    e428:	4620      	movne	r0, r4
    e42a:	d1e6      	bne.n	e3fa <check_heif_file@@Base+0x36>
    e42c:	4bfc      	ldr	r3, [pc, #1008]	; (e820 <check_heif_file@@Base+0x45c>)
    e42e:	447b      	add	r3, pc
    e430:	931b      	str	r3, [sp, #108]	; 0x6c
    e432:	4bfc      	ldr	r3, [pc, #1008]	; (e824 <check_heif_file@@Base+0x460>)
    e434:	447b      	add	r3, pc
    e436:	931c      	str	r3, [sp, #112]	; 0x70
    e438:	4bfb      	ldr	r3, [pc, #1004]	; (e828 <check_heif_file@@Base+0x464>)
    e43a:	447b      	add	r3, pc
    e43c:	9310      	str	r3, [sp, #64]	; 0x40
    e43e:	4bfb      	ldr	r3, [pc, #1004]	; (e82c <check_heif_file@@Base+0x468>)
    e440:	447b      	add	r3, pc
    e442:	931a      	str	r3, [sp, #104]	; 0x68
    e444:	f8d9 3004 	ldr.w	r3, [r9, #4]
    e448:	f104 0208 	add.w	r2, r4, #8
    e44c:	429a      	cmp	r2, r3
    e44e:	f080 81d2 	bcs.w	e7f6 <check_heif_file@@Base+0x432>
    e452:	4648      	mov	r0, r9
    e454:	f7f7 eb7c 	blx	5b50 <Bitstream_read_32bit@plt>
    e458:	4605      	mov	r5, r0
    e45a:	4648      	mov	r0, r9
    e45c:	f7f7 eb78 	blx	5b50 <Bitstream_read_32bit@plt>
    e460:	f647 1370 	movw	r3, #31088	; 0x7970
    e464:	f2c6 6374 	movt	r3, #26228	; 0x6674
    e468:	f8c9 4008 	str.w	r4, [r9, #8]
    e46c:	4298      	cmp	r0, r3
    e46e:	f000 815d 	beq.w	e72c <check_heif_file@@Base+0x368>
    e472:	f247 4361 	movw	r3, #29793	; 0x7461
    e476:	f6c6 5365 	movt	r3, #28005	; 0x6d65
    e47a:	4298      	cmp	r0, r3
    e47c:	bf1c      	itt	ne
    e47e:	1964      	addne	r4, r4, r5
    e480:	f8c9 4008 	strne.w	r4, [r9, #8]
    e484:	d1de      	bne.n	e444 <check_heif_file@@Base+0x80>
    e486:	ab2b      	add	r3, sp, #172	; 0xac
    e488:	930c      	str	r3, [sp, #48]	; 0x30
    e48a:	461c      	mov	r4, r3
    e48c:	4618      	mov	r0, r3
    e48e:	f7f7 eb78 	blx	5b80 <MetaBox_init@plt>
    e492:	4620      	mov	r0, r4
    e494:	4649      	mov	r1, r9
    e496:	f7f7 ef70 	blx	6378 <MetaBox_parse_box@plt>
    e49a:	2800      	cmp	r0, #0
    e49c:	f040 819f 	bne.w	e7de <check_heif_file@@Base+0x41a>
    e4a0:	9d0c      	ldr	r5, [sp, #48]	; 0x30
    e4a2:	6e2b      	ldr	r3, [r5, #96]	; 0x60
    e4a4:	6c6a      	ldr	r2, [r5, #68]	; 0x44
    e4a6:	2b00      	cmp	r3, #0
    e4a8:	4619      	mov	r1, r3
    e4aa:	9303      	str	r3, [sp, #12]
    e4ac:	4614      	mov	r4, r2
    e4ae:	9219      	str	r2, [sp, #100]	; 0x64
    e4b0:	f340 81a8 	ble.w	e804 <check_heif_file@@Base+0x440>
    e4b4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
    e4b8:	6deb      	ldr	r3, [r5, #92]	; 0x5c
    e4ba:	4605      	mov	r5, r0
    e4bc:	4610      	mov	r0, r2
    e4be:	eb01 0080 	add.w	r0, r1, r0, lsl #2
    e4c2:	4619      	mov	r1, r3
    e4c4:	eb03 0080 	add.w	r0, r3, r0, lsl #2
    e4c8:	694a      	ldr	r2, [r1, #20]
    e4ca:	3134      	adds	r1, #52	; 0x34
    e4cc:	4294      	cmp	r4, r2
    e4ce:	bf08      	it	eq
    e4d0:	f851 5c08 	ldreq.w	r5, [r1, #-8]
    e4d4:	4281      	cmp	r1, r0
    e4d6:	d1f7      	bne.n	e4c8 <check_heif_file@@Base+0x104>
    e4d8:	f646 1264 	movw	r2, #26980	; 0x6964
    e4dc:	9505      	str	r5, [sp, #20]
    e4de:	f2c6 7272 	movt	r2, #26482	; 0x6772
    e4e2:	4295      	cmp	r5, r2
    e4e4:	bf1c      	itt	ne
    e4e6:	2200      	movne	r2, #0
    e4e8:	9217      	strne	r2, [sp, #92]	; 0x5c
    e4ea:	f000 815e 	beq.w	e7aa <check_heif_file@@Base+0x3e6>
    e4ee:	980c      	ldr	r0, [sp, #48]	; 0x30
    e4f0:	f646 5a62 	movw	sl, #28002	; 0x6d62
    e4f4:	f04f 0c00 	mov.w	ip, #0
    e4f8:	f8cd 9074 	str.w	r9, [sp, #116]	; 0x74
    e4fc:	469e      	mov	lr, r3
    e4fe:	f8cd c02c 	str.w	ip, [sp, #44]	; 0x2c
    e502:	f890 2100 	ldrb.w	r2, [r0, #256]	; 0x100
    e506:	f2c7 4a68 	movt	sl, #29800	; 0x7468
    e50a:	f890 1114 	ldrb.w	r1, [r0, #276]	; 0x114
    e50e:	4614      	mov	r4, r2
    e510:	920a      	str	r2, [sp, #40]	; 0x28
    e512:	f8d0 2144 	ldr.w	r2, [r0, #324]	; 0x144
    e516:	460d      	mov	r5, r1
    e518:	9111      	str	r1, [sp, #68]	; 0x44
    e51a:	4601      	mov	r1, r0
    e51c:	4616      	mov	r6, r2
    e51e:	9206      	str	r2, [sp, #24]
    e520:	f8d0 2090 	ldr.w	r2, [r0, #144]	; 0x90
    e524:	eb06 0b46 	add.w	fp, r6, r6, lsl #1
    e528:	f8d0 00fc 	ldr.w	r0, [r0, #252]	; 0xfc
    e52c:	4617      	mov	r7, r2
    e52e:	9214      	str	r2, [sp, #80]	; 0x50
    e530:	9009      	str	r0, [sp, #36]	; 0x24
    e532:	4608      	mov	r0, r1
    e534:	f8d1 1110 	ldr.w	r1, [r1, #272]	; 0x110
    e538:	eb04 0244 	add.w	r2, r4, r4, lsl #1
    e53c:	f8d0 6140 	ldr.w	r6, [r0, #320]	; 0x140
    e540:	eb05 0445 	add.w	r4, r5, r5, lsl #1
    e544:	9112      	str	r1, [sp, #72]	; 0x48
    e546:	460d      	mov	r5, r1
    e548:	4601      	mov	r1, r0
    e54a:	9809      	ldr	r0, [sp, #36]	; 0x24
    e54c:	eb05 0484 	add.w	r4, r5, r4, lsl #2
    e550:	9413      	str	r4, [sp, #76]	; 0x4c
    e552:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
    e556:	f8d1 20e4 	ldr.w	r2, [r1, #228]	; 0xe4
    e55a:	f246 3443 	movw	r4, #25411	; 0x6343
    e55e:	f246 3131 	movw	r1, #25393	; 0x6331
    e562:	f6c6 0176 	movt	r1, #26742	; 0x6876
    e566:	f6c6 0476 	movt	r4, #26742	; 0x6876
    e56a:	4615      	mov	r5, r2
    e56c:	9216      	str	r2, [sp, #88]	; 0x58
    e56e:	f646 1264 	movw	r2, #26980	; 0x6964
    e572:	eb05 1547 	add.w	r5, r5, r7, lsl #5
    e576:	f2c6 7272 	movt	r2, #26482	; 0x6772
    e57a:	9608      	str	r6, [sp, #32]
    e57c:	eb06 088b 	add.w	r8, r6, fp, lsl #2
    e580:	9518      	str	r5, [sp, #96]	; 0x60
    e582:	9102      	str	r1, [sp, #8]
    e584:	4681      	mov	r9, r0
    e586:	9204      	str	r2, [sp, #16]
    e588:	9415      	str	r4, [sp, #84]	; 0x54
    e58a:	e007      	b.n	e59c <check_heif_file@@Base+0x1d8>
    e58c:	9b03      	ldr	r3, [sp, #12]
    e58e:	f10c 0c01 	add.w	ip, ip, #1
    e592:	f10e 0e34 	add.w	lr, lr, #52	; 0x34
    e596:	459c      	cmp	ip, r3
    e598:	f280 809b 	bge.w	e6d2 <check_heif_file@@Base+0x30e>
    e59c:	f8de 302c 	ldr.w	r3, [lr, #44]	; 0x2c
    e5a0:	9a02      	ldr	r2, [sp, #8]
    e5a2:	4293      	cmp	r3, r2
    e5a4:	d1f2      	bne.n	e58c <check_heif_file@@Base+0x1c8>
    e5a6:	f8de 5014 	ldr.w	r5, [lr, #20]
    e5aa:	2d00      	cmp	r5, #0
    e5ac:	f2c0 8117 	blt.w	e7de <check_heif_file@@Base+0x41a>
    e5b0:	9b05      	ldr	r3, [sp, #20]
    e5b2:	9a04      	ldr	r2, [sp, #16]
    e5b4:	4293      	cmp	r3, r2
    e5b6:	f000 80a4 	beq.w	e702 <check_heif_file@@Base+0x33e>
    e5ba:	461a      	mov	r2, r3
    e5bc:	9b19      	ldr	r3, [sp, #100]	; 0x64
    e5be:	9902      	ldr	r1, [sp, #8]
    e5c0:	1b5b      	subs	r3, r3, r5
    e5c2:	bf18      	it	ne
    e5c4:	2301      	movne	r3, #1
    e5c6:	428a      	cmp	r2, r1
    e5c8:	bf18      	it	ne
    e5ca:	2300      	movne	r3, #0
    e5cc:	2b00      	cmp	r3, #0
    e5ce:	d1dd      	bne.n	e58c <check_heif_file@@Base+0x1c8>
    e5d0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    e5d2:	2100      	movs	r1, #0
    e5d4:	9a09      	ldr	r2, [sp, #36]	; 0x24
    e5d6:	b91b      	cbnz	r3, e5e0 <check_heif_file@@Base+0x21c>
    e5d8:	e00e      	b.n	e5f8 <check_heif_file@@Base+0x234>
    e5da:	3218      	adds	r2, #24
    e5dc:	454a      	cmp	r2, r9
    e5de:	d009      	beq.n	e5f4 <check_heif_file@@Base+0x230>
    e5e0:	6853      	ldr	r3, [r2, #4]
    e5e2:	4553      	cmp	r3, sl
    e5e4:	d1f9      	bne.n	e5da <check_heif_file@@Base+0x216>
    e5e6:	68d3      	ldr	r3, [r2, #12]
    e5e8:	3218      	adds	r2, #24
    e5ea:	429d      	cmp	r5, r3
    e5ec:	bf08      	it	eq
    e5ee:	2101      	moveq	r1, #1
    e5f0:	454a      	cmp	r2, r9
    e5f2:	d1f5      	bne.n	e5e0 <check_heif_file@@Base+0x21c>
    e5f4:	2900      	cmp	r1, #0
    e5f6:	d1c9      	bne.n	e58c <check_heif_file@@Base+0x1c8>
    e5f8:	9b11      	ldr	r3, [sp, #68]	; 0x44
    e5fa:	2b00      	cmp	r3, #0
    e5fc:	f000 80fd 	beq.w	e7fa <check_heif_file@@Base+0x436>
    e600:	2300      	movs	r3, #0
    e602:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
    e606:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
    e60a:	4618      	mov	r0, r3
    e60c:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    e610:	469c      	mov	ip, r3
    e612:	9f12      	ldr	r7, [sp, #72]	; 0x48
    e614:	f8dd e04c 	ldr.w	lr, [sp, #76]	; 0x4c
    e618:	f8dd 9054 	ldr.w	r9, [sp, #84]	; 0x54
    e61c:	e002      	b.n	e624 <check_heif_file@@Base+0x260>
    e61e:	370c      	adds	r7, #12
    e620:	4577      	cmp	r7, lr
    e622:	d02b      	beq.n	e67c <check_heif_file@@Base+0x2b8>
    e624:	e897 0018 	ldmia.w	r7, {r3, r4}
    e628:	454b      	cmp	r3, r9
    e62a:	d1f8      	bne.n	e61e <check_heif_file@@Base+0x25a>
    e62c:	9b06      	ldr	r3, [sp, #24]
    e62e:	2b00      	cmp	r3, #0
    e630:	d0f5      	beq.n	e61e <check_heif_file@@Base+0x25a>
    e632:	9a08      	ldr	r2, [sp, #32]
    e634:	2100      	movs	r1, #0
    e636:	9401      	str	r4, [sp, #4]
    e638:	e002      	b.n	e640 <check_heif_file@@Base+0x27c>
    e63a:	320c      	adds	r2, #12
    e63c:	4542      	cmp	r2, r8
    e63e:	d015      	beq.n	e66c <check_heif_file@@Base+0x2a8>
    e640:	6814      	ldr	r4, [r2, #0]
    e642:	7916      	ldrb	r6, [r2, #4]
    e644:	42a5      	cmp	r5, r4
    e646:	6893      	ldr	r3, [r2, #8]
    e648:	d1f7      	bne.n	e63a <check_heif_file@@Base+0x276>
    e64a:	2e00      	cmp	r6, #0
    e64c:	d0f5      	beq.n	e63a <check_heif_file@@Base+0x276>
    e64e:	9c01      	ldr	r4, [sp, #4]
    e650:	eb03 0b86 	add.w	fp, r3, r6, lsl #2
    e654:	885e      	ldrh	r6, [r3, #2]
    e656:	3304      	adds	r3, #4
    e658:	42b4      	cmp	r4, r6
    e65a:	bf04      	itt	eq
    e65c:	2001      	moveq	r0, #1
    e65e:	2101      	moveq	r1, #1
    e660:	455b      	cmp	r3, fp
    e662:	d1f7      	bne.n	e654 <check_heif_file@@Base+0x290>
    e664:	320c      	adds	r2, #12
    e666:	9401      	str	r4, [sp, #4]
    e668:	4542      	cmp	r2, r8
    e66a:	d1e9      	bne.n	e640 <check_heif_file@@Base+0x27c>
    e66c:	2900      	cmp	r1, #0
    e66e:	f107 070c 	add.w	r7, r7, #12
    e672:	bf18      	it	ne
    e674:	f04f 0c01 	movne.w	ip, #1
    e678:	4577      	cmp	r7, lr
    e67a:	d1d3      	bne.n	e624 <check_heif_file@@Base+0x260>
    e67c:	4663      	mov	r3, ip
    e67e:	f083 0301 	eor.w	r3, r3, #1
    e682:	f8dd e034 	ldr.w	lr, [sp, #52]	; 0x34
    e686:	b2db      	uxtb	r3, r3
    e688:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
    e68c:	4283      	cmp	r3, r0
    e68e:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
    e692:	f080 80b2 	bcs.w	e7fa <check_heif_file@@Base+0x436>
    e696:	9b14      	ldr	r3, [sp, #80]	; 0x50
    e698:	2b00      	cmp	r3, #0
    e69a:	f43f af77 	beq.w	e58c <check_heif_file@@Base+0x1c8>
    e69e:	9a16      	ldr	r2, [sp, #88]	; 0x58
    e6a0:	980b      	ldr	r0, [sp, #44]	; 0x2c
    e6a2:	9918      	ldr	r1, [sp, #96]	; 0x60
    e6a4:	e002      	b.n	e6ac <check_heif_file@@Base+0x2e8>
    e6a6:	3220      	adds	r2, #32
    e6a8:	428a      	cmp	r2, r1
    e6aa:	d009      	beq.n	e6c0 <check_heif_file@@Base+0x2fc>
    e6ac:	6813      	ldr	r3, [r2, #0]
    e6ae:	429d      	cmp	r5, r3
    e6b0:	d1f9      	bne.n	e6a6 <check_heif_file@@Base+0x2e2>
    e6b2:	6993      	ldr	r3, [r2, #24]
    e6b4:	3220      	adds	r2, #32
    e6b6:	2b00      	cmp	r3, #0
    e6b8:	bf18      	it	ne
    e6ba:	2001      	movne	r0, #1
    e6bc:	428a      	cmp	r2, r1
    e6be:	d1f5      	bne.n	e6ac <check_heif_file@@Base+0x2e8>
    e6c0:	9b03      	ldr	r3, [sp, #12]
    e6c2:	f10c 0c01 	add.w	ip, ip, #1
    e6c6:	900b      	str	r0, [sp, #44]	; 0x2c
    e6c8:	f10e 0e34 	add.w	lr, lr, #52	; 0x34
    e6cc:	459c      	cmp	ip, r3
    e6ce:	f6ff af65 	blt.w	e59c <check_heif_file@@Base+0x1d8>
    e6d2:	980c      	ldr	r0, [sp, #48]	; 0x30
    e6d4:	f8dd 9074 	ldr.w	r9, [sp, #116]	; 0x74
    e6d8:	f7f7 ee66 	blx	63a8 <MetaBox_release@plt>
    e6dc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    e6de:	2b00      	cmp	r3, #0
    e6e0:	d060      	beq.n	e7a4 <check_heif_file@@Base+0x3e0>
    e6e2:	9905      	ldr	r1, [sp, #20]
    e6e4:	f246 3231 	movw	r2, #25393	; 0x6331
    e6e8:	f646 1364 	movw	r3, #26980	; 0x6964
    e6ec:	f6c6 0276 	movt	r2, #26742	; 0x6876
    e6f0:	f2c6 7372 	movt	r3, #26482	; 0x6772
    e6f4:	4291      	cmp	r1, r2
    e6f6:	bf18      	it	ne
    e6f8:	4299      	cmpne	r1, r3
    e6fa:	bf0c      	ite	eq
    e6fc:	2000      	moveq	r0, #0
    e6fe:	2003      	movne	r0, #3
    e700:	e67b      	b.n	e3fa <check_heif_file@@Base+0x36>
    e702:	9a17      	ldr	r2, [sp, #92]	; 0x5c
    e704:	6951      	ldr	r1, [r2, #20]
    e706:	2900      	cmp	r1, #0
    e708:	f43f af40 	beq.w	e58c <check_heif_file@@Base+0x1c8>
    e70c:	6912      	ldr	r2, [r2, #16]
    e70e:	6813      	ldr	r3, [r2, #0]
    e710:	429d      	cmp	r5, r3
    e712:	f43f af5d 	beq.w	e5d0 <check_heif_file@@Base+0x20c>
    e716:	2300      	movs	r3, #0
    e718:	e004      	b.n	e724 <check_heif_file@@Base+0x360>
    e71a:	f852 0f04 	ldr.w	r0, [r2, #4]!
    e71e:	4285      	cmp	r5, r0
    e720:	f43f af56 	beq.w	e5d0 <check_heif_file@@Base+0x20c>
    e724:	3301      	adds	r3, #1
    e726:	428b      	cmp	r3, r1
    e728:	d1f7      	bne.n	e71a <check_heif_file@@Base+0x356>
    e72a:	e72f      	b.n	e58c <check_heif_file@@Base+0x1c8>
    e72c:	f10d 088c 	add.w	r8, sp, #140	; 0x8c
    e730:	4640      	mov	r0, r8
    e732:	f7f7 ea20 	blx	5b74 <FileTypeBox_init@plt>
    e736:	4640      	mov	r0, r8
    e738:	4649      	mov	r1, r9
    e73a:	f7f7 ee24 	blx	6384 <FileTypeBox_parse_box@plt>
    e73e:	2800      	cmp	r0, #0
    e740:	d164      	bne.n	e80c <check_heif_file@@Base+0x448>
    e742:	f8d8 701c 	ldr.w	r7, [r8, #28]
    e746:	2f00      	cmp	r7, #0
    e748:	dd52      	ble.n	e7f0 <check_heif_file@@Base+0x42c>
    e74a:	f8d8 4010 	ldr.w	r4, [r8, #16]
    e74e:	4606      	mov	r6, r0
    e750:	f8dd a06c 	ldr.w	sl, [sp, #108]	; 0x6c
    e754:	eb04 0787 	add.w	r7, r4, r7, lsl #2
    e758:	f8dd b070 	ldr.w	fp, [sp, #112]	; 0x70
    e75c:	e012      	b.n	e784 <check_heif_file@@Base+0x3c0>
    e75e:	4628      	mov	r0, r5
    e760:	4659      	mov	r1, fp
    e762:	f7f7 ee2e 	blx	63c0 <strcmp@plt>
    e766:	b1a8      	cbz	r0, e794 <check_heif_file@@Base+0x3d0>
    e768:	4628      	mov	r0, r5
    e76a:	9910      	ldr	r1, [sp, #64]	; 0x40
    e76c:	f7f7 ee28 	blx	63c0 <strcmp@plt>
    e770:	b180      	cbz	r0, e794 <check_heif_file@@Base+0x3d0>
    e772:	4628      	mov	r0, r5
    e774:	991a      	ldr	r1, [sp, #104]	; 0x68
    e776:	f7f7 ee24 	blx	63c0 <strcmp@plt>
    e77a:	2800      	cmp	r0, #0
    e77c:	bf08      	it	eq
    e77e:	2601      	moveq	r6, #1
    e780:	42bc      	cmp	r4, r7
    e782:	d00b      	beq.n	e79c <check_heif_file@@Base+0x3d8>
    e784:	f854 5b04 	ldr.w	r5, [r4], #4
    e788:	4651      	mov	r1, sl
    e78a:	4628      	mov	r0, r5
    e78c:	f7f7 ee18 	blx	63c0 <strcmp@plt>
    e790:	2800      	cmp	r0, #0
    e792:	d1e4      	bne.n	e75e <check_heif_file@@Base+0x39a>
    e794:	42bc      	cmp	r4, r7
    e796:	f04f 0601 	mov.w	r6, #1
    e79a:	d1f3      	bne.n	e784 <check_heif_file@@Base+0x3c0>
    e79c:	4640      	mov	r0, r8
    e79e:	f7f7 edfe 	blx	639c <FileTypeBox_release@plt>
    e7a2:	b346      	cbz	r6, e7f6 <check_heif_file@@Base+0x432>
    e7a4:	f8d9 4008 	ldr.w	r4, [r9, #8]
    e7a8:	e64c      	b.n	e444 <check_heif_file@@Base+0x80>
    e7aa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    e7ac:	f892 0100 	ldrb.w	r0, [r2, #256]	; 0x100
    e7b0:	b1a8      	cbz	r0, e7de <check_heif_file@@Base+0x41a>
    e7b2:	f8d2 30fc 	ldr.w	r3, [r2, #252]	; 0xfc
    e7b6:	9c19      	ldr	r4, [sp, #100]	; 0x64
    e7b8:	461a      	mov	r2, r3
    e7ba:	9317      	str	r3, [sp, #92]	; 0x5c
    e7bc:	68db      	ldr	r3, [r3, #12]
    e7be:	429c      	cmp	r4, r3
    e7c0:	d013      	beq.n	e7ea <check_heif_file@@Base+0x426>
    e7c2:	4613      	mov	r3, r2
    e7c4:	3318      	adds	r3, #24
    e7c6:	2100      	movs	r1, #0
    e7c8:	461a      	mov	r2, r3
    e7ca:	e005      	b.n	e7d8 <check_heif_file@@Base+0x414>
    e7cc:	4615      	mov	r5, r2
    e7ce:	3218      	adds	r2, #24
    e7d0:	f852 3c0c 	ldr.w	r3, [r2, #-12]
    e7d4:	429c      	cmp	r4, r3
    e7d6:	d007      	beq.n	e7e8 <check_heif_file@@Base+0x424>
    e7d8:	3101      	adds	r1, #1
    e7da:	4281      	cmp	r1, r0
    e7dc:	d1f6      	bne.n	e7cc <check_heif_file@@Base+0x408>
    e7de:	980c      	ldr	r0, [sp, #48]	; 0x30
    e7e0:	f7f7 ede2 	blx	63a8 <MetaBox_release@plt>
    e7e4:	2001      	movs	r0, #1
    e7e6:	e608      	b.n	e3fa <check_heif_file@@Base+0x36>
    e7e8:	9517      	str	r5, [sp, #92]	; 0x5c
    e7ea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    e7ec:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
    e7ee:	e67e      	b.n	e4ee <check_heif_file@@Base+0x12a>
    e7f0:	4640      	mov	r0, r8
    e7f2:	f7f7 edd4 	blx	639c <FileTypeBox_release@plt>
    e7f6:	2002      	movs	r0, #2
    e7f8:	e5ff      	b.n	e3fa <check_heif_file@@Base+0x36>
    e7fa:	980c      	ldr	r0, [sp, #48]	; 0x30
    e7fc:	f7f7 edd4 	blx	63a8 <MetaBox_release@plt>
    e800:	2002      	movs	r0, #2
    e802:	e5fa      	b.n	e3fa <check_heif_file@@Base+0x36>
    e804:	4628      	mov	r0, r5
    e806:	f7f7 edd0 	blx	63a8 <MetaBox_release@plt>
    e80a:	e7cb      	b.n	e7a4 <check_heif_file@@Base+0x3e0>
    e80c:	4640      	mov	r0, r8
    e80e:	f7f7 edc6 	blx	639c <FileTypeBox_release@plt>
    e812:	2001      	movs	r0, #1
    e814:	e5f1      	b.n	e3fa <check_heif_file@@Base+0x36>
    e816:	f7f7 e8fa 	blx	5a0c <__stack_chk_fail@plt>
    e81a:	bf00      	nop
    e81c:	86f0      	strh	r0, [r6, #54]	; 0x36
    e81e:	0000      	movs	r0, r0
    e820:	69b2      	ldr	r2, [r6, #24]
    e822:	0000      	movs	r0, r0
    e824:	69b4      	ldr	r4, [r6, #24]
    e826:	0000      	movs	r0, r0
    e828:	69b6      	ldr	r6, [r6, #24]
    e82a:	0000      	movs	r0, r0
    e82c:	69b8      	ldr	r0, [r7, #24]
	...

0000e830 <parse_bytevc1_from_heif_bitstream@@Base>:
    e830:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    e834:	460d      	mov	r5, r1
    e836:	ed2d 8b02 	vpush	{d8}
    e83a:	f8df 4bac 	ldr.w	r4, [pc, #2988]	; f3e8 <parse_bytevc1_from_heif_bitstream@@Base+0xbb8>
    e83e:	447c      	add	r4, pc
    e840:	6824      	ldr	r4, [r4, #0]
    e842:	f2ad 4d8c 	subw	sp, sp, #1164	; 0x48c
    e846:	f50d 7b80 	add.w	fp, sp, #256	; 0x100
    e84a:	9419      	str	r4, [sp, #100]	; 0x64
    e84c:	9307      	str	r3, [sp, #28]
    e84e:	6824      	ldr	r4, [r4, #0]
    e850:	f89d 34b8 	ldrb.w	r3, [sp, #1208]	; 0x4b8
    e854:	9016      	str	r0, [sp, #88]	; 0x58
    e856:	4658      	mov	r0, fp
    e858:	910c      	str	r1, [sp, #48]	; 0x30
    e85a:	2100      	movs	r1, #0
    e85c:	9206      	str	r2, [sp, #24]
    e85e:	2268      	movs	r2, #104	; 0x68
    e860:	9310      	str	r3, [sp, #64]	; 0x40
    e862:	f8cd 4484 	str.w	r4, [sp, #1156]	; 0x484
    e866:	f7f7 e950 	blx	5b08 <memset@plt>
    e86a:	686c      	ldr	r4, [r5, #4]
    e86c:	eb04 0344 	add.w	r3, r4, r4, lsl #1
    e870:	085b      	lsrs	r3, r3, #1
    e872:	9312      	str	r3, [sp, #72]	; 0x48
    e874:	f000 8256 	beq.w	ed24 <parse_bytevc1_from_heif_bitstream@@Base+0x4f4>
    e878:	9b10      	ldr	r3, [sp, #64]	; 0x40
    e87a:	2b00      	cmp	r3, #0
    e87c:	f040 824a 	bne.w	ed14 <parse_bytevc1_from_heif_bitstream@@Base+0x4e4>
    e880:	931a      	str	r3, [sp, #104]	; 0x68
    e882:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    e884:	2300      	movs	r3, #0
    e886:	9315      	str	r3, [sp, #84]	; 0x54
    e888:	46da      	mov	sl, fp
    e88a:	931c      	str	r3, [sp, #112]	; 0x70
    e88c:	930a      	str	r3, [sp, #40]	; 0x28
    e88e:	9324      	str	r3, [sp, #144]	; 0x90
    e890:	9321      	str	r3, [sp, #132]	; 0x84
    e892:	9318      	str	r3, [sp, #96]	; 0x60
    e894:	931f      	str	r3, [sp, #124]	; 0x7c
    e896:	f8df 3b54 	ldr.w	r3, [pc, #2900]	; f3ec <parse_bytevc1_from_heif_bitstream@@Base+0xbbc>
    e89a:	6895      	ldr	r5, [r2, #8]
    e89c:	447b      	add	r3, pc
    e89e:	9325      	str	r3, [sp, #148]	; 0x94
    e8a0:	f8df 3b4c 	ldr.w	r3, [pc, #2892]	; f3f0 <parse_bytevc1_from_heif_bitstream@@Base+0xbc0>
    e8a4:	447b      	add	r3, pc
    e8a6:	9323      	str	r3, [sp, #140]	; 0x8c
    e8a8:	f105 0308 	add.w	r3, r5, #8
    e8ac:	42a3      	cmp	r3, r4
    e8ae:	f080 83ed 	bcs.w	f08c <parse_bytevc1_from_heif_bitstream@@Base+0x85c>
    e8b2:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    e8b4:	4620      	mov	r0, r4
    e8b6:	f7f7 e94c 	blx	5b50 <Bitstream_read_32bit@plt>
    e8ba:	4607      	mov	r7, r0
    e8bc:	4620      	mov	r0, r4
    e8be:	f7f7 e948 	blx	5b50 <Bitstream_read_32bit@plt>
    e8c2:	9b15      	ldr	r3, [sp, #84]	; 0x54
    e8c4:	f647 1170 	movw	r1, #31088	; 0x7970
    e8c8:	60a5      	str	r5, [r4, #8]
    e8ca:	f083 0301 	eor.w	r3, r3, #1
    e8ce:	f2c6 6174 	movt	r1, #26228	; 0x6674
    e8d2:	4288      	cmp	r0, r1
    e8d4:	bf14      	ite	ne
    e8d6:	2300      	movne	r3, #0
    e8d8:	f003 0301 	andeq.w	r3, r3, #1
    e8dc:	4606      	mov	r6, r0
    e8de:	2b00      	cmp	r3, #0
    e8e0:	f040 812c 	bne.w	eb3c <parse_bytevc1_from_heif_bitstream@@Base+0x30c>
    e8e4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    e8e6:	f247 4c61 	movw	ip, #29793	; 0x7461
    e8ea:	f6c6 5c65 	movt	ip, #28005	; 0x6d65
    e8ee:	f083 0401 	eor.w	r4, r3, #1
    e8f2:	4623      	mov	r3, r4
    e8f4:	4560      	cmp	r0, ip
    e8f6:	bf14      	ite	ne
    e8f8:	2300      	movne	r3, #0
    e8fa:	f003 0301 	andeq.w	r3, r3, #1
    e8fe:	9317      	str	r3, [sp, #92]	; 0x5c
    e900:	2b00      	cmp	r3, #0
    e902:	f000 80f3 	beq.w	eaec <parse_bytevc1_from_heif_bitstream@@Base+0x2bc>
    e906:	ab5a      	add	r3, sp, #360	; 0x168
    e908:	930f      	str	r3, [sp, #60]	; 0x3c
    e90a:	461c      	mov	r4, r3
    e90c:	4618      	mov	r0, r3
    e90e:	f7f7 e938 	blx	5b80 <MetaBox_init@plt>
    e912:	4620      	mov	r0, r4
    e914:	990c      	ldr	r1, [sp, #48]	; 0x30
    e916:	f7f7 ed30 	blx	6378 <MetaBox_parse_box@plt>
    e91a:	2800      	cmp	r0, #0
    e91c:	f040 82a6 	bne.w	ee6c <parse_bytevc1_from_heif_bitstream@@Base+0x63c>
    e920:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    e922:	6e17      	ldr	r7, [r2, #96]	; 0x60
    e924:	4613      	mov	r3, r2
    e926:	6c52      	ldr	r2, [r2, #68]	; 0x44
    e928:	2f00      	cmp	r7, #0
    e92a:	4615      	mov	r5, r2
    e92c:	9213      	str	r2, [sp, #76]	; 0x4c
    e92e:	f340 8574 	ble.w	f41a <parse_bytevc1_from_heif_bitstream@@Base+0xbea>
    e932:	eb07 0247 	add.w	r2, r7, r7, lsl #1
    e936:	6dde      	ldr	r6, [r3, #92]	; 0x5c
    e938:	4604      	mov	r4, r0
    e93a:	4628      	mov	r0, r5
    e93c:	eb07 0182 	add.w	r1, r7, r2, lsl #2
    e940:	4633      	mov	r3, r6
    e942:	eb06 0181 	add.w	r1, r6, r1, lsl #2
    e946:	695a      	ldr	r2, [r3, #20]
    e948:	3334      	adds	r3, #52	; 0x34
    e94a:	4290      	cmp	r0, r2
    e94c:	bf08      	it	eq
    e94e:	f853 4c08 	ldreq.w	r4, [r3, #-8]
    e952:	428b      	cmp	r3, r1
    e954:	d1f7      	bne.n	e946 <parse_bytevc1_from_heif_bitstream@@Base+0x116>
    e956:	f646 1364 	movw	r3, #26980	; 0x6964
    e95a:	941d      	str	r4, [sp, #116]	; 0x74
    e95c:	f2c6 7372 	movt	r3, #26482	; 0x6772
    e960:	429c      	cmp	r4, r3
    e962:	bf1c      	itt	ne
    e964:	2300      	movne	r3, #0
    e966:	9326      	strne	r3, [sp, #152]	; 0x98
    e968:	f000 8267 	beq.w	ee3a <parse_bytevc1_from_heif_bitstream@@Base+0x60a>
    e96c:	f8df 3a84 	ldr.w	r3, [pc, #2692]	; f3f4 <parse_bytevc1_from_heif_bitstream@@Base+0xbc4>
    e970:	46d3      	mov	fp, sl
    e972:	f8df 2a84 	ldr.w	r2, [pc, #2692]	; f3f8 <parse_bytevc1_from_heif_bitstream@@Base+0xbc8>
    e976:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
    e97a:	447b      	add	r3, pc
    e97c:	931e      	str	r3, [sp, #120]	; 0x78
    e97e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    e982:	9322      	str	r3, [sp, #136]	; 0x88
    e984:	447a      	add	r2, pc
    e986:	9320      	str	r3, [sp, #128]	; 0x80
    e988:	2300      	movs	r3, #0
    e98a:	921b      	str	r2, [sp, #108]	; 0x6c
    e98c:	461a      	mov	r2, r3
    e98e:	9311      	str	r3, [sp, #68]	; 0x44
    e990:	eb02 0442 	add.w	r4, r2, r2, lsl #1
    e994:	f246 3331 	movw	r3, #25393	; 0x6331
    e998:	f6c6 0376 	movt	r3, #26742	; 0x6876
    e99c:	eb02 0484 	add.w	r4, r2, r4, lsl #2
    e9a0:	00a4      	lsls	r4, r4, #2
    e9a2:	4426      	add	r6, r4
    e9a4:	6af5      	ldr	r5, [r6, #44]	; 0x2c
    e9a6:	429d      	cmp	r5, r3
    e9a8:	f000 8135 	beq.w	ec16 <parse_bytevc1_from_heif_bitstream@@Base+0x3e6>
    e9ac:	f646 1364 	movw	r3, #26980	; 0x6964
    e9b0:	f2c6 7372 	movt	r3, #26482	; 0x6772
    e9b4:	429d      	cmp	r5, r3
    e9b6:	f040 80b8 	bne.w	eb2a <parse_bytevc1_from_heif_bitstream@@Base+0x2fa>
    e9ba:	6972      	ldr	r2, [r6, #20]
    e9bc:	f8da 3090 	ldr.w	r3, [sl, #144]	; 0x90
    e9c0:	9214      	str	r2, [sp, #80]	; 0x50
    e9c2:	b323      	cbz	r3, ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    e9c4:	9a18      	ldr	r2, [sp, #96]	; 0x60
    e9c6:	f8cd a034 	str.w	sl, [sp, #52]	; 0x34
    e9ca:	ee80 2b90 	vdup.32	d16, r2
    e9ce:	9a12      	ldr	r2, [sp, #72]	; 0x48
    e9d0:	efe0 00b0 	vshr.s64	d16, d16, #32
    e9d4:	edcd 0b08 	vstr	d16, [sp, #32]
    e9d8:	ee80 2b90 	vdup.32	d16, r2
    e9dc:	2200      	movs	r2, #0
    e9de:	920e      	str	r2, [sp, #56]	; 0x38
    e9e0:	ffe0 00b0 	vshr.u64	d16, d16, #32
    e9e4:	edcd 0b0a 	vstr	d16, [sp, #40]	; 0x28
    e9e8:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    e9ea:	f8d2 10e4 	ldr.w	r1, [r2, #228]	; 0xe4
    e9ee:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    e9f0:	0152      	lsls	r2, r2, #5
    e9f2:	188f      	adds	r7, r1, r2
    e9f4:	588a      	ldr	r2, [r1, r2]
    e9f6:	9914      	ldr	r1, [sp, #80]	; 0x50
    e9f8:	4291      	cmp	r1, r2
    e9fa:	d012      	beq.n	ea22 <parse_bytevc1_from_heif_bitstream@@Base+0x1f2>
    e9fc:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    e9fe:	3201      	adds	r2, #1
    ea00:	920e      	str	r2, [sp, #56]	; 0x38
    ea02:	429a      	cmp	r2, r3
    ea04:	d3f0      	bcc.n	e9e8 <parse_bytevc1_from_heif_bitstream@@Base+0x1b8>
    ea06:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
    ea0a:	f8da 7060 	ldr.w	r7, [sl, #96]	; 0x60
    ea0e:	9b11      	ldr	r3, [sp, #68]	; 0x44
    ea10:	3301      	adds	r3, #1
    ea12:	9311      	str	r3, [sp, #68]	; 0x44
    ea14:	42bb      	cmp	r3, r7
    ea16:	f280 84ff 	bge.w	f418 <parse_bytevc1_from_heif_bitstream@@Base+0xbe8>
    ea1a:	f8da 605c 	ldr.w	r6, [sl, #92]	; 0x5c
    ea1e:	9a11      	ldr	r2, [sp, #68]	; 0x44
    ea20:	e7b6      	b.n	e990 <parse_bytevc1_from_heif_bitstream@@Base+0x160>
    ea22:	69ba      	ldr	r2, [r7, #24]
    ea24:	2a00      	cmp	r2, #0
    ea26:	d0e9      	beq.n	e9fc <parse_bytevc1_from_heif_bitstream@@Base+0x1cc>
    ea28:	f04f 0900 	mov.w	r9, #0
    ea2c:	f10d 08d0 	add.w	r8, sp, #208	; 0xd0
    ea30:	ae38      	add	r6, sp, #224	; 0xe0
    ea32:	46ca      	mov	sl, r9
    ea34:	f8cd 9010 	str.w	r9, [sp, #16]
    ea38:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    ea3a:	f8cd 8008 	str.w	r8, [sp, #8]
    ea3e:	e03f      	b.n	eac0 <parse_bytevc1_from_heif_bitstream@@Base+0x290>
    ea40:	9a02      	ldr	r2, [sp, #8]
    ea42:	6823      	ldr	r3, [r4, #0]
    ea44:	442b      	add	r3, r5
    ea46:	6013      	str	r3, [r2, #0]
    ea48:	6863      	ldr	r3, [r4, #4]
    ea4a:	eb18 0005 	adds.w	r0, r8, r5
    ea4e:	f149 0100 	adc.w	r1, r9, #0
    ea52:	9d02      	ldr	r5, [sp, #8]
    ea54:	461a      	mov	r2, r3
    ea56:	2300      	movs	r3, #0
    ea58:	428b      	cmp	r3, r1
    ea5a:	f8c5 8004 	str.w	r8, [r5, #4]
    ea5e:	bf08      	it	eq
    ea60:	4282      	cmpeq	r2, r0
    ea62:	f0c0 80bb 	bcc.w	ebdc <parse_bytevc1_from_heif_bitstream@@Base+0x3ac>
    ea66:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
    ea6a:	eb18 0002 	adds.w	r0, r8, r2
    ea6e:	eb49 0103 	adc.w	r1, r9, r3
    ea72:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
    ea76:	428b      	cmp	r3, r1
    ea78:	bf08      	it	eq
    ea7a:	4282      	cmpeq	r2, r0
    ea7c:	f0c0 80ae 	bcc.w	ebdc <parse_bytevc1_from_heif_bitstream@@Base+0x3ac>
    ea80:	4629      	mov	r1, r5
    ea82:	4630      	mov	r0, r6
    ea84:	f7f7 eca2 	blx	63cc <ImageGridBox_parse_box@plt>
    ea88:	9804      	ldr	r0, [sp, #16]
    ea8a:	6931      	ldr	r1, [r6, #16]
    ea8c:	f10a 0a01 	add.w	sl, sl, #1
    ea90:	3018      	adds	r0, #24
    ea92:	9004      	str	r0, [sp, #16]
    ea94:	9806      	ldr	r0, [sp, #24]
    ea96:	6973      	ldr	r3, [r6, #20]
    ea98:	68f2      	ldr	r2, [r6, #12]
    ea9a:	6001      	str	r1, [r0, #0]
    ea9c:	9807      	ldr	r0, [sp, #28]
    ea9e:	f8cb 3024 	str.w	r3, [fp, #36]	; 0x24
    eaa2:	f8cb 2010 	str.w	r2, [fp, #16]
    eaa6:	2201      	movs	r2, #1
    eaa8:	6003      	str	r3, [r0, #0]
    eaaa:	69bb      	ldr	r3, [r7, #24]
    eaac:	68b0      	ldr	r0, [r6, #8]
    eaae:	459a      	cmp	sl, r3
    eab0:	f8cb 1020 	str.w	r1, [fp, #32]
    eab4:	f88b 2009 	strb.w	r2, [fp, #9]
    eab8:	f8cb 0014 	str.w	r0, [fp, #20]
    eabc:	f080 8202 	bcs.w	eec4 <parse_bytevc1_from_heif_bitstream@@Base+0x694>
    eac0:	69fb      	ldr	r3, [r7, #28]
    eac2:	9904      	ldr	r1, [sp, #16]
    eac4:	693a      	ldr	r2, [r7, #16]
    eac6:	440b      	add	r3, r1
    eac8:	9802      	ldr	r0, [sp, #8]
    eaca:	689d      	ldr	r5, [r3, #8]
    eacc:	e9d3 8904 	ldrd	r8, r9, [r3, #16]
    ead0:	4415      	add	r5, r2
    ead2:	f7f6 efd8 	blx	5a84 <Bitstream_init@plt>
    ead6:	687b      	ldr	r3, [r7, #4]
    ead8:	2b00      	cmp	r3, #0
    eada:	d0b1      	beq.n	ea40 <parse_bytevc1_from_heif_bitstream@@Base+0x210>
    eadc:	2b01      	cmp	r3, #1
    eade:	d17d      	bne.n	ebdc <parse_bytevc1_from_heif_bitstream@@Base+0x3ac>
    eae0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    eae2:	9a02      	ldr	r2, [sp, #8]
    eae4:	6f1b      	ldr	r3, [r3, #112]	; 0x70
    eae6:	442b      	add	r3, r5
    eae8:	6013      	str	r3, [r2, #0]
    eaea:	e7ad      	b.n	ea48 <parse_bytevc1_from_heif_bitstream@@Base+0x218>
    eaec:	f8df 090c 	ldr.w	r0, [pc, #2316]	; f3fc <parse_bytevc1_from_heif_bitstream@@Base+0xbcc>
    eaf0:	4478      	add	r0, pc
    eaf2:	f7f7 e8a6 	blx	5c40 <string_type_to_int32@plt>
    eaf6:	9b1c      	ldr	r3, [sp, #112]	; 0x70
    eaf8:	f083 0301 	eor.w	r3, r3, #1
    eafc:	4286      	cmp	r6, r0
    eafe:	bf14      	ite	ne
    eb00:	2000      	movne	r0, #0
    eb02:	f003 0001 	andeq.w	r0, r3, #1
    eb06:	2800      	cmp	r0, #0
    eb08:	f040 8112 	bne.w	ed30 <parse_bytevc1_from_heif_bitstream@@Base+0x500>
    eb0c:	2f00      	cmp	r7, #0
    eb0e:	f000 82bd 	beq.w	f08c <parse_bytevc1_from_heif_bitstream@@Base+0x85c>
    eb12:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    eb14:	6854      	ldr	r4, [r2, #4]
    eb16:	42a7      	cmp	r7, r4
    eb18:	f200 82b8 	bhi.w	f08c <parse_bytevc1_from_heif_bitstream@@Base+0x85c>
    eb1c:	6895      	ldr	r5, [r2, #8]
    eb1e:	443d      	add	r5, r7
    eb20:	42ac      	cmp	r4, r5
    eb22:	f0c0 82b3 	bcc.w	f08c <parse_bytevc1_from_heif_bitstream@@Base+0x85c>
    eb26:	6095      	str	r5, [r2, #8]
    eb28:	e6be      	b.n	e8a8 <parse_bytevc1_from_heif_bitstream@@Base+0x78>
    eb2a:	981e      	ldr	r0, [sp, #120]	; 0x78
    eb2c:	f7f7 e888 	blx	5c40 <string_type_to_int32@plt>
    eb30:	4285      	cmp	r5, r0
    eb32:	f000 81a0 	beq.w	ee76 <parse_bytevc1_from_heif_bitstream@@Base+0x646>
    eb36:	f8da 7060 	ldr.w	r7, [sl, #96]	; 0x60
    eb3a:	e768      	b.n	ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    eb3c:	ab38      	add	r3, sp, #224	; 0xe0
    eb3e:	9302      	str	r3, [sp, #8]
    eb40:	461c      	mov	r4, r3
    eb42:	4618      	mov	r0, r3
    eb44:	f7f7 e816 	blx	5b74 <FileTypeBox_init@plt>
    eb48:	4620      	mov	r0, r4
    eb4a:	990c      	ldr	r1, [sp, #48]	; 0x30
    eb4c:	f7f7 ec1a 	blx	6384 <FileTypeBox_parse_box@plt>
    eb50:	2800      	cmp	r0, #0
    eb52:	f040 81ac 	bne.w	eeae <parse_bytevc1_from_heif_bitstream@@Base+0x67e>
    eb56:	69e7      	ldr	r7, [r4, #28]
    eb58:	2f00      	cmp	r7, #0
    eb5a:	f340 81a8 	ble.w	eeae <parse_bytevc1_from_heif_bitstream@@Base+0x67e>
    eb5e:	9b02      	ldr	r3, [sp, #8]
    eb60:	4606      	mov	r6, r0
    eb62:	f8df 889c 	ldr.w	r8, [pc, #2204]	; f400 <parse_bytevc1_from_heif_bitstream@@Base+0xbd0>
    eb66:	f8df 989c 	ldr.w	r9, [pc, #2204]	; f404 <parse_bytevc1_from_heif_bitstream@@Base+0xbd4>
    eb6a:	691c      	ldr	r4, [r3, #16]
    eb6c:	44f8      	add	r8, pc
    eb6e:	f8df 3898 	ldr.w	r3, [pc, #2200]	; f408 <parse_bytevc1_from_heif_bitstream@@Base+0xbd8>
    eb72:	44f9      	add	r9, pc
    eb74:	eb04 0787 	add.w	r7, r4, r7, lsl #2
    eb78:	447b      	add	r3, pc
    eb7a:	469b      	mov	fp, r3
    eb7c:	f8df 388c 	ldr.w	r3, [pc, #2188]	; f40c <parse_bytevc1_from_heif_bitstream@@Base+0xbdc>
    eb80:	447b      	add	r3, pc
    eb82:	9304      	str	r3, [sp, #16]
    eb84:	e012      	b.n	ebac <parse_bytevc1_from_heif_bitstream@@Base+0x37c>
    eb86:	4628      	mov	r0, r5
    eb88:	4649      	mov	r1, r9
    eb8a:	f7f7 ec1a 	blx	63c0 <strcmp@plt>
    eb8e:	b1a8      	cbz	r0, ebbc <parse_bytevc1_from_heif_bitstream@@Base+0x38c>
    eb90:	4628      	mov	r0, r5
    eb92:	4659      	mov	r1, fp
    eb94:	f7f7 ec14 	blx	63c0 <strcmp@plt>
    eb98:	b180      	cbz	r0, ebbc <parse_bytevc1_from_heif_bitstream@@Base+0x38c>
    eb9a:	4628      	mov	r0, r5
    eb9c:	9904      	ldr	r1, [sp, #16]
    eb9e:	f7f7 ec10 	blx	63c0 <strcmp@plt>
    eba2:	2800      	cmp	r0, #0
    eba4:	bf08      	it	eq
    eba6:	2601      	moveq	r6, #1
    eba8:	42bc      	cmp	r4, r7
    ebaa:	d00b      	beq.n	ebc4 <parse_bytevc1_from_heif_bitstream@@Base+0x394>
    ebac:	f854 5b04 	ldr.w	r5, [r4], #4
    ebb0:	4641      	mov	r1, r8
    ebb2:	4628      	mov	r0, r5
    ebb4:	f7f7 ec04 	blx	63c0 <strcmp@plt>
    ebb8:	2800      	cmp	r0, #0
    ebba:	d1e4      	bne.n	eb86 <parse_bytevc1_from_heif_bitstream@@Base+0x356>
    ebbc:	42bc      	cmp	r4, r7
    ebbe:	f04f 0601 	mov.w	r6, #1
    ebc2:	d1f3      	bne.n	ebac <parse_bytevc1_from_heif_bitstream@@Base+0x37c>
    ebc4:	9802      	ldr	r0, [sp, #8]
    ebc6:	f7f7 ebea 	blx	639c <FileTypeBox_release@plt>
    ebca:	2e00      	cmp	r6, #0
    ebcc:	f000 87f2 	beq.w	fbb4 <parse_bytevc1_from_heif_bitstream@@Base+0x1384>
    ebd0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    ebd2:	2301      	movs	r3, #1
    ebd4:	9315      	str	r3, [sp, #84]	; 0x54
    ebd6:	6895      	ldr	r5, [r2, #8]
    ebd8:	6854      	ldr	r4, [r2, #4]
    ebda:	e665      	b.n	e8a8 <parse_bytevc1_from_heif_bitstream@@Base+0x78>
    ebdc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    ebde:	4618      	mov	r0, r3
    ebe0:	f7f7 ebe2 	blx	63a8 <MetaBox_release@plt>
    ebe4:	4658      	mov	r0, fp
    ebe6:	f7f7 ebf8 	blx	63d8 <Bytevc1Bitstream_init@plt>
    ebea:	981a      	ldr	r0, [sp, #104]	; 0x68
    ebec:	f7f6 ef3e 	blx	5a6c <free@plt>
    ebf0:	9816      	ldr	r0, [sp, #88]	; 0x58
    ebf2:	4659      	mov	r1, fp
    ebf4:	2268      	movs	r2, #104	; 0x68
    ebf6:	f7f6 ef04 	blx	5a00 <memcpy@plt>
    ebfa:	9b19      	ldr	r3, [sp, #100]	; 0x64
    ebfc:	f8dd 2484 	ldr.w	r2, [sp, #1156]	; 0x484
    ec00:	9816      	ldr	r0, [sp, #88]	; 0x58
    ec02:	681b      	ldr	r3, [r3, #0]
    ec04:	429a      	cmp	r2, r3
    ec06:	f040 87cd 	bne.w	fba4 <parse_bytevc1_from_heif_bitstream@@Base+0x1374>
    ec0a:	f20d 4d8c 	addw	sp, sp, #1164	; 0x48c
    ec0e:	ecbd 8b02 	vpop	{d8}
    ec12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ec16:	f8d6 c014 	ldr.w	ip, [r6, #20]
    ec1a:	f1bc 0f00 	cmp.w	ip, #0
    ec1e:	f2c0 8126 	blt.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    ec22:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    ec24:	f646 1364 	movw	r3, #26980	; 0x6964
    ec28:	f2c6 7372 	movt	r3, #26482	; 0x6772
    ec2c:	429a      	cmp	r2, r3
    ec2e:	f000 814d 	beq.w	eecc <parse_bytevc1_from_heif_bitstream@@Base+0x69c>
    ec32:	4613      	mov	r3, r2
    ec34:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    ec36:	4562      	cmp	r2, ip
    ec38:	bf08      	it	eq
    ec3a:	42ab      	cmpeq	r3, r5
    ec3c:	f47f aee7 	bne.w	ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    ec40:	f89a 0100 	ldrb.w	r0, [sl, #256]	; 0x100
    ec44:	2800      	cmp	r0, #0
    ec46:	f000 8707 	beq.w	fa58 <parse_bytevc1_from_heif_bitstream@@Base+0x1228>
    ec4a:	2600      	movs	r6, #0
    ec4c:	4653      	mov	r3, sl
    ec4e:	f646 5962 	movw	r9, #28002	; 0x6d62
    ec52:	2501      	movs	r5, #1
    ec54:	f2c7 4968 	movt	r9, #29800	; 0x7468
    ec58:	46b2      	mov	sl, r6
    ec5a:	461f      	mov	r7, r3
    ec5c:	960a      	str	r6, [sp, #40]	; 0x28
    ec5e:	f8cd c008 	str.w	ip, [sp, #8]
    ec62:	f8d7 40fc 	ldr.w	r4, [r7, #252]	; 0xfc
    ec66:	4434      	add	r4, r6
    ec68:	f8d4 8004 	ldr.w	r8, [r4, #4]
    ec6c:	45c8      	cmp	r8, r9
    ec6e:	bf08      	it	eq
    ec70:	f88b 5051 	strbeq.w	r5, [fp, #81]	; 0x51
    ec74:	d008      	beq.n	ec88 <parse_bytevc1_from_heif_bitstream@@Base+0x458>
    ec76:	981b      	ldr	r0, [sp, #108]	; 0x6c
    ec78:	f7f6 efe2 	blx	5c40 <string_type_to_int32@plt>
    ec7c:	4580      	cmp	r8, r0
    ec7e:	bf01      	itttt	eq
    ec80:	68e3      	ldreq	r3, [r4, #12]
    ec82:	9320      	streq	r3, [sp, #128]	; 0x80
    ec84:	2301      	moveq	r3, #1
    ec86:	930a      	streq	r3, [sp, #40]	; 0x28
    ec88:	f897 0100 	ldrb.w	r0, [r7, #256]	; 0x100
    ec8c:	f10a 0a01 	add.w	sl, sl, #1
    ec90:	3618      	adds	r6, #24
    ec92:	4550      	cmp	r0, sl
    ec94:	dce5      	bgt.n	ec62 <parse_bytevc1_from_heif_bitstream@@Base+0x432>
    ec96:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    ec98:	46ba      	mov	sl, r7
    ec9a:	f8dd c008 	ldr.w	ip, [sp, #8]
    ec9e:	2b00      	cmp	r3, #0
    eca0:	f000 8235 	beq.w	f10e <parse_bytevc1_from_heif_bitstream@@Base+0x8de>
    eca4:	f897 3114 	ldrb.w	r3, [r7, #276]	; 0x114
    eca8:	2b00      	cmp	r3, #0
    ecaa:	f000 80e0 	beq.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    ecae:	f8df 7760 	ldr.w	r7, [pc, #1888]	; f410 <parse_bytevc1_from_heif_bitstream@@Base+0xbe0>
    ecb2:	2500      	movs	r5, #0
    ecb4:	46d0      	mov	r8, sl
    ecb6:	462c      	mov	r4, r5
    ecb8:	447f      	add	r7, pc
    ecba:	46e2      	mov	sl, ip
    ecbc:	9702      	str	r7, [sp, #8]
    ecbe:	9e25      	ldr	r6, [sp, #148]	; 0x94
    ecc0:	e006      	b.n	ecd0 <parse_bytevc1_from_heif_bitstream@@Base+0x4a0>
    ecc2:	f898 0114 	ldrb.w	r0, [r8, #276]	; 0x114
    ecc6:	3401      	adds	r4, #1
    ecc8:	350c      	adds	r5, #12
    ecca:	42a0      	cmp	r0, r4
    eccc:	f340 8389 	ble.w	f3e2 <parse_bytevc1_from_heif_bitstream@@Base+0xbb2>
    ecd0:	f8d8 2110 	ldr.w	r2, [r8, #272]	; 0x110
    ecd4:	4630      	mov	r0, r6
    ecd6:	5957      	ldr	r7, [r2, r5]
    ecd8:	f7f6 efb2 	blx	5c40 <string_type_to_int32@plt>
    ecdc:	42b8      	cmp	r0, r7
    ecde:	d1f0      	bne.n	ecc2 <parse_bytevc1_from_heif_bitstream@@Base+0x492>
    ece0:	f8d8 2124 	ldr.w	r2, [r8, #292]	; 0x124
    ece4:	f852 2024 	ldr.w	r2, [r2, r4, lsl #2]
    ece8:	f8d2 9014 	ldr.w	r9, [r2, #20]
    ecec:	f1b9 0f00 	cmp.w	r9, #0
    ecf0:	d0e7      	beq.n	ecc2 <parse_bytevc1_from_heif_bitstream@@Base+0x492>
    ecf2:	4648      	mov	r0, r9
    ecf4:	9923      	ldr	r1, [sp, #140]	; 0x8c
    ecf6:	f7f7 eb64 	blx	63c0 <strcmp@plt>
    ecfa:	2800      	cmp	r0, #0
    ecfc:	f000 80fb 	beq.w	eef6 <parse_bytevc1_from_heif_bitstream@@Base+0x6c6>
    ed00:	4648      	mov	r0, r9
    ed02:	9902      	ldr	r1, [sp, #8]
    ed04:	f7f7 eb5c 	blx	63c0 <strcmp@plt>
    ed08:	9b22      	ldr	r3, [sp, #136]	; 0x88
    ed0a:	2800      	cmp	r0, #0
    ed0c:	bf08      	it	eq
    ed0e:	2302      	moveq	r3, #2
    ed10:	9322      	str	r3, [sp, #136]	; 0x88
    ed12:	e7d6      	b.n	ecc2 <parse_bytevc1_from_heif_bitstream@@Base+0x492>
    ed14:	9d12      	ldr	r5, [sp, #72]	; 0x48
    ed16:	4628      	mov	r0, r5
    ed18:	f7f6 ee96 	blx	5a48 <malloc@plt>
    ed1c:	901a      	str	r0, [sp, #104]	; 0x68
    ed1e:	2800      	cmp	r0, #0
    ed20:	f040 8086 	bne.w	ee30 <parse_bytevc1_from_heif_bitstream@@Base+0x600>
    ed24:	4659      	mov	r1, fp
    ed26:	9816      	ldr	r0, [sp, #88]	; 0x58
    ed28:	2268      	movs	r2, #104	; 0x68
    ed2a:	f7f6 ee6a 	blx	5a00 <memcpy@plt>
    ed2e:	e764      	b.n	ebfa <parse_bytevc1_from_heif_bitstream@@Base+0x3ca>
    ed30:	ab5a      	add	r3, sp, #360	; 0x168
    ed32:	9917      	ldr	r1, [sp, #92]	; 0x5c
    ed34:	f44f 7246 	mov.w	r2, #792	; 0x318
    ed38:	930f      	str	r3, [sp, #60]	; 0x3c
    ed3a:	461c      	mov	r4, r3
    ed3c:	4618      	mov	r0, r3
    ed3e:	f7f6 eee4 	blx	5b08 <memset@plt>
    ed42:	4620      	mov	r0, r4
    ed44:	990c      	ldr	r1, [sp, #48]	; 0x30
    ed46:	f7f7 eb24 	blx	6390 <MoovBox_parse_box@plt>
    ed4a:	4607      	mov	r7, r0
    ed4c:	2800      	cmp	r0, #0
    ed4e:	f040 872b 	bne.w	fba8 <parse_bytevc1_from_heif_bitstream@@Base+0x1378>
    ed52:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    ed54:	f8d2 3260 	ldr.w	r3, [r2, #608]	; 0x260
    ed58:	4618      	mov	r0, r3
    ed5a:	931e      	str	r3, [sp, #120]	; 0x78
    ed5c:	f8d2 3228 	ldr.w	r3, [r2, #552]	; 0x228
    ed60:	461c      	mov	r4, r3
    ed62:	931b      	str	r3, [sp, #108]	; 0x6c
    ed64:	4613      	mov	r3, r2
    ed66:	f8d2 2240 	ldr.w	r2, [r2, #576]	; 0x240
    ed6a:	9220      	str	r2, [sp, #128]	; 0x80
    ed6c:	f8d3 2244 	ldr.w	r2, [r3, #580]	; 0x244
    ed70:	9222      	str	r2, [sp, #136]	; 0x88
    ed72:	f8d3 2248 	ldr.w	r2, [r3, #584]	; 0x248
    ed76:	9226      	str	r2, [sp, #152]	; 0x98
    ed78:	f8d3 2264 	ldr.w	r2, [r3, #612]	; 0x264
    ed7c:	9214      	str	r2, [sp, #80]	; 0x50
    ed7e:	f8d3 2268 	ldr.w	r2, [r3, #616]	; 0x268
    ed82:	9208      	str	r2, [sp, #32]
    ed84:	461a      	mov	r2, r3
    ed86:	f8d3 326c 	ldr.w	r3, [r3, #620]	; 0x26c
    ed8a:	931c      	str	r3, [sp, #112]	; 0x70
    ed8c:	f8d2 3288 	ldr.w	r3, [r2, #648]	; 0x288
    ed90:	9313      	str	r3, [sp, #76]	; 0x4c
    ed92:	f8d2 32a8 	ldr.w	r3, [r2, #680]	; 0x2a8
    ed96:	930e      	str	r3, [sp, #56]	; 0x38
    ed98:	2800      	cmp	r0, #0
    ed9a:	f000 8672 	beq.w	fa82 <parse_bytevc1_from_heif_bitstream@@Base+0x1252>
    ed9e:	f8df 3674 	ldr.w	r3, [pc, #1652]	; f414 <parse_bytevc1_from_heif_bitstream@@Base+0xbe4>
    eda2:	46b8      	mov	r8, r7
    eda4:	f8cd a05c 	str.w	sl, [sp, #92]	; 0x5c
    eda8:	46bb      	mov	fp, r7
    edaa:	447b      	add	r3, pc
    edac:	f8dd a068 	ldr.w	sl, [sp, #104]	; 0x68
    edb0:	931d      	str	r3, [sp, #116]	; 0x74
    edb2:	4623      	mov	r3, r4
    edb4:	9c18      	ldr	r4, [sp, #96]	; 0x60
    edb6:	9711      	str	r7, [sp, #68]	; 0x44
    edb8:	9704      	str	r7, [sp, #16]
    edba:	991c      	ldr	r1, [sp, #112]	; 0x70
    edbc:	9d06      	ldr	r5, [sp, #24]
    edbe:	981d      	ldr	r0, [sp, #116]	; 0x74
    edc0:	f851 2027 	ldr.w	r2, [r1, r7, lsl #2]
    edc4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
    edc8:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
    edcc:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
    edd0:	f832 2c84 	ldrh.w	r2, [r2, #-132]
    edd4:	602a      	str	r2, [r5, #0]
    edd6:	f851 2027 	ldr.w	r2, [r1, r7, lsl #2]
    edda:	eb02 0242 	add.w	r2, r2, r2, lsl #1
    edde:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
    ede2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    ede6:	9a07      	ldr	r2, [sp, #28]
    ede8:	f833 3c82 	ldrh.w	r3, [r3, #-130]
    edec:	6013      	str	r3, [r2, #0]
    edee:	f851 3027 	ldr.w	r3, [r1, r7, lsl #2]
    edf2:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
    edf4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    edf8:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
    edfc:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
    ee00:	f853 2c24 	ldr.w	r2, [r3, #-36]
    ee04:	f853 6c48 	ldr.w	r6, [r3, #-72]
    ee08:	f853 5c20 	ldr.w	r5, [r3, #-32]
    ee0c:	4617      	mov	r7, r2
    ee0e:	f7f6 ef18 	blx	5c40 <string_type_to_int32@plt>
    ee12:	42b0      	cmp	r0, r6
    ee14:	f000 808c 	beq.w	ef30 <parse_bytevc1_from_heif_bitstream@@Base+0x700>
    ee18:	9b04      	ldr	r3, [sp, #16]
    ee1a:	9a1e      	ldr	r2, [sp, #120]	; 0x78
    ee1c:	3301      	adds	r3, #1
    ee1e:	9304      	str	r3, [sp, #16]
    ee20:	4293      	cmp	r3, r2
    ee22:	f000 85e5 	beq.w	f9f0 <parse_bytevc1_from_heif_bitstream@@Base+0x11c0>
    ee26:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    ee28:	9f04      	ldr	r7, [sp, #16]
    ee2a:	f8d3 3228 	ldr.w	r3, [r3, #552]	; 0x228
    ee2e:	e7c4      	b.n	edba <parse_bytevc1_from_heif_bitstream@@Base+0x58a>
    ee30:	2100      	movs	r1, #0
    ee32:	462a      	mov	r2, r5
    ee34:	f7f6 ee68 	blx	5b08 <memset@plt>
    ee38:	e523      	b.n	e882 <parse_bytevc1_from_heif_bitstream@@Base+0x52>
    ee3a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    ee3c:	f892 0100 	ldrb.w	r0, [r2, #256]	; 0x100
    ee40:	b1a0      	cbz	r0, ee6c <parse_bytevc1_from_heif_bitstream@@Base+0x63c>
    ee42:	f8d2 30fc 	ldr.w	r3, [r2, #252]	; 0xfc
    ee46:	9c13      	ldr	r4, [sp, #76]	; 0x4c
    ee48:	461a      	mov	r2, r3
    ee4a:	9326      	str	r3, [sp, #152]	; 0x98
    ee4c:	68db      	ldr	r3, [r3, #12]
    ee4e:	429c      	cmp	r4, r3
    ee50:	d035      	beq.n	eebe <parse_bytevc1_from_heif_bitstream@@Base+0x68e>
    ee52:	4613      	mov	r3, r2
    ee54:	2200      	movs	r2, #0
    ee56:	3318      	adds	r3, #24
    ee58:	e005      	b.n	ee66 <parse_bytevc1_from_heif_bitstream@@Base+0x636>
    ee5a:	461d      	mov	r5, r3
    ee5c:	3318      	adds	r3, #24
    ee5e:	f853 1c0c 	ldr.w	r1, [r3, #-12]
    ee62:	428c      	cmp	r4, r1
    ee64:	d02a      	beq.n	eebc <parse_bytevc1_from_heif_bitstream@@Base+0x68c>
    ee66:	3201      	adds	r2, #1
    ee68:	4282      	cmp	r2, r0
    ee6a:	d1f6      	bne.n	ee5a <parse_bytevc1_from_heif_bitstream@@Base+0x62a>
    ee6c:	46d3      	mov	fp, sl
    ee6e:	980f      	ldr	r0, [sp, #60]	; 0x3c
    ee70:	f7f7 ea9a 	blx	63a8 <MetaBox_release@plt>
    ee74:	e6b6      	b.n	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    ee76:	f8da 305c 	ldr.w	r3, [sl, #92]	; 0x5c
    ee7a:	f8da 0090 	ldr.w	r0, [sl, #144]	; 0x90
    ee7e:	441c      	add	r4, r3
    ee80:	6964      	ldr	r4, [r4, #20]
    ee82:	2800      	cmp	r0, #0
    ee84:	f43f ae57 	beq.w	eb36 <parse_bytevc1_from_heif_bitstream@@Base+0x306>
    ee88:	f8da 10e4 	ldr.w	r1, [sl, #228]	; 0xe4
    ee8c:	680b      	ldr	r3, [r1, #0]
    ee8e:	429c      	cmp	r4, r3
    ee90:	bf1c      	itt	ne
    ee92:	f101 0220 	addne.w	r2, r1, #32
    ee96:	2300      	movne	r3, #0
    ee98:	d105      	bne.n	eea6 <parse_bytevc1_from_heif_bitstream@@Base+0x676>
    ee9a:	e02f      	b.n	eefc <parse_bytevc1_from_heif_bitstream@@Base+0x6cc>
    ee9c:	4611      	mov	r1, r2
    ee9e:	f852 5b20 	ldr.w	r5, [r2], #32
    eea2:	42ac      	cmp	r4, r5
    eea4:	d02a      	beq.n	eefc <parse_bytevc1_from_heif_bitstream@@Base+0x6cc>
    eea6:	3301      	adds	r3, #1
    eea8:	4283      	cmp	r3, r0
    eeaa:	d1f7      	bne.n	ee9c <parse_bytevc1_from_heif_bitstream@@Base+0x66c>
    eeac:	e643      	b.n	eb36 <parse_bytevc1_from_heif_bitstream@@Base+0x306>
    eeae:	46d3      	mov	fp, sl
    eeb0:	f8dd a008 	ldr.w	sl, [sp, #8]
    eeb4:	4650      	mov	r0, sl
    eeb6:	f7f7 ea72 	blx	639c <FileTypeBox_release@plt>
    eeba:	e693      	b.n	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    eebc:	9526      	str	r5, [sp, #152]	; 0x98
    eebe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    eec0:	6dde      	ldr	r6, [r3, #92]	; 0x5c
    eec2:	e553      	b.n	e96c <parse_bytevc1_from_heif_bitstream@@Base+0x13c>
    eec4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    eec6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
    eeca:	e597      	b.n	e9fc <parse_bytevc1_from_heif_bitstream@@Base+0x1cc>
    eecc:	9a26      	ldr	r2, [sp, #152]	; 0x98
    eece:	6950      	ldr	r0, [r2, #20]
    eed0:	2800      	cmp	r0, #0
    eed2:	f43f ad9c 	beq.w	ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    eed6:	6912      	ldr	r2, [r2, #16]
    eed8:	6813      	ldr	r3, [r2, #0]
    eeda:	459c      	cmp	ip, r3
    eedc:	bf18      	it	ne
    eede:	2300      	movne	r3, #0
    eee0:	d105      	bne.n	eeee <parse_bytevc1_from_heif_bitstream@@Base+0x6be>
    eee2:	e6ad      	b.n	ec40 <parse_bytevc1_from_heif_bitstream@@Base+0x410>
    eee4:	f852 1f04 	ldr.w	r1, [r2, #4]!
    eee8:	458c      	cmp	ip, r1
    eeea:	f43f aea9 	beq.w	ec40 <parse_bytevc1_from_heif_bitstream@@Base+0x410>
    eeee:	3301      	adds	r3, #1
    eef0:	4283      	cmp	r3, r0
    eef2:	d1f7      	bne.n	eee4 <parse_bytevc1_from_heif_bitstream@@Base+0x6b4>
    eef4:	e58b      	b.n	ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    eef6:	2301      	movs	r3, #1
    eef8:	9322      	str	r3, [sp, #136]	; 0x88
    eefa:	e6e2      	b.n	ecc2 <parse_bytevc1_from_heif_bitstream@@Base+0x492>
    eefc:	698b      	ldr	r3, [r1, #24]
    eefe:	2b00      	cmp	r3, #0
    ef00:	f43f ae19 	beq.w	eb36 <parse_bytevc1_from_heif_bitstream@@Base+0x306>
    ef04:	69c8      	ldr	r0, [r1, #28]
    ef06:	684a      	ldr	r2, [r1, #4]
    ef08:	690b      	ldr	r3, [r1, #16]
    ef0a:	6884      	ldr	r4, [r0, #8]
    ef0c:	6901      	ldr	r1, [r0, #16]
    ef0e:	4423      	add	r3, r4
    ef10:	2a00      	cmp	r2, #0
    ef12:	f040 84cc 	bne.w	f8ae <parse_bytevc1_from_heif_bitstream@@Base+0x107e>
    ef16:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    ef18:	3304      	adds	r3, #4
    ef1a:	6812      	ldr	r2, [r2, #0]
    ef1c:	18d3      	adds	r3, r2, r3
    ef1e:	9321      	str	r3, [sp, #132]	; 0x84
    ef20:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    ef22:	1f0a      	subs	r2, r1, #4
    ef24:	9224      	str	r2, [sp, #144]	; 0x90
    ef26:	685b      	ldr	r3, [r3, #4]
    ef28:	429a      	cmp	r2, r3
    ef2a:	f4ff ae04 	bcc.w	eb36 <parse_bytevc1_from_heif_bitstream@@Base+0x306>
    ef2e:	e79e      	b.n	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    ef30:	2f00      	cmp	r7, #0
    ef32:	dd35      	ble.n	efa0 <parse_bytevc1_from_heif_bitstream@@Base+0x770>
    ef34:	46a9      	mov	r9, r5
    ef36:	f8cd 8008 	str.w	r8, [sp, #8]
    ef3a:	2500      	movs	r5, #0
    ef3c:	2601      	movs	r6, #1
    ef3e:	46b8      	mov	r8, r7
    ef40:	e004      	b.n	ef4c <parse_bytevc1_from_heif_bitstream@@Base+0x71c>
    ef42:	3501      	adds	r5, #1
    ef44:	f109 090c 	add.w	r9, r9, #12
    ef48:	4545      	cmp	r5, r8
    ef4a:	d027      	beq.n	ef9c <parse_bytevc1_from_heif_bitstream@@Base+0x76c>
    ef4c:	f8b9 2004 	ldrh.w	r2, [r9, #4]
    ef50:	2a00      	cmp	r2, #0
    ef52:	d0f6      	beq.n	ef42 <parse_bytevc1_from_heif_bitstream@@Base+0x712>
    ef54:	9b10      	ldr	r3, [sp, #64]	; 0x40
    ef56:	2b00      	cmp	r3, #0
    ef58:	d0f3      	beq.n	ef42 <parse_bytevc1_from_heif_bitstream@@Base+0x712>
    ef5a:	2700      	movs	r7, #0
    ef5c:	eb0a 0304 	add.w	r3, sl, r4
    ef60:	f80a b004 	strb.w	fp, [sl, r4]
    ef64:	3404      	adds	r4, #4
    ef66:	f883 b001 	strb.w	fp, [r3, #1]
    ef6a:	eb0a 0004 	add.w	r0, sl, r4
    ef6e:	f883 b002 	strb.w	fp, [r3, #2]
    ef72:	70de      	strb	r6, [r3, #3]
    ef74:	f8d9 3008 	ldr.w	r3, [r9, #8]
    ef78:	eb03 01c7 	add.w	r1, r3, r7, lsl #3
    ef7c:	f833 2037 	ldrh.w	r2, [r3, r7, lsl #3]
    ef80:	6849      	ldr	r1, [r1, #4]
    ef82:	f7f6 ed3e 	blx	5a00 <memcpy@plt>
    ef86:	f8d9 2008 	ldr.w	r2, [r9, #8]
    ef8a:	f8b9 3004 	ldrh.w	r3, [r9, #4]
    ef8e:	f832 2037 	ldrh.w	r2, [r2, r7, lsl #3]
    ef92:	3701      	adds	r7, #1
    ef94:	42bb      	cmp	r3, r7
    ef96:	4414      	add	r4, r2
    ef98:	dce0      	bgt.n	ef5c <parse_bytevc1_from_heif_bitstream@@Base+0x72c>
    ef9a:	e7d2      	b.n	ef42 <parse_bytevc1_from_heif_bitstream@@Base+0x712>
    ef9c:	f8dd 8008 	ldr.w	r8, [sp, #8]
    efa0:	ab38      	add	r3, sp, #224	; 0xe0
    efa2:	9302      	str	r3, [sp, #8]
    efa4:	4618      	mov	r0, r3
    efa6:	f7f6 ed6e 	blx	5a84 <Bitstream_init@plt>
    efaa:	9b14      	ldr	r3, [sp, #80]	; 0x50
    efac:	9a04      	ldr	r2, [sp, #16]
    efae:	f853 6022 	ldr.w	r6, [r3, r2, lsl #2]
    efb2:	9b11      	ldr	r3, [sp, #68]	; 0x44
    efb4:	429e      	cmp	r6, r3
    efb6:	f000 8474 	beq.w	f8a2 <parse_bytevc1_from_heif_bitstream@@Base+0x1072>
    efba:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    efbc:	ea4f 0788 	mov.w	r7, r8, lsl #2
    efc0:	f853 0028 	ldr.w	r0, [r3, r8, lsl #2]
    efc4:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    efc6:	685b      	ldr	r3, [r3, #4]
    efc8:	4298      	cmp	r0, r3
    efca:	d832      	bhi.n	f032 <parse_bytevc1_from_heif_bitstream@@Base+0x802>
    efcc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    efce:	9a12      	ldr	r2, [sp, #72]	; 0x48
    efd0:	f853 3028 	ldr.w	r3, [r3, r8, lsl #2]
    efd4:	3304      	adds	r3, #4
    efd6:	4423      	add	r3, r4
    efd8:	429a      	cmp	r2, r3
    efda:	d32a      	bcc.n	f032 <parse_bytevc1_from_heif_bitstream@@Base+0x802>
    efdc:	9a04      	ldr	r2, [sp, #16]
    efde:	4635      	mov	r5, r6
    efe0:	9b08      	ldr	r3, [sp, #32]
    efe2:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    efe6:	2200      	movs	r2, #0
    efe8:	920d      	str	r2, [sp, #52]	; 0x34
    efea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    efec:	9902      	ldr	r1, [sp, #8]
    efee:	6812      	ldr	r2, [r2, #0]
    eff0:	4402      	add	r2, r0
    eff2:	600a      	str	r2, [r1, #0]
    eff4:	b11b      	cbz	r3, effe <parse_bytevc1_from_heif_bitstream@@Base+0x7ce>
    eff6:	9a10      	ldr	r2, [sp, #64]	; 0x40
    eff8:	bb0a      	cbnz	r2, f03e <parse_bytevc1_from_heif_bitstream@@Base+0x80e>
    effa:	4498      	add	r8, r3
    effc:	4635      	mov	r5, r6
    effe:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    f000:	3201      	adds	r2, #1
    f002:	920d      	str	r2, [sp, #52]	; 0x34
    f004:	4611      	mov	r1, r2
    f006:	9a11      	ldr	r2, [sp, #68]	; 0x44
    f008:	1aaa      	subs	r2, r5, r2
    f00a:	4291      	cmp	r1, r2
    f00c:	f080 844a 	bcs.w	f8a4 <parse_bytevc1_from_heif_bitstream@@Base+0x1074>
    f010:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    f012:	ea4f 0788 	mov.w	r7, r8, lsl #2
    f016:	f852 0028 	ldr.w	r0, [r2, r8, lsl #2]
    f01a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    f01c:	6852      	ldr	r2, [r2, #4]
    f01e:	4290      	cmp	r0, r2
    f020:	d807      	bhi.n	f032 <parse_bytevc1_from_heif_bitstream@@Base+0x802>
    f022:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    f024:	1d21      	adds	r1, r4, #4
    f026:	f852 2028 	ldr.w	r2, [r2, r8, lsl #2]
    f02a:	4411      	add	r1, r2
    f02c:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f02e:	428a      	cmp	r2, r1
    f030:	d2db      	bcs.n	efea <parse_bytevc1_from_heif_bitstream@@Base+0x7ba>
    f032:	980f      	ldr	r0, [sp, #60]	; 0x3c
    f034:	f8dd b05c 	ldr.w	fp, [sp, #92]	; 0x5c
    f038:	f7f7 e9bc 	blx	63b4 <MoovBox_release@plt>
    f03c:	e5d2      	b.n	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f03e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    f040:	46d1      	mov	r9, sl
    f042:	19de      	adds	r6, r3, r7
    f044:	4647      	mov	r7, r8
    f046:	eb09 0504 	add.w	r5, r9, r4
    f04a:	46b2      	mov	sl, r6
    f04c:	9802      	ldr	r0, [sp, #8]
    f04e:	3701      	adds	r7, #1
    f050:	f856 2b04 	ldr.w	r2, [r6], #4
    f054:	4629      	mov	r1, r5
    f056:	f7f6 eed8 	blx	5e08 <Bitstream_read_bytes@plt>
    f05a:	f809 b004 	strb.w	fp, [r9, r4]
    f05e:	2301      	movs	r3, #1
    f060:	9804      	ldr	r0, [sp, #16]
    f062:	70eb      	strb	r3, [r5, #3]
    f064:	ebc8 0207 	rsb	r2, r8, r7
    f068:	9b08      	ldr	r3, [sp, #32]
    f06a:	f885 b001 	strb.w	fp, [r5, #1]
    f06e:	f885 b002 	strb.w	fp, [r5, #2]
    f072:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
    f076:	f8da 1000 	ldr.w	r1, [sl]
    f07a:	429a      	cmp	r2, r3
    f07c:	440c      	add	r4, r1
    f07e:	d3e2      	bcc.n	f046 <parse_bytevc1_from_heif_bitstream@@Base+0x816>
    f080:	9a14      	ldr	r2, [sp, #80]	; 0x50
    f082:	46ca      	mov	sl, r9
    f084:	46b8      	mov	r8, r7
    f086:	f852 6020 	ldr.w	r6, [r2, r0, lsl #2]
    f08a:	e7b7      	b.n	effc <parse_bytevc1_from_heif_bitstream@@Base+0x7cc>
    f08c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    f08e:	46d3      	mov	fp, sl
    f090:	2b00      	cmp	r3, #0
    f092:	f43f ada7 	beq.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f096:	9a1a      	ldr	r2, [sp, #104]	; 0x68
    f098:	f89a 3009 	ldrb.w	r3, [sl, #9]
    f09c:	f8ca 2000 	str.w	r2, [sl]
    f0a0:	9a18      	ldr	r2, [sp, #96]	; 0x60
    f0a2:	f8ca 2004 	str.w	r2, [sl, #4]
    f0a6:	9a21      	ldr	r2, [sp, #132]	; 0x84
    f0a8:	f8ca 2034 	str.w	r2, [sl, #52]	; 0x34
    f0ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
    f0ae:	f8ca 2038 	str.w	r2, [sl, #56]	; 0x38
    f0b2:	b31b      	cbz	r3, f0fc <parse_bytevc1_from_heif_bitstream@@Base+0x8cc>
    f0b4:	f8da 4028 	ldr.w	r4, [sl, #40]	; 0x28
    f0b8:	2c00      	cmp	r4, #0
    f0ba:	f77f ad93 	ble.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0be:	f8da 002c 	ldr.w	r0, [sl, #44]	; 0x2c
    f0c2:	2800      	cmp	r0, #0
    f0c4:	f77f ad8e 	ble.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0c8:	f8da 2010 	ldr.w	r2, [sl, #16]
    f0cc:	2a00      	cmp	r2, #0
    f0ce:	f77f ad89 	ble.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0d2:	f8da 3014 	ldr.w	r3, [sl, #20]
    f0d6:	2b00      	cmp	r3, #0
    f0d8:	f77f ad84 	ble.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0dc:	3a01      	subs	r2, #1
    f0de:	f8da 1020 	ldr.w	r1, [sl, #32]
    f0e2:	fb02 f204 	mul.w	r2, r2, r4
    f0e6:	428a      	cmp	r2, r1
    f0e8:	f73f ad7c 	bgt.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0ec:	3b01      	subs	r3, #1
    f0ee:	f8da 2024 	ldr.w	r2, [sl, #36]	; 0x24
    f0f2:	fb03 f300 	mul.w	r3, r3, r0
    f0f6:	4293      	cmp	r3, r2
    f0f8:	f73f ad74 	bgt.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f0fc:	4659      	mov	r1, fp
    f0fe:	9816      	ldr	r0, [sp, #88]	; 0x58
    f100:	2268      	movs	r2, #104	; 0x68
    f102:	2301      	movs	r3, #1
    f104:	f88b 300b 	strb.w	r3, [fp, #11]
    f108:	f7f6 ec7a 	blx	5a00 <memcpy@plt>
    f10c:	e575      	b.n	ebfa <parse_bytevc1_from_heif_bitstream@@Base+0x3ca>
    f10e:	f897 0114 	ldrb.w	r0, [r7, #276]	; 0x114
    f112:	2800      	cmp	r0, #0
    f114:	f43f aeab 	beq.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    f118:	9a22      	ldr	r2, [sp, #136]	; 0x88
    f11a:	f646 1664 	movw	r6, #26980	; 0x6964
    f11e:	991d      	ldr	r1, [sp, #116]	; 0x74
    f120:	f2c6 7672 	movt	r6, #26482	; 0x6772
    f124:	f1a2 0201 	sub.w	r2, r2, #1
    f128:	f04f 0800 	mov.w	r8, #0
    f12c:	42b1      	cmp	r1, r6
    f12e:	fab2 f282 	clz	r2, r2
    f132:	f246 3343 	movw	r3, #25411	; 0x6343
    f136:	9628      	str	r6, [sp, #160]	; 0xa0
    f138:	ea4f 1252 	mov.w	r2, r2, lsr #5
    f13c:	bf08      	it	eq
    f13e:	2200      	moveq	r2, #0
    f140:	9214      	str	r2, [sp, #80]	; 0x50
    f142:	f247 0265 	movw	r2, #28773	; 0x7065
    f146:	f6c6 0376 	movt	r3, #26742	; 0x6876
    f14a:	f6c6 1273 	movt	r2, #26995	; 0x6973
    f14e:	4664      	mov	r4, ip
    f150:	f8cd 809c 	str.w	r8, [sp, #156]	; 0x9c
    f154:	46c1      	mov	r9, r8
    f156:	f8cd 8034 	str.w	r8, [sp, #52]	; 0x34
    f15a:	4646      	mov	r6, r8
    f15c:	9304      	str	r3, [sp, #16]
    f15e:	9208      	str	r2, [sp, #32]
    f160:	4684      	mov	ip, r0
    f162:	9d20      	ldr	r5, [sp, #128]	; 0x80
    f164:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    f168:	e008      	b.n	f17c <parse_bytevc1_from_heif_bitstream@@Base+0x94c>
    f16a:	9a08      	ldr	r2, [sp, #32]
    f16c:	4293      	cmp	r3, r2
    f16e:	f000 80a8 	beq.w	f2c2 <parse_bytevc1_from_heif_bitstream@@Base+0xa92>
    f172:	f108 0801 	add.w	r8, r8, #1
    f176:	45c4      	cmp	ip, r8
    f178:	f340 82c4 	ble.w	f704 <parse_bytevc1_from_heif_bitstream@@Base+0xed4>
    f17c:	f8da 3110 	ldr.w	r3, [sl, #272]	; 0x110
    f180:	eb08 0248 	add.w	r2, r8, r8, lsl #1
    f184:	eb03 0182 	add.w	r1, r3, r2, lsl #2
    f188:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
    f18c:	9a04      	ldr	r2, [sp, #16]
    f18e:	6849      	ldr	r1, [r1, #4]
    f190:	4293      	cmp	r3, r2
    f192:	d1ea      	bne.n	f16a <parse_bytevc1_from_heif_bitstream@@Base+0x93a>
    f194:	f8da 2144 	ldr.w	r2, [sl, #324]	; 0x144
    f198:	2a00      	cmp	r2, #0
    f19a:	d071      	beq.n	f280 <parse_bytevc1_from_heif_bitstream@@Base+0xa50>
    f19c:	eb02 0e42 	add.w	lr, r2, r2, lsl #1
    f1a0:	f8da 7140 	ldr.w	r7, [sl, #320]	; 0x140
    f1a4:	2000      	movs	r0, #0
    f1a6:	eb07 0e8e 	add.w	lr, r7, lr, lsl #2
    f1aa:	e004      	b.n	f1b6 <parse_bytevc1_from_heif_bitstream@@Base+0x986>
    f1ac:	455d      	cmp	r5, fp
    f1ae:	d07c      	beq.n	f2aa <parse_bytevc1_from_heif_bitstream@@Base+0xa7a>
    f1b0:	370c      	adds	r7, #12
    f1b2:	4577      	cmp	r7, lr
    f1b4:	d015      	beq.n	f1e2 <parse_bytevc1_from_heif_bitstream@@Base+0x9b2>
    f1b6:	793a      	ldrb	r2, [r7, #4]
    f1b8:	f8d7 b000 	ldr.w	fp, [r7]
    f1bc:	68bb      	ldr	r3, [r7, #8]
    f1be:	2a00      	cmp	r2, #0
    f1c0:	d0f6      	beq.n	f1b0 <parse_bytevc1_from_heif_bitstream@@Base+0x980>
    f1c2:	455c      	cmp	r4, fp
    f1c4:	d1f2      	bne.n	f1ac <parse_bytevc1_from_heif_bitstream@@Base+0x97c>
    f1c6:	eb03 0282 	add.w	r2, r3, r2, lsl #2
    f1ca:	f8b3 b002 	ldrh.w	fp, [r3, #2]
    f1ce:	3304      	adds	r3, #4
    f1d0:	458b      	cmp	fp, r1
    f1d2:	bf04      	itt	eq
    f1d4:	2601      	moveq	r6, #1
    f1d6:	2001      	moveq	r0, #1
    f1d8:	4293      	cmp	r3, r2
    f1da:	d1f6      	bne.n	f1ca <parse_bytevc1_from_heif_bitstream@@Base+0x99a>
    f1dc:	370c      	adds	r7, #12
    f1de:	4577      	cmp	r7, lr
    f1e0:	d1e9      	bne.n	f1b6 <parse_bytevc1_from_heif_bitstream@@Base+0x986>
    f1e2:	2800      	cmp	r0, #0
    f1e4:	d04c      	beq.n	f280 <parse_bytevc1_from_heif_bitstream@@Base+0xa50>
    f1e6:	f8da 3124 	ldr.w	r3, [sl, #292]	; 0x124
    f1ea:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f1ec:	9918      	ldr	r1, [sp, #96]	; 0x60
    f1ee:	f853 7028 	ldr.w	r7, [r3, r8, lsl #2]
    f1f2:	ebc1 0b02 	rsb	fp, r1, r2
    f1f6:	6f7a      	ldr	r2, [r7, #116]	; 0x74
    f1f8:	1d13      	adds	r3, r2, #4
    f1fa:	459b      	cmp	fp, r3
    f1fc:	f0c0 80eb 	bcc.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f200:	6efb      	ldr	r3, [r7, #108]	; 0x6c
    f202:	2a00      	cmp	r2, #0
    f204:	bf18      	it	ne
    f206:	2b00      	cmpne	r3, #0
    f208:	bf0c      	ite	eq
    f20a:	2301      	moveq	r3, #1
    f20c:	2300      	movne	r3, #0
    f20e:	f000 80e2 	beq.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f212:	9a10      	ldr	r2, [sp, #64]	; 0x40
    f214:	2a00      	cmp	r2, #0
    f216:	f040 808f 	bne.w	f338 <parse_bytevc1_from_heif_bitstream@@Base+0xb08>
    f21a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    f21c:	1d1a      	adds	r2, r3, #4
    f21e:	455a      	cmp	r2, fp
    f220:	f200 80d9 	bhi.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f224:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    f226:	2b00      	cmp	r3, #0
    f228:	bf18      	it	ne
    f22a:	2a00      	cmpne	r2, #0
    f22c:	bf0c      	ite	eq
    f22e:	2301      	moveq	r3, #1
    f230:	2300      	movne	r3, #0
    f232:	f000 80d0 	beq.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f236:	9a10      	ldr	r2, [sp, #64]	; 0x40
    f238:	2a00      	cmp	r2, #0
    f23a:	f040 80ac 	bne.w	f396 <parse_bytevc1_from_heif_bitstream@@Base+0xb66>
    f23e:	6e3a      	ldr	r2, [r7, #96]	; 0x60
    f240:	1d13      	adds	r3, r2, #4
    f242:	455b      	cmp	r3, fp
    f244:	f200 80c7 	bhi.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f248:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    f24a:	2a00      	cmp	r2, #0
    f24c:	bf18      	it	ne
    f24e:	2b00      	cmpne	r3, #0
    f250:	bf0c      	ite	eq
    f252:	2301      	moveq	r3, #1
    f254:	2300      	movne	r3, #0
    f256:	f000 80be 	beq.w	f3d6 <parse_bytevc1_from_heif_bitstream@@Base+0xba6>
    f25a:	9a10      	ldr	r2, [sp, #64]	; 0x40
    f25c:	2a00      	cmp	r2, #0
    f25e:	f040 8084 	bne.w	f36a <parse_bytevc1_from_heif_bitstream@@Base+0xb3a>
    f262:	f897 3030 	ldrb.w	r3, [r7, #48]	; 0x30
    f266:	990e      	ldr	r1, [sp, #56]	; 0x38
    f268:	f013 0ffd 	tst.w	r3, #253	; 0xfd
    f26c:	f103 0208 	add.w	r2, r3, #8
    f270:	f881 2050 	strb.w	r2, [r1, #80]	; 0x50
    f274:	f040 83ff 	bne.w	fa76 <parse_bytevc1_from_heif_bitstream@@Base+0x1246>
    f278:	f89a c114 	ldrb.w	ip, [sl, #276]	; 0x114
    f27c:	2301      	movs	r3, #1
    f27e:	930d      	str	r3, [sp, #52]	; 0x34
    f280:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    f282:	ea19 0f03 	tst.w	r9, r3
    f286:	f43f af74 	beq.w	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f28a:	9b14      	ldr	r3, [sp, #80]	; 0x50
    f28c:	f04f 0901 	mov.w	r9, #1
    f290:	2b00      	cmp	r3, #0
    f292:	f43f af6e 	beq.w	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f296:	f8da 3124 	ldr.w	r3, [sl, #292]	; 0x124
    f29a:	f04f 0901 	mov.w	r9, #1
    f29e:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
    f2a2:	f853 3028 	ldr.w	r3, [r3, r8, lsl #2]
    f2a6:	9327      	str	r3, [sp, #156]	; 0x9c
    f2a8:	e763      	b.n	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f2aa:	eb03 0282 	add.w	r2, r3, r2, lsl #2
    f2ae:	f8b3 b002 	ldrh.w	fp, [r3, #2]
    f2b2:	3304      	adds	r3, #4
    f2b4:	458b      	cmp	fp, r1
    f2b6:	bf08      	it	eq
    f2b8:	f04f 0901 	moveq.w	r9, #1
    f2bc:	4293      	cmp	r3, r2
    f2be:	d1f6      	bne.n	f2ae <parse_bytevc1_from_heif_bitstream@@Base+0xa7e>
    f2c0:	e776      	b.n	f1b0 <parse_bytevc1_from_heif_bitstream@@Base+0x980>
    f2c2:	f8da 3144 	ldr.w	r3, [sl, #324]	; 0x144
    f2c6:	2b00      	cmp	r3, #0
    f2c8:	f43f af53 	beq.w	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f2cc:	eb03 0e43 	add.w	lr, r3, r3, lsl #1
    f2d0:	f8da 0140 	ldr.w	r0, [sl, #320]	; 0x140
    f2d4:	2700      	movs	r7, #0
    f2d6:	9102      	str	r1, [sp, #8]
    f2d8:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
    f2dc:	e002      	b.n	f2e4 <parse_bytevc1_from_heif_bitstream@@Base+0xab4>
    f2de:	300c      	adds	r0, #12
    f2e0:	4570      	cmp	r0, lr
    f2e2:	d014      	beq.n	f30e <parse_bytevc1_from_heif_bitstream@@Base+0xade>
    f2e4:	6801      	ldr	r1, [r0, #0]
    f2e6:	7902      	ldrb	r2, [r0, #4]
    f2e8:	428c      	cmp	r4, r1
    f2ea:	6883      	ldr	r3, [r0, #8]
    f2ec:	d1f7      	bne.n	f2de <parse_bytevc1_from_heif_bitstream@@Base+0xaae>
    f2ee:	2a00      	cmp	r2, #0
    f2f0:	d0f5      	beq.n	f2de <parse_bytevc1_from_heif_bitstream@@Base+0xaae>
    f2f2:	9902      	ldr	r1, [sp, #8]
    f2f4:	eb03 0b82 	add.w	fp, r3, r2, lsl #2
    f2f8:	885a      	ldrh	r2, [r3, #2]
    f2fa:	3304      	adds	r3, #4
    f2fc:	428a      	cmp	r2, r1
    f2fe:	bf08      	it	eq
    f300:	2701      	moveq	r7, #1
    f302:	455b      	cmp	r3, fp
    f304:	d1f8      	bne.n	f2f8 <parse_bytevc1_from_heif_bitstream@@Base+0xac8>
    f306:	300c      	adds	r0, #12
    f308:	9102      	str	r1, [sp, #8]
    f30a:	4570      	cmp	r0, lr
    f30c:	d1ea      	bne.n	f2e4 <parse_bytevc1_from_heif_bitstream@@Base+0xab4>
    f30e:	2f00      	cmp	r7, #0
    f310:	f43f af2f 	beq.w	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f314:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    f316:	f8da 3124 	ldr.w	r3, [sl, #292]	; 0x124
    f31a:	4294      	cmp	r4, r2
    f31c:	f853 3028 	ldr.w	r3, [r3, r8, lsl #2]
    f320:	d052      	beq.n	f3c8 <parse_bytevc1_from_heif_bitstream@@Base+0xb98>
    f322:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    f324:	9928      	ldr	r1, [sp, #160]	; 0xa0
    f326:	428a      	cmp	r2, r1
    f328:	f47f af23 	bne.w	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f32c:	3314      	adds	r3, #20
    f32e:	f963 078f 	vld1.32	{d16}, [r3]
    f332:	edcd 0b4a 	vstr	d16, [sp, #296]	; 0x128
    f336:	e71c      	b.n	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f338:	991a      	ldr	r1, [sp, #104]	; 0x68
    f33a:	9818      	ldr	r0, [sp, #96]	; 0x60
    f33c:	460a      	mov	r2, r1
    f33e:	f100 0b04 	add.w	fp, r0, #4
    f342:	4402      	add	r2, r0
    f344:	4608      	mov	r0, r1
    f346:	9918      	ldr	r1, [sp, #96]	; 0x60
    f348:	5443      	strb	r3, [r0, r1]
    f34a:	2101      	movs	r1, #1
    f34c:	7053      	strb	r3, [r2, #1]
    f34e:	4458      	add	r0, fp
    f350:	7093      	strb	r3, [r2, #2]
    f352:	70d1      	strb	r1, [r2, #3]
    f354:	6f7a      	ldr	r2, [r7, #116]	; 0x74
    f356:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
    f358:	f7f6 eb52 	blx	5a00 <memcpy@plt>
    f35c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
    f35e:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f360:	445b      	add	r3, fp
    f362:	9318      	str	r3, [sp, #96]	; 0x60
    f364:	ebc3 0b02 	rsb	fp, r3, r2
    f368:	e757      	b.n	f21a <parse_bytevc1_from_heif_bitstream@@Base+0x9ea>
    f36a:	991a      	ldr	r1, [sp, #104]	; 0x68
    f36c:	9818      	ldr	r0, [sp, #96]	; 0x60
    f36e:	460a      	mov	r2, r1
    f370:	f100 0b04 	add.w	fp, r0, #4
    f374:	4402      	add	r2, r0
    f376:	4608      	mov	r0, r1
    f378:	9918      	ldr	r1, [sp, #96]	; 0x60
    f37a:	5443      	strb	r3, [r0, r1]
    f37c:	2101      	movs	r1, #1
    f37e:	7053      	strb	r3, [r2, #1]
    f380:	4458      	add	r0, fp
    f382:	7093      	strb	r3, [r2, #2]
    f384:	70d1      	strb	r1, [r2, #3]
    f386:	6db9      	ldr	r1, [r7, #88]	; 0x58
    f388:	6e3a      	ldr	r2, [r7, #96]	; 0x60
    f38a:	f7f6 eb3a 	blx	5a00 <memcpy@plt>
    f38e:	6e3b      	ldr	r3, [r7, #96]	; 0x60
    f390:	445b      	add	r3, fp
    f392:	9318      	str	r3, [sp, #96]	; 0x60
    f394:	e765      	b.n	f262 <parse_bytevc1_from_heif_bitstream@@Base+0xa32>
    f396:	991a      	ldr	r1, [sp, #104]	; 0x68
    f398:	9818      	ldr	r0, [sp, #96]	; 0x60
    f39a:	460a      	mov	r2, r1
    f39c:	f100 0b04 	add.w	fp, r0, #4
    f3a0:	4402      	add	r2, r0
    f3a2:	4608      	mov	r0, r1
    f3a4:	9918      	ldr	r1, [sp, #96]	; 0x60
    f3a6:	5443      	strb	r3, [r0, r1]
    f3a8:	2101      	movs	r1, #1
    f3aa:	7053      	strb	r3, [r2, #1]
    f3ac:	4458      	add	r0, fp
    f3ae:	7093      	strb	r3, [r2, #2]
    f3b0:	70d1      	strb	r1, [r2, #3]
    f3b2:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    f3b4:	6c79      	ldr	r1, [r7, #68]	; 0x44
    f3b6:	f7f6 eb24 	blx	5a00 <memcpy@plt>
    f3ba:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    f3bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f3be:	445b      	add	r3, fp
    f3c0:	9318      	str	r3, [sp, #96]	; 0x60
    f3c2:	ebc3 0b02 	rsb	fp, r3, r2
    f3c6:	e73a      	b.n	f23e <parse_bytevc1_from_heif_bitstream@@Base+0xa0e>
    f3c8:	695a      	ldr	r2, [r3, #20]
    f3ca:	9906      	ldr	r1, [sp, #24]
    f3cc:	600a      	str	r2, [r1, #0]
    f3ce:	9a07      	ldr	r2, [sp, #28]
    f3d0:	699b      	ldr	r3, [r3, #24]
    f3d2:	6013      	str	r3, [r2, #0]
    f3d4:	e6cd      	b.n	f172 <parse_bytevc1_from_heif_bitstream@@Base+0x942>
    f3d6:	980f      	ldr	r0, [sp, #60]	; 0x3c
    f3d8:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    f3dc:	f7f6 efe4 	blx	63a8 <MetaBox_release@plt>
    f3e0:	e400      	b.n	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    f3e2:	46d4      	mov	ip, sl
    f3e4:	46c2      	mov	sl, r8
    f3e6:	e694      	b.n	f112 <parse_bytevc1_from_heif_bitstream@@Base+0x8e2>
    f3e8:	827e      	strh	r6, [r7, #18]
    f3ea:	0000      	movs	r0, r0
    f3ec:	6400      	str	r0, [r0, #64]	; 0x40
    f3ee:	0000      	movs	r0, r0
    f3f0:	6564      	str	r4, [r4, #84]	; 0x54
    f3f2:	0000      	movs	r0, r0
    f3f4:	64c6      	str	r6, [r0, #76]	; 0x4c
    f3f6:	0000      	movs	r0, r0
    f3f8:	647c      	str	r4, [r7, #68]	; 0x44
    f3fa:	0000      	movs	r0, r0
    f3fc:	62a0      	str	r0, [r4, #40]	; 0x28
    f3fe:	0000      	movs	r0, r0
    f400:	6274      	str	r4, [r6, #36]	; 0x24
    f402:	0000      	movs	r0, r0
    f404:	6276      	str	r6, [r6, #36]	; 0x24
    f406:	0000      	movs	r0, r0
    f408:	6278      	str	r0, [r7, #36]	; 0x24
    f40a:	0000      	movs	r0, r0
    f40c:	6278      	str	r0, [r7, #36]	; 0x24
    f40e:	0000      	movs	r0, r0
    f410:	616c      	str	r4, [r5, #20]
    f412:	0000      	movs	r0, r0
    f414:	5efa      	ldrsh	r2, [r7, r3]
    f416:	0000      	movs	r0, r0
    f418:	46da      	mov	sl, fp
    f41a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    f41c:	f893 3114 	ldrb.w	r3, [r3, #276]	; 0x114
    f420:	931e      	str	r3, [sp, #120]	; 0x78
    f422:	2b00      	cmp	r3, #0
    f424:	d060      	beq.n	f4e8 <parse_bytevc1_from_heif_bitstream@@Base+0xcb8>
    f426:	f8df 3798 	ldr.w	r3, [pc, #1944]	; fbc0 <parse_bytevc1_from_heif_bitstream@@Base+0x1390>
    f42a:	f246 1270 	movw	r2, #24944	; 0x6170
    f42e:	f646 7174 	movw	r1, #28532	; 0x6f74
    f432:	f2c6 326c 	movt	r2, #25452	; 0x636c
    f436:	447b      	add	r3, pc
    f438:	f6c6 1172 	movt	r1, #26994	; 0x6972
    f43c:	932b      	str	r3, [sp, #172]	; 0xac
    f43e:	2300      	movs	r3, #0
    f440:	9222      	str	r2, [sp, #136]	; 0x88
    f442:	930e      	str	r3, [sp, #56]	; 0x38
    f444:	931b      	str	r3, [sp, #108]	; 0x6c
    f446:	912a      	str	r1, [sp, #168]	; 0xa8
    f448:	f8cd a074 	str.w	sl, [sp, #116]	; 0x74
    f44c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    f44e:	f8d3 2110 	ldr.w	r2, [r3, #272]	; 0x110
    f452:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    f454:	eb03 0343 	add.w	r3, r3, r3, lsl #1
    f458:	18d1      	adds	r1, r2, r3
    f45a:	58d4      	ldr	r4, [r2, r3]
    f45c:	9b22      	ldr	r3, [sp, #136]	; 0x88
    f45e:	f8d1 b004 	ldr.w	fp, [r1, #4]
    f462:	429c      	cmp	r4, r3
    f464:	d057      	beq.n	f516 <parse_bytevc1_from_heif_bitstream@@Base+0xce6>
    f466:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
    f468:	429c      	cmp	r4, r3
    f46a:	d149      	bne.n	f500 <parse_bytevc1_from_heif_bitstream@@Base+0xcd0>
    f46c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    f46e:	f8d2 0144 	ldr.w	r0, [r2, #324]	; 0x144
    f472:	b370      	cbz	r0, f4d2 <parse_bytevc1_from_heif_bitstream@@Base+0xca2>
    f474:	eb00 0040 	add.w	r0, r0, r0, lsl #1
    f478:	f8d2 1140 	ldr.w	r1, [r2, #320]	; 0x140
    f47c:	f8d2 4124 	ldr.w	r4, [r2, #292]	; 0x124
    f480:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    f482:	eb01 0080 	add.w	r0, r1, r0, lsl #2
    f486:	9f13      	ldr	r7, [sp, #76]	; 0x4c
    f488:	441c      	add	r4, r3
    f48a:	f8dd e074 	ldr.w	lr, [sp, #116]	; 0x74
    f48e:	e002      	b.n	f496 <parse_bytevc1_from_heif_bitstream@@Base+0xc66>
    f490:	310c      	adds	r1, #12
    f492:	4281      	cmp	r1, r0
    f494:	d01d      	beq.n	f4d2 <parse_bytevc1_from_heif_bitstream@@Base+0xca2>
    f496:	680a      	ldr	r2, [r1, #0]
    f498:	790e      	ldrb	r6, [r1, #4]
    f49a:	4297      	cmp	r7, r2
    f49c:	688b      	ldr	r3, [r1, #8]
    f49e:	d1f7      	bne.n	f490 <parse_bytevc1_from_heif_bitstream@@Base+0xc60>
    f4a0:	2e00      	cmp	r6, #0
    f4a2:	d0f5      	beq.n	f490 <parse_bytevc1_from_heif_bitstream@@Base+0xc60>
    f4a4:	f8de 2030 	ldr.w	r2, [lr, #48]	; 0x30
    f4a8:	eb03 0686 	add.w	r6, r3, r6, lsl #2
    f4ac:	885d      	ldrh	r5, [r3, #2]
    f4ae:	3304      	adds	r3, #4
    f4b0:	455d      	cmp	r5, fp
    f4b2:	bf01      	itttt	eq
    f4b4:	6822      	ldreq	r2, [r4, #0]
    f4b6:	7b12      	ldrbeq	r2, [r2, #12]
    f4b8:	eb02 0242 	addeq.w	r2, r2, r2, lsl #1
    f4bc:	ebc2 1202 	rsbeq	r2, r2, r2, lsl #4
    f4c0:	bf08      	it	eq
    f4c2:	0052      	lsleq	r2, r2, #1
    f4c4:	42b3      	cmp	r3, r6
    f4c6:	d1f1      	bne.n	f4ac <parse_bytevc1_from_heif_bitstream@@Base+0xc7c>
    f4c8:	310c      	adds	r1, #12
    f4ca:	f8ce 2030 	str.w	r2, [lr, #48]	; 0x30
    f4ce:	4281      	cmp	r1, r0
    f4d0:	d1e1      	bne.n	f496 <parse_bytevc1_from_heif_bitstream@@Base+0xc66>
    f4d2:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    f4d4:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    f4d6:	3204      	adds	r2, #4
    f4d8:	920e      	str	r2, [sp, #56]	; 0x38
    f4da:	9a1e      	ldr	r2, [sp, #120]	; 0x78
    f4dc:	3301      	adds	r3, #1
    f4de:	931b      	str	r3, [sp, #108]	; 0x6c
    f4e0:	429a      	cmp	r2, r3
    f4e2:	dcb3      	bgt.n	f44c <parse_bytevc1_from_heif_bitstream@@Base+0xc1c>
    f4e4:	f8dd a074 	ldr.w	sl, [sp, #116]	; 0x74
    f4e8:	980f      	ldr	r0, [sp, #60]	; 0x3c
    f4ea:	2301      	movs	r3, #1
    f4ec:	930a      	str	r3, [sp, #40]	; 0x28
    f4ee:	f8ca 300c 	str.w	r3, [sl, #12]
    f4f2:	f7f6 ef5a 	blx	63a8 <MetaBox_release@plt>
    f4f6:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    f4f8:	6895      	ldr	r5, [r2, #8]
    f4fa:	6854      	ldr	r4, [r2, #4]
    f4fc:	f7ff b9d4 	b.w	e8a8 <parse_bytevc1_from_heif_bitstream@@Base+0x78>
    f500:	982b      	ldr	r0, [sp, #172]	; 0xac
    f502:	f7f6 eb9e 	blx	5c40 <string_type_to_int32@plt>
    f506:	42a0      	cmp	r0, r4
    f508:	f000 80cb 	beq.w	f6a2 <parse_bytevc1_from_heif_bitstream@@Base+0xe72>
    f50c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    f50e:	f893 3114 	ldrb.w	r3, [r3, #276]	; 0x114
    f512:	931e      	str	r3, [sp, #120]	; 0x78
    f514:	e7dd      	b.n	f4d2 <parse_bytevc1_from_heif_bitstream@@Base+0xca2>
    f516:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    f518:	f8d2 1144 	ldr.w	r1, [r2, #324]	; 0x144
    f51c:	2900      	cmp	r1, #0
    f51e:	d0d8      	beq.n	f4d2 <parse_bytevc1_from_heif_bitstream@@Base+0xca2>
    f520:	f8d2 9140 	ldr.w	r9, [r2, #320]	; 0x140
    f524:	eb01 0141 	add.w	r1, r1, r1, lsl #1
    f528:	ab30      	add	r3, sp, #192	; 0xc0
    f52a:	f8d2 0124 	ldr.w	r0, [r2, #292]	; 0x124
    f52e:	9326      	str	r3, [sp, #152]	; 0x98
    f530:	eb09 0381 	add.w	r3, r9, r1, lsl #2
    f534:	9311      	str	r3, [sp, #68]	; 0x44
    f536:	ab31      	add	r3, sp, #196	; 0xc4
    f538:	9327      	str	r3, [sp, #156]	; 0x9c
    f53a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    f53c:	f8cd b010 	str.w	fp, [sp, #16]
    f540:	18c3      	adds	r3, r0, r3
    f542:	9314      	str	r3, [sp, #80]	; 0x50
    f544:	ab32      	add	r3, sp, #200	; 0xc8
    f546:	9328      	str	r3, [sp, #160]	; 0xa0
    f548:	ab33      	add	r3, sp, #204	; 0xcc
    f54a:	9329      	str	r3, [sp, #164]	; 0xa4
    f54c:	464b      	mov	r3, r9
    f54e:	e003      	b.n	f558 <parse_bytevc1_from_heif_bitstream@@Base+0xd28>
    f550:	9a11      	ldr	r2, [sp, #68]	; 0x44
    f552:	330c      	adds	r3, #12
    f554:	4293      	cmp	r3, r2
    f556:	d0bc      	beq.n	f4d2 <parse_bytevc1_from_heif_bitstream@@Base+0xca2>
    f558:	681a      	ldr	r2, [r3, #0]
    f55a:	9813      	ldr	r0, [sp, #76]	; 0x4c
    f55c:	7919      	ldrb	r1, [r3, #4]
    f55e:	4290      	cmp	r0, r2
    f560:	689c      	ldr	r4, [r3, #8]
    f562:	d1f5      	bne.n	f550 <parse_bytevc1_from_heif_bitstream@@Base+0xd20>
    f564:	2900      	cmp	r1, #0
    f566:	d0f3      	beq.n	f550 <parse_bytevc1_from_heif_bitstream@@Base+0xd20>
    f568:	981d      	ldr	r0, [sp, #116]	; 0x74
    f56a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
    f56e:	9320      	str	r3, [sp, #128]	; 0x80
    f570:	9102      	str	r1, [sp, #8]
    f572:	f8d0 a018 	ldr.w	sl, [r0, #24]
    f576:	f8d0 c020 	ldr.w	ip, [r0, #32]
    f57a:	7a85      	ldrb	r5, [r0, #10]
    f57c:	f8d0 9024 	ldr.w	r9, [r0, #36]	; 0x24
    f580:	4653      	mov	r3, sl
    f582:	69c0      	ldr	r0, [r0, #28]
    f584:	46e2      	mov	sl, ip
    f586:	e003      	b.n	f590 <parse_bytevc1_from_heif_bitstream@@Base+0xd60>
    f588:	9a02      	ldr	r2, [sp, #8]
    f58a:	3404      	adds	r4, #4
    f58c:	4294      	cmp	r4, r2
    f58e:	d06f      	beq.n	f670 <parse_bytevc1_from_heif_bitstream@@Base+0xe40>
    f590:	8862      	ldrh	r2, [r4, #2]
    f592:	9904      	ldr	r1, [sp, #16]
    f594:	428a      	cmp	r2, r1
    f596:	d1f7      	bne.n	f588 <parse_bytevc1_from_heif_bitstream@@Base+0xd58>
    f598:	9b14      	ldr	r3, [sp, #80]	; 0x50
    f59a:	9d06      	ldr	r5, [sp, #24]
    f59c:	9e07      	ldr	r6, [sp, #28]
    f59e:	f8d3 b000 	ldr.w	fp, [r3]
    f5a2:	f8d5 a000 	ldr.w	sl, [r5]
    f5a6:	f8d6 9000 	ldr.w	r9, [r6]
    f5aa:	f8db 1010 	ldr.w	r1, [fp, #16]
    f5ae:	f10a 38ff 	add.w	r8, sl, #4294967295	; 0xffffffff
    f5b2:	f8db 000c 	ldr.w	r0, [fp, #12]
    f5b6:	f109 37ff 	add.w	r7, r9, #4294967295	; 0xffffffff
    f5ba:	f7f6 ea4c 	blx	5a54 <__aeabi_uidiv@plt>
    f5be:	eb08 78d8 	add.w	r8, r8, r8, lsr #31
    f5c2:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
    f5c6:	ea4f 0868 	mov.w	r8, r8, asr #1
    f5ca:	107f      	asrs	r7, r7, #1
    f5cc:	6028      	str	r0, [r5, #0]
    f5ce:	f8db 1018 	ldr.w	r1, [fp, #24]
    f5d2:	f8db 0014 	ldr.w	r0, [fp, #20]
    f5d6:	f7f6 ea3e 	blx	5a54 <__aeabi_uidiv@plt>
    f5da:	4633      	mov	r3, r6
    f5dc:	6030      	str	r0, [r6, #0]
    f5de:	682a      	ldr	r2, [r5, #0]
    f5e0:	4581      	cmp	r9, r0
    f5e2:	bf28      	it	cs
    f5e4:	4592      	cmpcs	sl, r2
    f5e6:	bf2f      	iteee	cs
    f5e8:	9008      	strcs	r0, [sp, #32]
    f5ea:	f8cd 9020 	strcc.w	r9, [sp, #32]
    f5ee:	462a      	movcc	r2, r5
    f5f0:	4613      	movcc	r3, r2
    f5f2:	bf3f      	itttt	cc
    f5f4:	f8c3 a000 	strcc.w	sl, [r3]
    f5f8:	9b07      	ldrcc	r3, [sp, #28]
    f5fa:	f8c3 9000 	strcc.w	r9, [r3]
    f5fe:	4613      	movcc	r3, r2
    f600:	bf38      	it	cc
    f602:	681a      	ldrcc	r2, [r3, #0]
    f604:	f8db 1020 	ldr.w	r1, [fp, #32]
    f608:	f8db 001c 	ldr.w	r0, [fp, #28]
    f60c:	1e56      	subs	r6, r2, #1
    f60e:	920d      	str	r2, [sp, #52]	; 0x34
    f610:	f7f6 ea62 	blx	5ad8 <__aeabi_idiv@plt>
    f614:	eb06 76d6 	add.w	r6, r6, r6, lsr #31
    f618:	9b08      	ldr	r3, [sp, #32]
    f61a:	f8db 1028 	ldr.w	r1, [fp, #40]	; 0x28
    f61e:	1076      	asrs	r6, r6, #1
    f620:	1e5d      	subs	r5, r3, #1
    f622:	4276      	negs	r6, r6
    f624:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
    f628:	106d      	asrs	r5, r5, #1
    f62a:	426d      	negs	r5, r5
    f62c:	eb00 0e08 	add.w	lr, r0, r8
    f630:	f8db 0024 	ldr.w	r0, [fp, #36]	; 0x24
    f634:	eb0e 0306 	add.w	r3, lr, r6
    f638:	930a      	str	r3, [sp, #40]	; 0x28
    f63a:	f7f6 ea4e 	blx	5ad8 <__aeabi_idiv@plt>
    f63e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    f640:	2b00      	cmp	r3, #0
    f642:	4438      	add	r0, r7
    f644:	4428      	add	r0, r5
    f646:	db04      	blt.n	f652 <parse_bytevc1_from_heif_bitstream@@Base+0xe22>
    f648:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    f64a:	ebc2 020a 	rsb	r2, r2, sl
    f64e:	4293      	cmp	r3, r2
    f650:	dd01      	ble.n	f656 <parse_bytevc1_from_heif_bitstream@@Base+0xe26>
    f652:	eb08 0306 	add.w	r3, r8, r6
    f656:	2800      	cmp	r0, #0
    f658:	db04      	blt.n	f664 <parse_bytevc1_from_heif_bitstream@@Base+0xe34>
    f65a:	9a08      	ldr	r2, [sp, #32]
    f65c:	ebc2 0b09 	rsb	fp, r2, r9
    f660:	4558      	cmp	r0, fp
    f662:	dd00      	ble.n	f666 <parse_bytevc1_from_heif_bitstream@@Base+0xe36>
    f664:	1978      	adds	r0, r7, r5
    f666:	9a02      	ldr	r2, [sp, #8]
    f668:	3404      	adds	r4, #4
    f66a:	9d17      	ldr	r5, [sp, #92]	; 0x5c
    f66c:	4294      	cmp	r4, r2
    f66e:	d18f      	bne.n	f590 <parse_bytevc1_from_heif_bitstream@@Base+0xd60>
    f670:	9a26      	ldr	r2, [sp, #152]	; 0x98
    f672:	46d4      	mov	ip, sl
    f674:	469a      	mov	sl, r3
    f676:	9b20      	ldr	r3, [sp, #128]	; 0x80
    f678:	f8c2 a000 	str.w	sl, [r2]
    f67c:	9a27      	ldr	r2, [sp, #156]	; 0x9c
    f67e:	6010      	str	r0, [r2, #0]
    f680:	9a28      	ldr	r2, [sp, #160]	; 0xa0
    f682:	f8c2 c000 	str.w	ip, [r2]
    f686:	9a29      	ldr	r2, [sp, #164]	; 0xa4
    f688:	f8c2 9000 	str.w	r9, [r2]
    f68c:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    f68e:	eddd 0b30 	vldr	d16, [sp, #192]	; 0xc0
    f692:	eddd 1b32 	vldr	d17, [sp, #200]	; 0xc8
    f696:	7295      	strb	r5, [r2, #10]
    f698:	edcd 0b46 	vstr	d16, [sp, #280]	; 0x118
    f69c:	edcd 1b48 	vstr	d17, [sp, #288]	; 0x120
    f6a0:	e756      	b.n	f550 <parse_bytevc1_from_heif_bitstream@@Base+0xd20>
    f6a2:	990f      	ldr	r1, [sp, #60]	; 0x3c
    f6a4:	f8d1 4144 	ldr.w	r4, [r1, #324]	; 0x144
    f6a8:	2c00      	cmp	r4, #0
    f6aa:	f43f af2f 	beq.w	f50c <parse_bytevc1_from_heif_bitstream@@Base+0xcdc>
    f6ae:	eb04 0444 	add.w	r4, r4, r4, lsl #1
    f6b2:	f8d1 2140 	ldr.w	r2, [r1, #320]	; 0x140
    f6b6:	f8d1 5124 	ldr.w	r5, [r1, #292]	; 0x124
    f6ba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    f6bc:	eb02 0484 	add.w	r4, r2, r4, lsl #2
    f6c0:	f8dd e04c 	ldr.w	lr, [sp, #76]	; 0x4c
    f6c4:	441d      	add	r5, r3
    f6c6:	9f1d      	ldr	r7, [sp, #116]	; 0x74
    f6c8:	e003      	b.n	f6d2 <parse_bytevc1_from_heif_bitstream@@Base+0xea2>
    f6ca:	320c      	adds	r2, #12
    f6cc:	42a2      	cmp	r2, r4
    f6ce:	f43f af1d 	beq.w	f50c <parse_bytevc1_from_heif_bitstream@@Base+0xcdc>
    f6d2:	6811      	ldr	r1, [r2, #0]
    f6d4:	7910      	ldrb	r0, [r2, #4]
    f6d6:	458e      	cmp	lr, r1
    f6d8:	6893      	ldr	r3, [r2, #8]
    f6da:	d1f6      	bne.n	f6ca <parse_bytevc1_from_heif_bitstream@@Base+0xe9a>
    f6dc:	2800      	cmp	r0, #0
    f6de:	d0f4      	beq.n	f6ca <parse_bytevc1_from_heif_bitstream@@Base+0xe9a>
    f6e0:	f8d7 c060 	ldr.w	ip, [r7, #96]	; 0x60
    f6e4:	eb03 0080 	add.w	r0, r3, r0, lsl #2
    f6e8:	8859      	ldrh	r1, [r3, #2]
    f6ea:	3304      	adds	r3, #4
    f6ec:	4559      	cmp	r1, fp
    f6ee:	bf01      	itttt	eq
    f6f0:	6829      	ldreq	r1, [r5, #0]
    f6f2:	68ce      	ldreq	r6, [r1, #12]
    f6f4:	f8d1 c010 	ldreq.w	ip, [r1, #16]
    f6f8:	65fe      	streq	r6, [r7, #92]	; 0x5c
    f6fa:	4283      	cmp	r3, r0
    f6fc:	d1f4      	bne.n	f6e8 <parse_bytevc1_from_heif_bitstream@@Base+0xeb8>
    f6fe:	f8c7 c060 	str.w	ip, [r7, #96]	; 0x60
    f702:	e7e2      	b.n	f6ca <parse_bytevc1_from_heif_bitstream@@Base+0xe9a>
    f704:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    f706:	46a4      	mov	ip, r4
    f708:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    f70c:	f083 0001 	eor.w	r0, r3, #1
    f710:	4286      	cmp	r6, r0
    f712:	f67f abac 	bls.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    f716:	f8da 3090 	ldr.w	r3, [sl, #144]	; 0x90
    f71a:	2b00      	cmp	r3, #0
    f71c:	f43f aa0b 	beq.w	eb36 <parse_bytevc1_from_heif_bitstream@@Base+0x306>
    f720:	990a      	ldr	r1, [sp, #40]	; 0x28
    f722:	f646 1264 	movw	r2, #26980	; 0x6964
    f726:	981d      	ldr	r0, [sp, #116]	; 0x74
    f728:	f2c6 7272 	movt	r2, #26482	; 0x6772
    f72c:	ea09 0101 	and.w	r1, r9, r1
    f730:	910d      	str	r1, [sp, #52]	; 0x34
    f732:	9912      	ldr	r1, [sp, #72]	; 0x48
    f734:	4290      	cmp	r0, r2
    f736:	9e1a      	ldr	r6, [sp, #104]	; 0x68
    f738:	f04f 0200 	mov.w	r2, #0
    f73c:	9c18      	ldr	r4, [sp, #96]	; 0x60
    f73e:	ee80 1b90 	vdup.32	d16, r1
    f742:	9922      	ldr	r1, [sp, #136]	; 0x88
    f744:	9208      	str	r2, [sp, #32]
    f746:	ffe0 00b0 	vshr.u64	d16, d16, #32
    f74a:	f1a1 0101 	sub.w	r1, r1, #1
    f74e:	fab1 f181 	clz	r1, r1
    f752:	f8cd c050 	str.w	ip, [sp, #80]	; 0x50
    f756:	f8cd b008 	str.w	fp, [sp, #8]
    f75a:	edcd 0b0a 	vstr	d16, [sp, #40]	; 0x28
    f75e:	ea4f 1151 	mov.w	r1, r1, lsr #5
    f762:	bf08      	it	eq
    f764:	2100      	moveq	r1, #0
    f766:	910e      	str	r1, [sp, #56]	; 0x38
    f768:	f8da 10e4 	ldr.w	r1, [sl, #228]	; 0xe4
    f76c:	0152      	lsls	r2, r2, #5
    f76e:	188f      	adds	r7, r1, r2
    f770:	588a      	ldr	r2, [r1, r2]
    f772:	9914      	ldr	r1, [sp, #80]	; 0x50
    f774:	4291      	cmp	r1, r2
    f776:	d013      	beq.n	f7a0 <parse_bytevc1_from_heif_bitstream@@Base+0xf70>
    f778:	990d      	ldr	r1, [sp, #52]	; 0x34
    f77a:	b129      	cbz	r1, f788 <parse_bytevc1_from_heif_bitstream@@Base+0xf58>
    f77c:	990e      	ldr	r1, [sp, #56]	; 0x38
    f77e:	b119      	cbz	r1, f788 <parse_bytevc1_from_heif_bitstream@@Base+0xf58>
    f780:	9920      	ldr	r1, [sp, #128]	; 0x80
    f782:	428a      	cmp	r2, r1
    f784:	f000 80a4 	beq.w	f8d0 <parse_bytevc1_from_heif_bitstream@@Base+0x10a0>
    f788:	9a08      	ldr	r2, [sp, #32]
    f78a:	3201      	adds	r2, #1
    f78c:	9208      	str	r2, [sp, #32]
    f78e:	429a      	cmp	r2, r3
    f790:	d3ea      	bcc.n	f768 <parse_bytevc1_from_heif_bitstream@@Base+0xf38>
    f792:	9418      	str	r4, [sp, #96]	; 0x60
    f794:	f8dd b008 	ldr.w	fp, [sp, #8]
    f798:	f8da 7060 	ldr.w	r7, [sl, #96]	; 0x60
    f79c:	f7ff b937 	b.w	ea0e <parse_bytevc1_from_heif_bitstream@@Base+0x1de>
    f7a0:	69ba      	ldr	r2, [r7, #24]
    f7a2:	2a00      	cmp	r2, #0
    f7a4:	d0f0      	beq.n	f788 <parse_bytevc1_from_heif_bitstream@@Base+0xf58>
    f7a6:	f04f 0800 	mov.w	r8, #0
    f7aa:	46c3      	mov	fp, r8
    f7ac:	9b10      	ldr	r3, [sp, #64]	; 0x40
    f7ae:	2b00      	cmp	r3, #0
    f7b0:	d06e      	beq.n	f890 <parse_bytevc1_from_heif_bitstream@@Base+0x1060>
    f7b2:	eb08 0148 	add.w	r1, r8, r8, lsl #1
    f7b6:	69fa      	ldr	r2, [r7, #28]
    f7b8:	6938      	ldr	r0, [r7, #16]
    f7ba:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
    f7be:	990c      	ldr	r1, [sp, #48]	; 0x30
    f7c0:	684d      	ldr	r5, [r1, #4]
    f7c2:	6891      	ldr	r1, [r2, #8]
    f7c4:	e9d2 2304 	ldrd	r2, r3, [r2, #16]
    f7c8:	eb01 0900 	add.w	r9, r1, r0
    f7cc:	45a9      	cmp	r9, r5
    f7ce:	e9cd 2304 	strd	r2, r3, [sp, #16]
    f7d2:	d857      	bhi.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f7d4:	ad38      	add	r5, sp, #224	; 0xe0
    f7d6:	4628      	mov	r0, r5
    f7d8:	f7f6 e954 	blx	5a84 <Bitstream_init@plt>
    f7dc:	687b      	ldr	r3, [r7, #4]
    f7de:	2b00      	cmp	r3, #0
    f7e0:	d16f      	bne.n	f8c2 <parse_bytevc1_from_heif_bitstream@@Base+0x1092>
    f7e2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    f7e4:	681b      	ldr	r3, [r3, #0]
    f7e6:	444b      	add	r3, r9
    f7e8:	602b      	str	r3, [r5, #0]
    f7ea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    f7ec:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
    f7f0:	685a      	ldr	r2, [r3, #4]
    f7f2:	eb10 0009 	adds.w	r0, r0, r9
    f7f6:	9b04      	ldr	r3, [sp, #16]
    f7f8:	f141 0100 	adc.w	r1, r1, #0
    f7fc:	606b      	str	r3, [r5, #4]
    f7fe:	2300      	movs	r3, #0
    f800:	428b      	cmp	r3, r1
    f802:	bf08      	it	eq
    f804:	4282      	cmpeq	r2, r0
    f806:	d33d      	bcc.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f808:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
    f80c:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
    f810:	1912      	adds	r2, r2, r4
    f812:	eb43 73e4 	adc.w	r3, r3, r4, asr #31
    f816:	4299      	cmp	r1, r3
    f818:	bf08      	it	eq
    f81a:	4290      	cmpeq	r0, r2
    f81c:	d332      	bcc.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f81e:	68ab      	ldr	r3, [r5, #8]
    f820:	9a04      	ldr	r2, [sp, #16]
    f822:	3304      	adds	r3, #4
    f824:	429a      	cmp	r2, r3
    f826:	d932      	bls.n	f88e <parse_bytevc1_from_heif_bitstream@@Base+0x105e>
    f828:	f8dd 9048 	ldr.w	r9, [sp, #72]	; 0x48
    f82c:	9701      	str	r7, [sp, #4]
    f82e:	e021      	b.n	f874 <parse_bytevc1_from_heif_bitstream@@Base+0x1044>
    f830:	f104 0e03 	add.w	lr, r4, #3
    f834:	4571      	cmp	r1, lr
    f836:	d325      	bcc.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f838:	6869      	ldr	r1, [r5, #4]
    f83a:	4403      	add	r3, r0
    f83c:	428b      	cmp	r3, r1
    f83e:	d821      	bhi.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f840:	1cc3      	adds	r3, r0, #3
    f842:	4423      	add	r3, r4
    f844:	4599      	cmp	r9, r3
    f846:	d31d      	bcc.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f848:	2701      	movs	r7, #1
    f84a:	9704      	str	r7, [sp, #16]
    f84c:	f89d 7010 	ldrb.w	r7, [sp, #16]
    f850:	1933      	adds	r3, r6, r4
    f852:	f806 b004 	strb.w	fp, [r6, r4]
    f856:	4628      	mov	r0, r5
    f858:	f883 b001 	strb.w	fp, [r3, #1]
    f85c:	eb06 010e 	add.w	r1, r6, lr
    f860:	709f      	strb	r7, [r3, #2]
    f862:	eb0e 0402 	add.w	r4, lr, r2
    f866:	f7f6 ead0 	blx	5e08 <Bitstream_read_bytes@plt>
    f86a:	68ab      	ldr	r3, [r5, #8]
    f86c:	686a      	ldr	r2, [r5, #4]
    f86e:	3304      	adds	r3, #4
    f870:	429a      	cmp	r2, r3
    f872:	d90b      	bls.n	f88c <parse_bytevc1_from_heif_bitstream@@Base+0x105c>
    f874:	4628      	mov	r0, r5
    f876:	f7f6 e96c 	blx	5b50 <Bitstream_read_32bit@plt>
    f87a:	68ab      	ldr	r3, [r5, #8]
    f87c:	43c1      	mvns	r1, r0
    f87e:	4299      	cmp	r1, r3
    f880:	4602      	mov	r2, r0
    f882:	d2d5      	bcs.n	f830 <parse_bytevc1_from_heif_bitstream@@Base+0x1000>
    f884:	f8dd b008 	ldr.w	fp, [sp, #8]
    f888:	f7ff baf1 	b.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    f88c:	9f01      	ldr	r7, [sp, #4]
    f88e:	69ba      	ldr	r2, [r7, #24]
    f890:	f108 0801 	add.w	r8, r8, #1
    f894:	4590      	cmp	r8, r2
    f896:	d389      	bcc.n	f7ac <parse_bytevc1_from_heif_bitstream@@Base+0xf7c>
    f898:	2201      	movs	r2, #1
    f89a:	f8da 3090 	ldr.w	r3, [sl, #144]	; 0x90
    f89e:	921f      	str	r2, [sp, #124]	; 0x7c
    f8a0:	e772      	b.n	f788 <parse_bytevc1_from_heif_bitstream@@Base+0xf58>
    f8a2:	461d      	mov	r5, r3
    f8a4:	2301      	movs	r3, #1
    f8a6:	9511      	str	r5, [sp, #68]	; 0x44
    f8a8:	931f      	str	r3, [sp, #124]	; 0x7c
    f8aa:	f7ff bab5 	b.w	ee18 <parse_bytevc1_from_heif_bitstream@@Base+0x5e8>
    f8ae:	2a01      	cmp	r2, #1
    f8b0:	f47f aadd 	bne.w	ee6e <parse_bytevc1_from_heif_bitstream@@Base+0x63e>
    f8b4:	f8da 2070 	ldr.w	r2, [sl, #112]	; 0x70
    f8b8:	3304      	adds	r3, #4
    f8ba:	18d3      	adds	r3, r2, r3
    f8bc:	9321      	str	r3, [sp, #132]	; 0x84
    f8be:	f7ff bb2f 	b.w	ef20 <parse_bytevc1_from_heif_bitstream@@Base+0x6f0>
    f8c2:	2b01      	cmp	r3, #1
    f8c4:	d1de      	bne.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f8c6:	f8da 3070 	ldr.w	r3, [sl, #112]	; 0x70
    f8ca:	444b      	add	r3, r9
    f8cc:	602b      	str	r3, [r5, #0]
    f8ce:	e78c      	b.n	f7ea <parse_bytevc1_from_heif_bitstream@@Base+0xfba>
    f8d0:	9b10      	ldr	r3, [sp, #64]	; 0x40
    f8d2:	b363      	cbz	r3, f92e <parse_bytevc1_from_heif_bitstream@@Base+0x10fe>
    f8d4:	9a27      	ldr	r2, [sp, #156]	; 0x9c
    f8d6:	f04f 0900 	mov.w	r9, #0
    f8da:	f102 0544 	add.w	r5, r2, #68	; 0x44
    f8de:	f102 0b58 	add.w	fp, r2, #88	; 0x58
    f8e2:	e015      	b.n	f910 <parse_bytevc1_from_heif_bitstream@@Base+0x10e0>
    f8e4:	1932      	adds	r2, r6, r4
    f8e6:	f104 0804 	add.w	r8, r4, #4
    f8ea:	5533      	strb	r3, [r6, r4]
    f8ec:	eb06 0008 	add.w	r0, r6, r8
    f8f0:	7053      	strb	r3, [r2, #1]
    f8f2:	7093      	strb	r3, [r2, #2]
    f8f4:	2301      	movs	r3, #1
    f8f6:	70d3      	strb	r3, [r2, #3]
    f8f8:	6829      	ldr	r1, [r5, #0]
    f8fa:	68aa      	ldr	r2, [r5, #8]
    f8fc:	f7f6 e880 	blx	5a00 <memcpy@plt>
    f900:	68ac      	ldr	r4, [r5, #8]
    f902:	4444      	add	r4, r8
    f904:	f1b9 0f00 	cmp.w	r9, #0
    f908:	d111      	bne.n	f92e <parse_bytevc1_from_heif_bitstream@@Base+0x10fe>
    f90a:	465d      	mov	r5, fp
    f90c:	f04f 0901 	mov.w	r9, #1
    f910:	68ab      	ldr	r3, [r5, #8]
    f912:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f914:	1b11      	subs	r1, r2, r4
    f916:	fab3 f283 	clz	r2, r3
    f91a:	3304      	adds	r3, #4
    f91c:	0952      	lsrs	r2, r2, #5
    f91e:	4299      	cmp	r1, r3
    f920:	bf2c      	ite	cs
    f922:	4613      	movcs	r3, r2
    f924:	f042 0301 	orrcc.w	r3, r2, #1
    f928:	2b00      	cmp	r3, #0
    f92a:	d0db      	beq.n	f8e4 <parse_bytevc1_from_heif_bitstream@@Base+0x10b4>
    f92c:	e7aa      	b.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f92e:	69bb      	ldr	r3, [r7, #24]
    f930:	2b00      	cmp	r3, #0
    f932:	f000 8130 	beq.w	fb96 <parse_bytevc1_from_heif_bitstream@@Base+0x1366>
    f936:	f04f 0b00 	mov.w	fp, #0
    f93a:	e004      	b.n	f946 <parse_bytevc1_from_heif_bitstream@@Base+0x1116>
    f93c:	f10b 0b01 	add.w	fp, fp, #1
    f940:	459b      	cmp	fp, r3
    f942:	f080 8128 	bcs.w	fb96 <parse_bytevc1_from_heif_bitstream@@Base+0x1366>
    f946:	9a10      	ldr	r2, [sp, #64]	; 0x40
    f948:	2a00      	cmp	r2, #0
    f94a:	d0f7      	beq.n	f93c <parse_bytevc1_from_heif_bitstream@@Base+0x110c>
    f94c:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
    f950:	69fa      	ldr	r2, [r7, #28]
    f952:	ad38      	add	r5, sp, #224	; 0xe0
    f954:	693b      	ldr	r3, [r7, #16]
    f956:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
    f95a:	4628      	mov	r0, r5
    f95c:	6891      	ldr	r1, [r2, #8]
    f95e:	e9d2 8904 	ldrd	r8, r9, [r2, #16]
    f962:	440b      	add	r3, r1
    f964:	9304      	str	r3, [sp, #16]
    f966:	f7f6 e88e 	blx	5a84 <Bitstream_init@plt>
    f96a:	687a      	ldr	r2, [r7, #4]
    f96c:	9b04      	ldr	r3, [sp, #16]
    f96e:	2a00      	cmp	r2, #0
    f970:	d179      	bne.n	fa66 <parse_bytevc1_from_heif_bitstream@@Base+0x1236>
    f972:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    f974:	6812      	ldr	r2, [r2, #0]
    f976:	441a      	add	r2, r3
    f978:	602a      	str	r2, [r5, #0]
    f97a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    f97c:	eb18 0003 	adds.w	r0, r8, r3
    f980:	f149 0100 	adc.w	r1, r9, #0
    f984:	2300      	movs	r3, #0
    f986:	428b      	cmp	r3, r1
    f988:	f8c5 8004 	str.w	r8, [r5, #4]
    f98c:	6852      	ldr	r2, [r2, #4]
    f98e:	bf08      	it	eq
    f990:	4282      	cmpeq	r2, r0
    f992:	f4ff af77 	bcc.w	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f996:	eb18 0204 	adds.w	r2, r8, r4
    f99a:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
    f99e:	eb49 73e4 	adc.w	r3, r9, r4, asr #31
    f9a2:	4299      	cmp	r1, r3
    f9a4:	bf08      	it	eq
    f9a6:	4290      	cmpeq	r0, r2
    f9a8:	f4ff af6c 	bcc.w	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f9ac:	68ab      	ldr	r3, [r5, #8]
    f9ae:	4598      	cmp	r8, r3
    f9b0:	d814      	bhi.n	f9dc <parse_bytevc1_from_heif_bitstream@@Base+0x11ac>
    f9b2:	e056      	b.n	fa62 <parse_bytevc1_from_heif_bitstream@@Base+0x1232>
    f9b4:	1930      	adds	r0, r6, r4
    f9b6:	f104 0903 	add.w	r9, r4, #3
    f9ba:	2300      	movs	r3, #0
    f9bc:	eb06 0109 	add.w	r1, r6, r9
    f9c0:	5533      	strb	r3, [r6, r4]
    f9c2:	4642      	mov	r2, r8
    f9c4:	7043      	strb	r3, [r0, #1]
    f9c6:	2301      	movs	r3, #1
    f9c8:	7083      	strb	r3, [r0, #2]
    f9ca:	4628      	mov	r0, r5
    f9cc:	f7f6 ea1c 	blx	5e08 <Bitstream_read_bytes@plt>
    f9d0:	6869      	ldr	r1, [r5, #4]
    f9d2:	68aa      	ldr	r2, [r5, #8]
    f9d4:	eb09 0408 	add.w	r4, r9, r8
    f9d8:	4291      	cmp	r1, r2
    f9da:	d942      	bls.n	fa62 <parse_bytevc1_from_heif_bitstream@@Base+0x1232>
    f9dc:	4628      	mov	r0, r5
    f9de:	f7f6 e8b8 	blx	5b50 <Bitstream_read_32bit@plt>
    f9e2:	9a12      	ldr	r2, [sp, #72]	; 0x48
    f9e4:	1823      	adds	r3, r4, r0
    f9e6:	4680      	mov	r8, r0
    f9e8:	3302      	adds	r3, #2
    f9ea:	429a      	cmp	r2, r3
    f9ec:	dce2      	bgt.n	f9b4 <parse_bytevc1_from_heif_bitstream@@Base+0x1184>
    f9ee:	e749      	b.n	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    f9f0:	f8dd a05c 	ldr.w	sl, [sp, #92]	; 0x5c
    f9f4:	4647      	mov	r7, r8
    f9f6:	9418      	str	r4, [sp, #96]	; 0x60
    f9f8:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
    f9fa:	2301      	movs	r3, #1
    f9fc:	f8ca 700c 	str.w	r7, [sl, #12]
    fa00:	f88a 3008 	strb.w	r3, [sl, #8]
    fa04:	e9d4 0110 	ldrd	r0, r1, [r4, #64]	; 0x40
    fa08:	f7f6 ecec 	blx	63e4 <__aeabi_ul2f@plt>
    fa0c:	6ba3      	ldr	r3, [r4, #56]	; 0x38
    fa0e:	ed9f 7a6b 	vldr	s14, [pc, #428]	; fbbc <parse_bytevc1_from_heif_bitstream@@Base+0x138c>
    fa12:	9302      	str	r3, [sp, #8]
    fa14:	ee07 3a90 	vmov	s15, r3
    fa18:	eef8 7a67 	vcvt.f32.u32	s15, s15
    fa1c:	ee06 0a90 	vmov	s13, r0
    fa20:	eec6 7aa7 	vdiv.f32	s15, s13, s15
    fa24:	ee67 7a87 	vmul.f32	s15, s15, s14
    fa28:	ee17 0a90 	vmov	r0, s15
    fa2c:	f7f6 ece0 	blx	63f0 <__aeabi_f2ulz@plt>
    fa30:	4602      	mov	r2, r0
    fa32:	460b      	mov	r3, r1
    fa34:	e9cd 2302 	strd	r2, r3, [sp, #8]
    fa38:	e9ca 2310 	strd	r2, r3, [sl, #64]	; 0x40
    fa3c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    fa3e:	9a10      	ldr	r2, [sp, #64]	; 0x40
    fa40:	4213      	tst	r3, r2
    fa42:	d120      	bne.n	fa86 <parse_bytevc1_from_heif_bitstream@@Base+0x1256>
    fa44:	980f      	ldr	r0, [sp, #60]	; 0x3c
    fa46:	2301      	movs	r3, #1
    fa48:	931c      	str	r3, [sp, #112]	; 0x70
    fa4a:	f7f6 ecb4 	blx	63b4 <MoovBox_release@plt>
    fa4e:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    fa50:	6895      	ldr	r5, [r2, #8]
    fa52:	6854      	ldr	r4, [r2, #4]
    fa54:	f7fe bf28 	b.w	e8a8 <parse_bytevc1_from_heif_bitstream@@Base+0x78>
    fa58:	900a      	str	r0, [sp, #40]	; 0x28
    fa5a:	f89a 0114 	ldrb.w	r0, [sl, #276]	; 0x114
    fa5e:	f7ff bb58 	b.w	f112 <parse_bytevc1_from_heif_bitstream@@Base+0x8e2>
    fa62:	69bb      	ldr	r3, [r7, #24]
    fa64:	e76a      	b.n	f93c <parse_bytevc1_from_heif_bitstream@@Base+0x110c>
    fa66:	2a01      	cmp	r2, #1
    fa68:	f47f af0c 	bne.w	f884 <parse_bytevc1_from_heif_bitstream@@Base+0x1054>
    fa6c:	f8da 2070 	ldr.w	r2, [sl, #112]	; 0x70
    fa70:	441a      	add	r2, r3
    fa72:	602a      	str	r2, [r5, #0]
    fa74:	e781      	b.n	f97a <parse_bytevc1_from_heif_bitstream@@Base+0x114a>
    fa76:	980f      	ldr	r0, [sp, #60]	; 0x3c
    fa78:	468b      	mov	fp, r1
    fa7a:	f7f6 ec96 	blx	63a8 <MetaBox_release@plt>
    fa7e:	f7ff b8b1 	b.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    fa82:	46b8      	mov	r8, r7
    fa84:	e7b8      	b.n	f9f8 <parse_bytevc1_from_heif_bitstream@@Base+0x11c8>
    fa86:	ea4f 00c8 	mov.w	r0, r8, lsl #3
    fa8a:	f7f5 efde 	blx	5a48 <malloc@plt>
    fa8e:	2f00      	cmp	r7, #0
    fa90:	4606      	mov	r6, r0
    fa92:	f8ca 004c 	str.w	r0, [sl, #76]	; 0x4c
    fa96:	dd1e      	ble.n	fad6 <parse_bytevc1_from_heif_bitstream@@Base+0x12a6>
    fa98:	ee88 7b10 	vdup.32	d8, r7
    fa9c:	f8dd 8140 	ldr.w	r8, [sp, #320]	; 0x140
    faa0:	f8dd 9144 	ldr.w	r9, [sp, #324]	; 0x144
    faa4:	eb00 05c7 	add.w	r5, r0, r7, lsl #3
    faa8:	efa0 8098 	vshr.s64	d8, d8, #32
    faac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    fab0:	4604      	mov	r4, r0
    fab2:	ea52 0103 	orrs.w	r1, r2, r3
    fab6:	bf04      	itt	eq
    fab8:	2064      	moveq	r0, #100	; 0x64
    faba:	2100      	moveq	r1, #0
    fabc:	d005      	beq.n	faca <parse_bytevc1_from_heif_bitstream@@Base+0x129a>
    fabe:	4610      	mov	r0, r2
    fac0:	4619      	mov	r1, r3
    fac2:	ec53 2b18 	vmov	r2, r3, d8
    fac6:	f7f6 e89e 	blx	5c04 <__aeabi_uldivmod@plt>
    faca:	e8e4 0102 	strd	r0, r1, [r4], #8
    face:	42ac      	cmp	r4, r5
    fad0:	4642      	mov	r2, r8
    fad2:	464b      	mov	r3, r9
    fad4:	d1ed      	bne.n	fab2 <parse_bytevc1_from_heif_bitstream@@Base+0x1282>
    fad6:	9b20      	ldr	r3, [sp, #128]	; 0x80
    fad8:	2b00      	cmp	r3, #0
    fada:	d0b3      	beq.n	fa44 <parse_bytevc1_from_heif_bitstream@@Base+0x1214>
    fadc:	9b22      	ldr	r3, [sp, #136]	; 0x88
    fade:	f04f 0c00 	mov.w	ip, #0
    fae2:	f10d 09b0 	add.w	r9, sp, #176	; 0xb0
    fae6:	46e6      	mov	lr, ip
    fae8:	46e0      	mov	r8, ip
    faea:	f1a3 0b04 	sub.w	fp, r3, #4
    faee:	ab2d      	add	r3, sp, #180	; 0xb4
    faf0:	9304      	str	r3, [sp, #16]
    faf2:	ab2e      	add	r3, sp, #184	; 0xb8
    faf4:	9308      	str	r3, [sp, #32]
    faf6:	ab2f      	add	r3, sp, #188	; 0xbc
    faf8:	930d      	str	r3, [sp, #52]	; 0x34
    fafa:	f85b 1f04 	ldr.w	r1, [fp, #4]!
    fafe:	2900      	cmp	r1, #0
    fb00:	dd3d      	ble.n	fb7e <parse_bytevc1_from_heif_bitstream@@Base+0x134e>
    fb02:	1e8a      	subs	r2, r1, #2
    fb04:	9b26      	ldr	r3, [sp, #152]	; 0x98
    fb06:	1e4c      	subs	r4, r1, #1
    fb08:	0852      	lsrs	r2, r2, #1
    fb0a:	2c02      	cmp	r4, #2
    fb0c:	f102 0201 	add.w	r2, r2, #1
    fb10:	f853 002c 	ldr.w	r0, [r3, ip, lsl #2]
    fb14:	ea4f 0342 	mov.w	r3, r2, lsl #1
    fb18:	d93a      	bls.n	fb90 <parse_bytevc1_from_heif_bitstream@@Base+0x1360>
    fb1a:	f8c9 0000 	str.w	r0, [r9]
    fb1e:	eb06 05ce 	add.w	r5, r6, lr, lsl #3
    fb22:	9c04      	ldr	r4, [sp, #16]
    fb24:	f8c4 8000 	str.w	r8, [r4]
    fb28:	2400      	movs	r4, #0
    fb2a:	9402      	str	r4, [sp, #8]
    fb2c:	9c08      	ldr	r4, [sp, #32]
    fb2e:	6020      	str	r0, [r4, #0]
    fb30:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    fb32:	f8c4 8000 	str.w	r8, [r4]
    fb36:	9c02      	ldr	r4, [sp, #8]
    fb38:	eddd 0b2c 	vldr	d16, [sp, #176]	; 0xb0
    fb3c:	eddd 1b2e 	vldr	d17, [sp, #184]	; 0xb8
    fb40:	3401      	adds	r4, #1
    fb42:	3510      	adds	r5, #16
    fb44:	4294      	cmp	r4, r2
    fb46:	ed45 0b04 	vstr	d16, [r5, #-16]
    fb4a:	ed45 1b02 	vstr	d17, [r5, #-8]
    fb4e:	d3f7      	bcc.n	fb40 <parse_bytevc1_from_heif_bitstream@@Base+0x1310>
    fb50:	428b      	cmp	r3, r1
    fb52:	eb0e 0503 	add.w	r5, lr, r3
    fb56:	d011      	beq.n	fb7c <parse_bytevc1_from_heif_bitstream@@Base+0x134c>
    fb58:	1c5c      	adds	r4, r3, #1
    fb5a:	eb06 02c5 	add.w	r2, r6, r5, lsl #3
    fb5e:	42a1      	cmp	r1, r4
    fb60:	f846 0035 	str.w	r0, [r6, r5, lsl #3]
    fb64:	f8c2 8004 	str.w	r8, [r2, #4]
    fb68:	dd08      	ble.n	fb7c <parse_bytevc1_from_heif_bitstream@@Base+0x134c>
    fb6a:	3302      	adds	r3, #2
    fb6c:	6090      	str	r0, [r2, #8]
    fb6e:	4299      	cmp	r1, r3
    fb70:	f8c2 800c 	str.w	r8, [r2, #12]
    fb74:	bfc4      	itt	gt
    fb76:	6110      	strgt	r0, [r2, #16]
    fb78:	f8c2 8014 	strgt.w	r8, [r2, #20]
    fb7c:	448e      	add	lr, r1
    fb7e:	45be      	cmp	lr, r7
    fb80:	f6bf af60 	bge.w	fa44 <parse_bytevc1_from_heif_bitstream@@Base+0x1214>
    fb84:	9b20      	ldr	r3, [sp, #128]	; 0x80
    fb86:	f10c 0c01 	add.w	ip, ip, #1
    fb8a:	459c      	cmp	ip, r3
    fb8c:	d1b5      	bne.n	fafa <parse_bytevc1_from_heif_bitstream@@Base+0x12ca>
    fb8e:	e759      	b.n	fa44 <parse_bytevc1_from_heif_bitstream@@Base+0x1214>
    fb90:	4675      	mov	r5, lr
    fb92:	2300      	movs	r3, #0
    fb94:	e7e0      	b.n	fb58 <parse_bytevc1_from_heif_bitstream@@Base+0x1328>
    fb96:	9a02      	ldr	r2, [sp, #8]
    fb98:	2101      	movs	r1, #1
    fb9a:	f8da 3090 	ldr.w	r3, [sl, #144]	; 0x90
    fb9e:	f882 1048 	strb.w	r1, [r2, #72]	; 0x48
    fba2:	e5f1      	b.n	f788 <parse_bytevc1_from_heif_bitstream@@Base+0xf58>
    fba4:	f7f5 ef32 	blx	5a0c <__stack_chk_fail@plt>
    fba8:	980f      	ldr	r0, [sp, #60]	; 0x3c
    fbaa:	46d3      	mov	fp, sl
    fbac:	f7f6 ec02 	blx	63b4 <MoovBox_release@plt>
    fbb0:	f7ff b818 	b.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    fbb4:	46d3      	mov	fp, sl
    fbb6:	f7ff b815 	b.w	ebe4 <parse_bytevc1_from_heif_bitstream@@Base+0x3b4>
    fbba:	bf00      	nop
    fbbc:	0000      	movs	r0, r0
    fbbe:	447a      	add	r2, pc
    fbc0:	587e      	ldr	r6, [r7, r1]
	...

0000fbc4 <heif_parse_thumb_data@@Base>:
    fbc4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    fbc8:	f2ad 5d94 	subw	sp, sp, #1428	; 0x594
    fbcc:	ad24      	add	r5, sp, #144	; 0x90
    fbce:	f8df 4564 	ldr.w	r4, [pc, #1380]	; 10134 <heif_parse_thumb_data@@Base+0x570>
    fbd2:	9502      	str	r5, [sp, #8]
    fbd4:	4690      	mov	r8, r2
    fbd6:	462e      	mov	r6, r5
    fbd8:	447c      	add	r4, pc
    fbda:	6824      	ldr	r4, [r4, #0]
    fbdc:	ad1c      	add	r5, sp, #112	; 0x70
    fbde:	9511      	str	r5, [sp, #68]	; 0x44
    fbe0:	9005      	str	r0, [sp, #20]
    fbe2:	4630      	mov	r0, r6
    fbe4:	462f      	mov	r7, r5
    fbe6:	4625      	mov	r5, r4
    fbe8:	682d      	ldr	r5, [r5, #0]
    fbea:	ae3e      	add	r6, sp, #248	; 0xf8
    fbec:	940c      	str	r4, [sp, #48]	; 0x30
    fbee:	460c      	mov	r4, r1
    fbf0:	920e      	str	r2, [sp, #56]	; 0x38
    fbf2:	2100      	movs	r1, #0
    fbf4:	2268      	movs	r2, #104	; 0x68
    fbf6:	930b      	str	r3, [sp, #44]	; 0x2c
    fbf8:	f8cd 558c 	str.w	r5, [sp, #1420]	; 0x58c
    fbfc:	463d      	mov	r5, r7
    fbfe:	9601      	str	r6, [sp, #4]
    fc00:	f7f5 ef82 	blx	5b08 <memset@plt>
    fc04:	4638      	mov	r0, r7
    fc06:	f7f5 ef3e 	blx	5a84 <Bitstream_init@plt>
    fc0a:	2100      	movs	r1, #0
    fc0c:	f44f 6292 	mov.w	r2, #1168	; 0x490
    fc10:	603c      	str	r4, [r7, #0]
    fc12:	4630      	mov	r0, r6
    fc14:	463c      	mov	r4, r7
    fc16:	f8c4 8004 	str.w	r8, [r4, #4]
    fc1a:	f7f5 ef76 	blx	5b08 <memset@plt>
    fc1e:	4628      	mov	r0, r5
    fc20:	4631      	mov	r1, r6
    fc22:	f7f5 efba 	blx	5b98 <parse_heifbox_from_heif_bitstream@plt>
    fc26:	f896 3480 	ldrb.w	r3, [r6, #1152]	; 0x480
    fc2a:	b1b3      	cbz	r3, fc5a <heif_parse_thumb_data@@Base+0x96>
    fc2c:	9a02      	ldr	r2, [sp, #8]
    fc2e:	2301      	movs	r3, #1
    fc30:	7213      	strb	r3, [r2, #8]
    fc32:	9801      	ldr	r0, [sp, #4]
    fc34:	f7f5 efc2 	blx	5bbc <HeifBox_release@plt>
    fc38:	9805      	ldr	r0, [sp, #20]
    fc3a:	9902      	ldr	r1, [sp, #8]
    fc3c:	2268      	movs	r2, #104	; 0x68
    fc3e:	f7f5 eee0 	blx	5a00 <memcpy@plt>
    fc42:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    fc44:	f8dd 258c 	ldr.w	r2, [sp, #1420]	; 0x58c
    fc48:	9805      	ldr	r0, [sp, #20]
    fc4a:	681b      	ldr	r3, [r3, #0]
    fc4c:	429a      	cmp	r2, r3
    fc4e:	f040 826e 	bne.w	1012e <heif_parse_thumb_data@@Base+0x56a>
    fc52:	f20d 5d94 	addw	sp, sp, #1428	; 0x594
    fc56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    fc5a:	4604      	mov	r4, r0
    fc5c:	2800      	cmp	r0, #0
    fc5e:	d1e8      	bne.n	fc32 <heif_parse_thumb_data@@Base+0x6e>
    fc60:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    fc62:	461e      	mov	r6, r3
    fc64:	2b00      	cmp	r3, #0
    fc66:	f040 821e 	bne.w	100a6 <heif_parse_thumb_data@@Base+0x4e2>
    fc6a:	9b01      	ldr	r3, [sp, #4]
    fc6c:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
    fc70:	2b00      	cmp	r3, #0
    fc72:	9310      	str	r3, [sp, #64]	; 0x40
    fc74:	f340 8256 	ble.w	10124 <heif_parse_thumb_data@@Base+0x560>
    fc78:	980e      	ldr	r0, [sp, #56]	; 0x38
    fc7a:	2300      	movs	r3, #0
    fc7c:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
    fc80:	f246 3231 	movw	r2, #25393	; 0x6331
    fc84:	f246 3143 	movw	r1, #25411	; 0x6343
    fc88:	f8cd a024 	str.w	sl, [sp, #36]	; 0x24
    fc8c:	ee80 0b90 	vdup.32	d16, r0
    fc90:	469b      	mov	fp, r3
    fc92:	46b2      	mov	sl, r6
    fc94:	f6c6 0276 	movt	r2, #26742	; 0x6876
    fc98:	efe0 00b0 	vshr.s64	d16, d16, #32
    fc9c:	f6c6 0176 	movt	r1, #26742	; 0x6876
    fca0:	9304      	str	r3, [sp, #16]
    fca2:	920f      	str	r2, [sp, #60]	; 0x3c
    fca4:	edcd 0b12 	vstr	d16, [sp, #72]	; 0x48
    fca8:	9115      	str	r1, [sp, #84]	; 0x54
    fcaa:	9904      	ldr	r1, [sp, #16]
    fcac:	9a01      	ldr	r2, [sp, #4]
    fcae:	eb01 0341 	add.w	r3, r1, r1, lsl #1
    fcb2:	6fd2      	ldr	r2, [r2, #124]	; 0x7c
    fcb4:	eb01 0383 	add.w	r3, r1, r3, lsl #2
    fcb8:	990f      	ldr	r1, [sp, #60]	; 0x3c
    fcba:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    fcbe:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    fcc0:	428a      	cmp	r2, r1
    fcc2:	d015      	beq.n	fcf0 <heif_parse_thumb_data@@Base+0x12c>
    fcc4:	9b04      	ldr	r3, [sp, #16]
    fcc6:	9a10      	ldr	r2, [sp, #64]	; 0x40
    fcc8:	3301      	adds	r3, #1
    fcca:	9304      	str	r3, [sp, #16]
    fccc:	4293      	cmp	r3, r2
    fcce:	dbec      	blt.n	fcaa <heif_parse_thumb_data@@Base+0xe6>
    fcd0:	4656      	mov	r6, sl
    fcd2:	46d8      	mov	r8, fp
    fcd4:	9c02      	ldr	r4, [sp, #8]
    fcd6:	2301      	movs	r3, #1
    fcd8:	9801      	ldr	r0, [sp, #4]
    fcda:	e884 0140 	stmia.w	r4, {r6, r8}
    fcde:	72e3      	strb	r3, [r4, #11]
    fce0:	f7f5 ef6c 	blx	5bbc <HeifBox_release@plt>
    fce4:	9805      	ldr	r0, [sp, #20]
    fce6:	4621      	mov	r1, r4
    fce8:	2268      	movs	r2, #104	; 0x68
    fcea:	f7f5 ee8a 	blx	5a00 <memcpy@plt>
    fcee:	e7a8      	b.n	fc42 <heif_parse_thumb_data@@Base+0x7e>
    fcf0:	6958      	ldr	r0, [r3, #20]
    fcf2:	2800      	cmp	r0, #0
    fcf4:	f2c0 81c6 	blt.w	10084 <heif_parse_thumb_data@@Base+0x4c0>
    fcf8:	9a01      	ldr	r2, [sp, #4]
    fcfa:	f892 1120 	ldrb.w	r1, [r2, #288]	; 0x120
    fcfe:	2900      	cmp	r1, #0
    fd00:	f000 8213 	beq.w	1012a <heif_parse_thumb_data@@Base+0x566>
    fd04:	f8d2 311c 	ldr.w	r3, [r2, #284]	; 0x11c
    fd08:	eb01 0141 	add.w	r1, r1, r1, lsl #1
    fd0c:	9a02      	ldr	r2, [sp, #8]
    fd0e:	f646 5462 	movw	r4, #28002	; 0x6d62
    fd12:	eb03 01c1 	add.w	r1, r3, r1, lsl #3
    fd16:	f2c7 4468 	movt	r4, #29800	; 0x7468
    fd1a:	f892 5051 	ldrb.w	r5, [r2, #81]	; 0x51
    fd1e:	2200      	movs	r2, #0
    fd20:	9214      	str	r2, [sp, #80]	; 0x50
    fd22:	e002      	b.n	fd2a <heif_parse_thumb_data@@Base+0x166>
    fd24:	3318      	adds	r3, #24
    fd26:	428b      	cmp	r3, r1
    fd28:	d00b      	beq.n	fd42 <heif_parse_thumb_data@@Base+0x17e>
    fd2a:	685a      	ldr	r2, [r3, #4]
    fd2c:	42a2      	cmp	r2, r4
    fd2e:	d1f9      	bne.n	fd24 <heif_parse_thumb_data@@Base+0x160>
    fd30:	68da      	ldr	r2, [r3, #12]
    fd32:	3318      	adds	r3, #24
    fd34:	4290      	cmp	r0, r2
    fd36:	bf02      	ittt	eq
    fd38:	9009      	streq	r0, [sp, #36]	; 0x24
    fd3a:	2501      	moveq	r5, #1
    fd3c:	9514      	streq	r5, [sp, #80]	; 0x50
    fd3e:	428b      	cmp	r3, r1
    fd40:	d1f3      	bne.n	fd2a <heif_parse_thumb_data@@Base+0x166>
    fd42:	9b02      	ldr	r3, [sp, #8]
    fd44:	f883 5051 	strb.w	r5, [r3, #81]	; 0x51
    fd48:	9a01      	ldr	r2, [sp, #4]
    fd4a:	f892 e134 	ldrb.w	lr, [r2, #308]	; 0x134
    fd4e:	f1be 0f00 	cmp.w	lr, #0
    fd52:	f000 81e0 	beq.w	10116 <heif_parse_thumb_data@@Base+0x552>
    fd56:	f8d2 3164 	ldr.w	r3, [r2, #356]	; 0x164
    fd5a:	f247 0c65 	movw	ip, #28773	; 0x7065
    fd5e:	2700      	movs	r7, #0
    fd60:	f8cd a058 	str.w	sl, [sp, #88]	; 0x58
    fd64:	f8d2 9144 	ldr.w	r9, [r2, #324]	; 0x144
    fd68:	f6c6 1c73 	movt	ip, #26995	; 0x6973
    fd6c:	4619      	mov	r1, r3
    fd6e:	930a      	str	r3, [sp, #40]	; 0x28
    fd70:	f8d2 3160 	ldr.w	r3, [r2, #352]	; 0x160
    fd74:	eb01 0541 	add.w	r5, r1, r1, lsl #1
    fd78:	9708      	str	r7, [sp, #32]
    fd7a:	f8d2 6130 	ldr.w	r6, [r2, #304]	; 0x130
    fd7e:	4618      	mov	r0, r3
    fd80:	930d      	str	r3, [sp, #52]	; 0x34
    fd82:	9706      	str	r7, [sp, #24]
    fd84:	eb00 0585 	add.w	r5, r0, r5, lsl #2
    fd88:	f8cd b05c 	str.w	fp, [sp, #92]	; 0x5c
    fd8c:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
    fd90:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
    fd94:	e006      	b.n	fda4 <heif_parse_thumb_data@@Base+0x1e0>
    fd96:	4563      	cmp	r3, ip
    fd98:	f000 80a9 	beq.w	feee <heif_parse_thumb_data@@Base+0x32a>
    fd9c:	3701      	adds	r7, #1
    fd9e:	360c      	adds	r6, #12
    fda0:	4577      	cmp	r7, lr
    fda2:	d02b      	beq.n	fdfc <heif_parse_thumb_data@@Base+0x238>
    fda4:	6833      	ldr	r3, [r6, #0]
    fda6:	6872      	ldr	r2, [r6, #4]
    fda8:	4553      	cmp	r3, sl
    fdaa:	d1f4      	bne.n	fd96 <heif_parse_thumb_data@@Base+0x1d2>
    fdac:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    fdae:	2b00      	cmp	r3, #0
    fdb0:	d0f4      	beq.n	fd9c <heif_parse_thumb_data@@Base+0x1d8>
    fdb2:	990d      	ldr	r1, [sp, #52]	; 0x34
    fdb4:	f8dd b018 	ldr.w	fp, [sp, #24]
    fdb8:	e002      	b.n	fdc0 <heif_parse_thumb_data@@Base+0x1fc>
    fdba:	310c      	adds	r1, #12
    fdbc:	42a9      	cmp	r1, r5
    fdbe:	d016      	beq.n	fdee <heif_parse_thumb_data@@Base+0x22a>
    fdc0:	790c      	ldrb	r4, [r1, #4]
    fdc2:	6808      	ldr	r0, [r1, #0]
    fdc4:	688b      	ldr	r3, [r1, #8]
    fdc6:	2c00      	cmp	r4, #0
    fdc8:	d0f7      	beq.n	fdba <heif_parse_thumb_data@@Base+0x1f6>
    fdca:	4540      	cmp	r0, r8
    fdcc:	d1f5      	bne.n	fdba <heif_parse_thumb_data@@Base+0x1f6>
    fdce:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    fdd2:	8858      	ldrh	r0, [r3, #2]
    fdd4:	3304      	adds	r3, #4
    fdd6:	4290      	cmp	r0, r2
    fdd8:	bf02      	ittt	eq
    fdda:	f859 0027 	ldreq.w	r0, [r9, r7, lsl #2]
    fdde:	f04f 0b01 	moveq.w	fp, #1
    fde2:	9008      	streq	r0, [sp, #32]
    fde4:	42a3      	cmp	r3, r4
    fde6:	d1f4      	bne.n	fdd2 <heif_parse_thumb_data@@Base+0x20e>
    fde8:	310c      	adds	r1, #12
    fdea:	42a9      	cmp	r1, r5
    fdec:	d1e8      	bne.n	fdc0 <heif_parse_thumb_data@@Base+0x1fc>
    fdee:	3701      	adds	r7, #1
    fdf0:	f8cd b018 	str.w	fp, [sp, #24]
    fdf4:	4577      	cmp	r7, lr
    fdf6:	f106 060c 	add.w	r6, r6, #12
    fdfa:	d1d3      	bne.n	fda4 <heif_parse_thumb_data@@Base+0x1e0>
    fdfc:	f8dd a058 	ldr.w	sl, [sp, #88]	; 0x58
    fe00:	f8dd b05c 	ldr.w	fp, [sp, #92]	; 0x5c
    fe04:	9b01      	ldr	r3, [sp, #4]
    fe06:	f8d3 c0b0 	ldr.w	ip, [r3, #176]	; 0xb0
    fe0a:	f1bc 0f00 	cmp.w	ip, #0
    fe0e:	f43f af59 	beq.w	fcc4 <heif_parse_thumb_data@@Base+0x100>
    fe12:	9b06      	ldr	r3, [sp, #24]
    fe14:	2700      	movs	r7, #0
    fe16:	9a14      	ldr	r2, [sp, #80]	; 0x50
    fe18:	46b8      	mov	r8, r7
    fe1a:	4013      	ands	r3, r2
    fe1c:	9303      	str	r3, [sp, #12]
    fe1e:	ab19      	add	r3, sp, #100	; 0x64
    fe20:	930d      	str	r3, [sp, #52]	; 0x34
    fe22:	e004      	b.n	fe2e <heif_parse_thumb_data@@Base+0x26a>
    fe24:	f108 0801 	add.w	r8, r8, #1
    fe28:	45e0      	cmp	r8, ip
    fe2a:	f080 8168 	bcs.w	100fe <heif_parse_thumb_data@@Base+0x53a>
    fe2e:	9b03      	ldr	r3, [sp, #12]
    fe30:	2b00      	cmp	r3, #0
    fe32:	d0f7      	beq.n	fe24 <heif_parse_thumb_data@@Base+0x260>
    fe34:	9b01      	ldr	r3, [sp, #4]
    fe36:	ea4f 1548 	mov.w	r5, r8, lsl #5
    fe3a:	9909      	ldr	r1, [sp, #36]	; 0x24
    fe3c:	f8d3 2104 	ldr.w	r2, [r3, #260]	; 0x104
    fe40:	1953      	adds	r3, r2, r5
    fe42:	5952      	ldr	r2, [r2, r5]
    fe44:	428a      	cmp	r2, r1
    fe46:	d1ed      	bne.n	fe24 <heif_parse_thumb_data@@Base+0x260>
    fe48:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    fe4a:	2a00      	cmp	r2, #0
    fe4c:	d17a      	bne.n	ff44 <heif_parse_thumb_data@@Base+0x380>
    fe4e:	f8d3 9018 	ldr.w	r9, [r3, #24]
    fe52:	f1b9 0f00 	cmp.w	r9, #0
    fe56:	d0e5      	beq.n	fe24 <heif_parse_thumb_data@@Base+0x260>
    fe58:	f8d3 e01c 	ldr.w	lr, [r3, #28]
    fe5c:	691b      	ldr	r3, [r3, #16]
    fe5e:	e9de 0104 	ldrd	r0, r1, [lr, #16]
    fe62:	461a      	mov	r2, r3
    fe64:	9b11      	ldr	r3, [sp, #68]	; 0x44
    fe66:	9214      	str	r2, [sp, #80]	; 0x50
    fe68:	685d      	ldr	r5, [r3, #4]
    fe6a:	f8de 3008 	ldr.w	r3, [lr, #8]
    fe6e:	ee80 5b90 	vdup.32	d16, r5
    fe72:	189e      	adds	r6, r3, r2
    fe74:	1982      	adds	r2, r0, r6
    fe76:	ffe0 00b0 	vshr.u64	d16, d16, #32
    fe7a:	f141 0300 	adc.w	r3, r1, #0
    fe7e:	ec55 4b30 	vmov	r4, r5, d16
    fe82:	edcd 0b06 	vstr	d16, [sp, #24]
    fe86:	429d      	cmp	r5, r3
    fe88:	bf08      	it	eq
    fe8a:	4294      	cmpeq	r4, r2
    fe8c:	f0c0 80fa 	bcc.w	10084 <heif_parse_thumb_data@@Base+0x4c0>
    fe90:	f8cd b058 	str.w	fp, [sp, #88]	; 0x58
    fe94:	2718      	movs	r7, #24
    fe96:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    fe98:	464b      	mov	r3, r9
    fe9a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
    fe9e:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
    fea2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
    fea6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
    feaa:	e012      	b.n	fed2 <heif_parse_thumb_data@@Base+0x30e>
    feac:	eb0e 0107 	add.w	r1, lr, r7
    feb0:	e9dd 8906 	ldrd	r8, r9, [sp, #24]
    feb4:	3718      	adds	r7, #24
    feb6:	688b      	ldr	r3, [r1, #8]
    feb8:	e9d1 0104 	ldrd	r0, r1, [r1, #16]
    febc:	445b      	add	r3, fp
    febe:	18c4      	adds	r4, r0, r3
    fec0:	f141 0500 	adc.w	r5, r1, #0
    fec4:	45a9      	cmp	r9, r5
    fec6:	bf08      	it	eq
    fec8:	45a0      	cmpeq	r8, r4
    feca:	f0c0 810f 	bcc.w	100ec <heif_parse_thumb_data@@Base+0x528>
    fece:	461e      	mov	r6, r3
    fed0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    fed2:	3201      	adds	r2, #1
    fed4:	4682      	mov	sl, r0
    fed6:	429a      	cmp	r2, r3
    fed8:	d1e8      	bne.n	feac <heif_parse_thumb_data@@Base+0x2e8>
    feda:	9a02      	ldr	r2, [sp, #8]
    fedc:	f8dd a040 	ldr.w	sl, [sp, #64]	; 0x40
    fee0:	f8dd b058 	ldr.w	fp, [sp, #88]	; 0x58
    fee4:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
    fee8:	6556      	str	r6, [r2, #84]	; 0x54
    feea:	6590      	str	r0, [r2, #88]	; 0x58
    feec:	e79a      	b.n	fe24 <heif_parse_thumb_data@@Base+0x260>
    feee:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    fef0:	2b00      	cmp	r3, #0
    fef2:	f43f af53 	beq.w	fd9c <heif_parse_thumb_data@@Base+0x1d8>
    fef6:	990d      	ldr	r1, [sp, #52]	; 0x34
    fef8:	2000      	movs	r0, #0
    fefa:	9203      	str	r2, [sp, #12]
    fefc:	e002      	b.n	ff04 <heif_parse_thumb_data@@Base+0x340>
    fefe:	310c      	adds	r1, #12
    ff00:	42a9      	cmp	r1, r5
    ff02:	d014      	beq.n	ff2e <heif_parse_thumb_data@@Base+0x36a>
    ff04:	680a      	ldr	r2, [r1, #0]
    ff06:	790c      	ldrb	r4, [r1, #4]
    ff08:	4542      	cmp	r2, r8
    ff0a:	688b      	ldr	r3, [r1, #8]
    ff0c:	d1f7      	bne.n	fefe <heif_parse_thumb_data@@Base+0x33a>
    ff0e:	2c00      	cmp	r4, #0
    ff10:	d0f5      	beq.n	fefe <heif_parse_thumb_data@@Base+0x33a>
    ff12:	9a03      	ldr	r2, [sp, #12]
    ff14:	eb03 0b84 	add.w	fp, r3, r4, lsl #2
    ff18:	885c      	ldrh	r4, [r3, #2]
    ff1a:	3304      	adds	r3, #4
    ff1c:	42a2      	cmp	r2, r4
    ff1e:	bf08      	it	eq
    ff20:	2001      	moveq	r0, #1
    ff22:	455b      	cmp	r3, fp
    ff24:	d1f8      	bne.n	ff18 <heif_parse_thumb_data@@Base+0x354>
    ff26:	310c      	adds	r1, #12
    ff28:	9203      	str	r2, [sp, #12]
    ff2a:	42a9      	cmp	r1, r5
    ff2c:	d1ea      	bne.n	ff04 <heif_parse_thumb_data@@Base+0x340>
    ff2e:	2800      	cmp	r0, #0
    ff30:	f43f af34 	beq.w	fd9c <heif_parse_thumb_data@@Base+0x1d8>
    ff34:	f859 3027 	ldr.w	r3, [r9, r7, lsl #2]
    ff38:	9802      	ldr	r0, [sp, #8]
    ff3a:	695a      	ldr	r2, [r3, #20]
    ff3c:	699b      	ldr	r3, [r3, #24]
    ff3e:	6202      	str	r2, [r0, #32]
    ff40:	6243      	str	r3, [r0, #36]	; 0x24
    ff42:	e72b      	b.n	fd9c <heif_parse_thumb_data@@Base+0x1d8>
    ff44:	9a08      	ldr	r2, [sp, #32]
    ff46:	2700      	movs	r7, #0
    ff48:	980d      	ldr	r0, [sp, #52]	; 0x34
    ff4a:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
    ff4e:	4613      	mov	r3, r2
    ff50:	336c      	adds	r3, #108	; 0x6c
    ff52:	6003      	str	r3, [r0, #0]
    ff54:	4613      	mov	r3, r2
    ff56:	3344      	adds	r3, #68	; 0x44
    ff58:	6043      	str	r3, [r0, #4]
    ff5a:	4613      	mov	r3, r2
    ff5c:	465a      	mov	r2, fp
    ff5e:	46ab      	mov	fp, r5
    ff60:	4655      	mov	r5, sl
    ff62:	46e2      	mov	sl, ip
    ff64:	3358      	adds	r3, #88	; 0x58
    ff66:	f8cd 8018 	str.w	r8, [sp, #24]
    ff6a:	6083      	str	r3, [r0, #8]
    ff6c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    ff6e:	ebc2 0409 	rsb	r4, r2, r9
    ff72:	f853 6027 	ldr.w	r6, [r3, r7, lsl #2]
    ff76:	68b1      	ldr	r1, [r6, #8]
    ff78:	fab1 f081 	clz	r0, r1
    ff7c:	3104      	adds	r1, #4
    ff7e:	0940      	lsrs	r0, r0, #5
    ff80:	428c      	cmp	r4, r1
    ff82:	bf2c      	ite	cs
    ff84:	4604      	movcs	r4, r0
    ff86:	f040 0401 	orrcc.w	r4, r0, #1
    ff8a:	2c00      	cmp	r4, #0
    ff8c:	f040 80c8 	bne.w	10120 <heif_parse_thumb_data@@Base+0x55c>
    ff90:	18a9      	adds	r1, r5, r2
    ff92:	f102 0804 	add.w	r8, r2, #4
    ff96:	54ac      	strb	r4, [r5, r2]
    ff98:	2301      	movs	r3, #1
    ff9a:	704c      	strb	r4, [r1, #1]
    ff9c:	eb05 0008 	add.w	r0, r5, r8
    ffa0:	708c      	strb	r4, [r1, #2]
    ffa2:	3701      	adds	r7, #1
    ffa4:	70cb      	strb	r3, [r1, #3]
    ffa6:	68b2      	ldr	r2, [r6, #8]
    ffa8:	6831      	ldr	r1, [r6, #0]
    ffaa:	f7f5 ed2a 	blx	5a00 <memcpy@plt>
    ffae:	68b2      	ldr	r2, [r6, #8]
    ffb0:	2f03      	cmp	r7, #3
    ffb2:	4442      	add	r2, r8
    ffb4:	d1da      	bne.n	ff6c <heif_parse_thumb_data@@Base+0x3a8>
    ffb6:	9b01      	ldr	r3, [sp, #4]
    ffb8:	46d4      	mov	ip, sl
    ffba:	46aa      	mov	sl, r5
    ffbc:	465d      	mov	r5, fp
    ffbe:	f8dd 8018 	ldr.w	r8, [sp, #24]
    ffc2:	4693      	mov	fp, r2
    ffc4:	f8d3 1104 	ldr.w	r1, [r3, #260]	; 0x104
    ffc8:	194b      	adds	r3, r1, r5
    ffca:	930a      	str	r3, [sp, #40]	; 0x28
    ffcc:	699b      	ldr	r3, [r3, #24]
    ffce:	2b00      	cmp	r3, #0
    ffd0:	f43f af28 	beq.w	fe24 <heif_parse_thumb_data@@Base+0x260>
    ffd4:	9e0e      	ldr	r6, [sp, #56]	; 0x38
    ffd6:	4623      	mov	r3, r4
    ffd8:	9406      	str	r4, [sp, #24]
    ffda:	ac20      	add	r4, sp, #128	; 0x80
    ffdc:	461d      	mov	r5, r3
    ffde:	4619      	mov	r1, r3
    ffe0:	9314      	str	r3, [sp, #80]	; 0x50
    ffe2:	f8cd 8058 	str.w	r8, [sp, #88]	; 0x58
    ffe6:	9f0a      	ldr	r7, [sp, #40]	; 0x28
    ffe8:	4620      	mov	r0, r4
    ffea:	69fa      	ldr	r2, [r7, #28]
    ffec:	693b      	ldr	r3, [r7, #16]
    ffee:	440a      	add	r2, r1
    fff0:	6891      	ldr	r1, [r2, #8]
    fff2:	e9d2 8904 	ldrd	r8, r9, [r2, #16]
    fff6:	440b      	add	r3, r1
    fff8:	9310      	str	r3, [sp, #64]	; 0x40
    fffa:	f7f5 ed44 	blx	5a84 <Bitstream_init@plt>
    fffe:	687a      	ldr	r2, [r7, #4]
   10000:	9b10      	ldr	r3, [sp, #64]	; 0x40
   10002:	2a00      	cmp	r2, #0
   10004:	d16a      	bne.n	100dc <heif_parse_thumb_data@@Base+0x518>
   10006:	9a11      	ldr	r2, [sp, #68]	; 0x44
   10008:	6812      	ldr	r2, [r2, #0]
   1000a:	441a      	add	r2, r3
   1000c:	6022      	str	r2, [r4, #0]
   1000e:	9a11      	ldr	r2, [sp, #68]	; 0x44
   10010:	eb18 0003 	adds.w	r0, r8, r3
   10014:	f149 0100 	adc.w	r1, r9, #0
   10018:	2300      	movs	r3, #0
   1001a:	428b      	cmp	r3, r1
   1001c:	f8c4 8004 	str.w	r8, [r4, #4]
   10020:	6852      	ldr	r2, [r2, #4]
   10022:	bf08      	it	eq
   10024:	4282      	cmpeq	r2, r0
   10026:	d32d      	bcc.n	10084 <heif_parse_thumb_data@@Base+0x4c0>
   10028:	eb18 020b 	adds.w	r2, r8, fp
   1002c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
   10030:	f149 0300 	adc.w	r3, r9, #0
   10034:	4299      	cmp	r1, r3
   10036:	bf08      	it	eq
   10038:	4290      	cmpeq	r0, r2
   1003a:	d323      	bcc.n	10084 <heif_parse_thumb_data@@Base+0x4c0>
   1003c:	68a3      	ldr	r3, [r4, #8]
   1003e:	4598      	cmp	r8, r3
   10040:	d93c      	bls.n	100bc <heif_parse_thumb_data@@Base+0x4f8>
   10042:	f04f 0801 	mov.w	r8, #1
   10046:	e014      	b.n	10072 <heif_parse_thumb_data@@Base+0x4ae>
   10048:	eb0a 030b 	add.w	r3, sl, fp
   1004c:	f10b 0903 	add.w	r9, fp, #3
   10050:	f80a 500b 	strb.w	r5, [sl, fp]
   10054:	4602      	mov	r2, r0
   10056:	705d      	strb	r5, [r3, #1]
   10058:	eb0a 0109 	add.w	r1, sl, r9
   1005c:	f883 8002 	strb.w	r8, [r3, #2]
   10060:	4620      	mov	r0, r4
   10062:	f7f5 eed2 	blx	5e08 <Bitstream_read_bytes@plt>
   10066:	6862      	ldr	r2, [r4, #4]
   10068:	68a3      	ldr	r3, [r4, #8]
   1006a:	eb09 0b07 	add.w	fp, r9, r7
   1006e:	429a      	cmp	r2, r3
   10070:	d924      	bls.n	100bc <heif_parse_thumb_data@@Base+0x4f8>
   10072:	4620      	mov	r0, r4
   10074:	f7f5 ed6c 	blx	5b50 <Bitstream_read_32bit@plt>
   10078:	eb0b 0300 	add.w	r3, fp, r0
   1007c:	4607      	mov	r7, r0
   1007e:	3303      	adds	r3, #3
   10080:	429e      	cmp	r6, r3
   10082:	d2e1      	bcs.n	10048 <heif_parse_thumb_data@@Base+0x484>
   10084:	4656      	mov	r6, sl
   10086:	9801      	ldr	r0, [sp, #4]
   10088:	f7f5 ed98 	blx	5bbc <HeifBox_release@plt>
   1008c:	9802      	ldr	r0, [sp, #8]
   1008e:	f7f6 e9a4 	blx	63d8 <Bytevc1Bitstream_init@plt>
   10092:	b116      	cbz	r6, 1009a <heif_parse_thumb_data@@Base+0x4d6>
   10094:	4630      	mov	r0, r6
   10096:	f7f5 ecea 	blx	5a6c <free@plt>
   1009a:	9902      	ldr	r1, [sp, #8]
   1009c:	2268      	movs	r2, #104	; 0x68
   1009e:	9805      	ldr	r0, [sp, #20]
   100a0:	f7f5 ecae 	blx	5a00 <memcpy@plt>
   100a4:	e5cd      	b.n	fc42 <heif_parse_thumb_data@@Base+0x7e>
   100a6:	9d0e      	ldr	r5, [sp, #56]	; 0x38
   100a8:	4628      	mov	r0, r5
   100aa:	f7f5 ecce 	blx	5a48 <malloc@plt>
   100ae:	4606      	mov	r6, r0
   100b0:	b350      	cbz	r0, 10108 <heif_parse_thumb_data@@Base+0x544>
   100b2:	4621      	mov	r1, r4
   100b4:	462a      	mov	r2, r5
   100b6:	f7f5 ed28 	blx	5b08 <memset@plt>
   100ba:	e5d6      	b.n	fc6a <heif_parse_thumb_data@@Base+0xa6>
   100bc:	9b0a      	ldr	r3, [sp, #40]	; 0x28
   100be:	9a14      	ldr	r2, [sp, #80]	; 0x50
   100c0:	9906      	ldr	r1, [sp, #24]
   100c2:	699b      	ldr	r3, [r3, #24]
   100c4:	3201      	adds	r2, #1
   100c6:	3118      	adds	r1, #24
   100c8:	9214      	str	r2, [sp, #80]	; 0x50
   100ca:	429a      	cmp	r2, r3
   100cc:	9106      	str	r1, [sp, #24]
   100ce:	d38a      	bcc.n	ffe6 <heif_parse_thumb_data@@Base+0x422>
   100d0:	9b01      	ldr	r3, [sp, #4]
   100d2:	f8dd 8058 	ldr.w	r8, [sp, #88]	; 0x58
   100d6:	f8d3 c0b0 	ldr.w	ip, [r3, #176]	; 0xb0
   100da:	e6a3      	b.n	fe24 <heif_parse_thumb_data@@Base+0x260>
   100dc:	2a01      	cmp	r2, #1
   100de:	d1d1      	bne.n	10084 <heif_parse_thumb_data@@Base+0x4c0>
   100e0:	9a01      	ldr	r2, [sp, #4]
   100e2:	f8d2 2090 	ldr.w	r2, [r2, #144]	; 0x90
   100e6:	441a      	add	r2, r3
   100e8:	6022      	str	r2, [r4, #0]
   100ea:	e790      	b.n	1000e <heif_parse_thumb_data@@Base+0x44a>
   100ec:	9a02      	ldr	r2, [sp, #8]
   100ee:	46b1      	mov	r9, r6
   100f0:	9e10      	ldr	r6, [sp, #64]	; 0x40
   100f2:	4613      	mov	r3, r2
   100f4:	f8c2 9054 	str.w	r9, [r2, #84]	; 0x54
   100f8:	f8c3 a058 	str.w	sl, [r3, #88]	; 0x58
   100fc:	e7c3      	b.n	10086 <heif_parse_thumb_data@@Base+0x4c2>
   100fe:	9b01      	ldr	r3, [sp, #4]
   10100:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
   10104:	9310      	str	r3, [sp, #64]	; 0x40
   10106:	e5dd      	b.n	fcc4 <heif_parse_thumb_data@@Base+0x100>
   10108:	9801      	ldr	r0, [sp, #4]
   1010a:	f7f5 ed58 	blx	5bbc <HeifBox_release@plt>
   1010e:	9802      	ldr	r0, [sp, #8]
   10110:	f7f6 e962 	blx	63d8 <Bytevc1Bitstream_init@plt>
   10114:	e7c1      	b.n	1009a <heif_parse_thumb_data@@Base+0x4d6>
   10116:	f8cd e020 	str.w	lr, [sp, #32]
   1011a:	f8cd e018 	str.w	lr, [sp, #24]
   1011e:	e671      	b.n	fe04 <heif_parse_thumb_data@@Base+0x240>
   10120:	462e      	mov	r6, r5
   10122:	e7b0      	b.n	10086 <heif_parse_thumb_data@@Base+0x4c2>
   10124:	f04f 0800 	mov.w	r8, #0
   10128:	e5d4      	b.n	fcd4 <heif_parse_thumb_data@@Base+0x110>
   1012a:	9114      	str	r1, [sp, #80]	; 0x50
   1012c:	e60c      	b.n	fd48 <heif_parse_thumb_data@@Base+0x184>
   1012e:	f7f5 ec6e 	blx	5a0c <__stack_chk_fail@plt>
   10132:	bf00      	nop
   10134:	6ee4      	ldr	r4, [r4, #108]	; 0x6c
	...

00010138 <HeifMediaFile_init@@Base>:
   10138:	b160      	cbz	r0, 10154 <HeifMediaFile_init@@Base+0x1c>
   1013a:	b510      	push	{r4, lr}
   1013c:	2100      	movs	r1, #0
   1013e:	4604      	mov	r4, r0
   10140:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
   10144:	f7f5 ece0 	blx	5b08 <memset@plt>
   10148:	2300      	movs	r3, #0
   1014a:	65a3      	str	r3, [r4, #88]	; 0x58
   1014c:	6723      	str	r3, [r4, #112]	; 0x70
   1014e:	6763      	str	r3, [r4, #116]	; 0x74
   10150:	66e3      	str	r3, [r4, #108]	; 0x6c
   10152:	bd10      	pop	{r4, pc}
   10154:	4770      	bx	lr
   10156:	bf00      	nop

00010158 <parse_nal_data@@Base>:
   10158:	4b72      	ldr	r3, [pc, #456]	; (10324 <parse_nal_data@@Base+0x1cc>)
   1015a:	f500 71d2 	add.w	r1, r0, #420	; 0x1a4
   1015e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10162:	b08d      	sub	sp, #52	; 0x34
   10164:	461a      	mov	r2, r3
   10166:	6d83      	ldr	r3, [r0, #88]	; 0x58
   10168:	447a      	add	r2, pc
   1016a:	6812      	ldr	r2, [r2, #0]
   1016c:	4682      	mov	sl, r0
   1016e:	9104      	str	r1, [sp, #16]
   10170:	4608      	mov	r0, r1
   10172:	6899      	ldr	r1, [r3, #8]
   10174:	2600      	movs	r6, #0
   10176:	9205      	str	r2, [sp, #20]
   10178:	6812      	ldr	r2, [r2, #0]
   1017a:	681d      	ldr	r5, [r3, #0]
   1017c:	460c      	mov	r4, r1
   1017e:	9101      	str	r1, [sp, #4]
   10180:	f88d 6028 	strb.w	r6, [sp, #40]	; 0x28
   10184:	9609      	str	r6, [sp, #36]	; 0x24
   10186:	6899      	ldr	r1, [r3, #8]
   10188:	920b      	str	r2, [sp, #44]	; 0x2c
   1018a:	f7f6 e938 	blx	63fc <MediaDataBox_init@plt>
   1018e:	f50a 7090 	add.w	r0, sl, #288	; 0x120
   10192:	f7f6 e93a 	blx	6408 <Bytevc1ConfigurationBox_init@plt>
   10196:	42b4      	cmp	r4, r6
   10198:	f340 80bd 	ble.w	10316 <parse_nal_data@@Base+0x1be>
   1019c:	3c04      	subs	r4, #4
   1019e:	4632      	mov	r2, r6
   101a0:	42a2      	cmp	r2, r4
   101a2:	ab07      	add	r3, sp, #28
   101a4:	4637      	mov	r7, r6
   101a6:	9302      	str	r3, [sp, #8]
   101a8:	9603      	str	r6, [sp, #12]
   101aa:	46b1      	mov	r9, r6
   101ac:	da53      	bge.n	10256 <parse_nal_data@@Base+0xfe>
   101ae:	4693      	mov	fp, r2
   101b0:	e003      	b.n	101ba <parse_nal_data@@Base+0x62>
   101b2:	f10b 0b01 	add.w	fp, fp, #1
   101b6:	45a3      	cmp	fp, r4
   101b8:	d067      	beq.n	1028a <parse_nal_data@@Base+0x132>
   101ba:	eb05 000b 	add.w	r0, r5, fp
   101be:	f7f5 ee06 	blx	5dcc <find_start_code_len@plt>
   101c2:	2800      	cmp	r0, #0
   101c4:	d0f5      	beq.n	101b2 <parse_nal_data@@Base+0x5a>
   101c6:	4680      	mov	r8, r0
   101c8:	45bb      	cmp	fp, r7
   101ca:	d049      	beq.n	10260 <parse_nal_data@@Base+0x108>
   101cc:	f8da 2058 	ldr.w	r2, [sl, #88]	; 0x58
   101d0:	eb09 0607 	add.w	r6, r9, r7
   101d4:	2101      	movs	r1, #1
   101d6:	9802      	ldr	r0, [sp, #8]
   101d8:	2300      	movs	r3, #0
   101da:	442e      	add	r6, r5
   101dc:	6852      	ldr	r2, [r2, #4]
   101de:	9607      	str	r6, [sp, #28]
   101e0:	9309      	str	r3, [sp, #36]	; 0x24
   101e2:	f88d 3028 	strb.w	r3, [sp, #40]	; 0x28
   101e6:	9208      	str	r2, [sp, #32]
   101e8:	f7f5 ed72 	blx	5cd0 <Bitstream_read_bits@plt>
   101ec:	9802      	ldr	r0, [sp, #8]
   101ee:	2106      	movs	r1, #6
   101f0:	f7f5 ed6e 	blx	5cd0 <Bitstream_read_bits@plt>
   101f4:	ebc7 020b 	rsb	r2, r7, fp
   101f8:	2300      	movs	r3, #0
   101fa:	ebc9 0902 	rsb	r9, r9, r2
   101fe:	f88d 3028 	strb.w	r3, [sp, #40]	; 0x28
   10202:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
   10206:	2821      	cmp	r0, #33	; 0x21
   10208:	d043      	beq.n	10292 <parse_nal_data@@Base+0x13a>
   1020a:	2822      	cmp	r0, #34	; 0x22
   1020c:	d062      	beq.n	102d4 <parse_nal_data@@Base+0x17c>
   1020e:	2820      	cmp	r0, #32
   10210:	d074      	beq.n	102fc <parse_nal_data@@Base+0x1a4>
   10212:	3827      	subs	r0, #39	; 0x27
   10214:	2801      	cmp	r0, #1
   10216:	d923      	bls.n	10260 <parse_nal_data@@Base+0x108>
   10218:	9804      	ldr	r0, [sp, #16]
   1021a:	9902      	ldr	r1, [sp, #8]
   1021c:	f8da 61b8 	ldr.w	r6, [sl, #440]	; 0x1b8
   10220:	f7f6 e8f8 	blx	6414 <MediaDataBox_add_nal_data@plt>
   10224:	9803      	ldr	r0, [sp, #12]
   10226:	f8da 104c 	ldr.w	r1, [sl, #76]	; 0x4c
   1022a:	f8da 21b8 	ldr.w	r2, [sl, #440]	; 0x1b8
   1022e:	4603      	mov	r3, r0
   10230:	3301      	adds	r3, #1
   10232:	1b92      	subs	r2, r2, r6
   10234:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   10238:	f8da 2034 	ldr.w	r2, [sl, #52]	; 0x34
   1023c:	4619      	mov	r1, r3
   1023e:	9303      	str	r3, [sp, #12]
   10240:	4293      	cmp	r3, r2
   10242:	d819      	bhi.n	10278 <parse_nal_data@@Base+0x120>
   10244:	9b01      	ldr	r3, [sp, #4]
   10246:	eb0b 0208 	add.w	r2, fp, r8
   1024a:	4293      	cmp	r3, r2
   1024c:	dd0e      	ble.n	1026c <parse_nal_data@@Base+0x114>
   1024e:	42a2      	cmp	r2, r4
   10250:	465f      	mov	r7, fp
   10252:	46c1      	mov	r9, r8
   10254:	dbab      	blt.n	101ae <parse_nal_data@@Base+0x56>
   10256:	f8dd b004 	ldr.w	fp, [sp, #4]
   1025a:	46c8      	mov	r8, r9
   1025c:	45bb      	cmp	fp, r7
   1025e:	d1b5      	bne.n	101cc <parse_nal_data@@Base+0x74>
   10260:	9903      	ldr	r1, [sp, #12]
   10262:	9b01      	ldr	r3, [sp, #4]
   10264:	eb0b 0208 	add.w	r2, fp, r8
   10268:	4293      	cmp	r3, r2
   1026a:	dcf0      	bgt.n	1024e <parse_nal_data@@Base+0xf6>
   1026c:	f8da 3034 	ldr.w	r3, [sl, #52]	; 0x34
   10270:	4299      	cmp	r1, r3
   10272:	bf38      	it	cc
   10274:	f8ca 1034 	strcc.w	r1, [sl, #52]	; 0x34
   10278:	9b05      	ldr	r3, [sp, #20]
   1027a:	2002      	movs	r0, #2
   1027c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   1027e:	681b      	ldr	r3, [r3, #0]
   10280:	429a      	cmp	r2, r3
   10282:	d14c      	bne.n	1031e <parse_nal_data@@Base+0x1c6>
   10284:	b00d      	add	sp, #52	; 0x34
   10286:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1028a:	4680      	mov	r8, r0
   1028c:	f8dd b004 	ldr.w	fp, [sp, #4]
   10290:	e79a      	b.n	101c8 <parse_nal_data@@Base+0x70>
   10292:	f50a 77b2 	add.w	r7, sl, #356	; 0x164
   10296:	4649      	mov	r1, r9
   10298:	4638      	mov	r0, r7
   1029a:	f7f5 ed56 	blx	5d48 <Bitstream_alloc@plt>
   1029e:	4631      	mov	r1, r6
   102a0:	4638      	mov	r0, r7
   102a2:	464a      	mov	r2, r9
   102a4:	f7f5 ecde 	blx	5c64 <Bitstream_write_bytes@plt>
   102a8:	2300      	movs	r3, #0
   102aa:	4639      	mov	r1, r7
   102ac:	f8ca 316c 	str.w	r3, [sl, #364]	; 0x16c
   102b0:	f50a 7096 	add.w	r0, sl, #300	; 0x12c
   102b4:	f7f6 e8b4 	blx	6420 <Bytevc1DecoderConfigurationRecord_parse_sps@plt>
   102b8:	4638      	mov	r0, r7
   102ba:	f7f5 ecb6 	blx	5c28 <Bitstream_release@plt>
   102be:	4638      	mov	r0, r7
   102c0:	9909      	ldr	r1, [sp, #36]	; 0x24
   102c2:	f7f5 ed42 	blx	5d48 <Bitstream_alloc@plt>
   102c6:	9907      	ldr	r1, [sp, #28]
   102c8:	4638      	mov	r0, r7
   102ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
   102cc:	f7f5 ecca 	blx	5c64 <Bitstream_write_bytes@plt>
   102d0:	9903      	ldr	r1, [sp, #12]
   102d2:	e7c6      	b.n	10262 <parse_nal_data@@Base+0x10a>
   102d4:	f50a 77bc 	add.w	r7, sl, #376	; 0x178
   102d8:	4649      	mov	r1, r9
   102da:	4638      	mov	r0, r7
   102dc:	f7f5 ed34 	blx	5d48 <Bitstream_alloc@plt>
   102e0:	4631      	mov	r1, r6
   102e2:	4638      	mov	r0, r7
   102e4:	464a      	mov	r2, r9
   102e6:	f7f5 ecbe 	blx	5c64 <Bitstream_write_bytes@plt>
   102ea:	2300      	movs	r3, #0
   102ec:	4639      	mov	r1, r7
   102ee:	f8ca 3180 	str.w	r3, [sl, #384]	; 0x180
   102f2:	f50a 7096 	add.w	r0, sl, #300	; 0x12c
   102f6:	f7f6 e89a 	blx	642c <Bytevc1DecoderConfigurationRecord_parse_pps@plt>
   102fa:	e7dd      	b.n	102b8 <parse_nal_data@@Base+0x160>
   102fc:	f50a 76c6 	add.w	r6, sl, #396	; 0x18c
   10300:	4649      	mov	r1, r9
   10302:	4630      	mov	r0, r6
   10304:	f7f5 ed20 	blx	5d48 <Bitstream_alloc@plt>
   10308:	9907      	ldr	r1, [sp, #28]
   1030a:	4630      	mov	r0, r6
   1030c:	9a09      	ldr	r2, [sp, #36]	; 0x24
   1030e:	f7f5 ecaa 	blx	5c64 <Bitstream_write_bytes@plt>
   10312:	9903      	ldr	r1, [sp, #12]
   10314:	e796      	b.n	10244 <parse_nal_data@@Base+0xec>
   10316:	f8da 3034 	ldr.w	r3, [sl, #52]	; 0x34
   1031a:	4631      	mov	r1, r6
   1031c:	e7a8      	b.n	10270 <parse_nal_data@@Base+0x118>
   1031e:	f7f5 eb76 	blx	5a0c <__stack_chk_fail@plt>
   10322:	bf00      	nop
   10324:	6954      	ldr	r4, [r2, #20]
	...

00010328 <parse_nal_data_for_image@@Base>:
   10328:	4ba9      	ldr	r3, [pc, #676]	; (105d0 <parse_nal_data_for_image@@Base+0x2a8>)
   1032a:	f500 71d2 	add.w	r1, r0, #420	; 0x1a4
   1032e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10332:	b0ad      	sub	sp, #180	; 0xb4
   10334:	461a      	mov	r2, r3
   10336:	6d83      	ldr	r3, [r0, #88]	; 0x58
   10338:	4683      	mov	fp, r0
   1033a:	9104      	str	r1, [sp, #16]
   1033c:	4608      	mov	r0, r1
   1033e:	a90d      	add	r1, sp, #52	; 0x34
   10340:	447a      	add	r2, pc
   10342:	6812      	ldr	r2, [r2, #0]
   10344:	9105      	str	r1, [sp, #20]
   10346:	460e      	mov	r6, r1
   10348:	6899      	ldr	r1, [r3, #8]
   1034a:	9207      	str	r2, [sp, #28]
   1034c:	2400      	movs	r4, #0
   1034e:	6812      	ldr	r2, [r2, #0]
   10350:	681f      	ldr	r7, [r3, #0]
   10352:	460d      	mov	r5, r1
   10354:	9101      	str	r1, [sp, #4]
   10356:	f88d 4030 	strb.w	r4, [sp, #48]	; 0x30
   1035a:	940b      	str	r4, [sp, #44]	; 0x2c
   1035c:	6899      	ldr	r1, [r3, #8]
   1035e:	922b      	str	r2, [sp, #172]	; 0xac
   10360:	f7f6 e84c 	blx	63fc <MediaDataBox_init@plt>
   10364:	f50b 7090 	add.w	r0, fp, #288	; 0x120
   10368:	f7f6 e84e 	blx	6408 <Bytevc1ConfigurationBox_init@plt>
   1036c:	f10b 009c 	add.w	r0, fp, #156	; 0x9c
   10370:	f7f6 e84a 	blx	6408 <Bytevc1ConfigurationBox_init@plt>
   10374:	4630      	mov	r0, r6
   10376:	f7f5 ecb8 	blx	5ce8 <Bytevc1DecoderConfigurationRecord_init@plt>
   1037a:	42a5      	cmp	r5, r4
   1037c:	f340 8122 	ble.w	105c4 <parse_nal_data_for_image@@Base+0x29c>
   10380:	1f2e      	subs	r6, r5, #4
   10382:	4623      	mov	r3, r4
   10384:	42b3      	cmp	r3, r6
   10386:	aa09      	add	r2, sp, #36	; 0x24
   10388:	9402      	str	r4, [sp, #8]
   1038a:	46a0      	mov	r8, r4
   1038c:	46a1      	mov	r9, r4
   1038e:	9203      	str	r2, [sp, #12]
   10390:	da58      	bge.n	10444 <parse_nal_data_for_image@@Base+0x11c>
   10392:	461c      	mov	r4, r3
   10394:	e002      	b.n	1039c <parse_nal_data_for_image@@Base+0x74>
   10396:	3401      	adds	r4, #1
   10398:	42b4      	cmp	r4, r6
   1039a:	d06d      	beq.n	10478 <parse_nal_data_for_image@@Base+0x150>
   1039c:	1938      	adds	r0, r7, r4
   1039e:	f7f5 ed16 	blx	5dcc <find_start_code_len@plt>
   103a2:	2800      	cmp	r0, #0
   103a4:	d0f7      	beq.n	10396 <parse_nal_data_for_image@@Base+0x6e>
   103a6:	4682      	mov	sl, r0
   103a8:	4544      	cmp	r4, r8
   103aa:	d04f      	beq.n	1044c <parse_nal_data_for_image@@Base+0x124>
   103ac:	f8db 3058 	ldr.w	r3, [fp, #88]	; 0x58
   103b0:	eb09 0508 	add.w	r5, r9, r8
   103b4:	2101      	movs	r1, #1
   103b6:	9803      	ldr	r0, [sp, #12]
   103b8:	2200      	movs	r2, #0
   103ba:	443d      	add	r5, r7
   103bc:	685b      	ldr	r3, [r3, #4]
   103be:	9509      	str	r5, [sp, #36]	; 0x24
   103c0:	920b      	str	r2, [sp, #44]	; 0x2c
   103c2:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
   103c6:	930a      	str	r3, [sp, #40]	; 0x28
   103c8:	f7f5 ec82 	blx	5cd0 <Bitstream_read_bits@plt>
   103cc:	9803      	ldr	r0, [sp, #12]
   103ce:	2106      	movs	r1, #6
   103d0:	f7f5 ec7e 	blx	5cd0 <Bitstream_read_bits@plt>
   103d4:	ebc8 0304 	rsb	r3, r8, r4
   103d8:	2200      	movs	r2, #0
   103da:	ebc9 0903 	rsb	r9, r9, r3
   103de:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
   103e2:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
   103e6:	2821      	cmp	r0, #33	; 0x21
   103e8:	d049      	beq.n	1047e <parse_nal_data_for_image@@Base+0x156>
   103ea:	2822      	cmp	r0, #34	; 0x22
   103ec:	f000 8084 	beq.w	104f8 <parse_nal_data_for_image@@Base+0x1d0>
   103f0:	2820      	cmp	r0, #32
   103f2:	f000 80a8 	beq.w	10546 <parse_nal_data_for_image@@Base+0x21e>
   103f6:	3827      	subs	r0, #39	; 0x27
   103f8:	2801      	cmp	r0, #1
   103fa:	d927      	bls.n	1044c <parse_nal_data_for_image@@Base+0x124>
   103fc:	9804      	ldr	r0, [sp, #16]
   103fe:	9903      	ldr	r1, [sp, #12]
   10400:	f8db 51b8 	ldr.w	r5, [fp, #440]	; 0x1b8
   10404:	f7f6 e806 	blx	6414 <MediaDataBox_add_nal_data@plt>
   10408:	9802      	ldr	r0, [sp, #8]
   1040a:	f8db 204c 	ldr.w	r2, [fp, #76]	; 0x4c
   1040e:	f8db 31b8 	ldr.w	r3, [fp, #440]	; 0x1b8
   10412:	f8db 1050 	ldr.w	r1, [fp, #80]	; 0x50
   10416:	1b5b      	subs	r3, r3, r5
   10418:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
   1041c:	4603      	mov	r3, r0
   1041e:	3301      	adds	r3, #1
   10420:	f841 5020 	str.w	r5, [r1, r0, lsl #2]
   10424:	9302      	str	r3, [sp, #8]
   10426:	4619      	mov	r1, r3
   10428:	f8db 3034 	ldr.w	r3, [fp, #52]	; 0x34
   1042c:	460a      	mov	r2, r1
   1042e:	4299      	cmp	r1, r3
   10430:	d814      	bhi.n	1045c <parse_nal_data_for_image@@Base+0x134>
   10432:	9901      	ldr	r1, [sp, #4]
   10434:	eb04 030a 	add.w	r3, r4, sl
   10438:	4299      	cmp	r1, r3
   1043a:	dd0d      	ble.n	10458 <parse_nal_data_for_image@@Base+0x130>
   1043c:	42b3      	cmp	r3, r6
   1043e:	46a0      	mov	r8, r4
   10440:	46d1      	mov	r9, sl
   10442:	dba6      	blt.n	10392 <parse_nal_data_for_image@@Base+0x6a>
   10444:	9c01      	ldr	r4, [sp, #4]
   10446:	46ca      	mov	sl, r9
   10448:	4544      	cmp	r4, r8
   1044a:	d1af      	bne.n	103ac <parse_nal_data_for_image@@Base+0x84>
   1044c:	9a02      	ldr	r2, [sp, #8]
   1044e:	9901      	ldr	r1, [sp, #4]
   10450:	eb04 030a 	add.w	r3, r4, sl
   10454:	4299      	cmp	r1, r3
   10456:	dcf1      	bgt.n	1043c <parse_nal_data_for_image@@Base+0x114>
   10458:	f8db 3034 	ldr.w	r3, [fp, #52]	; 0x34
   1045c:	4293      	cmp	r3, r2
   1045e:	9b07      	ldr	r3, [sp, #28]
   10460:	bf88      	it	hi
   10462:	f8cb 2034 	strhi.w	r2, [fp, #52]	; 0x34
   10466:	2002      	movs	r0, #2
   10468:	9a2b      	ldr	r2, [sp, #172]	; 0xac
   1046a:	681b      	ldr	r3, [r3, #0]
   1046c:	429a      	cmp	r2, r3
   1046e:	f040 80ad 	bne.w	105cc <parse_nal_data_for_image@@Base+0x2a4>
   10472:	b02d      	add	sp, #180	; 0xb4
   10474:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10478:	4682      	mov	sl, r0
   1047a:	9c01      	ldr	r4, [sp, #4]
   1047c:	e794      	b.n	103a8 <parse_nal_data_for_image@@Base+0x80>
   1047e:	f10d 086c 	add.w	r8, sp, #108	; 0x6c
   10482:	4649      	mov	r1, r9
   10484:	4640      	mov	r0, r8
   10486:	f7f5 ec60 	blx	5d48 <Bitstream_alloc@plt>
   1048a:	464a      	mov	r2, r9
   1048c:	4640      	mov	r0, r8
   1048e:	4629      	mov	r1, r5
   10490:	f7f5 ebe8 	blx	5c64 <Bitstream_write_bytes@plt>
   10494:	4641      	mov	r1, r8
   10496:	9805      	ldr	r0, [sp, #20]
   10498:	2300      	movs	r3, #0
   1049a:	931d      	str	r3, [sp, #116]	; 0x74
   1049c:	f7f5 efc0 	blx	6420 <Bytevc1DecoderConfigurationRecord_parse_sps@plt>
   104a0:	4640      	mov	r0, r8
   104a2:	f7f5 ebc2 	blx	5c28 <Bitstream_release@plt>
   104a6:	f89d 80a9 	ldrb.w	r8, [sp, #169]	; 0xa9
   104aa:	f1b8 0f00 	cmp.w	r8, #0
   104ae:	d062      	beq.n	10576 <parse_nal_data_for_image@@Base+0x24e>
   104b0:	f1b8 0f01 	cmp.w	r8, #1
   104b4:	d1ca      	bne.n	1044c <parse_nal_data_for_image@@Base+0x124>
   104b6:	f10b 08e0 	add.w	r8, fp, #224	; 0xe0
   104ba:	4649      	mov	r1, r9
   104bc:	4640      	mov	r0, r8
   104be:	f7f5 ec44 	blx	5d48 <Bitstream_alloc@plt>
   104c2:	464a      	mov	r2, r9
   104c4:	4629      	mov	r1, r5
   104c6:	4640      	mov	r0, r8
   104c8:	f7f5 ebcc 	blx	5c64 <Bitstream_write_bytes@plt>
   104cc:	2300      	movs	r3, #0
   104ce:	4641      	mov	r1, r8
   104d0:	f8cb 30e8 	str.w	r3, [fp, #232]	; 0xe8
   104d4:	f10b 00a8 	add.w	r0, fp, #168	; 0xa8
   104d8:	f7f5 efa2 	blx	6420 <Bytevc1DecoderConfigurationRecord_parse_sps@plt>
   104dc:	4640      	mov	r0, r8
   104de:	f7f5 eba4 	blx	5c28 <Bitstream_release@plt>
   104e2:	4640      	mov	r0, r8
   104e4:	990b      	ldr	r1, [sp, #44]	; 0x2c
   104e6:	f7f5 ec30 	blx	5d48 <Bitstream_alloc@plt>
   104ea:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   104ec:	4640      	mov	r0, r8
   104ee:	9909      	ldr	r1, [sp, #36]	; 0x24
   104f0:	f7f5 ebb8 	blx	5c64 <Bitstream_write_bytes@plt>
   104f4:	9a02      	ldr	r2, [sp, #8]
   104f6:	e7aa      	b.n	1044e <parse_nal_data_for_image@@Base+0x126>
   104f8:	f10d 0880 	add.w	r8, sp, #128	; 0x80
   104fc:	4649      	mov	r1, r9
   104fe:	4640      	mov	r0, r8
   10500:	f7f5 ec22 	blx	5d48 <Bitstream_alloc@plt>
   10504:	464a      	mov	r2, r9
   10506:	4629      	mov	r1, r5
   10508:	4640      	mov	r0, r8
   1050a:	f7f5 ebac 	blx	5c64 <Bitstream_write_bytes@plt>
   1050e:	4641      	mov	r1, r8
   10510:	9805      	ldr	r0, [sp, #20]
   10512:	2300      	movs	r3, #0
   10514:	9322      	str	r3, [sp, #136]	; 0x88
   10516:	f7f5 ef8a 	blx	642c <Bytevc1DecoderConfigurationRecord_parse_pps@plt>
   1051a:	4640      	mov	r0, r8
   1051c:	f7f5 eb84 	blx	5c28 <Bitstream_release@plt>
   10520:	f89d 30aa 	ldrb.w	r3, [sp, #170]	; 0xaa
   10524:	2b00      	cmp	r3, #0
   10526:	d048      	beq.n	105ba <parse_nal_data_for_image@@Base+0x292>
   10528:	2b01      	cmp	r3, #1
   1052a:	d18f      	bne.n	1044c <parse_nal_data_for_image@@Base+0x124>
   1052c:	f10b 05f4 	add.w	r5, fp, #244	; 0xf4
   10530:	990b      	ldr	r1, [sp, #44]	; 0x2c
   10532:	4628      	mov	r0, r5
   10534:	f7f5 ec08 	blx	5d48 <Bitstream_alloc@plt>
   10538:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   1053a:	4628      	mov	r0, r5
   1053c:	9909      	ldr	r1, [sp, #36]	; 0x24
   1053e:	f7f5 eb92 	blx	5c64 <Bitstream_write_bytes@plt>
   10542:	9a02      	ldr	r2, [sp, #8]
   10544:	e783      	b.n	1044e <parse_nal_data_for_image@@Base+0x126>
   10546:	f50b 75c6 	add.w	r5, fp, #396	; 0x18c
   1054a:	4649      	mov	r1, r9
   1054c:	f50b 7984 	add.w	r9, fp, #264	; 0x108
   10550:	4628      	mov	r0, r5
   10552:	f7f5 ebfa 	blx	5d48 <Bitstream_alloc@plt>
   10556:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   10558:	9909      	ldr	r1, [sp, #36]	; 0x24
   1055a:	4628      	mov	r0, r5
   1055c:	f7f5 eb82 	blx	5c64 <Bitstream_write_bytes@plt>
   10560:	4648      	mov	r0, r9
   10562:	990b      	ldr	r1, [sp, #44]	; 0x2c
   10564:	f7f5 ebf0 	blx	5d48 <Bitstream_alloc@plt>
   10568:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   1056a:	4648      	mov	r0, r9
   1056c:	9909      	ldr	r1, [sp, #36]	; 0x24
   1056e:	f7f5 eb7a 	blx	5c64 <Bitstream_write_bytes@plt>
   10572:	9a02      	ldr	r2, [sp, #8]
   10574:	e75d      	b.n	10432 <parse_nal_data_for_image@@Base+0x10a>
   10576:	f50b 73b2 	add.w	r3, fp, #356	; 0x164
   1057a:	4649      	mov	r1, r9
   1057c:	9306      	str	r3, [sp, #24]
   1057e:	4618      	mov	r0, r3
   10580:	f7f5 ebe2 	blx	5d48 <Bitstream_alloc@plt>
   10584:	4629      	mov	r1, r5
   10586:	464a      	mov	r2, r9
   10588:	9806      	ldr	r0, [sp, #24]
   1058a:	f7f5 eb6c 	blx	5c64 <Bitstream_write_bytes@plt>
   1058e:	9d06      	ldr	r5, [sp, #24]
   10590:	f8cb 816c 	str.w	r8, [fp, #364]	; 0x16c
   10594:	f50b 7096 	add.w	r0, fp, #300	; 0x12c
   10598:	4629      	mov	r1, r5
   1059a:	f7f5 ef42 	blx	6420 <Bytevc1DecoderConfigurationRecord_parse_sps@plt>
   1059e:	4628      	mov	r0, r5
   105a0:	f7f5 eb42 	blx	5c28 <Bitstream_release@plt>
   105a4:	990b      	ldr	r1, [sp, #44]	; 0x2c
   105a6:	4628      	mov	r0, r5
   105a8:	f7f5 ebce 	blx	5d48 <Bitstream_alloc@plt>
   105ac:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   105ae:	4628      	mov	r0, r5
   105b0:	9909      	ldr	r1, [sp, #36]	; 0x24
   105b2:	f7f5 eb58 	blx	5c64 <Bitstream_write_bytes@plt>
   105b6:	9a02      	ldr	r2, [sp, #8]
   105b8:	e73b      	b.n	10432 <parse_nal_data_for_image@@Base+0x10a>
   105ba:	f50b 75bc 	add.w	r5, fp, #376	; 0x178
   105be:	990b      	ldr	r1, [sp, #44]	; 0x2c
   105c0:	4628      	mov	r0, r5
   105c2:	e7f1      	b.n	105a8 <parse_nal_data_for_image@@Base+0x280>
   105c4:	f8db 3034 	ldr.w	r3, [fp, #52]	; 0x34
   105c8:	4622      	mov	r2, r4
   105ca:	e747      	b.n	1045c <parse_nal_data_for_image@@Base+0x134>
   105cc:	f7f5 ea1e 	blx	5a0c <__stack_chk_fail@plt>
   105d0:	677c      	str	r4, [r7, #116]	; 0x74
	...

000105d4 <HeifMediaFile_release@@Base>:
   105d4:	2800      	cmp	r0, #0
   105d6:	d03d      	beq.n	10654 <HeifMediaFile_release@@Base+0x80>
   105d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   105da:	4606      	mov	r6, r0
   105dc:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
   105de:	b108      	cbz	r0, 105e4 <HeifMediaFile_release@@Base+0x10>
   105e0:	f7f5 ea44 	blx	5a6c <free@plt>
   105e4:	f896 2028 	ldrb.w	r2, [r6, #40]	; 0x28
   105e8:	2400      	movs	r4, #0
   105ea:	4635      	mov	r5, r6
   105ec:	62f4      	str	r4, [r6, #44]	; 0x2c
   105ee:	4627      	mov	r7, r4
   105f0:	b15a      	cbz	r2, 1060a <HeifMediaFile_release@@Base+0x36>
   105f2:	682b      	ldr	r3, [r5, #0]
   105f4:	3401      	adds	r4, #1
   105f6:	4618      	mov	r0, r3
   105f8:	b11b      	cbz	r3, 10602 <HeifMediaFile_release@@Base+0x2e>
   105fa:	f7f5 ea38 	blx	5a6c <free@plt>
   105fe:	f896 2028 	ldrb.w	r2, [r6, #40]	; 0x28
   10602:	42a2      	cmp	r2, r4
   10604:	f845 7b04 	str.w	r7, [r5], #4
   10608:	dcf3      	bgt.n	105f2 <HeifMediaFile_release@@Base+0x1e>
   1060a:	6b30      	ldr	r0, [r6, #48]	; 0x30
   1060c:	b108      	cbz	r0, 10612 <HeifMediaFile_release@@Base+0x3e>
   1060e:	f7f5 ea2e 	blx	5a6c <free@plt>
   10612:	6f30      	ldr	r0, [r6, #112]	; 0x70
   10614:	2300      	movs	r3, #0
   10616:	6333      	str	r3, [r6, #48]	; 0x30
   10618:	b108      	cbz	r0, 1061e <HeifMediaFile_release@@Base+0x4a>
   1061a:	f7f5 ea28 	blx	5a6c <free@plt>
   1061e:	6f70      	ldr	r0, [r6, #116]	; 0x74
   10620:	2300      	movs	r3, #0
   10622:	6733      	str	r3, [r6, #112]	; 0x70
   10624:	b108      	cbz	r0, 1062a <HeifMediaFile_release@@Base+0x56>
   10626:	f7f5 ea22 	blx	5a6c <free@plt>
   1062a:	6ef0      	ldr	r0, [r6, #108]	; 0x6c
   1062c:	2300      	movs	r3, #0
   1062e:	6773      	str	r3, [r6, #116]	; 0x74
   10630:	b108      	cbz	r0, 10636 <HeifMediaFile_release@@Base+0x62>
   10632:	f7f5 ea1c 	blx	5a6c <free@plt>
   10636:	6cf0      	ldr	r0, [r6, #76]	; 0x4c
   10638:	2300      	movs	r3, #0
   1063a:	66f3      	str	r3, [r6, #108]	; 0x6c
   1063c:	b108      	cbz	r0, 10642 <HeifMediaFile_release@@Base+0x6e>
   1063e:	f7f5 ea16 	blx	5a6c <free@plt>
   10642:	6d30      	ldr	r0, [r6, #80]	; 0x50
   10644:	2300      	movs	r3, #0
   10646:	64f3      	str	r3, [r6, #76]	; 0x4c
   10648:	b108      	cbz	r0, 1064e <HeifMediaFile_release@@Base+0x7a>
   1064a:	f7f5 ea10 	blx	5a6c <free@plt>
   1064e:	2300      	movs	r3, #0
   10650:	6533      	str	r3, [r6, #80]	; 0x50
   10652:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   10654:	4770      	bx	lr
   10656:	bf00      	nop

00010658 <write_moov_box@@Base>:
   10658:	b5f0      	push	{r4, r5, r6, r7, lr}
   1065a:	f5ad 7d49 	sub.w	sp, sp, #804	; 0x324
   1065e:	4d13      	ldr	r5, [pc, #76]	; (106ac <write_moov_box@@Base+0x54>)
   10660:	4606      	mov	r6, r0
   10662:	4668      	mov	r0, sp
   10664:	460f      	mov	r7, r1
   10666:	447d      	add	r5, pc
   10668:	682d      	ldr	r5, [r5, #0]
   1066a:	682b      	ldr	r3, [r5, #0]
   1066c:	93c7      	str	r3, [sp, #796]	; 0x31c
   1066e:	f7f5 ea8e 	blx	5b8c <MoovBox_init@plt>
   10672:	4630      	mov	r0, r6
   10674:	a904      	add	r1, sp, #16
   10676:	f7f5 eee0 	blx	6438 <write_movie_header_box@plt>
   1067a:	4630      	mov	r0, r6
   1067c:	a926      	add	r1, sp, #152	; 0x98
   1067e:	f7f5 eee2 	blx	6444 <write_track_box@plt>
   10682:	4668      	mov	r0, sp
   10684:	4639      	mov	r1, r7
   10686:	f7f5 eee4 	blx	6450 <MoovBox_write_box@plt>
   1068a:	9ba2      	ldr	r3, [sp, #648]	; 0x288
   1068c:	4668      	mov	r0, sp
   1068e:	681b      	ldr	r3, [r3, #0]
   10690:	64b3      	str	r3, [r6, #72]	; 0x48
   10692:	f7f5 ee90 	blx	63b4 <MoovBox_release@plt>
   10696:	9ac7      	ldr	r2, [sp, #796]	; 0x31c
   10698:	682b      	ldr	r3, [r5, #0]
   1069a:	2000      	movs	r0, #0
   1069c:	429a      	cmp	r2, r3
   1069e:	d102      	bne.n	106a6 <write_moov_box@@Base+0x4e>
   106a0:	f50d 7d49 	add.w	sp, sp, #804	; 0x324
   106a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
   106a6:	f7f5 e9b2 	blx	5a0c <__stack_chk_fail@plt>
   106aa:	bf00      	nop
   106ac:	6456      	str	r6, [r2, #68]	; 0x44
	...

000106b0 <write_file_type_box@@Base>:
   106b0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   106b4:	b08a      	sub	sp, #40	; 0x28
   106b6:	4f1d      	ldr	r7, [pc, #116]	; (1072c <write_file_type_box@@Base+0x7c>)
   106b8:	f10d 0804 	add.w	r8, sp, #4
   106bc:	4606      	mov	r6, r0
   106be:	4689      	mov	r9, r1
   106c0:	447f      	add	r7, pc
   106c2:	683f      	ldr	r7, [r7, #0]
   106c4:	4640      	mov	r0, r8
   106c6:	2400      	movs	r4, #0
   106c8:	683b      	ldr	r3, [r7, #0]
   106ca:	9309      	str	r3, [sp, #36]	; 0x24
   106cc:	f7f5 ea52 	blx	5b74 <FileTypeBox_init@plt>
   106d0:	6af0      	ldr	r0, [r6, #44]	; 0x2c
   106d2:	9407      	str	r4, [sp, #28]
   106d4:	f7f5 ece2 	blx	609c <strdup@plt>
   106d8:	f896 5028 	ldrb.w	r5, [r6, #40]	; 0x28
   106dc:	9508      	str	r5, [sp, #32]
   106de:	9004      	str	r0, [sp, #16]
   106e0:	00a8      	lsls	r0, r5, #2
   106e2:	f7f5 e9b2 	blx	5a48 <malloc@plt>
   106e6:	9005      	str	r0, [sp, #20]
   106e8:	b17d      	cbz	r5, 1070a <write_file_type_box@@Base+0x5a>
   106ea:	f1a6 0a04 	sub.w	sl, r6, #4
   106ee:	4605      	mov	r5, r0
   106f0:	e000      	b.n	106f4 <write_file_type_box@@Base+0x44>
   106f2:	9d05      	ldr	r5, [sp, #20]
   106f4:	f85a 0f04 	ldr.w	r0, [sl, #4]!
   106f8:	f7f5 ecd0 	blx	609c <strdup@plt>
   106fc:	f845 0024 	str.w	r0, [r5, r4, lsl #2]
   10700:	3401      	adds	r4, #1
   10702:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
   10706:	42a3      	cmp	r3, r4
   10708:	dcf3      	bgt.n	106f2 <write_file_type_box@@Base+0x42>
   1070a:	4649      	mov	r1, r9
   1070c:	4640      	mov	r0, r8
   1070e:	f7f5 eea6 	blx	645c <FileTypeBox_write_box@plt>
   10712:	4640      	mov	r0, r8
   10714:	f7f5 ee42 	blx	639c <FileTypeBox_release@plt>
   10718:	9a09      	ldr	r2, [sp, #36]	; 0x24
   1071a:	683b      	ldr	r3, [r7, #0]
   1071c:	2000      	movs	r0, #0
   1071e:	429a      	cmp	r2, r3
   10720:	d102      	bne.n	10728 <write_file_type_box@@Base+0x78>
   10722:	b00a      	add	sp, #40	; 0x28
   10724:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   10728:	f7f5 e970 	blx	5a0c <__stack_chk_fail@plt>
   1072c:	63fc      	str	r4, [r7, #60]	; 0x3c
	...

00010730 <write_master_image@@Base>:
   10730:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10734:	4607      	mov	r7, r0
   10736:	ed2d 8b02 	vpush	{d8}
   1073a:	f507 76d2 	add.w	r6, r7, #420	; 0x1a4
   1073e:	f8df 342c 	ldr.w	r3, [pc, #1068]	; 10b6c <write_master_image@@Base+0x43c>
   10742:	4688      	mov	r8, r1
   10744:	f04f 0901 	mov.w	r9, #1
   10748:	447b      	add	r3, pc
   1074a:	681b      	ldr	r3, [r3, #0]
   1074c:	b0e7      	sub	sp, #412	; 0x19c
   1074e:	ad13      	add	r5, sp, #76	; 0x4c
   10750:	aa05      	add	r2, sp, #20
   10752:	9300      	str	r3, [sp, #0]
   10754:	681b      	ldr	r3, [r3, #0]
   10756:	4628      	mov	r0, r5
   10758:	4614      	mov	r4, r2
   1075a:	9201      	str	r2, [sp, #4]
   1075c:	9365      	str	r3, [sp, #404]	; 0x194
   1075e:	f7f5 ea10 	blx	5b80 <MetaBox_init@plt>
   10762:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
   10764:	f8c5 9044 	str.w	r9, [r5, #68]	; 0x44
   10768:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   1076a:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
   1076e:	e884 0007 	stmia.w	r4, {r0, r1, r2}
   10772:	a80c      	add	r0, sp, #48	; 0x30
   10774:	f7f5 ec98 	blx	60a8 <HandlerBox_init@plt>
   10778:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
   1077a:	f7f5 ea62 	blx	5c40 <string_type_to_int32@plt>
   1077e:	62a8      	str	r0, [r5, #40]	; 0x28
   10780:	48fb      	ldr	r0, [pc, #1004]	; (10b70 <write_master_image@@Base+0x440>)
   10782:	4478      	add	r0, pc
   10784:	f7f5 ec8a 	blx	609c <strdup@plt>
   10788:	f897 31c8 	ldrb.w	r3, [r7, #456]	; 0x1c8
   1078c:	f8c5 9060 	str.w	r9, [r5, #96]	; 0x60
   10790:	62e8      	str	r0, [r5, #44]	; 0x2c
   10792:	2034      	movs	r0, #52	; 0x34
   10794:	b113      	cbz	r3, 1079c <write_master_image@@Base+0x6c>
   10796:	2068      	movs	r0, #104	; 0x68
   10798:	2302      	movs	r3, #2
   1079a:	662b      	str	r3, [r5, #96]	; 0x60
   1079c:	f7f5 e954 	blx	5a48 <malloc@plt>
   107a0:	65e8      	str	r0, [r5, #92]	; 0x5c
   107a2:	2800      	cmp	r0, #0
   107a4:	f000 8194 	beq.w	10ad0 <write_master_image@@Base+0x3a0>
   107a8:	f04f 0b00 	mov.w	fp, #0
   107ac:	f246 3431 	movw	r4, #25393	; 0x6331
   107b0:	46d9      	mov	r9, fp
   107b2:	f6c6 0476 	movt	r4, #26742	; 0x6876
   107b6:	2602      	movs	r6, #2
   107b8:	e000      	b.n	107bc <write_master_image@@Base+0x8c>
   107ba:	6de8      	ldr	r0, [r5, #92]	; 0x5c
   107bc:	eb00 0a0b 	add.w	sl, r0, fp
   107c0:	f10b 0b34 	add.w	fp, fp, #52	; 0x34
   107c4:	4650      	mov	r0, sl
   107c6:	f7f5 eb3e 	blx	5e44 <ItemInfoEntry_init@plt>
   107ca:	f88a 600c 	strb.w	r6, [sl, #12]
   107ce:	6c6b      	ldr	r3, [r5, #68]	; 0x44
   107d0:	6e2a      	ldr	r2, [r5, #96]	; 0x60
   107d2:	444b      	add	r3, r9
   107d4:	f109 0901 	add.w	r9, r9, #1
   107d8:	4591      	cmp	r9, r2
   107da:	f8ca 3014 	str.w	r3, [sl, #20]
   107de:	f8ca 402c 	str.w	r4, [sl, #44]	; 0x2c
   107e2:	dbea      	blt.n	107ba <write_master_image@@Base+0x8a>
   107e4:	f897 31c8 	ldrb.w	r3, [r7, #456]	; 0x1c8
   107e8:	2b00      	cmp	r3, #0
   107ea:	f040 818a 	bne.w	10b02 <write_master_image@@Base+0x3d2>
   107ee:	2020      	movs	r0, #32
   107f0:	2301      	movs	r3, #1
   107f2:	f8c5 3090 	str.w	r3, [r5, #144]	; 0x90
   107f6:	f7f5 e928 	blx	5a48 <malloc@plt>
   107fa:	f8c5 00e4 	str.w	r0, [r5, #228]	; 0xe4
   107fe:	2800      	cmp	r0, #0
   10800:	f000 8166 	beq.w	10ad0 <write_master_image@@Base+0x3a0>
   10804:	462b      	mov	r3, r5
   10806:	2400      	movs	r4, #0
   10808:	46a1      	mov	r9, r4
   1080a:	ef80 8010 	vmov.i32	d8, #0	; 0x00000000
   1080e:	4605      	mov	r5, r0
   10810:	469b      	mov	fp, r3
   10812:	e001      	b.n	10818 <write_master_image@@Base+0xe8>
   10814:	f8db 50e4 	ldr.w	r5, [fp, #228]	; 0xe4
   10818:	ea4f 1a44 	mov.w	sl, r4, lsl #5
   1081c:	eb05 060a 	add.w	r6, r5, sl
   10820:	4630      	mov	r0, r6
   10822:	f7f5 eb1c 	blx	5e5c <ItemLocation_init@plt>
   10826:	6d39      	ldr	r1, [r7, #80]	; 0x50
   10828:	f8db 3044 	ldr.w	r3, [fp, #68]	; 0x44
   1082c:	2018      	movs	r0, #24
   1082e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
   10830:	4423      	add	r3, r4
   10832:	f845 300a 	str.w	r3, [r5, sl]
   10836:	2301      	movs	r3, #1
   10838:	61b3      	str	r3, [r6, #24]
   1083a:	f851 a024 	ldr.w	sl, [r1, r4, lsl #2]
   1083e:	f852 5024 	ldr.w	r5, [r2, r4, lsl #2]
   10842:	f7f5 e902 	blx	5a48 <malloc@plt>
   10846:	f8db 3090 	ldr.w	r3, [fp, #144]	; 0x90
   1084a:	3401      	adds	r4, #1
   1084c:	429c      	cmp	r4, r3
   1084e:	61f0      	str	r0, [r6, #28]
   10850:	f8c0 a008 	str.w	sl, [r0, #8]
   10854:	6105      	str	r5, [r0, #16]
   10856:	ed80 8b00 	vstr	d8, [r0]
   1085a:	f8c0 900c 	str.w	r9, [r0, #12]
   1085e:	f8c0 9014 	str.w	r9, [r0, #20]
   10862:	d3d7      	bcc.n	10814 <write_master_image@@Base+0xe4>
   10864:	f897 21c8 	ldrb.w	r2, [r7, #456]	; 0x1c8
   10868:	2302      	movs	r3, #2
   1086a:	2101      	movs	r1, #1
   1086c:	465d      	mov	r5, fp
   1086e:	f8cb 1144 	str.w	r1, [fp, #324]	; 0x144
   10872:	f88b 3128 	strb.w	r3, [fp, #296]	; 0x128
   10876:	f88b 3114 	strb.w	r3, [fp, #276]	; 0x114
   1087a:	2a00      	cmp	r2, #0
   1087c:	f040 8136 	bne.w	10aec <write_master_image@@Base+0x3bc>
   10880:	2108      	movs	r1, #8
   10882:	200c      	movs	r0, #12
   10884:	2203      	movs	r2, #3
   10886:	6e7b      	ldr	r3, [r7, #100]	; 0x64
   10888:	2b00      	cmp	r3, #0
   1088a:	f000 816b 	beq.w	10b64 <write_master_image@@Base+0x434>
   1088e:	f885 2128 	strb.w	r2, [r5, #296]	; 0x128
   10892:	f885 2114 	strb.w	r2, [r5, #276]	; 0x114
   10896:	f7f5 e8d8 	blx	5a48 <malloc@plt>
   1089a:	f8c5 0124 	str.w	r0, [r5, #292]	; 0x124
   1089e:	2084      	movs	r0, #132	; 0x84
   108a0:	f7f5 e8d2 	blx	5a48 <malloc@plt>
   108a4:	4606      	mov	r6, r0
   108a6:	f7f5 edb0 	blx	6408 <Bytevc1ConfigurationBox_init@plt>
   108aa:	f507 7190 	add.w	r1, r7, #288	; 0x120
   108ae:	2284      	movs	r2, #132	; 0x84
   108b0:	4630      	mov	r0, r6
   108b2:	f7f5 e8a6 	blx	5a00 <memcpy@plt>
   108b6:	201c      	movs	r0, #28
   108b8:	f7f5 e8c6 	blx	5a48 <malloc@plt>
   108bc:	4604      	mov	r4, r0
   108be:	f7f5 edd4 	blx	6468 <ImageSpatialExtentsProperty_init@plt>
   108c2:	6fb9      	ldr	r1, [r7, #120]	; 0x78
   108c4:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
   108c6:	f8d5 3124 	ldr.w	r3, [r5, #292]	; 0x124
   108ca:	6161      	str	r1, [r4, #20]
   108cc:	61a2      	str	r2, [r4, #24]
   108ce:	601e      	str	r6, [r3, #0]
   108d0:	f8d5 3124 	ldr.w	r3, [r5, #292]	; 0x124
   108d4:	605c      	str	r4, [r3, #4]
   108d6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
   108d8:	2b00      	cmp	r3, #0
   108da:	f000 8138 	beq.w	10b4e <write_master_image@@Base+0x41e>
   108de:	2028      	movs	r0, #40	; 0x28
   108e0:	2410      	movs	r4, #16
   108e2:	f7f5 e8b2 	blx	5a48 <malloc@plt>
   108e6:	f04f 090c 	mov.w	r9, #12
   108ea:	4606      	mov	r6, r0
   108ec:	f7f5 edc2 	blx	6474 <ColourInformationBox_init@plt>
   108f0:	48a0      	ldr	r0, [pc, #640]	; (10b74 <write_master_image@@Base+0x444>)
   108f2:	4478      	add	r0, pc
   108f4:	f7f5 e9a4 	blx	5c40 <string_type_to_int32@plt>
   108f8:	6e79      	ldr	r1, [r7, #100]	; 0x64
   108fa:	6eba      	ldr	r2, [r7, #104]	; 0x68
   108fc:	f8d5 3124 	ldr.w	r3, [r5, #292]	; 0x124
   10900:	60f1      	str	r1, [r6, #12]
   10902:	6132      	str	r2, [r6, #16]
   10904:	61f0      	str	r0, [r6, #28]
   10906:	609e      	str	r6, [r3, #8]
   10908:	f897 31c8 	ldrb.w	r3, [r7, #456]	; 0x1c8
   1090c:	b1eb      	cbz	r3, 1094a <write_master_image@@Base+0x21a>
   1090e:	2020      	movs	r0, #32
   10910:	f7f5 e89a 	blx	5a48 <malloc@plt>
   10914:	4606      	mov	r6, r0
   10916:	f7f5 edb4 	blx	6480 <ImageAuxiliaryTypeProperty_init@plt>
   1091a:	4897      	ldr	r0, [pc, #604]	; (10b78 <write_master_image@@Base+0x448>)
   1091c:	4478      	add	r0, pc
   1091e:	f7f5 ebbe 	blx	609c <strdup@plt>
   10922:	f8d5 3124 	ldr.w	r3, [r5, #292]	; 0x124
   10926:	6170      	str	r0, [r6, #20]
   10928:	2084      	movs	r0, #132	; 0x84
   1092a:	f843 6009 	str.w	r6, [r3, r9]
   1092e:	f7f5 e88c 	blx	5a48 <malloc@plt>
   10932:	4606      	mov	r6, r0
   10934:	f7f5 ed68 	blx	6408 <Bytevc1ConfigurationBox_init@plt>
   10938:	4630      	mov	r0, r6
   1093a:	f107 019c 	add.w	r1, r7, #156	; 0x9c
   1093e:	2284      	movs	r2, #132	; 0x84
   10940:	f7f5 e85e 	blx	5a00 <memcpy@plt>
   10944:	f8d5 3124 	ldr.w	r3, [r5, #292]	; 0x124
   10948:	511e      	str	r6, [r3, r4]
   1094a:	f895 0114 	ldrb.w	r0, [r5, #276]	; 0x114
   1094e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
   10952:	0080      	lsls	r0, r0, #2
   10954:	f7f5 e878 	blx	5a48 <malloc@plt>
   10958:	f8c5 0110 	str.w	r0, [r5, #272]	; 0x110
   1095c:	2800      	cmp	r0, #0
   1095e:	d044      	beq.n	109ea <write_master_image@@Base+0x2ba>
   10960:	6e7a      	ldr	r2, [r7, #100]	; 0x64
   10962:	f246 3143 	movw	r1, #25411	; 0x6343
   10966:	f247 0365 	movw	r3, #28773	; 0x7065
   1096a:	f6c6 0176 	movt	r1, #26742	; 0x6876
   1096e:	f6c6 1373 	movt	r3, #26995	; 0x6973
   10972:	f04f 0b01 	mov.w	fp, #1
   10976:	6001      	str	r1, [r0, #0]
   10978:	2102      	movs	r1, #2
   1097a:	60c3      	str	r3, [r0, #12]
   1097c:	2300      	movs	r3, #0
   1097e:	f8c0 b004 	str.w	fp, [r0, #4]
   10982:	f880 b008 	strb.w	fp, [r0, #8]
   10986:	6101      	str	r1, [r0, #16]
   10988:	7503      	strb	r3, [r0, #20]
   1098a:	2a00      	cmp	r2, #0
   1098c:	f000 80e3 	beq.w	10b56 <write_master_image@@Base+0x426>
   10990:	487a      	ldr	r0, [pc, #488]	; (10b7c <write_master_image@@Base+0x44c>)
   10992:	2430      	movs	r4, #48	; 0x30
   10994:	f04f 0905 	mov.w	r9, #5
   10998:	2624      	movs	r6, #36	; 0x24
   1099a:	4478      	add	r0, pc
   1099c:	f04f 0a04 	mov.w	sl, #4
   109a0:	f7f5 e94e 	blx	5c40 <string_type_to_int32@plt>
   109a4:	f8d5 3110 	ldr.w	r3, [r5, #272]	; 0x110
   109a8:	2203      	movs	r2, #3
   109aa:	f883 b020 	strb.w	fp, [r3, #32]
   109ae:	61da      	str	r2, [r3, #28]
   109b0:	6198      	str	r0, [r3, #24]
   109b2:	f897 31c8 	ldrb.w	r3, [r7, #456]	; 0x1c8
   109b6:	b1c3      	cbz	r3, 109ea <write_master_image@@Base+0x2ba>
   109b8:	4871      	ldr	r0, [pc, #452]	; (10b80 <write_master_image@@Base+0x450>)
   109ba:	4478      	add	r0, pc
   109bc:	f7f5 e940 	blx	5c40 <string_type_to_int32@plt>
   109c0:	f8d5 3110 	ldr.w	r3, [r5, #272]	; 0x110
   109c4:	f246 3143 	movw	r1, #25411	; 0x6343
   109c8:	f04f 0c01 	mov.w	ip, #1
   109cc:	eb03 0e06 	add.w	lr, r3, r6
   109d0:	191a      	adds	r2, r3, r4
   109d2:	f6c6 0176 	movt	r1, #26742	; 0x6876
   109d6:	5198      	str	r0, [r3, r6]
   109d8:	f8ce a004 	str.w	sl, [lr, #4]
   109dc:	f88e c008 	strb.w	ip, [lr, #8]
   109e0:	5119      	str	r1, [r3, r4]
   109e2:	f8c2 9004 	str.w	r9, [r2, #4]
   109e6:	f882 c008 	strb.w	ip, [r2, #8]
   109ea:	f8d5 0144 	ldr.w	r0, [r5, #324]	; 0x144
   109ee:	eb00 0040 	add.w	r0, r0, r0, lsl #1
   109f2:	0080      	lsls	r0, r0, #2
   109f4:	f7f5 e828 	blx	5a48 <malloc@plt>
   109f8:	4604      	mov	r4, r0
   109fa:	f8c5 0140 	str.w	r0, [r5, #320]	; 0x140
   109fe:	2800      	cmp	r0, #0
   10a00:	d066      	beq.n	10ad0 <write_master_image@@Base+0x3a0>
   10a02:	2028      	movs	r0, #40	; 0x28
   10a04:	6c6e      	ldr	r6, [r5, #68]	; 0x44
   10a06:	f7f5 e820 	blx	5a48 <malloc@plt>
   10a0a:	6e7a      	ldr	r2, [r7, #100]	; 0x64
   10a0c:	2300      	movs	r3, #0
   10a0e:	2101      	movs	r1, #1
   10a10:	7103      	strb	r3, [r0, #4]
   10a12:	2302      	movs	r3, #2
   10a14:	7001      	strb	r1, [r0, #0]
   10a16:	8041      	strh	r1, [r0, #2]
   10a18:	80c3      	strh	r3, [r0, #6]
   10a1a:	b112      	cbz	r2, 10a22 <write_master_image@@Base+0x2f2>
   10a1c:	2303      	movs	r3, #3
   10a1e:	7201      	strb	r1, [r0, #8]
   10a20:	8143      	strh	r3, [r0, #10]
   10a22:	f897 21c8 	ldrb.w	r2, [r7, #456]	; 0x1c8
   10a26:	6026      	str	r6, [r4, #0]
   10a28:	7123      	strb	r3, [r4, #4]
   10a2a:	60a0      	str	r0, [r4, #8]
   10a2c:	b1f2      	cbz	r2, 10a6c <write_master_image@@Base+0x33c>
   10a2e:	200c      	movs	r0, #12
   10a30:	eb0d 0300 	add.w	r3, sp, r0
   10a34:	2200      	movs	r2, #0
   10a36:	af02      	add	r7, sp, #8
   10a38:	601a      	str	r2, [r3, #0]
   10a3a:	f7f5 e806 	blx	5a48 <malloc@plt>
   10a3e:	3601      	adds	r6, #1
   10a40:	f04f 0e03 	mov.w	lr, #3
   10a44:	603e      	str	r6, [r7, #0]
   10a46:	340c      	adds	r4, #12
   10a48:	f887 e004 	strb.w	lr, [r7, #4]
   10a4c:	2604      	movs	r6, #4
   10a4e:	4603      	mov	r3, r0
   10a50:	60b8      	str	r0, [r7, #8]
   10a52:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
   10a56:	2702      	movs	r7, #2
   10a58:	805e      	strh	r6, [r3, #2]
   10a5a:	2601      	movs	r6, #1
   10a5c:	80df      	strh	r7, [r3, #6]
   10a5e:	f8a3 e00a 	strh.w	lr, [r3, #10]
   10a62:	e884 0007 	stmia.w	r4, {r0, r1, r2}
   10a66:	701e      	strb	r6, [r3, #0]
   10a68:	711e      	strb	r6, [r3, #4]
   10a6a:	721e      	strb	r6, [r3, #8]
   10a6c:	4628      	mov	r0, r5
   10a6e:	4641      	mov	r1, r8
   10a70:	f7f5 ed0c 	blx	648c <MetaBox_write_box@plt>
   10a74:	f8d5 3090 	ldr.w	r3, [r5, #144]	; 0x90
   10a78:	b1eb      	cbz	r3, 10ab6 <write_master_image@@Base+0x386>
   10a7a:	ac37      	add	r4, sp, #220	; 0xdc
   10a7c:	2000      	movs	r0, #0
   10a7e:	f8d8 2008 	ldr.w	r2, [r8, #8]
   10a82:	3001      	adds	r0, #1
   10a84:	f854 3f04 	ldr.w	r3, [r4, #4]!
   10a88:	f8d8 1000 	ldr.w	r1, [r8]
   10a8c:	3208      	adds	r2, #8
   10a8e:	0e16      	lsrs	r6, r2, #24
   10a90:	1417      	asrs	r7, r2, #16
   10a92:	54ce      	strb	r6, [r1, r3]
   10a94:	1216      	asrs	r6, r2, #8
   10a96:	f8d8 1000 	ldr.w	r1, [r8]
   10a9a:	4419      	add	r1, r3
   10a9c:	704f      	strb	r7, [r1, #1]
   10a9e:	f8d8 1000 	ldr.w	r1, [r8]
   10aa2:	4419      	add	r1, r3
   10aa4:	708e      	strb	r6, [r1, #2]
   10aa6:	f8d8 1000 	ldr.w	r1, [r8]
   10aaa:	440b      	add	r3, r1
   10aac:	70da      	strb	r2, [r3, #3]
   10aae:	f8d5 3090 	ldr.w	r3, [r5, #144]	; 0x90
   10ab2:	4298      	cmp	r0, r3
   10ab4:	d3e3      	bcc.n	10a7e <write_master_image@@Base+0x34e>
   10ab6:	9c01      	ldr	r4, [sp, #4]
   10ab8:	4641      	mov	r1, r8
   10aba:	4620      	mov	r0, r4
   10abc:	f7f5 ecec 	blx	6498 <MediaDataBox_write_box_image@plt>
   10ac0:	4628      	mov	r0, r5
   10ac2:	f7f5 ec72 	blx	63a8 <MetaBox_release@plt>
   10ac6:	4620      	mov	r0, r4
   10ac8:	f7f5 ecec 	blx	64a4 <MediaDataBox_release@plt>
   10acc:	2000      	movs	r0, #0
   10ace:	e003      	b.n	10ad8 <write_master_image@@Base+0x3a8>
   10ad0:	4628      	mov	r0, r5
   10ad2:	f7f5 ec6a 	blx	63a8 <MetaBox_release@plt>
   10ad6:	2001      	movs	r0, #1
   10ad8:	9b00      	ldr	r3, [sp, #0]
   10ada:	9a65      	ldr	r2, [sp, #404]	; 0x194
   10adc:	681b      	ldr	r3, [r3, #0]
   10ade:	429a      	cmp	r2, r3
   10ae0:	d142      	bne.n	10b68 <write_master_image@@Base+0x438>
   10ae2:	b067      	add	sp, #412	; 0x19c
   10ae4:	ecbd 8b02 	vpop	{d8}
   10ae8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10aec:	f8cb 3144 	str.w	r3, [fp, #324]	; 0x144
   10af0:	2110      	movs	r1, #16
   10af2:	2304      	movs	r3, #4
   10af4:	2014      	movs	r0, #20
   10af6:	2205      	movs	r2, #5
   10af8:	f88b 3128 	strb.w	r3, [fp, #296]	; 0x128
   10afc:	f88b 3114 	strb.w	r3, [fp, #276]	; 0x114
   10b00:	e6c1      	b.n	10886 <write_master_image@@Base+0x156>
   10b02:	a84d      	add	r0, sp, #308	; 0x134
   10b04:	2601      	movs	r6, #1
   10b06:	f7f5 eae8 	blx	60d8 <ItemReferenceBox_init@plt>
   10b0a:	2018      	movs	r0, #24
   10b0c:	f885 6100 	strb.w	r6, [r5, #256]	; 0x100
   10b10:	f7f4 ef9a 	blx	5a48 <malloc@plt>
   10b14:	4604      	mov	r4, r0
   10b16:	f8c5 00fc 	str.w	r0, [r5, #252]	; 0xfc
   10b1a:	f7f5 ea30 	blx	5f7c <SingleItemTypeRefBox_init@plt>
   10b1e:	4819      	ldr	r0, [pc, #100]	; (10b84 <write_master_image@@Base+0x454>)
   10b20:	4478      	add	r0, pc
   10b22:	f7f5 e88e 	blx	5c40 <string_type_to_int32@plt>
   10b26:	6166      	str	r6, [r4, #20]
   10b28:	6060      	str	r0, [r4, #4]
   10b2a:	2004      	movs	r0, #4
   10b2c:	f7f4 ef8c 	blx	5a48 <malloc@plt>
   10b30:	6c6b      	ldr	r3, [r5, #68]	; 0x44
   10b32:	f897 21c8 	ldrb.w	r2, [r7, #456]	; 0x1c8
   10b36:	1999      	adds	r1, r3, r6
   10b38:	60e1      	str	r1, [r4, #12]
   10b3a:	6120      	str	r0, [r4, #16]
   10b3c:	6003      	str	r3, [r0, #0]
   10b3e:	2a00      	cmp	r2, #0
   10b40:	f43f ae55 	beq.w	107ee <write_master_image@@Base+0xbe>
   10b44:	2302      	movs	r3, #2
   10b46:	2040      	movs	r0, #64	; 0x40
   10b48:	f8c5 3090 	str.w	r3, [r5, #144]	; 0x90
   10b4c:	e653      	b.n	107f6 <write_master_image@@Base+0xc6>
   10b4e:	240c      	movs	r4, #12
   10b50:	f04f 0908 	mov.w	r9, #8
   10b54:	e6d8      	b.n	10908 <write_master_image@@Base+0x1d8>
   10b56:	2424      	movs	r4, #36	; 0x24
   10b58:	f04f 0904 	mov.w	r9, #4
   10b5c:	2618      	movs	r6, #24
   10b5e:	f04f 0a03 	mov.w	sl, #3
   10b62:	e726      	b.n	109b2 <write_master_image@@Base+0x282>
   10b64:	4608      	mov	r0, r1
   10b66:	e696      	b.n	10896 <write_master_image@@Base+0x166>
   10b68:	f7f4 ef50 	blx	5a0c <__stack_chk_fail@plt>
   10b6c:	6374      	str	r4, [r6, #52]	; 0x34
   10b6e:	0000      	movs	r0, r0
   10b70:	44a2      	add	sl, r4
   10b72:	0000      	movs	r0, r0
   10b74:	43d2      	mvns	r2, r2
   10b76:	0000      	movs	r0, r0
   10b78:	44ec      	add	ip, sp
   10b7a:	0000      	movs	r0, r0
   10b7c:	431a      	orrs	r2, r3
   10b7e:	0000      	movs	r0, r0
   10b80:	42e2      	cmn	r2, r4
   10b82:	0000      	movs	r0, r0
   10b84:	42e0      	cmn	r0, r4
	...

00010b88 <HeifMediaFile_generate_bitstream_image@@Base>:
   10b88:	b538      	push	{r3, r4, r5, lr}
   10b8a:	f890 3028 	ldrb.w	r3, [r0, #40]	; 0x28
   10b8e:	b1c3      	cbz	r3, 10bc2 <HeifMediaFile_generate_bitstream_image@@Base+0x3a>
   10b90:	6d83      	ldr	r3, [r0, #88]	; 0x58
   10b92:	b1b3      	cbz	r3, 10bc2 <HeifMediaFile_generate_bitstream_image@@Base+0x3a>
   10b94:	6ec2      	ldr	r2, [r0, #108]	; 0x6c
   10b96:	b1a2      	cbz	r2, 10bc2 <HeifMediaFile_generate_bitstream_image@@Base+0x3a>
   10b98:	6f02      	ldr	r2, [r0, #112]	; 0x70
   10b9a:	b192      	cbz	r2, 10bc2 <HeifMediaFile_generate_bitstream_image@@Base+0x3a>
   10b9c:	460d      	mov	r5, r1
   10b9e:	6899      	ldr	r1, [r3, #8]
   10ba0:	4604      	mov	r4, r0
   10ba2:	4628      	mov	r0, r5
   10ba4:	f501 5120 	add.w	r1, r1, #10240	; 0x2800
   10ba8:	0049      	lsls	r1, r1, #1
   10baa:	f7f5 e8ce 	blx	5d48 <Bitstream_alloc@plt>
   10bae:	4629      	mov	r1, r5
   10bb0:	4620      	mov	r0, r4
   10bb2:	f7f5 ec7e 	blx	64b0 <write_file_type_box@plt>
   10bb6:	4620      	mov	r0, r4
   10bb8:	4629      	mov	r1, r5
   10bba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
   10bbe:	f003 ba71 	b.w	140a4 <__aeabi_llsl@@Base+0x208>
   10bc2:	2001      	movs	r0, #1
   10bc4:	bd38      	pop	{r3, r4, r5, pc}
   10bc6:	bf00      	nop

00010bc8 <HeifMediaFile_write_image_infos@@Base>:
   10bc8:	b570      	push	{r4, r5, r6, lr}
   10bca:	4604      	mov	r4, r0
   10bcc:	4d27      	ldr	r5, [pc, #156]	; (10c6c <HeifMediaFile_write_image_infos@@Base+0xa4>)
   10bce:	460e      	mov	r6, r1
   10bd0:	447d      	add	r5, pc
   10bd2:	4628      	mov	r0, r5
   10bd4:	f7f5 ea62 	blx	609c <strdup@plt>
   10bd8:	2303      	movs	r3, #3
   10bda:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
   10bde:	62e0      	str	r0, [r4, #44]	; 0x2c
   10be0:	4628      	mov	r0, r5
   10be2:	f7f5 ea5c 	blx	609c <strdup@plt>
   10be6:	6020      	str	r0, [r4, #0]
   10be8:	4821      	ldr	r0, [pc, #132]	; (10c70 <HeifMediaFile_write_image_infos@@Base+0xa8>)
   10bea:	4478      	add	r0, pc
   10bec:	f7f5 ea56 	blx	609c <strdup@plt>
   10bf0:	6060      	str	r0, [r4, #4]
   10bf2:	4820      	ldr	r0, [pc, #128]	; (10c74 <HeifMediaFile_write_image_infos@@Base+0xac>)
   10bf4:	4478      	add	r0, pc
   10bf6:	f7f5 ea52 	blx	609c <strdup@plt>
   10bfa:	60a0      	str	r0, [r4, #8]
   10bfc:	481e      	ldr	r0, [pc, #120]	; (10c78 <HeifMediaFile_write_image_infos@@Base+0xb0>)
   10bfe:	4478      	add	r0, pc
   10c00:	f7f5 ea4c 	blx	609c <strdup@plt>
   10c04:	66e0      	str	r0, [r4, #108]	; 0x6c
   10c06:	481d      	ldr	r0, [pc, #116]	; (10c7c <HeifMediaFile_write_image_infos@@Base+0xb4>)
   10c08:	4478      	add	r0, pc
   10c0a:	f7f5 ea48 	blx	609c <strdup@plt>
   10c0e:	6720      	str	r0, [r4, #112]	; 0x70
   10c10:	481b      	ldr	r0, [pc, #108]	; (10c80 <HeifMediaFile_write_image_infos@@Base+0xb8>)
   10c12:	4478      	add	r0, pc
   10c14:	f7f5 ea42 	blx	609c <strdup@plt>
   10c18:	f894 31c8 	ldrb.w	r3, [r4, #456]	; 0x1c8
   10c1c:	6760      	str	r0, [r4, #116]	; 0x74
   10c1e:	b993      	cbnz	r3, 10c46 <HeifMediaFile_write_image_infos@@Base+0x7e>
   10c20:	6b65      	ldr	r5, [r4, #52]	; 0x34
   10c22:	00ad      	lsls	r5, r5, #2
   10c24:	4628      	mov	r0, r5
   10c26:	f7f4 ef10 	blx	5a48 <malloc@plt>
   10c2a:	64e0      	str	r0, [r4, #76]	; 0x4c
   10c2c:	4628      	mov	r0, r5
   10c2e:	f7f4 ef0c 	blx	5a48 <malloc@plt>
   10c32:	6520      	str	r0, [r4, #80]	; 0x50
   10c34:	4620      	mov	r0, r4
   10c36:	f7f5 ec48 	blx	64c8 <parse_nal_data@plt>
   10c3a:	4620      	mov	r0, r4
   10c3c:	4631      	mov	r1, r6
   10c3e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
   10c42:	f003 ba37 	b.w	140b4 <__aeabi_llsl@@Base+0x218>
   10c46:	2302      	movs	r3, #2
   10c48:	2008      	movs	r0, #8
   10c4a:	6363      	str	r3, [r4, #52]	; 0x34
   10c4c:	f7f4 eefc 	blx	5a48 <malloc@plt>
   10c50:	64e0      	str	r0, [r4, #76]	; 0x4c
   10c52:	2008      	movs	r0, #8
   10c54:	f7f4 eef8 	blx	5a48 <malloc@plt>
   10c58:	6520      	str	r0, [r4, #80]	; 0x50
   10c5a:	4620      	mov	r0, r4
   10c5c:	f7f5 ec3a 	blx	64d4 <parse_nal_data_for_image@plt>
   10c60:	4620      	mov	r0, r4
   10c62:	4631      	mov	r1, r6
   10c64:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
   10c68:	f003 ba24 	b.w	140b4 <__aeabi_llsl@@Base+0x218>
   10c6c:	4278      	negs	r0, r7
   10c6e:	0000      	movs	r0, r0
   10c70:	41fe      	rors	r6, r7
   10c72:	0000      	movs	r0, r0
   10c74:	41ec      	rors	r4, r5
   10c76:	0000      	movs	r0, r0
   10c78:	4166      	adcs	r6, r4
   10c7a:	0000      	movs	r0, r0
   10c7c:	40ec      	lsrs	r4, r5
   10c7e:	0000      	movs	r0, r0
   10c80:	423e      	tst	r6, r7
	...

00010c84 <write_media_data_sequence@@Base>:
   10c84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   10c88:	f500 75d2 	add.w	r5, r0, #420	; 0x1a4
   10c8c:	4606      	mov	r6, r0
   10c8e:	460f      	mov	r7, r1
   10c90:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   10c92:	b088      	sub	sp, #32
   10c94:	f8df 8074 	ldr.w	r8, [pc, #116]	; 10d0c <write_media_data_sequence@@Base+0x88>
   10c98:	466c      	mov	r4, sp
   10c9a:	44f8      	add	r8, pc
   10c9c:	f8d8 8000 	ldr.w	r8, [r8]
   10ca0:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   10ca2:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
   10ca6:	f8d8 3000 	ldr.w	r3, [r8]
   10caa:	e884 0007 	stmia.w	r4, {r0, r1, r2}
   10cae:	4639      	mov	r1, r7
   10cb0:	4668      	mov	r0, sp
   10cb2:	9307      	str	r3, [sp, #28]
   10cb4:	f7f5 ec1a 	blx	64ec <MediaDataBox_write_box_sequence@plt>
   10cb8:	6839      	ldr	r1, [r7, #0]
   10cba:	6cb2      	ldr	r2, [r6, #72]	; 0x48
   10cbc:	ea4f 6c10 	mov.w	ip, r0, lsr #24
   10cc0:	f801 c002 	strb.w	ip, [r1, r2]
   10cc4:	6839      	ldr	r1, [r7, #0]
   10cc6:	ea4f 4e20 	mov.w	lr, r0, asr #16
   10cca:	6cb2      	ldr	r2, [r6, #72]	; 0x48
   10ccc:	1205      	asrs	r5, r0, #8
   10cce:	4603      	mov	r3, r0
   10cd0:	f506 7090 	add.w	r0, r6, #288	; 0x120
   10cd4:	440a      	add	r2, r1
   10cd6:	f882 e001 	strb.w	lr, [r2, #1]
   10cda:	6839      	ldr	r1, [r7, #0]
   10cdc:	6cb2      	ldr	r2, [r6, #72]	; 0x48
   10cde:	440a      	add	r2, r1
   10ce0:	7095      	strb	r5, [r2, #2]
   10ce2:	6839      	ldr	r1, [r7, #0]
   10ce4:	6cb2      	ldr	r2, [r6, #72]	; 0x48
   10ce6:	440a      	add	r2, r1
   10ce8:	70d3      	strb	r3, [r2, #3]
   10cea:	f7f5 e8c4 	blx	5e74 <Bytevc1ConfigurationBox_release@plt>
   10cee:	4668      	mov	r0, sp
   10cf0:	f7f5 ebd8 	blx	64a4 <MediaDataBox_release@plt>
   10cf4:	9a07      	ldr	r2, [sp, #28]
   10cf6:	f8d8 3000 	ldr.w	r3, [r8]
   10cfa:	2000      	movs	r0, #0
   10cfc:	429a      	cmp	r2, r3
   10cfe:	d102      	bne.n	10d06 <write_media_data_sequence@@Base+0x82>
   10d00:	b008      	add	sp, #32
   10d02:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   10d06:	f7f4 ee82 	blx	5a0c <__stack_chk_fail@plt>
   10d0a:	bf00      	nop
   10d0c:	5e22      	ldrsh	r2, [r4, r0]
	...

00010d10 <HeifMediaFile_generate_bitstream_sequence@@Base>:
   10d10:	b538      	push	{r3, r4, r5, lr}
   10d12:	f890 3028 	ldrb.w	r3, [r0, #40]	; 0x28
   10d16:	b1e3      	cbz	r3, 10d52 <HeifMediaFile_generate_bitstream_sequence@@Base+0x42>
   10d18:	6d83      	ldr	r3, [r0, #88]	; 0x58
   10d1a:	b1d3      	cbz	r3, 10d52 <HeifMediaFile_generate_bitstream_sequence@@Base+0x42>
   10d1c:	6ec2      	ldr	r2, [r0, #108]	; 0x6c
   10d1e:	b1c2      	cbz	r2, 10d52 <HeifMediaFile_generate_bitstream_sequence@@Base+0x42>
   10d20:	6f02      	ldr	r2, [r0, #112]	; 0x70
   10d22:	b1b2      	cbz	r2, 10d52 <HeifMediaFile_generate_bitstream_sequence@@Base+0x42>
   10d24:	460d      	mov	r5, r1
   10d26:	6899      	ldr	r1, [r3, #8]
   10d28:	4604      	mov	r4, r0
   10d2a:	4628      	mov	r0, r5
   10d2c:	f501 5120 	add.w	r1, r1, #10240	; 0x2800
   10d30:	0049      	lsls	r1, r1, #1
   10d32:	f7f5 e80a 	blx	5d48 <Bitstream_alloc@plt>
   10d36:	4629      	mov	r1, r5
   10d38:	4620      	mov	r0, r4
   10d3a:	f7f5 ebba 	blx	64b0 <write_file_type_box@plt>
   10d3e:	4629      	mov	r1, r5
   10d40:	4620      	mov	r0, r4
   10d42:	f7f5 ebda 	blx	64f8 <write_moov_box@plt>
   10d46:	4620      	mov	r0, r4
   10d48:	4629      	mov	r1, r5
   10d4a:	f7f5 ebdc 	blx	6504 <write_media_data_sequence@plt>
   10d4e:	2000      	movs	r0, #0
   10d50:	bd38      	pop	{r3, r4, r5, pc}
   10d52:	2001      	movs	r0, #1
   10d54:	bd38      	pop	{r3, r4, r5, pc}
   10d56:	bf00      	nop

00010d58 <HeifMediaFile_write_animation_infos@@Base>:
   10d58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   10d5a:	6b43      	ldr	r3, [r0, #52]	; 0x34
   10d5c:	b90b      	cbnz	r3, 10d62 <HeifMediaFile_write_animation_infos@@Base+0xa>
   10d5e:	2001      	movs	r0, #1
   10d60:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   10d62:	009d      	lsls	r5, r3, #2
   10d64:	4604      	mov	r4, r0
   10d66:	460e      	mov	r6, r1
   10d68:	4f1b      	ldr	r7, [pc, #108]	; (10dd8 <HeifMediaFile_write_animation_infos@@Base+0x80>)
   10d6a:	4628      	mov	r0, r5
   10d6c:	f7f4 ee6c 	blx	5a48 <malloc@plt>
   10d70:	447f      	add	r7, pc
   10d72:	64e0      	str	r0, [r4, #76]	; 0x4c
   10d74:	4628      	mov	r0, r5
   10d76:	f7f4 ee68 	blx	5a48 <malloc@plt>
   10d7a:	6520      	str	r0, [r4, #80]	; 0x50
   10d7c:	4620      	mov	r0, r4
   10d7e:	f7f5 eba4 	blx	64c8 <parse_nal_data@plt>
   10d82:	4638      	mov	r0, r7
   10d84:	f7f5 e98a 	blx	609c <strdup@plt>
   10d88:	2302      	movs	r3, #2
   10d8a:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
   10d8e:	62e0      	str	r0, [r4, #44]	; 0x2c
   10d90:	4638      	mov	r0, r7
   10d92:	f7f5 e984 	blx	609c <strdup@plt>
   10d96:	6020      	str	r0, [r4, #0]
   10d98:	4810      	ldr	r0, [pc, #64]	; (10ddc <HeifMediaFile_write_animation_infos@@Base+0x84>)
   10d9a:	4478      	add	r0, pc
   10d9c:	f7f5 e97e 	blx	609c <strdup@plt>
   10da0:	6060      	str	r0, [r4, #4]
   10da2:	480f      	ldr	r0, [pc, #60]	; (10de0 <HeifMediaFile_write_animation_infos@@Base+0x88>)
   10da4:	4478      	add	r0, pc
   10da6:	f7f5 e97a 	blx	609c <strdup@plt>
   10daa:	6320      	str	r0, [r4, #48]	; 0x30
   10dac:	480d      	ldr	r0, [pc, #52]	; (10de4 <HeifMediaFile_write_animation_infos@@Base+0x8c>)
   10dae:	4478      	add	r0, pc
   10db0:	f7f5 e974 	blx	609c <strdup@plt>
   10db4:	66e0      	str	r0, [r4, #108]	; 0x6c
   10db6:	480c      	ldr	r0, [pc, #48]	; (10de8 <HeifMediaFile_write_animation_infos@@Base+0x90>)
   10db8:	4478      	add	r0, pc
   10dba:	f7f5 e970 	blx	609c <strdup@plt>
   10dbe:	6720      	str	r0, [r4, #112]	; 0x70
   10dc0:	480a      	ldr	r0, [pc, #40]	; (10dec <HeifMediaFile_write_animation_infos@@Base+0x94>)
   10dc2:	4478      	add	r0, pc
   10dc4:	f7f5 e96a 	blx	609c <strdup@plt>
   10dc8:	4631      	mov	r1, r6
   10dca:	6760      	str	r0, [r4, #116]	; 0x74
   10dcc:	4620      	mov	r0, r4
   10dce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
   10dd2:	f003 b977 	b.w	140c4 <__aeabi_llsl@@Base+0x228>
   10dd6:	bf00      	nop
   10dd8:	40e8      	lsrs	r0, r5
   10dda:	0000      	movs	r0, r0
   10ddc:	4046      	eors	r6, r0
   10dde:	0000      	movs	r0, r0
   10de0:	40bc      	lsls	r4, r7
   10de2:	0000      	movs	r0, r0
   10de4:	3fb6      	subs	r7, #182	; 0xb6
   10de6:	0000      	movs	r0, r0
   10de8:	3f3c      	subs	r7, #60	; 0x3c
   10dea:	0000      	movs	r0, r0
   10dec:	408e      	lsls	r6, r1
	...

00010df0 <RescalerImportRowExpand_C@@Base>:
   10df0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10df4:	b083      	sub	sp, #12
   10df6:	6887      	ldr	r7, [r0, #8]
   10df8:	6b43      	ldr	r3, [r0, #52]	; 0x34
   10dfa:	2f00      	cmp	r7, #0
   10dfc:	fb03 fc07 	mul.w	ip, r3, r7
   10e00:	dd33      	ble.n	10e6a <RescalerImportRowExpand_C@@Base+0x7a>
   10e02:	007b      	lsls	r3, r7, #1
   10e04:	9301      	str	r3, [sp, #4]
   10e06:	6d03      	ldr	r3, [r0, #80]	; 0x50
   10e08:	f101 39ff 	add.w	r9, r1, #4294967295	; 0xffffffff
   10e0c:	46b8      	mov	r8, r7
   10e0e:	eba3 0e87 	sub.w	lr, r3, r7, lsl #2
   10e12:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
   10e14:	4644      	mov	r4, r8
   10e16:	f819 5f01 	ldrb.w	r5, [r9, #1]!
   10e1a:	2b01      	cmp	r3, #1
   10e1c:	6a42      	ldr	r2, [r0, #36]	; 0x24
   10e1e:	bfcc      	ite	gt
   10e20:	f811 6008 	ldrbgt.w	r6, [r1, r8]
   10e24:	462e      	movle	r6, r5
   10e26:	4613      	mov	r3, r2
   10e28:	bfd8      	it	le
   10e2a:	46c2      	movle	sl, r8
   10e2c:	eba5 0506 	sub.w	r5, r5, r6
   10e30:	bfc8      	it	gt
   10e32:	46c2      	movgt	sl, r8
   10e34:	45a4      	cmp	ip, r4
   10e36:	fb02 fb05 	mul.w	fp, r2, r5
   10e3a:	fb03 b306 	mla	r3, r3, r6, fp
   10e3e:	f84e 3024 	str.w	r3, [lr, r4, lsl #2]
   10e42:	dd0d      	ble.n	10e60 <RescalerImportRowExpand_C@@Base+0x70>
   10e44:	6a83      	ldr	r3, [r0, #40]	; 0x28
   10e46:	1ad2      	subs	r2, r2, r3
   10e48:	bf58      	it	pl
   10e4a:	6a43      	ldrpl	r3, [r0, #36]	; 0x24
   10e4c:	d410      	bmi.n	10e70 <RescalerImportRowExpand_C@@Base+0x80>
   10e4e:	443c      	add	r4, r7
   10e50:	fb02 fb05 	mul.w	fp, r2, r5
   10e54:	45a4      	cmp	ip, r4
   10e56:	fb03 b306 	mla	r3, r3, r6, fp
   10e5a:	f84e 3024 	str.w	r3, [lr, r4, lsl #2]
   10e5e:	dcf1      	bgt.n	10e44 <RescalerImportRowExpand_C@@Base+0x54>
   10e60:	9b01      	ldr	r3, [sp, #4]
   10e62:	f108 0801 	add.w	r8, r8, #1
   10e66:	4598      	cmp	r8, r3
   10e68:	d1d3      	bne.n	10e12 <RescalerImportRowExpand_C@@Base+0x22>
   10e6a:	b003      	add	sp, #12
   10e6c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10e70:	44ba      	add	sl, r7
   10e72:	4635      	mov	r5, r6
   10e74:	6a43      	ldr	r3, [r0, #36]	; 0x24
   10e76:	443c      	add	r4, r7
   10e78:	f811 600a 	ldrb.w	r6, [r1, sl]
   10e7c:	441a      	add	r2, r3
   10e7e:	1bad      	subs	r5, r5, r6
   10e80:	e7e6      	b.n	10e50 <RescalerImportRowExpand_C@@Base+0x60>
   10e82:	bf00      	nop

00010e84 <RescalerImportRowShrink_C@@Base>:
   10e84:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10e88:	6884      	ldr	r4, [r0, #8]
   10e8a:	6b47      	ldr	r7, [r0, #52]	; 0x34
   10e8c:	2c00      	cmp	r4, #0
   10e8e:	fb07 f704 	mul.w	r7, r7, r4
   10e92:	bfc8      	it	gt
   10e94:	f04f 0c00 	movgt.w	ip, #0
   10e98:	dd36      	ble.n	10f08 <RescalerImportRowShrink_C@@Base+0x84>
   10e9a:	4567      	cmp	r7, ip
   10e9c:	dd28      	ble.n	10ef0 <RescalerImportRowShrink_C@@Base+0x6c>
   10e9e:	f8d0 e050 	ldr.w	lr, [r0, #80]	; 0x50
   10ea2:	2600      	movs	r6, #0
   10ea4:	46b1      	mov	r9, r6
   10ea6:	4665      	mov	r5, ip
   10ea8:	4662      	mov	r2, ip
   10eaa:	6a43      	ldr	r3, [r0, #36]	; 0x24
   10eac:	441e      	add	r6, r3
   10eae:	2e00      	cmp	r6, #0
   10eb0:	bfc8      	it	gt
   10eb2:	f8d0 a028 	ldrgt.w	sl, [r0, #40]	; 0x28
   10eb6:	dd21      	ble.n	10efc <RescalerImportRowShrink_C@@Base+0x78>
   10eb8:	ebca 0606 	rsb	r6, sl, r6
   10ebc:	5c8b      	ldrb	r3, [r1, r2]
   10ebe:	2e00      	cmp	r6, #0
   10ec0:	4422      	add	r2, r4
   10ec2:	4499      	add	r9, r3
   10ec4:	dcf8      	bgt.n	10eb8 <RescalerImportRowShrink_C@@Base+0x34>
   10ec6:	f1c6 0b00 	rsb	fp, r6, #0
   10eca:	fb03 f30b 	mul.w	r3, r3, fp
   10ece:	4698      	mov	r8, r3
   10ed0:	fb09 f90a 	mul.w	r9, r9, sl
   10ed4:	ebc3 0309 	rsb	r3, r3, r9
   10ed8:	f84e 3025 	str.w	r3, [lr, r5, lsl #2]
   10edc:	68c3      	ldr	r3, [r0, #12]
   10ede:	4425      	add	r5, r4
   10ee0:	fba8 8903 	umull	r8, r9, r8, r3
   10ee4:	f118 4800 	adds.w	r8, r8, #2147483648	; 0x80000000
   10ee8:	f149 0900 	adc.w	r9, r9, #0
   10eec:	42af      	cmp	r7, r5
   10eee:	dcdc      	bgt.n	10eaa <RescalerImportRowShrink_C@@Base+0x26>
   10ef0:	f10c 0c01 	add.w	ip, ip, #1
   10ef4:	45a4      	cmp	ip, r4
   10ef6:	d1d0      	bne.n	10e9a <RescalerImportRowShrink_C@@Base+0x16>
   10ef8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10efc:	f04f 0800 	mov.w	r8, #0
   10f00:	f8d0 a028 	ldr.w	sl, [r0, #40]	; 0x28
   10f04:	4643      	mov	r3, r8
   10f06:	e7e3      	b.n	10ed0 <RescalerImportRowShrink_C@@Base+0x4c>
   10f08:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00010f0c <RescalerExportRowShrink_NEON@@Base>:
   10f0c:	6983      	ldr	r3, [r0, #24]
   10f0e:	efc0 6050 	vmov.i32	q11, #0	; 0x00000000
   10f12:	6902      	ldr	r2, [r0, #16]
   10f14:	425b      	negs	r3, r3
   10f16:	6b41      	ldr	r1, [r0, #52]	; 0x34
   10f18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10f1c:	fb02 f203 	mul.w	r2, r2, r3
   10f20:	6887      	ldr	r7, [r0, #8]
   10f22:	6945      	ldr	r5, [r0, #20]
   10f24:	6c44      	ldr	r4, [r0, #68]	; 0x44
   10f26:	fb07 f801 	mul.w	r8, r7, r1
   10f2a:	086f      	lsrs	r7, r5, #1
   10f2c:	0851      	lsrs	r1, r2, #1
   10f2e:	6cc6      	ldr	r6, [r0, #76]	; 0x4c
   10f30:	f8d0 c050 	ldr.w	ip, [r0, #80]	; 0x50
   10f34:	eea4 7b90 	vdup.32	q10, r7
   10f38:	f028 0307 	bic.w	r3, r8, #7
   10f3c:	eeaa 1b90 	vdup.32	q13, r1
   10f40:	2a00      	cmp	r2, #0
   10f42:	d142      	bne.n	10fca <RescalerExportRowShrink_NEON@@Base+0xbe>
   10f44:	2b00      	cmp	r3, #0
   10f46:	bfd8      	it	le
   10f48:	4613      	movle	r3, r2
   10f4a:	dd20      	ble.n	10f8e <RescalerExportRowShrink_NEON@@Base+0x82>
   10f4c:	4631      	mov	r1, r6
   10f4e:	f101 0010 	add.w	r0, r1, #16
   10f52:	f961 2a8f 	vld1.32	{d18-d19}, [r1]
   10f56:	18a7      	adds	r7, r4, r2
   10f58:	3208      	adds	r2, #8
   10f5a:	f960 0a8f 	vld1.32	{d16-d17}, [r0]
   10f5e:	4293      	cmp	r3, r2
   10f60:	ff62 2be4 	vqrdmulh.s32	q9, q9, q10
   10f64:	ff60 0be4 	vqrdmulh.s32	q8, q8, q10
   10f68:	fff6 2222 	vmovn.i32	d18, q9
   10f6c:	fff6 0220 	vmovn.i32	d16, q8
   10f70:	ef60 11b0 	vorr	d17, d16, d16
   10f74:	ef62 01b2 	vorr	d16, d18, d18
   10f78:	fff2 02e0 	vqmovn.u16	d16, q8
   10f7c:	f947 070f 	vst1.8	{d16}, [r7]
   10f80:	f941 6a8f 	vst1.32	{d22-d23}, [r1]
   10f84:	f101 0120 	add.w	r1, r1, #32
   10f88:	f940 6a8f 	vst1.32	{d22-d23}, [r0]
   10f8c:	dcdf      	bgt.n	10f4e <RescalerExportRowShrink_NEON@@Base+0x42>
   10f8e:	4598      	cmp	r8, r3
   10f90:	dd19      	ble.n	10fc6 <RescalerExportRowShrink_NEON@@Base+0xba>
   10f92:	18e0      	adds	r0, r4, r3
   10f94:	eb06 0888 	add.w	r8, r6, r8, lsl #2
   10f98:	eb06 0383 	add.w	r3, r6, r3, lsl #2
   10f9c:	2700      	movs	r7, #0
   10f9e:	f04f 4600 	mov.w	r6, #2147483648	; 0x80000000
   10fa2:	2100      	movs	r1, #0
   10fa4:	681c      	ldr	r4, [r3, #0]
   10fa6:	46b2      	mov	sl, r6
   10fa8:	46bb      	mov	fp, r7
   10faa:	fbe5 ab04 	umlal	sl, fp, r5, r4
   10fae:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
   10fb2:	bfcc      	ite	gt
   10fb4:	f04f 32ff 	movgt.w	r2, #4294967295	; 0xffffffff
   10fb8:	465a      	movle	r2, fp
   10fba:	f800 2b01 	strb.w	r2, [r0], #1
   10fbe:	f843 1b04 	str.w	r1, [r3], #4
   10fc2:	4543      	cmp	r3, r8
   10fc4:	d1ee      	bne.n	10fa4 <RescalerExportRowShrink_NEON@@Base+0x98>
   10fc6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10fca:	2b00      	cmp	r3, #0
   10fcc:	dd5a      	ble.n	11084 <RescalerExportRowShrink_NEON@@Base+0x178>
   10fce:	f10c 0e10 	add.w	lr, ip, #16
   10fd2:	f106 0110 	add.w	r1, r6, #16
   10fd6:	2000      	movs	r0, #0
   10fd8:	f1ae 0a10 	sub.w	sl, lr, #16
   10fdc:	f96e 6a8f 	vld1.32	{d22-d23}, [lr]
   10fe0:	f1a1 0710 	sub.w	r7, r1, #16
   10fe4:	eb04 0900 	add.w	r9, r4, r0
   10fe8:	f96a 8a8f 	vld1.32	{d24-d25}, [sl]
   10fec:	3008      	adds	r0, #8
   10fee:	ef66 6bea 	vqdmulh.s32	q11, q11, q13
   10ff2:	4283      	cmp	r3, r0
   10ff4:	f10e 0e20 	add.w	lr, lr, #32
   10ff8:	f961 0a8f 	vld1.32	{d16-d17}, [r1]
   10ffc:	ef68 8bea 	vqdmulh.s32	q12, q12, q13
   11000:	f967 2a8f 	vld1.32	{d18-d19}, [r7]
   11004:	ff60 02f6 	vqsub.u32	q8, q8, q11
   11008:	ff62 22f8 	vqsub.u32	q9, q9, q12
   1100c:	ff60 0be4 	vqrdmulh.s32	q8, q8, q10
   11010:	ff62 2be4 	vqrdmulh.s32	q9, q9, q10
   11014:	fff6 0220 	vmovn.i32	d16, q8
   11018:	ef60 11b0 	vorr	d17, d16, d16
   1101c:	fff6 2222 	vmovn.i32	d18, q9
   11020:	ef62 01b2 	vorr	d16, d18, d18
   11024:	fff2 02e0 	vqmovn.u16	d16, q8
   11028:	f949 070f 	vst1.8	{d16}, [r9]
   1102c:	f947 8a8f 	vst1.32	{d24-d25}, [r7]
   11030:	f941 6a8f 	vst1.32	{d22-d23}, [r1]
   11034:	f101 0120 	add.w	r1, r1, #32
   11038:	dcce      	bgt.n	10fd8 <RescalerExportRowShrink_NEON@@Base+0xcc>
   1103a:	4598      	cmp	r8, r3
   1103c:	ddc3      	ble.n	10fc6 <RescalerExportRowShrink_NEON@@Base+0xba>
   1103e:	ea4f 0e83 	mov.w	lr, r3, lsl #2
   11042:	4423      	add	r3, r4
   11044:	44f4      	add	ip, lr
   11046:	eb06 0a88 	add.w	sl, r6, r8, lsl #2
   1104a:	44b6      	add	lr, r6
   1104c:	2700      	movs	r7, #0
   1104e:	f04f 4600 	mov.w	r6, #2147483648	; 0x80000000
   11052:	f85c 0b04 	ldr.w	r0, [ip], #4
   11056:	46b0      	mov	r8, r6
   11058:	f8de 4000 	ldr.w	r4, [lr]
   1105c:	46b9      	mov	r9, r7
   1105e:	fba0 0102 	umull	r0, r1, r0, r2
   11062:	1a64      	subs	r4, r4, r1
   11064:	fbe5 8904 	umlal	r8, r9, r5, r4
   11068:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
   1106c:	bfcc      	ite	gt
   1106e:	f04f 30ff 	movgt.w	r0, #4294967295	; 0xffffffff
   11072:	4648      	movle	r0, r9
   11074:	f803 0b01 	strb.w	r0, [r3], #1
   11078:	f84e 1b04 	str.w	r1, [lr], #4
   1107c:	45d6      	cmp	lr, sl
   1107e:	d1e8      	bne.n	11052 <RescalerExportRowShrink_NEON@@Base+0x146>
   11080:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11084:	2300      	movs	r3, #0
   11086:	e7d8      	b.n	1103a <RescalerExportRowShrink_NEON@@Base+0x12e>

00011088 <RescalerImportRow@@Base>:
   11088:	6803      	ldr	r3, [r0, #0]
   1108a:	b123      	cbz	r3, 11096 <RescalerImportRow@@Base+0xe>
   1108c:	4b04      	ldr	r3, [pc, #16]	; (110a0 <RescalerImportRow@@Base+0x18>)
   1108e:	447b      	add	r3, pc
   11090:	681b      	ldr	r3, [r3, #0]
   11092:	681b      	ldr	r3, [r3, #0]
   11094:	4718      	bx	r3
   11096:	4b03      	ldr	r3, [pc, #12]	; (110a4 <RescalerImportRow@@Base+0x1c>)
   11098:	447b      	add	r3, pc
   1109a:	681b      	ldr	r3, [r3, #0]
   1109c:	681b      	ldr	r3, [r3, #0]
   1109e:	4718      	bx	r3
   110a0:	5a32      	ldrh	r2, [r6, r0]
   110a2:	0000      	movs	r0, r0
   110a4:	5a2c      	ldrh	r4, [r5, r0]
	...

000110a8 <RescalerExportRow@@Base>:
   110a8:	6982      	ldr	r2, [r0, #24]
   110aa:	b538      	push	{r3, r4, r5, lr}
   110ac:	2a00      	cmp	r2, #0
   110ae:	4604      	mov	r4, r0
   110b0:	dd00      	ble.n	110b4 <RescalerExportRow@@Base+0xc>
   110b2:	bd38      	pop	{r3, r4, r5, pc}
   110b4:	6843      	ldr	r3, [r0, #4]
   110b6:	2b00      	cmp	r3, #0
   110b8:	d12b      	bne.n	11112 <RescalerExportRow@@Base+0x6a>
   110ba:	6943      	ldr	r3, [r0, #20]
   110bc:	bb13      	cbnz	r3, 11104 <RescalerExportRow@@Base+0x5c>
   110be:	6880      	ldr	r0, [r0, #8]
   110c0:	6b61      	ldr	r1, [r4, #52]	; 0x34
   110c2:	fb01 f100 	mul.w	r1, r1, r0
   110c6:	2900      	cmp	r1, #0
   110c8:	bfc4      	itt	gt
   110ca:	6ce1      	ldrgt	r1, [r4, #76]	; 0x4c
   110cc:	461d      	movgt	r5, r3
   110ce:	dd0e      	ble.n	110ee <RescalerExportRow@@Base+0x46>
   110d0:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
   110d4:	6c62      	ldr	r2, [r4, #68]	; 0x44
   110d6:	54d1      	strb	r1, [r2, r3]
   110d8:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
   110da:	f841 5023 	str.w	r5, [r1, r3, lsl #2]
   110de:	3301      	adds	r3, #1
   110e0:	68a0      	ldr	r0, [r4, #8]
   110e2:	6b62      	ldr	r2, [r4, #52]	; 0x34
   110e4:	fb02 f200 	mul.w	r2, r2, r0
   110e8:	429a      	cmp	r2, r3
   110ea:	dcf1      	bgt.n	110d0 <RescalerExportRow@@Base+0x28>
   110ec:	69a2      	ldr	r2, [r4, #24]
   110ee:	69e3      	ldr	r3, [r4, #28]
   110f0:	6c60      	ldr	r0, [r4, #68]	; 0x44
   110f2:	441a      	add	r2, r3
   110f4:	6ca1      	ldr	r1, [r4, #72]	; 0x48
   110f6:	6c23      	ldr	r3, [r4, #64]	; 0x40
   110f8:	4401      	add	r1, r0
   110fa:	61a2      	str	r2, [r4, #24]
   110fc:	3301      	adds	r3, #1
   110fe:	6461      	str	r1, [r4, #68]	; 0x44
   11100:	6423      	str	r3, [r4, #64]	; 0x40
   11102:	bd38      	pop	{r3, r4, r5, pc}
   11104:	4b06      	ldr	r3, [pc, #24]	; (11120 <RescalerExportRow@@Base+0x78>)
   11106:	447b      	add	r3, pc
   11108:	681b      	ldr	r3, [r3, #0]
   1110a:	681b      	ldr	r3, [r3, #0]
   1110c:	4798      	blx	r3
   1110e:	69a2      	ldr	r2, [r4, #24]
   11110:	e7ed      	b.n	110ee <RescalerExportRow@@Base+0x46>
   11112:	4b04      	ldr	r3, [pc, #16]	; (11124 <RescalerExportRow@@Base+0x7c>)
   11114:	447b      	add	r3, pc
   11116:	681b      	ldr	r3, [r3, #0]
   11118:	681b      	ldr	r3, [r3, #0]
   1111a:	4798      	blx	r3
   1111c:	69a2      	ldr	r2, [r4, #24]
   1111e:	e7e6      	b.n	110ee <RescalerExportRow@@Base+0x46>
   11120:	59c2      	ldr	r2, [r0, r7]
   11122:	0000      	movs	r0, r0
   11124:	59b8      	ldr	r0, [r7, r6]
	...

00011128 <RescalerDspInit@@Base>:
   11128:	4b0c      	ldr	r3, [pc, #48]	; (1115c <RescalerDspInit@@Base+0x34>)
   1112a:	4a0d      	ldr	r2, [pc, #52]	; (11160 <RescalerDspInit@@Base+0x38>)
   1112c:	480d      	ldr	r0, [pc, #52]	; (11164 <RescalerDspInit@@Base+0x3c>)
   1112e:	447b      	add	r3, pc
   11130:	b470      	push	{r4, r5, r6}
   11132:	589d      	ldr	r5, [r3, r2]
   11134:	5818      	ldr	r0, [r3, r0]
   11136:	490c      	ldr	r1, [pc, #48]	; (11168 <RescalerDspInit@@Base+0x40>)
   11138:	4a0c      	ldr	r2, [pc, #48]	; (1116c <RescalerDspInit@@Base+0x44>)
   1113a:	6005      	str	r5, [r0, #0]
   1113c:	4c0c      	ldr	r4, [pc, #48]	; (11170 <RescalerDspInit@@Base+0x48>)
   1113e:	585d      	ldr	r5, [r3, r1]
   11140:	589e      	ldr	r6, [r3, r2]
   11142:	480c      	ldr	r0, [pc, #48]	; (11174 <RescalerDspInit@@Base+0x4c>)
   11144:	490c      	ldr	r1, [pc, #48]	; (11178 <RescalerDspInit@@Base+0x50>)
   11146:	602e      	str	r6, [r5, #0]
   11148:	4a0c      	ldr	r2, [pc, #48]	; (1117c <RescalerDspInit@@Base+0x54>)
   1114a:	591c      	ldr	r4, [r3, r4]
   1114c:	5818      	ldr	r0, [r3, r0]
   1114e:	6020      	str	r0, [r4, #0]
   11150:	5859      	ldr	r1, [r3, r1]
   11152:	589b      	ldr	r3, [r3, r2]
   11154:	bc70      	pop	{r4, r5, r6}
   11156:	600b      	str	r3, [r1, #0]
   11158:	4770      	bx	lr
   1115a:	bf00      	nop
   1115c:	59e6      	ldr	r6, [r4, r7]
   1115e:	0000      	movs	r0, r0
   11160:	ffbc ffff 			; <UNDEFINED> instruction: 0xffbcffff
   11164:	ffb8 ffff 			; <UNDEFINED> instruction: 0xffb8ffff
   11168:	ffb4 ffff 			; <UNDEFINED> instruction: 0xffb4ffff
   1116c:	ffc0 ffff 			; <UNDEFINED> instruction: 0xffc0ffff
   11170:	ffac ffff 			; <UNDEFINED> instruction: 0xffacffff
   11174:	ffc4 ffff 			; <UNDEFINED> instruction: 0xffc4ffff
   11178:	ffb0 ffff 			; <UNDEFINED> instruction: 0xffb0ffff
   1117c:	ffc8 ffff 			; <UNDEFINED> instruction: 0xffc8ffff

00011180 <rescaleYUV@@Base>:
   11180:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11184:	b0d3      	sub	sp, #332	; 0x14c
   11186:	4c5d      	ldr	r4, [pc, #372]	; (112fc <rescaleYUV@@Base+0x17c>)
   11188:	f10d 0a48 	add.w	sl, sp, #72	; 0x48
   1118c:	9f60      	ldr	r7, [sp, #384]	; 0x180
   1118e:	9d5e      	ldr	r5, [sp, #376]	; 0x178
   11190:	447c      	add	r4, pc
   11192:	6824      	ldr	r4, [r4, #0]
   11194:	9207      	str	r2, [sp, #28]
   11196:	ea4f 0b67 	mov.w	fp, r7, asr #1
   1119a:	ea4f 0c47 	mov.w	ip, r7, lsl #1
   1119e:	9509      	str	r5, [sp, #36]	; 0x24
   111a0:	3501      	adds	r5, #1
   111a2:	eb0c 088b 	add.w	r8, ip, fp, lsl #2
   111a6:	900b      	str	r0, [sp, #44]	; 0x2c
   111a8:	106a      	asrs	r2, r5, #1
   111aa:	9d5c      	ldr	r5, [sp, #368]	; 0x170
   111ac:	f108 0808 	add.w	r8, r8, #8
   111b0:	9861      	ldr	r0, [sp, #388]	; 0x184
   111b2:	6826      	ldr	r6, [r4, #0]
   111b4:	ea4f 0888 	mov.w	r8, r8, lsl #2
   111b8:	950e      	str	r5, [sp, #56]	; 0x38
   111ba:	9d5d      	ldr	r5, [sp, #372]	; 0x174
   111bc:	900f      	str	r0, [sp, #60]	; 0x3c
   111be:	4640      	mov	r0, r8
   111c0:	f8cd c044 	str.w	ip, [sp, #68]	; 0x44
   111c4:	f8dd 917c 	ldr.w	r9, [sp, #380]	; 0x17c
   111c8:	930d      	str	r3, [sp, #52]	; 0x34
   111ca:	910c      	str	r1, [sp, #48]	; 0x30
   111cc:	9410      	str	r4, [sp, #64]	; 0x40
   111ce:	f109 0401 	add.w	r4, r9, #1
   111d2:	9651      	str	r6, [sp, #324]	; 0x144
   111d4:	920a      	str	r2, [sp, #40]	; 0x28
   111d6:	1064      	asrs	r4, r4, #1
   111d8:	9508      	str	r5, [sp, #32]
   111da:	f7f4 ec36 	blx	5a48 <malloc@plt>
   111de:	4642      	mov	r2, r8
   111e0:	2100      	movs	r1, #0
   111e2:	f10d 089c 	add.w	r8, sp, #156	; 0x9c
   111e6:	4605      	mov	r5, r0
   111e8:	f7f4 ec8e 	blx	5b08 <memset@plt>
   111ec:	2100      	movs	r1, #0
   111ee:	22fc      	movs	r2, #252	; 0xfc
   111f0:	4650      	mov	r0, sl
   111f2:	f7f4 ec8a 	blx	5b08 <memset@plt>
   111f6:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
   111f8:	980d      	ldr	r0, [sp, #52]	; 0x34
   111fa:	464a      	mov	r2, r9
   111fc:	9909      	ldr	r1, [sp, #36]	; 0x24
   111fe:	9700      	str	r7, [sp, #0]
   11200:	9601      	str	r6, [sp, #4]
   11202:	9002      	str	r0, [sp, #8]
   11204:	4650      	mov	r0, sl
   11206:	9509      	str	r5, [sp, #36]	; 0x24
   11208:	9504      	str	r5, [sp, #16]
   1120a:	2501      	movs	r5, #1
   1120c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
   1120e:	412e      	asrs	r6, r5
   11210:	9503      	str	r5, [sp, #12]
   11212:	f7f5 e984 	blx	651c <RescalerInit@plt>
   11216:	9809      	ldr	r0, [sp, #36]	; 0x24
   11218:	990a      	ldr	r1, [sp, #40]	; 0x28
   1121a:	4622      	mov	r2, r4
   1121c:	eb00 07c7 	add.w	r7, r0, r7, lsl #3
   11220:	9704      	str	r7, [sp, #16]
   11222:	9f0e      	ldr	r7, [sp, #56]	; 0x38
   11224:	4640      	mov	r0, r8
   11226:	9b0c      	ldr	r3, [sp, #48]	; 0x30
   11228:	9503      	str	r5, [sp, #12]
   1122a:	fa0b f505 	lsl.w	r5, fp, r5
   1122e:	9702      	str	r7, [sp, #8]
   11230:	af3c      	add	r7, sp, #240	; 0xf0
   11232:	f8cd b000 	str.w	fp, [sp]
   11236:	9601      	str	r6, [sp, #4]
   11238:	f7f5 e970 	blx	651c <RescalerInit@plt>
   1123c:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
   11240:	9809      	ldr	r0, [sp, #36]	; 0x24
   11242:	4622      	mov	r2, r4
   11244:	eb05 030c 	add.w	r3, r5, ip
   11248:	990a      	ldr	r1, [sp, #40]	; 0x28
   1124a:	f8cd b000 	str.w	fp, [sp]
   1124e:	eb00 0383 	add.w	r3, r0, r3, lsl #2
   11252:	9808      	ldr	r0, [sp, #32]
   11254:	9304      	str	r3, [sp, #16]
   11256:	9601      	str	r6, [sp, #4]
   11258:	9002      	str	r0, [sp, #8]
   1125a:	2001      	movs	r0, #1
   1125c:	9b07      	ldr	r3, [sp, #28]
   1125e:	9003      	str	r0, [sp, #12]
   11260:	4638      	mov	r0, r7
   11262:	f7f5 e95c 	blx	651c <RescalerInit@plt>
   11266:	f1b9 0f00 	cmp.w	r9, #0
   1126a:	dd17      	ble.n	1129c <rescaleYUV@@Base+0x11c>
   1126c:	940a      	str	r4, [sp, #40]	; 0x28
   1126e:	464d      	mov	r5, r9
   11270:	9c0d      	ldr	r4, [sp, #52]	; 0x34
   11272:	f04f 0b00 	mov.w	fp, #0
   11276:	9e08      	ldr	r6, [sp, #32]
   11278:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
   1127c:	ebcb 0105 	rsb	r1, fp, r5
   11280:	4623      	mov	r3, r4
   11282:	fb04 920b 	mla	r2, r4, fp, r9
   11286:	4650      	mov	r0, sl
   11288:	f7f5 e94e 	blx	6528 <RescalerImport@plt>
   1128c:	4483      	add	fp, r0
   1128e:	4650      	mov	r0, sl
   11290:	f7f5 e950 	blx	6534 <RescalerExport@plt>
   11294:	455d      	cmp	r5, fp
   11296:	dcf1      	bgt.n	1127c <rescaleYUV@@Base+0xfc>
   11298:	9c0a      	ldr	r4, [sp, #40]	; 0x28
   1129a:	9608      	str	r6, [sp, #32]
   1129c:	2c00      	cmp	r4, #0
   1129e:	dd20      	ble.n	112e2 <rescaleYUV@@Base+0x162>
   112a0:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
   112a4:	f04f 0900 	mov.w	r9, #0
   112a8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
   112aa:	46a2      	mov	sl, r4
   112ac:	9e08      	ldr	r6, [sp, #32]
   112ae:	4651      	mov	r1, sl
   112b0:	462b      	mov	r3, r5
   112b2:	fb05 b209 	mla	r2, r5, r9, fp
   112b6:	4640      	mov	r0, r8
   112b8:	f7f5 e936 	blx	6528 <RescalerImport@plt>
   112bc:	9a07      	ldr	r2, [sp, #28]
   112be:	4633      	mov	r3, r6
   112c0:	4481      	add	r9, r0
   112c2:	4638      	mov	r0, r7
   112c4:	ebc9 0a04 	rsb	sl, r9, r4
   112c8:	fb06 2209 	mla	r2, r6, r9, r2
   112cc:	4651      	mov	r1, sl
   112ce:	f7f5 e92c 	blx	6528 <RescalerImport@plt>
   112d2:	4640      	mov	r0, r8
   112d4:	f7f5 e92e 	blx	6534 <RescalerExport@plt>
   112d8:	4638      	mov	r0, r7
   112da:	f7f5 e92c 	blx	6534 <RescalerExport@plt>
   112de:	454c      	cmp	r4, r9
   112e0:	dce5      	bgt.n	112ae <rescaleYUV@@Base+0x12e>
   112e2:	9b10      	ldr	r3, [sp, #64]	; 0x40
   112e4:	9a51      	ldr	r2, [sp, #324]	; 0x144
   112e6:	681b      	ldr	r3, [r3, #0]
   112e8:	429a      	cmp	r2, r3
   112ea:	d105      	bne.n	112f8 <rescaleYUV@@Base+0x178>
   112ec:	9809      	ldr	r0, [sp, #36]	; 0x24
   112ee:	b053      	add	sp, #332	; 0x14c
   112f0:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   112f4:	f002 bde6 	b.w	13ec4 <__aeabi_llsl@@Base+0x28>
   112f8:	f7f4 eb88 	blx	5a0c <__stack_chk_fail@plt>
   112fc:	592c      	ldr	r4, [r5, r4]
	...

00011300 <rescaleYUV2@@Base>:
   11300:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11304:	b0d1      	sub	sp, #324	; 0x144
   11306:	ac10      	add	r4, sp, #64	; 0x40
   11308:	f8dd 9178 	ldr.w	r9, [sp, #376]	; 0x178
   1130c:	900f      	str	r0, [sp, #60]	; 0x3c
   1130e:	485b      	ldr	r0, [pc, #364]	; (1147c <rescaleYUV2@@Base+0x17c>)
   11310:	ea4f 0b69 	mov.w	fp, r9, asr #1
   11314:	ea4f 0c49 	mov.w	ip, r9, lsl #1
   11318:	4478      	add	r0, pc
   1131a:	6800      	ldr	r0, [r0, #0]
   1131c:	9106      	str	r1, [sp, #24]
   1131e:	eb0c 0a8b 	add.w	sl, ip, fp, lsl #2
   11322:	900d      	str	r0, [sp, #52]	; 0x34
   11324:	f10a 0a08 	add.w	sl, sl, #8
   11328:	6801      	ldr	r1, [r0, #0]
   1132a:	985f      	ldr	r0, [sp, #380]	; 0x17c
   1132c:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
   11330:	940a      	str	r4, [sp, #40]	; 0x28
   11332:	9207      	str	r2, [sp, #28]
   11334:	9c5c      	ldr	r4, [sp, #368]	; 0x170
   11336:	4606      	mov	r6, r0
   11338:	9a5b      	ldr	r2, [sp, #364]	; 0x16c
   1133a:	4650      	mov	r0, sl
   1133c:	9308      	str	r3, [sp, #32]
   1133e:	9b5a      	ldr	r3, [sp, #360]	; 0x168
   11340:	4625      	mov	r5, r4
   11342:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
   11346:	3501      	adds	r5, #1
   11348:	9409      	str	r4, [sp, #36]	; 0x24
   1134a:	930b      	str	r3, [sp, #44]	; 0x2c
   1134c:	106d      	asrs	r5, r5, #1
   1134e:	9c5d      	ldr	r4, [sp, #372]	; 0x174
   11350:	914f      	str	r1, [sp, #316]	; 0x13c
   11352:	920c      	str	r2, [sp, #48]	; 0x30
   11354:	f7f4 eb78 	blx	5a48 <malloc@plt>
   11358:	4652      	mov	r2, sl
   1135a:	2100      	movs	r1, #0
   1135c:	f104 0801 	add.w	r8, r4, #1
   11360:	f10d 0a94 	add.w	sl, sp, #148	; 0x94
   11364:	ea4f 0868 	mov.w	r8, r8, asr #1
   11368:	4607      	mov	r7, r0
   1136a:	f7f4 ebce 	blx	5b08 <memset@plt>
   1136e:	2100      	movs	r1, #0
   11370:	22fc      	movs	r2, #252	; 0xfc
   11372:	980a      	ldr	r0, [sp, #40]	; 0x28
   11374:	f7f4 ebc8 	blx	5b08 <memset@plt>
   11378:	9b08      	ldr	r3, [sp, #32]
   1137a:	f8cd 9000 	str.w	r9, [sp]
   1137e:	4622      	mov	r2, r4
   11380:	9601      	str	r6, [sp, #4]
   11382:	f8cd 9008 	str.w	r9, [sp, #8]
   11386:	980a      	ldr	r0, [sp, #40]	; 0x28
   11388:	9708      	str	r7, [sp, #32]
   1138a:	9704      	str	r7, [sp, #16]
   1138c:	2701      	movs	r7, #1
   1138e:	9909      	ldr	r1, [sp, #36]	; 0x24
   11390:	413e      	asrs	r6, r7
   11392:	9703      	str	r7, [sp, #12]
   11394:	f7f5 e8c2 	blx	651c <RescalerInit@plt>
   11398:	9908      	ldr	r1, [sp, #32]
   1139a:	fa0b f007 	lsl.w	r0, fp, r7
   1139e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
   113a0:	eb01 02c9 	add.w	r2, r1, r9, lsl #3
   113a4:	f8cd b000 	str.w	fp, [sp]
   113a8:	4607      	mov	r7, r0
   113aa:	9204      	str	r2, [sp, #16]
   113ac:	4629      	mov	r1, r5
   113ae:	2001      	movs	r0, #1
   113b0:	4642      	mov	r2, r8
   113b2:	9003      	str	r0, [sp, #12]
   113b4:	9601      	str	r6, [sp, #4]
   113b6:	4650      	mov	r0, sl
   113b8:	f8cd b008 	str.w	fp, [sp, #8]
   113bc:	f10d 09e8 	add.w	r9, sp, #232	; 0xe8
   113c0:	f7f5 e8ac 	blx	651c <RescalerInit@plt>
   113c4:	f8dd c038 	ldr.w	ip, [sp, #56]	; 0x38
   113c8:	9908      	ldr	r1, [sp, #32]
   113ca:	2001      	movs	r0, #1
   113cc:	eb07 020c 	add.w	r2, r7, ip
   113d0:	9003      	str	r0, [sp, #12]
   113d2:	f8cd b000 	str.w	fp, [sp]
   113d6:	4648      	mov	r0, r9
   113d8:	eb01 0282 	add.w	r2, r1, r2, lsl #2
   113dc:	9b0c      	ldr	r3, [sp, #48]	; 0x30
   113de:	9204      	str	r2, [sp, #16]
   113e0:	4629      	mov	r1, r5
   113e2:	9601      	str	r6, [sp, #4]
   113e4:	4642      	mov	r2, r8
   113e6:	f8cd b008 	str.w	fp, [sp, #8]
   113ea:	f7f5 e898 	blx	651c <RescalerInit@plt>
   113ee:	2c00      	cmp	r4, #0
   113f0:	dd16      	ble.n	11420 <rescaleYUV2@@Base+0x120>
   113f2:	950b      	str	r5, [sp, #44]	; 0x2c
   113f4:	4625      	mov	r5, r4
   113f6:	9e09      	ldr	r6, [sp, #36]	; 0x24
   113f8:	f04f 0b00 	mov.w	fp, #0
   113fc:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
   113fe:	9f0a      	ldr	r7, [sp, #40]	; 0x28
   11400:	ebcb 0105 	rsb	r1, fp, r5
   11404:	4633      	mov	r3, r6
   11406:	fb06 420b 	mla	r2, r6, fp, r4
   1140a:	4638      	mov	r0, r7
   1140c:	f7f5 e88c 	blx	6528 <RescalerImport@plt>
   11410:	4603      	mov	r3, r0
   11412:	4638      	mov	r0, r7
   11414:	449b      	add	fp, r3
   11416:	f7f5 e88e 	blx	6534 <RescalerExport@plt>
   1141a:	455d      	cmp	r5, fp
   1141c:	dcf0      	bgt.n	11400 <rescaleYUV2@@Base+0x100>
   1141e:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
   11420:	f1b8 0f00 	cmp.w	r8, #0
   11424:	bfc8      	it	gt
   11426:	2400      	movgt	r4, #0
   11428:	dd1b      	ble.n	11462 <rescaleYUV2@@Base+0x162>
   1142a:	fb05 f604 	mul.w	r6, r5, r4
   1142e:	ebc4 0708 	rsb	r7, r4, r8
   11432:	9a06      	ldr	r2, [sp, #24]
   11434:	462b      	mov	r3, r5
   11436:	4639      	mov	r1, r7
   11438:	4650      	mov	r0, sl
   1143a:	4432      	add	r2, r6
   1143c:	f7f5 e874 	blx	6528 <RescalerImport@plt>
   11440:	9b07      	ldr	r3, [sp, #28]
   11442:	4639      	mov	r1, r7
   11444:	199a      	adds	r2, r3, r6
   11446:	462b      	mov	r3, r5
   11448:	4683      	mov	fp, r0
   1144a:	4648      	mov	r0, r9
   1144c:	f7f5 e86c 	blx	6528 <RescalerImport@plt>
   11450:	4650      	mov	r0, sl
   11452:	f7f5 e870 	blx	6534 <RescalerExport@plt>
   11456:	445c      	add	r4, fp
   11458:	4648      	mov	r0, r9
   1145a:	f7f5 e86c 	blx	6534 <RescalerExport@plt>
   1145e:	45a0      	cmp	r8, r4
   11460:	dce3      	bgt.n	1142a <rescaleYUV2@@Base+0x12a>
   11462:	9b0d      	ldr	r3, [sp, #52]	; 0x34
   11464:	9a4f      	ldr	r2, [sp, #316]	; 0x13c
   11466:	681b      	ldr	r3, [r3, #0]
   11468:	429a      	cmp	r2, r3
   1146a:	d105      	bne.n	11478 <rescaleYUV2@@Base+0x178>
   1146c:	9808      	ldr	r0, [sp, #32]
   1146e:	b051      	add	sp, #324	; 0x144
   11470:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11474:	f002 bd26 	b.w	13ec4 <__aeabi_llsl@@Base+0x28>
   11478:	f7f4 eac8 	blx	5a0c <__stack_chk_fail@plt>
   1147c:	57a4      	ldrsb	r4, [r4, r6]
	...

00011480 <Interpolate_NEON@@Base>:
   11480:	ef80 6010 	vmov.i32	d6, #0	; 0x00000000
   11484:	f960 0a8f 	vld1.32	{d16-d17}, [r0]
   11488:	f961 4a8f 	vld1.32	{d20-d21}, [r1]
   1148c:	ef26 4116 	vorr	d4, d6, d6
   11490:	ee06 2b10 	vmov.32	d6[0], r2
   11494:	ffe0 2ac6 	vmull.u32	q9, d16, d6[0]
   11498:	ee04 3b10 	vmov.32	d4[0], r3
   1149c:	ffe1 0ac6 	vmull.u32	q8, d17, d6[0]
   114a0:	ffe4 22c4 	vmlal.u32	q9, d20, d4[0]
   114a4:	ffe5 02c4 	vmlal.u32	q8, d21, d4[0]
   114a8:	efe0 2872 	vrshrn.i64	d18, q9, #32
   114ac:	efe0 0870 	vrshrn.i64	d16, q8, #32
   114b0:	ef60 11b0 	vorr	d17, d16, d16
   114b4:	ef62 01b2 	vorr	d16, d18, d18
   114b8:	ec51 0b30 	vmov	r0, r1, d16
   114bc:	ec53 2b31 	vmov	r2, r3, d17
   114c0:	4770      	bx	lr
   114c2:	bf00      	nop

000114c4 <RescalerExportRowExpand_NEON@@Base>:
   114c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   114c8:	6b43      	ldr	r3, [r0, #52]	; 0x34
   114ca:	6886      	ldr	r6, [r0, #8]
   114cc:	ed2d 8b08 	vpush	{d8-d11}
   114d0:	f8d0 9010 	ldr.w	r9, [r0, #16]
   114d4:	fb06 f303 	mul.w	r3, r6, r3
   114d8:	6981      	ldr	r1, [r0, #24]
   114da:	b087      	sub	sp, #28
   114dc:	f8d0 a044 	ldr.w	sl, [r0, #68]	; 0x44
   114e0:	461a      	mov	r2, r3
   114e2:	9302      	str	r3, [sp, #8]
   114e4:	ea4f 0359 	mov.w	r3, r9, lsr #1
   114e8:	f022 0607 	bic.w	r6, r2, #7
   114ec:	eea8 3b10 	vdup.32	q4, r3
   114f0:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
   114f2:	9303      	str	r3, [sp, #12]
   114f4:	6d03      	ldr	r3, [r0, #80]	; 0x50
   114f6:	9301      	str	r3, [sp, #4]
   114f8:	2900      	cmp	r1, #0
   114fa:	d13f      	bne.n	1157c <RescalerExportRowExpand_NEON@@Base+0xb8>
   114fc:	2e00      	cmp	r6, #0
   114fe:	f340 80ac 	ble.w	1165a <RescalerExportRowExpand_NEON@@Base+0x196>
   11502:	f103 0010 	add.w	r0, r3, #16
   11506:	f963 0a8f 	vld1.32	{d16-d17}, [r3]
   1150a:	eb0a 0201 	add.w	r2, sl, r1
   1150e:	3108      	adds	r1, #8
   11510:	f960 2a8f 	vld1.32	{d18-d19}, [r0]
   11514:	428e      	cmp	r6, r1
   11516:	ff60 0bc8 	vqrdmulh.s32	q8, q8, q4
   1151a:	f103 0320 	add.w	r3, r3, #32
   1151e:	ff62 2bc8 	vqrdmulh.s32	q9, q9, q4
   11522:	fff6 0220 	vmovn.i32	d16, q8
   11526:	fff6 2222 	vmovn.i32	d18, q9
   1152a:	ef62 11b2 	vorr	d17, d18, d18
   1152e:	fff2 02e0 	vqmovn.u16	d16, q8
   11532:	f942 070f 	vst1.8	{d16}, [r2]
   11536:	dce4      	bgt.n	11502 <RescalerExportRowExpand_NEON@@Base+0x3e>
   11538:	46b4      	mov	ip, r6
   1153a:	9902      	ldr	r1, [sp, #8]
   1153c:	4561      	cmp	r1, ip
   1153e:	dd18      	ble.n	11572 <RescalerExportRowExpand_NEON@@Base+0xae>
   11540:	9b01      	ldr	r3, [sp, #4]
   11542:	eb0a 020c 	add.w	r2, sl, ip
   11546:	448a      	add	sl, r1
   11548:	f04f 4600 	mov.w	r6, #2147483648	; 0x80000000
   1154c:	eb03 038c 	add.w	r3, r3, ip, lsl #2
   11550:	2700      	movs	r7, #0
   11552:	f853 1b04 	ldr.w	r1, [r3], #4
   11556:	4634      	mov	r4, r6
   11558:	463d      	mov	r5, r7
   1155a:	fbe9 4501 	umlal	r4, r5, r9, r1
   1155e:	2dff      	cmp	r5, #255	; 0xff
   11560:	4629      	mov	r1, r5
   11562:	bfd4      	ite	le
   11564:	4629      	movle	r1, r5
   11566:	f04f 31ff 	movgt.w	r1, #4294967295	; 0xffffffff
   1156a:	f802 1b01 	strb.w	r1, [r2], #1
   1156e:	4552      	cmp	r2, sl
   11570:	d1ef      	bne.n	11552 <RescalerExportRowExpand_NEON@@Base+0x8e>
   11572:	b007      	add	sp, #28
   11574:	ecbd 8b08 	vpop	{d8-d11}
   11578:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1157c:	6a02      	ldr	r2, [r0, #32]
   1157e:	4249      	negs	r1, r1
   11580:	2000      	movs	r0, #0
   11582:	17d3      	asrs	r3, r2, #31
   11584:	f7f4 eb3e 	blx	5c04 <__aeabi_uldivmod@plt>
   11588:	2e00      	cmp	r6, #0
   1158a:	e9cd 0104 	strd	r0, r1, [sp, #16]
   1158e:	f1c0 0800 	rsb	r8, r0, #0
   11592:	4683      	mov	fp, r0
   11594:	dd63      	ble.n	1165e <RescalerExportRowExpand_NEON@@Base+0x19a>
   11596:	9f01      	ldr	r7, [sp, #4]
   11598:	2400      	movs	r4, #0
   1159a:	9d03      	ldr	r5, [sp, #12]
   1159c:	4638      	mov	r0, r7
   1159e:	4629      	mov	r1, r5
   115a0:	4642      	mov	r2, r8
   115a2:	465b      	mov	r3, fp
   115a4:	f7f4 efcc 	blx	6540 <Interpolate_NEON@plt>
   115a8:	ec41 0b1a 	vmov	d10, r0, r1
   115ac:	ec43 2b1b 	vmov	d11, r2, r3
   115b0:	f107 0010 	add.w	r0, r7, #16
   115b4:	f105 0110 	add.w	r1, r5, #16
   115b8:	4642      	mov	r2, r8
   115ba:	465b      	mov	r3, fp
   115bc:	ff2a ab48 	vqrdmulh.s32	q5, q5, q4
   115c0:	f7f4 efbe 	blx	6540 <Interpolate_NEON@plt>
   115c4:	eb0a 0e04 	add.w	lr, sl, r4
   115c8:	3408      	adds	r4, #8
   115ca:	3720      	adds	r7, #32
   115cc:	42a6      	cmp	r6, r4
   115ce:	f105 0520 	add.w	r5, r5, #32
   115d2:	ffb6 a20a 	vmovn.i32	d10, q5
   115d6:	ec41 0b30 	vmov	d16, r0, r1
   115da:	ec43 2b31 	vmov	d17, r2, r3
   115de:	ff60 0bc8 	vqrdmulh.s32	q8, q8, q4
   115e2:	fff6 0220 	vmovn.i32	d16, q8
   115e6:	ef20 b1b0 	vorr	d11, d16, d16
   115ea:	ffb2 a2ca 	vqmovn.u16	d10, q5
   115ee:	f90e a70f 	vst1.8	{d10}, [lr]
   115f2:	dcd3      	bgt.n	1159c <RescalerExportRowExpand_NEON@@Base+0xd8>
   115f4:	46b4      	mov	ip, r6
   115f6:	9a02      	ldr	r2, [sp, #8]
   115f8:	4562      	cmp	r2, ip
   115fa:	ddba      	ble.n	11572 <RescalerExportRowExpand_NEON@@Base+0xae>
   115fc:	9b03      	ldr	r3, [sp, #12]
   115fe:	ea4f 008c 	mov.w	r0, ip, lsl #2
   11602:	9e01      	ldr	r6, [sp, #4]
   11604:	eb0a 010c 	add.w	r1, sl, ip
   11608:	4403      	add	r3, r0
   1160a:	e9dd 4504 	ldrd	r4, r5, [sp, #16]
   1160e:	4430      	add	r0, r6
   11610:	eb06 0682 	add.w	r6, r6, r2, lsl #2
   11614:	2500      	movs	r5, #0
   11616:	461f      	mov	r7, r3
   11618:	f857 eb04 	ldr.w	lr, [r7], #4
   1161c:	f850 cb04 	ldr.w	ip, [r0], #4
   11620:	fbae 2304 	umull	r2, r3, lr, r4
   11624:	fb0e 3305 	mla	r3, lr, r5, r3
   11628:	fbe8 230c 	umlal	r2, r3, r8, ip
   1162c:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
   11630:	f143 0300 	adc.w	r3, r3, #0
   11634:	fba3 2309 	umull	r2, r3, r3, r9
   11638:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
   1163c:	f143 0300 	adc.w	r3, r3, #0
   11640:	2bff      	cmp	r3, #255	; 0xff
   11642:	bfc8      	it	gt
   11644:	f04f 33ff 	movgt.w	r3, #4294967295	; 0xffffffff
   11648:	42b0      	cmp	r0, r6
   1164a:	f801 3b01 	strb.w	r3, [r1], #1
   1164e:	d1e3      	bne.n	11618 <RescalerExportRowExpand_NEON@@Base+0x154>
   11650:	b007      	add	sp, #28
   11652:	ecbd 8b08 	vpop	{d8-d11}
   11656:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1165a:	468c      	mov	ip, r1
   1165c:	e76d      	b.n	1153a <RescalerExportRowExpand_NEON@@Base+0x76>
   1165e:	f04f 0c00 	mov.w	ip, #0
   11662:	e7c8      	b.n	115f6 <RescalerExportRowExpand_NEON@@Base+0x132>

00011664 <RescalerInit@@Base>:
   11664:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11668:	460e      	mov	r6, r1
   1166a:	ed2d 8b02 	vpush	{d8}
   1166e:	4604      	mov	r4, r0
   11670:	9d0c      	ldr	r5, [sp, #48]	; 0x30
   11672:	4690      	mov	r8, r2
   11674:	9f0d      	ldr	r7, [sp, #52]	; 0x34
   11676:	42ae      	cmp	r6, r5
   11678:	990e      	ldr	r1, [sp, #56]	; 0x38
   1167a:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
   1167e:	bfac      	ite	ge
   11680:	2000      	movge	r0, #0
   11682:	2001      	movlt	r0, #1
   11684:	42ba      	cmp	r2, r7
   11686:	6322      	str	r2, [r4, #48]	; 0x30
   11688:	62e6      	str	r6, [r4, #44]	; 0x2c
   1168a:	f04f 0200 	mov.w	r2, #0
   1168e:	bfac      	ite	ge
   11690:	f04f 0b00 	movge.w	fp, #0
   11694:	f04f 0b01 	movlt.w	fp, #1
   11698:	6463      	str	r3, [r4, #68]	; 0x44
   1169a:	64a1      	str	r1, [r4, #72]	; 0x48
   1169c:	6365      	str	r5, [r4, #52]	; 0x34
   1169e:	6020      	str	r0, [r4, #0]
   116a0:	63a7      	str	r7, [r4, #56]	; 0x38
   116a2:	f8c4 b004 	str.w	fp, [r4, #4]
   116a6:	63e2      	str	r2, [r4, #60]	; 0x3c
   116a8:	6422      	str	r2, [r4, #64]	; 0x40
   116aa:	f8c4 9008 	str.w	r9, [r4, #8]
   116ae:	f8dd a040 	ldr.w	sl, [sp, #64]	; 0x40
   116b2:	b338      	cbz	r0, 11704 <RescalerInit@@Base+0xa0>
   116b4:	1e73      	subs	r3, r6, #1
   116b6:	1e6a      	subs	r2, r5, #1
   116b8:	62a3      	str	r3, [r4, #40]	; 0x28
   116ba:	6262      	str	r2, [r4, #36]	; 0x24
   116bc:	f1bb 0f00 	cmp.w	fp, #0
   116c0:	d02d      	beq.n	1171e <RescalerInit@@Base+0xba>
   116c2:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
   116c6:	3f01      	subs	r7, #1
   116c8:	61e3      	str	r3, [r4, #28]
   116ca:	2000      	movs	r0, #0
   116cc:	2101      	movs	r1, #1
   116ce:	6227      	str	r7, [r4, #32]
   116d0:	17d3      	asrs	r3, r2, #31
   116d2:	61a7      	str	r7, [r4, #24]
   116d4:	f7f4 ea96 	blx	5c04 <__aeabi_uldivmod@plt>
   116d8:	6120      	str	r0, [r4, #16]
   116da:	006a      	lsls	r2, r5, #1
   116dc:	f8c4 a04c 	str.w	sl, [r4, #76]	; 0x4c
   116e0:	fb05 f509 	mul.w	r5, r5, r9
   116e4:	4650      	mov	r0, sl
   116e6:	fb09 f202 	mul.w	r2, r9, r2
   116ea:	2100      	movs	r1, #0
   116ec:	eb0a 0585 	add.w	r5, sl, r5, lsl #2
   116f0:	6525      	str	r5, [r4, #80]	; 0x50
   116f2:	0092      	lsls	r2, r2, #2
   116f4:	f7f4 ea08 	blx	5b08 <memset@plt>
   116f8:	ecbd 8b02 	vpop	{d8}
   116fc:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11700:	f002 bce8 	b.w	140d4 <__aeabi_llsl@@Base+0x238>
   11704:	462a      	mov	r2, r5
   11706:	6266      	str	r6, [r4, #36]	; 0x24
   11708:	2000      	movs	r0, #0
   1170a:	2101      	movs	r1, #1
   1170c:	62a5      	str	r5, [r4, #40]	; 0x28
   1170e:	17eb      	asrs	r3, r5, #31
   11710:	f7f4 ea78 	blx	5c04 <__aeabi_uldivmod@plt>
   11714:	4632      	mov	r2, r6
   11716:	60e0      	str	r0, [r4, #12]
   11718:	f1bb 0f00 	cmp.w	fp, #0
   1171c:	d1d1      	bne.n	116c2 <RescalerInit@@Base+0x5e>
   1171e:	fb02 f208 	mul.w	r2, r2, r8
   11722:	6227      	str	r7, [r4, #32]
   11724:	4639      	mov	r1, r7
   11726:	f8c4 801c 	str.w	r8, [r4, #28]
   1172a:	4658      	mov	r0, fp
   1172c:	f8c4 8018 	str.w	r8, [r4, #24]
   11730:	ee88 7b10 	vdup.32	d8, r7
   11734:	2700      	movs	r7, #0
   11736:	17d3      	asrs	r3, r2, #31
   11738:	efa0 8098 	vshr.s64	d8, d8, #32
   1173c:	f7f4 ea62 	blx	5c04 <__aeabi_uldivmod@plt>
   11740:	ec53 2b18 	vmov	r2, r3, d8
   11744:	428f      	cmp	r7, r1
   11746:	4606      	mov	r6, r0
   11748:	bf08      	it	eq
   1174a:	4280      	cmpeq	r0, r0
   1174c:	f04f 0101 	mov.w	r1, #1
   11750:	f04f 0000 	mov.w	r0, #0
   11754:	bf18      	it	ne
   11756:	2600      	movne	r6, #0
   11758:	6166      	str	r6, [r4, #20]
   1175a:	f7f4 ea54 	blx	5c04 <__aeabi_uldivmod@plt>
   1175e:	6120      	str	r0, [r4, #16]
   11760:	e7bb      	b.n	116da <RescalerInit@@Base+0x76>
   11762:	bf00      	nop

00011764 <RescalerGetScaledDimensions@@Base>:
   11764:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   11768:	461f      	mov	r7, r3
   1176a:	6815      	ldr	r5, [r2, #0]
   1176c:	2900      	cmp	r1, #0
   1176e:	681c      	ldr	r4, [r3, #0]
   11770:	4690      	mov	r8, r2
   11772:	fab5 f385 	clz	r3, r5
   11776:	4681      	mov	r9, r0
   11778:	460e      	mov	r6, r1
   1177a:	ea4f 1353 	mov.w	r3, r3, lsr #5
   1177e:	bfd8      	it	le
   11780:	2300      	movle	r3, #0
   11782:	b15b      	cbz	r3, 1179c <RescalerGetScaledDimensions@@Base+0x38>
   11784:	f111 30ff 	adds.w	r0, r1, #4294967295	; 0xffffffff
   11788:	ea4f 73e1 	mov.w	r3, r1, asr #31
   1178c:	460a      	mov	r2, r1
   1178e:	f143 31ff 	adc.w	r1, r3, #4294967295	; 0xffffffff
   11792:	fbc9 0104 	smlal	r0, r1, r9, r4
   11796:	f7f4 ea36 	blx	5c04 <__aeabi_uldivmod@plt>
   1179a:	4605      	mov	r5, r0
   1179c:	fab4 f384 	clz	r3, r4
   117a0:	f1b9 0f00 	cmp.w	r9, #0
   117a4:	ea4f 1353 	mov.w	r3, r3, lsr #5
   117a8:	bfd8      	it	le
   117aa:	2300      	movle	r3, #0
   117ac:	b15b      	cbz	r3, 117c6 <RescalerGetScaledDimensions@@Base+0x62>
   117ae:	464a      	mov	r2, r9
   117b0:	f119 30ff 	adds.w	r0, r9, #4294967295	; 0xffffffff
   117b4:	ea4f 73e2 	mov.w	r3, r2, asr #31
   117b8:	f143 31ff 	adc.w	r1, r3, #4294967295	; 0xffffffff
   117bc:	fbc6 0105 	smlal	r0, r1, r6, r5
   117c0:	f7f4 ea20 	blx	5c04 <__aeabi_uldivmod@plt>
   117c4:	4604      	mov	r4, r0
   117c6:	2d00      	cmp	r5, #0
   117c8:	bfc8      	it	gt
   117ca:	2c00      	cmpgt	r4, #0
   117cc:	bfc3      	ittte	gt
   117ce:	f8c8 5000 	strgt.w	r5, [r8]
   117d2:	603c      	strgt	r4, [r7, #0]
   117d4:	2001      	movgt	r0, #1
   117d6:	2000      	movle	r0, #0
   117d8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

000117dc <RescaleNeededLines@@Base>:
   117dc:	b510      	push	{r4, lr}
   117de:	460c      	mov	r4, r1
   117e0:	6a01      	ldr	r1, [r0, #32]
   117e2:	6980      	ldr	r0, [r0, #24]
   117e4:	4408      	add	r0, r1
   117e6:	3801      	subs	r0, #1
   117e8:	f7f4 e976 	blx	5ad8 <__aeabi_idiv@plt>
   117ec:	42a0      	cmp	r0, r4
   117ee:	bfa8      	it	ge
   117f0:	4620      	movge	r0, r4
   117f2:	bd10      	pop	{r4, pc}

000117f4 <RescalerInputDone@@Base>:
   117f4:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
   117f6:	6b00      	ldr	r0, [r0, #48]	; 0x30
   117f8:	4283      	cmp	r3, r0
   117fa:	bfb4      	ite	lt
   117fc:	2000      	movlt	r0, #0
   117fe:	2001      	movge	r0, #1
   11800:	4770      	bx	lr
   11802:	bf00      	nop

00011804 <RescalerOutputDone@@Base>:
   11804:	6c03      	ldr	r3, [r0, #64]	; 0x40
   11806:	6b80      	ldr	r0, [r0, #56]	; 0x38
   11808:	4283      	cmp	r3, r0
   1180a:	bfb4      	ite	lt
   1180c:	2000      	movlt	r0, #0
   1180e:	2001      	movge	r0, #1
   11810:	4770      	bx	lr
   11812:	bf00      	nop

00011814 <RescalerHasPendingOutput@@Base>:
   11814:	b510      	push	{r4, lr}
   11816:	4604      	mov	r4, r0
   11818:	f7f4 ee9e 	blx	6558 <RescalerOutputDone@plt>
   1181c:	b928      	cbnz	r0, 1182a <RescalerHasPendingOutput@@Base+0x16>
   1181e:	69a0      	ldr	r0, [r4, #24]
   11820:	2800      	cmp	r0, #0
   11822:	bfcc      	ite	gt
   11824:	2000      	movgt	r0, #0
   11826:	2001      	movle	r0, #1
   11828:	bd10      	pop	{r4, pc}
   1182a:	2000      	movs	r0, #0
   1182c:	bd10      	pop	{r4, pc}
   1182e:	bf00      	nop

00011830 <RescalerImport@@Base>:
   11830:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   11834:	1e0f      	subs	r7, r1, #0
   11836:	bfd8      	it	le
   11838:	2500      	movle	r5, #0
   1183a:	dd38      	ble.n	118ae <RescalerImport@@Base+0x7e>
   1183c:	4604      	mov	r4, r0
   1183e:	4616      	mov	r6, r2
   11840:	4698      	mov	r8, r3
   11842:	2500      	movs	r5, #0
   11844:	4620      	mov	r0, r4
   11846:	f7f4 ee8e 	blx	6564 <RescalerHasPendingOutput@plt>
   1184a:	2800      	cmp	r0, #0
   1184c:	d12f      	bne.n	118ae <RescalerImport@@Base+0x7e>
   1184e:	6863      	ldr	r3, [r4, #4]
   11850:	b11b      	cbz	r3, 1185a <RescalerImport@@Base+0x2a>
   11852:	6ce2      	ldr	r2, [r4, #76]	; 0x4c
   11854:	6d23      	ldr	r3, [r4, #80]	; 0x50
   11856:	6522      	str	r2, [r4, #80]	; 0x50
   11858:	64e3      	str	r3, [r4, #76]	; 0x4c
   1185a:	4620      	mov	r0, r4
   1185c:	4631      	mov	r1, r6
   1185e:	f7f4 ee88 	blx	6570 <RescalerImportRow@plt>
   11862:	6862      	ldr	r2, [r4, #4]
   11864:	b9b2      	cbnz	r2, 11894 <RescalerImport@@Base+0x64>
   11866:	68a1      	ldr	r1, [r4, #8]
   11868:	6b63      	ldr	r3, [r4, #52]	; 0x34
   1186a:	fb03 f301 	mul.w	r3, r3, r1
   1186e:	2b00      	cmp	r3, #0
   11870:	dd10      	ble.n	11894 <RescalerImport@@Base+0x64>
   11872:	6d23      	ldr	r3, [r4, #80]	; 0x50
   11874:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
   11876:	f1a3 0e04 	sub.w	lr, r3, #4
   1187a:	6808      	ldr	r0, [r1, #0]
   1187c:	3201      	adds	r2, #1
   1187e:	f85e 3f04 	ldr.w	r3, [lr, #4]!
   11882:	4403      	add	r3, r0
   11884:	f841 3b04 	str.w	r3, [r1], #4
   11888:	68a0      	ldr	r0, [r4, #8]
   1188a:	6b63      	ldr	r3, [r4, #52]	; 0x34
   1188c:	fb03 f300 	mul.w	r3, r3, r0
   11890:	4293      	cmp	r3, r2
   11892:	dcf2      	bgt.n	1187a <RescalerImport@@Base+0x4a>
   11894:	3501      	adds	r5, #1
   11896:	6be2      	ldr	r2, [r4, #60]	; 0x3c
   11898:	69a3      	ldr	r3, [r4, #24]
   1189a:	42bd      	cmp	r5, r7
   1189c:	6a21      	ldr	r1, [r4, #32]
   1189e:	f102 0201 	add.w	r2, r2, #1
   118a2:	4446      	add	r6, r8
   118a4:	63e2      	str	r2, [r4, #60]	; 0x3c
   118a6:	eba3 0301 	sub.w	r3, r3, r1
   118aa:	61a3      	str	r3, [r4, #24]
   118ac:	d1ca      	bne.n	11844 <RescalerImport@@Base+0x14>
   118ae:	4628      	mov	r0, r5
   118b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000118b4 <RescalerExport@@Base>:
   118b4:	b538      	push	{r3, r4, r5, lr}
   118b6:	4605      	mov	r5, r0
   118b8:	2400      	movs	r4, #0
   118ba:	e003      	b.n	118c4 <RescalerExport@@Base+0x10>
   118bc:	4628      	mov	r0, r5
   118be:	3401      	adds	r4, #1
   118c0:	f7f4 ee5c 	blx	657c <RescalerExportRow@plt>
   118c4:	4628      	mov	r0, r5
   118c6:	f7f4 ee4e 	blx	6564 <RescalerHasPendingOutput@plt>
   118ca:	2800      	cmp	r0, #0
   118cc:	d1f6      	bne.n	118bc <RescalerExport@@Base+0x8>
   118ce:	4620      	mov	r0, r4
   118d0:	bd38      	pop	{r3, r4, r5, pc}
   118d2:	bf00      	nop

000118d4 <tt_I422ToRGBARow_NEON@@Base>:
   118d4:	b5f0      	push	{r4, r5, r6, r7, lr}
   118d6:	ed2d 8b04 	vpush	{d8-d9}
   118da:	9c09      	ldr	r4, [sp, #36]	; 0x24
   118dc:	9d0a      	ldr	r5, [sp, #40]	; 0x28
   118de:	f104 0610 	add.w	r6, r4, #16
   118e2:	f104 0720 	add.w	r7, r4, #32
   118e6:	f104 0e30 	add.w	lr, r4, #48	; 0x30
   118ea:	f964 870f 	vld1.8	{d24}, [r4]
   118ee:	f966 970f 	vld1.8	{d25}, [r6]
   118f2:	f9e7 ac6d 	vld1.16	{d26[]-d27[]}, [r7]!
   118f6:	f9a7 8c6d 	vld1.16	{d8[]-d9[]}, [r7]!
   118fa:	f9e7 cc6f 	vld1.16	{d28[]-d29[]}, [r7]
   118fe:	f9ee ecaf 	vld1.32	{d30[]-d31[]}, [lr]
   11902:	ffc7 7e1f 	vmov.i8	d23, #255	; 0xff
   11906:	f920 070d 	vld1.8	{d0}, [r0]!
   1190a:	f9a1 280d 	vld1.32	{d2[0]}, [r1]!
   1190e:	f9a2 288d 	vld1.32	{d2[1]}, [r2]!
   11912:	ffc2 0c28 	vmull.u8	q8, d2, d24
   11916:	ffc2 2c29 	vmull.u8	q9, d2, d25
   1191a:	ff88 0a10 	vmovl.u8	q0, d0
   1191e:	efd0 4a11 	vmovl.s16	q10, d1
   11922:	ef90 0a10 	vmovl.s16	q0, d0
   11926:	ef64 49fe 	vmul.i32	q10, q10, q15
   1192a:	ef20 097e 	vmul.i32	q0, q0, q15
   1192e:	ff90 0810 	vqshrun.s32	d0, q0, #16
   11932:	ff90 1834 	vqshrun.s32	d1, q10, #16
   11936:	ef52 28a3 	vadd.i16	d18, d18, d19
   1193a:	ffb6 2320 	vshll.i16	q1, d16, #16
   1193e:	fff6 4321 	vshll.i16	q10, d17, #16
   11942:	ffb6 6322 	vshll.i16	q3, d18, #16
   11946:	ff92 2120 	vaddw.u16	q1, q1, d16
   1194a:	ffd4 41a1 	vaddw.u16	q10, q10, d17
   1194e:	ff96 6122 	vaddw.u16	q3, q3, d18
   11952:	ef50 007a 	vqadd.s16	q8, q0, q13
   11956:	ef50 207c 	vqadd.s16	q9, q0, q14
   1195a:	ef10 0058 	vqadd.s16	q0, q0, q4
   1195e:	ef50 00d2 	vqadd.s16	q8, q8, q1
   11962:	ef52 20f4 	vqadd.s16	q9, q9, q10
   11966:	ef10 0256 	vqsub.s16	q0, q0, q3
   1196a:	ffca 6830 	vqshrun.s16	d22, q8, #6
   1196e:	ffca 4832 	vqshrun.s16	d20, q9, #6
   11972:	ffca 5810 	vqshrun.s16	d21, q0, #6
   11976:	3d08      	subs	r5, #8
   11978:	f943 400d 	vst4.8	{d20-d23}, [r3]!
   1197c:	dcc3      	bgt.n	11906 <tt_I422ToRGBARow_NEON@@Base+0x32>
   1197e:	ecbd 8b04 	vpop	{d8-d9}
   11982:	bdf0      	pop	{r4, r5, r6, r7, pc}

00011984 <tt_I422ToRGB24Row_NEON@@Base>:
   11984:	b5f0      	push	{r4, r5, r6, r7, lr}
   11986:	ed2d 8b04 	vpush	{d8-d9}
   1198a:	9c09      	ldr	r4, [sp, #36]	; 0x24
   1198c:	9d0a      	ldr	r5, [sp, #40]	; 0x28
   1198e:	f104 0610 	add.w	r6, r4, #16
   11992:	f104 0720 	add.w	r7, r4, #32
   11996:	f104 0e30 	add.w	lr, r4, #48	; 0x30
   1199a:	f964 870f 	vld1.8	{d24}, [r4]
   1199e:	f966 970f 	vld1.8	{d25}, [r6]
   119a2:	f9e7 ac6d 	vld1.16	{d26[]-d27[]}, [r7]!
   119a6:	f9a7 8c6d 	vld1.16	{d8[]-d9[]}, [r7]!
   119aa:	f9e7 cc6f 	vld1.16	{d28[]-d29[]}, [r7]
   119ae:	f9ee ecaf 	vld1.32	{d30[]-d31[]}, [lr]
   119b2:	f920 070d 	vld1.8	{d0}, [r0]!
   119b6:	f9a1 280d 	vld1.32	{d2[0]}, [r1]!
   119ba:	f9a2 288d 	vld1.32	{d2[1]}, [r2]!
   119be:	ffc2 0c28 	vmull.u8	q8, d2, d24
   119c2:	ffc2 2c29 	vmull.u8	q9, d2, d25
   119c6:	ff88 0a10 	vmovl.u8	q0, d0
   119ca:	efd0 4a11 	vmovl.s16	q10, d1
   119ce:	ef90 0a10 	vmovl.s16	q0, d0
   119d2:	ef64 49fe 	vmul.i32	q10, q10, q15
   119d6:	ef20 097e 	vmul.i32	q0, q0, q15
   119da:	ff90 0810 	vqshrun.s32	d0, q0, #16
   119de:	ff90 1834 	vqshrun.s32	d1, q10, #16
   119e2:	ef52 28a3 	vadd.i16	d18, d18, d19
   119e6:	ffb6 2320 	vshll.i16	q1, d16, #16
   119ea:	fff6 4321 	vshll.i16	q10, d17, #16
   119ee:	ffb6 6322 	vshll.i16	q3, d18, #16
   119f2:	ff92 2120 	vaddw.u16	q1, q1, d16
   119f6:	ffd4 41a1 	vaddw.u16	q10, q10, d17
   119fa:	ff96 6122 	vaddw.u16	q3, q3, d18
   119fe:	ef50 007a 	vqadd.s16	q8, q0, q13
   11a02:	ef50 207c 	vqadd.s16	q9, q0, q14
   11a06:	ef10 0058 	vqadd.s16	q0, q0, q4
   11a0a:	ef50 00d2 	vqadd.s16	q8, q8, q1
   11a0e:	ef52 20f4 	vqadd.s16	q9, q9, q10
   11a12:	ef10 0256 	vqsub.s16	q0, q0, q3
   11a16:	ffca 6830 	vqshrun.s16	d22, q8, #6
   11a1a:	ffca 4832 	vqshrun.s16	d20, q9, #6
   11a1e:	ffca 5810 	vqshrun.s16	d21, q0, #6
   11a22:	3d08      	subs	r5, #8
   11a24:	f943 440d 	vst3.8	{d20-d22}, [r3]!
   11a28:	dcc3      	bgt.n	119b2 <tt_I422ToRGB24Row_NEON@@Base+0x2e>
   11a2a:	ecbd 8b04 	vpop	{d8-d9}
   11a2e:	bdf0      	pop	{r4, r5, r6, r7, pc}

00011a30 <tt_I422ToRGBARow_Any_NEON@@Base>:
   11a30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11a34:	b089      	sub	sp, #36	; 0x24
   11a36:	4e3b      	ldr	r6, [pc, #236]	; (11b24 <tt_I422ToRGBARow_Any_NEON@@Base+0xf4>)
   11a38:	af02      	add	r7, sp, #8
   11a3a:	4699      	mov	r9, r3
   11a3c:	f5ad 7d04 	sub.w	sp, sp, #528	; 0x210
   11a40:	447e      	add	r6, pc
   11a42:	6836      	ldr	r6, [r6, #0]
   11a44:	603b      	str	r3, [r7, #0]
   11a46:	6c3b      	ldr	r3, [r7, #64]	; 0x40
   11a48:	f10d 0c17 	add.w	ip, sp, #23
   11a4c:	f02c 0b0f 	bic.w	fp, ip, #15
   11a50:	f8d6 e000 	ldr.w	lr, [r6]
   11a54:	6c7d      	ldr	r5, [r7, #68]	; 0x44
   11a56:	4604      	mov	r4, r0
   11a58:	60bb      	str	r3, [r7, #8]
   11a5a:	4692      	mov	sl, r2
   11a5c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
   11a5e:	4658      	mov	r0, fp
   11a60:	60f9      	str	r1, [r7, #12]
   11a62:	f025 0507 	bic.w	r5, r5, #7
   11a66:	607a      	str	r2, [r7, #4]
   11a68:	2100      	movs	r1, #0
   11a6a:	f44f 72c0 	mov.w	r2, #384	; 0x180
   11a6e:	f8c7 e014 	str.w	lr, [r7, #20]
   11a72:	f003 0807 	and.w	r8, r3, #7
   11a76:	f7f4 e848 	blx	5b08 <memset@plt>
   11a7a:	2d00      	cmp	r5, #0
   11a7c:	dd08      	ble.n	11a90 <tt_I422ToRGBARow_Any_NEON@@Base+0x60>
   11a7e:	68b8      	ldr	r0, [r7, #8]
   11a80:	4652      	mov	r2, sl
   11a82:	9501      	str	r5, [sp, #4]
   11a84:	464b      	mov	r3, r9
   11a86:	68f9      	ldr	r1, [r7, #12]
   11a88:	9000      	str	r0, [sp, #0]
   11a8a:	4620      	mov	r0, r4
   11a8c:	f7f4 ed7c 	blx	6588 <tt_I422ToRGBARow_NEON@plt>
   11a90:	1961      	adds	r1, r4, r5
   11a92:	4642      	mov	r2, r8
   11a94:	4658      	mov	r0, fp
   11a96:	f108 0401 	add.w	r4, r8, #1
   11a9a:	f7f3 efb2 	blx	5a00 <memcpy@plt>
   11a9e:	68fa      	ldr	r2, [r7, #12]
   11aa0:	106b      	asrs	r3, r5, #1
   11aa2:	1064      	asrs	r4, r4, #1
   11aa4:	441a      	add	r2, r3
   11aa6:	f10b 0a80 	add.w	sl, fp, #128	; 0x80
   11aaa:	60fb      	str	r3, [r7, #12]
   11aac:	f50b 7980 	add.w	r9, fp, #256	; 0x100
   11ab0:	4611      	mov	r1, r2
   11ab2:	4650      	mov	r0, sl
   11ab4:	4622      	mov	r2, r4
   11ab6:	f7f3 efa4 	blx	5a00 <memcpy@plt>
   11aba:	687b      	ldr	r3, [r7, #4]
   11abc:	4622      	mov	r2, r4
   11abe:	4648      	mov	r0, r9
   11ac0:	4619      	mov	r1, r3
   11ac2:	68fb      	ldr	r3, [r7, #12]
   11ac4:	4419      	add	r1, r3
   11ac6:	f7f3 ef9c 	blx	5a00 <memcpy@plt>
   11aca:	6c7b      	ldr	r3, [r7, #68]	; 0x44
   11acc:	f04f 0e08 	mov.w	lr, #8
   11ad0:	4651      	mov	r1, sl
   11ad2:	07db      	lsls	r3, r3, #31
   11ad4:	4658      	mov	r0, fp
   11ad6:	bf41      	itttt	mi
   11ad8:	445c      	addmi	r4, fp
   11ada:	f894 30ff 	ldrbmi.w	r3, [r4, #255]	; 0xff
   11ade:	f894 207f 	ldrbmi.w	r2, [r4, #127]	; 0x7f
   11ae2:	f884 3100 	strbmi.w	r3, [r4, #256]	; 0x100
   11ae6:	68bb      	ldr	r3, [r7, #8]
   11ae8:	bf48      	it	mi
   11aea:	f884 2080 	strbmi.w	r2, [r4, #128]	; 0x80
   11aee:	f50b 74c0 	add.w	r4, fp, #384	; 0x180
   11af2:	9300      	str	r3, [sp, #0]
   11af4:	464a      	mov	r2, r9
   11af6:	4623      	mov	r3, r4
   11af8:	f8cd e004 	str.w	lr, [sp, #4]
   11afc:	f7f4 ed44 	blx	6588 <tt_I422ToRGBARow_NEON@plt>
   11b00:	683b      	ldr	r3, [r7, #0]
   11b02:	ea4f 0288 	mov.w	r2, r8, lsl #2
   11b06:	4621      	mov	r1, r4
   11b08:	eb03 0085 	add.w	r0, r3, r5, lsl #2
   11b0c:	f7f3 ef78 	blx	5a00 <memcpy@plt>
   11b10:	697a      	ldr	r2, [r7, #20]
   11b12:	6833      	ldr	r3, [r6, #0]
   11b14:	429a      	cmp	r2, r3
   11b16:	d103      	bne.n	11b20 <tt_I422ToRGBARow_Any_NEON@@Base+0xf0>
   11b18:	371c      	adds	r7, #28
   11b1a:	46bd      	mov	sp, r7
   11b1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11b20:	f7f3 ef74 	blx	5a0c <__stack_chk_fail@plt>
   11b24:	507c      	str	r4, [r7, r1]
	...

00011b28 <tt_I422ToRGB24Row_Any_NEON@@Base>:
   11b28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11b2c:	b089      	sub	sp, #36	; 0x24
   11b2e:	4e3c      	ldr	r6, [pc, #240]	; (11c20 <tt_I422ToRGB24Row_Any_NEON@@Base+0xf8>)
   11b30:	af02      	add	r7, sp, #8
   11b32:	4699      	mov	r9, r3
   11b34:	f5ad 7d04 	sub.w	sp, sp, #528	; 0x210
   11b38:	447e      	add	r6, pc
   11b3a:	6836      	ldr	r6, [r6, #0]
   11b3c:	603b      	str	r3, [r7, #0]
   11b3e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
   11b40:	f10d 0c17 	add.w	ip, sp, #23
   11b44:	f02c 0b0f 	bic.w	fp, ip, #15
   11b48:	f8d6 e000 	ldr.w	lr, [r6]
   11b4c:	6c7d      	ldr	r5, [r7, #68]	; 0x44
   11b4e:	4604      	mov	r4, r0
   11b50:	60bb      	str	r3, [r7, #8]
   11b52:	4692      	mov	sl, r2
   11b54:	6c7b      	ldr	r3, [r7, #68]	; 0x44
   11b56:	4658      	mov	r0, fp
   11b58:	60f9      	str	r1, [r7, #12]
   11b5a:	f025 0507 	bic.w	r5, r5, #7
   11b5e:	607a      	str	r2, [r7, #4]
   11b60:	2100      	movs	r1, #0
   11b62:	f44f 72c0 	mov.w	r2, #384	; 0x180
   11b66:	f8c7 e014 	str.w	lr, [r7, #20]
   11b6a:	f003 0807 	and.w	r8, r3, #7
   11b6e:	f7f3 efcc 	blx	5b08 <memset@plt>
   11b72:	2d00      	cmp	r5, #0
   11b74:	dd08      	ble.n	11b88 <tt_I422ToRGB24Row_Any_NEON@@Base+0x60>
   11b76:	68b8      	ldr	r0, [r7, #8]
   11b78:	4652      	mov	r2, sl
   11b7a:	9501      	str	r5, [sp, #4]
   11b7c:	464b      	mov	r3, r9
   11b7e:	68f9      	ldr	r1, [r7, #12]
   11b80:	9000      	str	r0, [sp, #0]
   11b82:	4620      	mov	r0, r4
   11b84:	f7f4 ed06 	blx	6594 <tt_I422ToRGB24Row_NEON@plt>
   11b88:	1961      	adds	r1, r4, r5
   11b8a:	4642      	mov	r2, r8
   11b8c:	4658      	mov	r0, fp
   11b8e:	f108 0401 	add.w	r4, r8, #1
   11b92:	f7f3 ef36 	blx	5a00 <memcpy@plt>
   11b96:	68fa      	ldr	r2, [r7, #12]
   11b98:	106b      	asrs	r3, r5, #1
   11b9a:	1064      	asrs	r4, r4, #1
   11b9c:	441a      	add	r2, r3
   11b9e:	f10b 0a80 	add.w	sl, fp, #128	; 0x80
   11ba2:	60fb      	str	r3, [r7, #12]
   11ba4:	f50b 7980 	add.w	r9, fp, #256	; 0x100
   11ba8:	4611      	mov	r1, r2
   11baa:	4650      	mov	r0, sl
   11bac:	4622      	mov	r2, r4
   11bae:	f7f3 ef28 	blx	5a00 <memcpy@plt>
   11bb2:	687b      	ldr	r3, [r7, #4]
   11bb4:	4622      	mov	r2, r4
   11bb6:	4648      	mov	r0, r9
   11bb8:	4619      	mov	r1, r3
   11bba:	68fb      	ldr	r3, [r7, #12]
   11bbc:	4419      	add	r1, r3
   11bbe:	f7f3 ef20 	blx	5a00 <memcpy@plt>
   11bc2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
   11bc4:	f04f 0e08 	mov.w	lr, #8
   11bc8:	4651      	mov	r1, sl
   11bca:	07db      	lsls	r3, r3, #31
   11bcc:	4658      	mov	r0, fp
   11bce:	bf41      	itttt	mi
   11bd0:	445c      	addmi	r4, fp
   11bd2:	f894 30ff 	ldrbmi.w	r3, [r4, #255]	; 0xff
   11bd6:	f894 207f 	ldrbmi.w	r2, [r4, #127]	; 0x7f
   11bda:	f884 3100 	strbmi.w	r3, [r4, #256]	; 0x100
   11bde:	68bb      	ldr	r3, [r7, #8]
   11be0:	bf48      	it	mi
   11be2:	f884 2080 	strbmi.w	r2, [r4, #128]	; 0x80
   11be6:	f50b 74c0 	add.w	r4, fp, #384	; 0x180
   11bea:	9300      	str	r3, [sp, #0]
   11bec:	464a      	mov	r2, r9
   11bee:	4623      	mov	r3, r4
   11bf0:	f8cd e004 	str.w	lr, [sp, #4]
   11bf4:	f7f4 ecce 	blx	6594 <tt_I422ToRGB24Row_NEON@plt>
   11bf8:	683b      	ldr	r3, [r7, #0]
   11bfa:	eb05 0045 	add.w	r0, r5, r5, lsl #1
   11bfe:	eb08 0248 	add.w	r2, r8, r8, lsl #1
   11c02:	4403      	add	r3, r0
   11c04:	4621      	mov	r1, r4
   11c06:	4618      	mov	r0, r3
   11c08:	f7f3 eefa 	blx	5a00 <memcpy@plt>
   11c0c:	697a      	ldr	r2, [r7, #20]
   11c0e:	6833      	ldr	r3, [r6, #0]
   11c10:	429a      	cmp	r2, r3
   11c12:	d103      	bne.n	11c1c <tt_I422ToRGB24Row_Any_NEON@@Base+0xf4>
   11c14:	371c      	adds	r7, #28
   11c16:	46bd      	mov	sp, r7
   11c18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11c1c:	f7f3 eef6 	blx	5a0c <__stack_chk_fail@plt>
   11c20:	4f84      	ldr	r7, [pc, #528]	; (11e34 <tt_I210ToARGBRow_C@@Base+0xac>)
	...

00011c24 <clamp0@@Base>:
   11c24:	4243      	negs	r3, r0
   11c26:	ea00 70e3 	and.w	r0, r0, r3, asr #31
   11c2a:	4770      	bx	lr

00011c2c <clamp255@@Base>:
   11c2c:	f1c0 03ff 	rsb	r3, r0, #255	; 0xff
   11c30:	ea40 70e3 	orr.w	r0, r0, r3, asr #31
   11c34:	b2c0      	uxtb	r0, r0
   11c36:	4770      	bx	lr

00011c38 <Clamp@@Base>:
   11c38:	b508      	push	{r3, lr}
   11c3a:	f7f4 ecb2 	blx	65a0 <clamp0@plt>
   11c3e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   11c42:	f002 ba4f 	b.w	140e4 <__aeabi_llsl@@Base+0x248>
   11c46:	bf00      	nop

00011c48 <tt_I420ToRGBA@@Base>:
   11c48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11c4c:	b085      	sub	sp, #20
   11c4e:	4692      	mov	sl, r2
   11c50:	468b      	mov	fp, r1
   11c52:	9303      	str	r3, [sp, #12]
   11c54:	9b12      	ldr	r3, [sp, #72]	; 0x48
   11c56:	9f0e      	ldr	r7, [sp, #56]	; 0x38
   11c58:	075a      	lsls	r2, r3, #29
   11c5a:	d038      	beq.n	11cce <tt_I420ToRGBA@@Base+0x86>
   11c5c:	f8df 807c 	ldr.w	r8, [pc, #124]	; 11cdc <tt_I420ToRGBA@@Base+0x94>
   11c60:	44f8      	add	r8, pc
   11c62:	f8d8 8000 	ldr.w	r8, [r8]
   11c66:	9b13      	ldr	r3, [sp, #76]	; 0x4c
   11c68:	2b00      	cmp	r3, #0
   11c6a:	dd2c      	ble.n	11cc6 <tt_I420ToRGBA@@Base+0x7e>
   11c6c:	9b12      	ldr	r3, [sp, #72]	; 0x48
   11c6e:	463a      	mov	r2, r7
   11c70:	f8df 906c 	ldr.w	r9, [pc, #108]	; 11ce0 <tt_I420ToRGBA@@Base+0x98>
   11c74:	4651      	mov	r1, sl
   11c76:	eb00 060b 	add.w	r6, r0, fp
   11c7a:	2400      	movs	r4, #0
   11c7c:	9301      	str	r3, [sp, #4]
   11c7e:	44f9      	add	r9, pc
   11c80:	f8d9 9000 	ldr.w	r9, [r9]
   11c84:	9b10      	ldr	r3, [sp, #64]	; 0x40
   11c86:	f8cd 9000 	str.w	r9, [sp]
   11c8a:	47c0      	blx	r8
   11c8c:	9b10      	ldr	r3, [sp, #64]	; 0x40
   11c8e:	9a11      	ldr	r2, [sp, #68]	; 0x44
   11c90:	970e      	str	r7, [sp, #56]	; 0x38
   11c92:	189d      	adds	r5, r3, r2
   11c94:	9f13      	ldr	r7, [sp, #76]	; 0x4c
   11c96:	3401      	adds	r4, #1
   11c98:	4630      	mov	r0, r6
   11c9a:	462b      	mov	r3, r5
   11c9c:	42bc      	cmp	r4, r7
   11c9e:	9f11      	ldr	r7, [sp, #68]	; 0x44
   11ca0:	4651      	mov	r1, sl
   11ca2:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   11ca4:	443d      	add	r5, r7
   11ca6:	445e      	add	r6, fp
   11ca8:	d00d      	beq.n	11cc6 <tt_I420ToRGBA@@Base+0x7e>
   11caa:	9f12      	ldr	r7, [sp, #72]	; 0x48
   11cac:	f8cd 9000 	str.w	r9, [sp]
   11cb0:	9701      	str	r7, [sp, #4]
   11cb2:	47c0      	blx	r8
   11cb4:	07e3      	lsls	r3, r4, #31
   11cb6:	d5ed      	bpl.n	11c94 <tt_I420ToRGBA@@Base+0x4c>
   11cb8:	9b03      	ldr	r3, [sp, #12]
   11cba:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   11cbc:	449a      	add	sl, r3
   11cbe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
   11cc0:	441a      	add	r2, r3
   11cc2:	920e      	str	r2, [sp, #56]	; 0x38
   11cc4:	e7e6      	b.n	11c94 <tt_I420ToRGBA@@Base+0x4c>
   11cc6:	2000      	movs	r0, #0
   11cc8:	b005      	add	sp, #20
   11cca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11cce:	f8df 8014 	ldr.w	r8, [pc, #20]	; 11ce4 <tt_I420ToRGBA@@Base+0x9c>
   11cd2:	44f8      	add	r8, pc
   11cd4:	f8d8 8000 	ldr.w	r8, [r8]
   11cd8:	e7c5      	b.n	11c66 <tt_I420ToRGBA@@Base+0x1e>
   11cda:	bf00      	nop
   11cdc:	4e80      	ldr	r6, [pc, #512]	; (11ee0 <tt_I210ToARGBRow_C@@Base+0x158>)
   11cde:	0000      	movs	r0, r0
   11ce0:	4e66      	ldr	r6, [pc, #408]	; (11e7c <tt_I210ToARGBRow_C@@Base+0xf4>)
   11ce2:	0000      	movs	r0, r0
   11ce4:	4e16      	ldr	r6, [pc, #88]	; (11d40 <tt_I420ToRGB24@@Base+0x58>)
	...

00011ce8 <tt_I420ToRGB24@@Base>:
   11ce8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11cec:	b085      	sub	sp, #20
   11cee:	4692      	mov	sl, r2
   11cf0:	468b      	mov	fp, r1
   11cf2:	9303      	str	r3, [sp, #12]
   11cf4:	9b12      	ldr	r3, [sp, #72]	; 0x48
   11cf6:	9f0e      	ldr	r7, [sp, #56]	; 0x38
   11cf8:	075a      	lsls	r2, r3, #29
   11cfa:	d038      	beq.n	11d6e <tt_I420ToRGB24@@Base+0x86>
   11cfc:	f8df 807c 	ldr.w	r8, [pc, #124]	; 11d7c <tt_I420ToRGB24@@Base+0x94>
   11d00:	44f8      	add	r8, pc
   11d02:	f8d8 8000 	ldr.w	r8, [r8]
   11d06:	9b13      	ldr	r3, [sp, #76]	; 0x4c
   11d08:	2b00      	cmp	r3, #0
   11d0a:	dd2c      	ble.n	11d66 <tt_I420ToRGB24@@Base+0x7e>
   11d0c:	9b12      	ldr	r3, [sp, #72]	; 0x48
   11d0e:	463a      	mov	r2, r7
   11d10:	f8df 906c 	ldr.w	r9, [pc, #108]	; 11d80 <tt_I420ToRGB24@@Base+0x98>
   11d14:	4651      	mov	r1, sl
   11d16:	eb00 060b 	add.w	r6, r0, fp
   11d1a:	2400      	movs	r4, #0
   11d1c:	9301      	str	r3, [sp, #4]
   11d1e:	44f9      	add	r9, pc
   11d20:	f8d9 9000 	ldr.w	r9, [r9]
   11d24:	9b10      	ldr	r3, [sp, #64]	; 0x40
   11d26:	f8cd 9000 	str.w	r9, [sp]
   11d2a:	47c0      	blx	r8
   11d2c:	9b10      	ldr	r3, [sp, #64]	; 0x40
   11d2e:	9a11      	ldr	r2, [sp, #68]	; 0x44
   11d30:	970e      	str	r7, [sp, #56]	; 0x38
   11d32:	189d      	adds	r5, r3, r2
   11d34:	9f13      	ldr	r7, [sp, #76]	; 0x4c
   11d36:	3401      	adds	r4, #1
   11d38:	4630      	mov	r0, r6
   11d3a:	462b      	mov	r3, r5
   11d3c:	42bc      	cmp	r4, r7
   11d3e:	9f11      	ldr	r7, [sp, #68]	; 0x44
   11d40:	4651      	mov	r1, sl
   11d42:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   11d44:	443d      	add	r5, r7
   11d46:	445e      	add	r6, fp
   11d48:	d00d      	beq.n	11d66 <tt_I420ToRGB24@@Base+0x7e>
   11d4a:	9f12      	ldr	r7, [sp, #72]	; 0x48
   11d4c:	f8cd 9000 	str.w	r9, [sp]
   11d50:	9701      	str	r7, [sp, #4]
   11d52:	47c0      	blx	r8
   11d54:	07e3      	lsls	r3, r4, #31
   11d56:	d5ed      	bpl.n	11d34 <tt_I420ToRGB24@@Base+0x4c>
   11d58:	9b03      	ldr	r3, [sp, #12]
   11d5a:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   11d5c:	449a      	add	sl, r3
   11d5e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
   11d60:	441a      	add	r2, r3
   11d62:	920e      	str	r2, [sp, #56]	; 0x38
   11d64:	e7e6      	b.n	11d34 <tt_I420ToRGB24@@Base+0x4c>
   11d66:	2000      	movs	r0, #0
   11d68:	b005      	add	sp, #20
   11d6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11d6e:	f8df 8014 	ldr.w	r8, [pc, #20]	; 11d84 <tt_I420ToRGB24@@Base+0x9c>
   11d72:	44f8      	add	r8, pc
   11d74:	f8d8 8000 	ldr.w	r8, [r8]
   11d78:	e7c5      	b.n	11d06 <tt_I420ToRGB24@@Base+0x1e>
   11d7a:	bf00      	nop
   11d7c:	4dec      	ldr	r5, [pc, #944]	; (12130 <tt_Convert16To8Row_C@@Base+0x24>)
   11d7e:	0000      	movs	r0, r0
   11d80:	4dc6      	ldr	r5, [pc, #792]	; (1209c <tt_I010ToARGBMatrix@@Base+0x80>)
   11d82:	0000      	movs	r0, r0
   11d84:	4d7e      	ldr	r5, [pc, #504]	; (11f80 <tt_I210ToARGBRow_C@@Base+0x1f8>)
	...

00011d88 <tt_I210ToARGBRow_C@@Base>:
   11d88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11d8c:	b08f      	sub	sp, #60	; 0x3c
   11d8e:	461c      	mov	r4, r3
   11d90:	9001      	str	r0, [sp, #4]
   11d92:	9819      	ldr	r0, [sp, #100]	; 0x64
   11d94:	930a      	str	r3, [sp, #40]	; 0x28
   11d96:	2801      	cmp	r0, #1
   11d98:	910b      	str	r1, [sp, #44]	; 0x2c
   11d9a:	920c      	str	r2, [sp, #48]	; 0x30
   11d9c:	9b18      	ldr	r3, [sp, #96]	; 0x60
   11d9e:	f340 80e4 	ble.w	11f6a <tt_I210ToARGBRow_C@@Base+0x1e2>
   11da2:	f1a0 0e02 	sub.w	lr, r0, #2
   11da6:	9200      	str	r2, [sp, #0]
   11da8:	f104 0808 	add.w	r8, r4, #8
   11dac:	f04f 0c00 	mov.w	ip, #0
   11db0:	ea4f 0e5e 	mov.w	lr, lr, lsr #1
   11db4:	461c      	mov	r4, r3
   11db6:	f10e 0201 	add.w	r2, lr, #1
   11dba:	9102      	str	r1, [sp, #8]
   11dbc:	920d      	str	r2, [sp, #52]	; 0x34
   11dbe:	0092      	lsls	r2, r2, #2
   11dc0:	9209      	str	r2, [sp, #36]	; 0x24
   11dc2:	9802      	ldr	r0, [sp, #8]
   11dc4:	f108 0808 	add.w	r8, r8, #8
   11dc8:	9b01      	ldr	r3, [sp, #4]
   11dca:	f9b4 50c0 	ldrsh.w	r5, [r4, #192]	; 0xc0
   11dce:	4606      	mov	r6, r0
   11dd0:	9004      	str	r0, [sp, #16]
   11dd2:	f936 0b02 	ldrsh.w	r0, [r6], #2
   11dd6:	f933 200c 	ldrsh.w	r2, [r3, ip]
   11dda:	f894 1020 	ldrb.w	r1, [r4, #32]
   11dde:	9602      	str	r6, [sp, #8]
   11de0:	1080      	asrs	r0, r0, #2
   11de2:	9e00      	ldr	r6, [sp, #0]
   11de4:	0192      	lsls	r2, r2, #6
   11de6:	7823      	ldrb	r3, [r4, #0]
   11de8:	fb02 f505 	mul.w	r5, r2, r5
   11dec:	8837      	ldrh	r7, [r6, #0]
   11dee:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
   11df2:	f8cd c020 	str.w	ip, [sp, #32]
   11df6:	9106      	str	r1, [sp, #24]
   11df8:	9307      	str	r3, [sp, #28]
   11dfa:	9703      	str	r7, [sp, #12]
   11dfc:	0c2d      	lsrs	r5, r5, #16
   11dfe:	f894 a021 	ldrb.w	sl, [r4, #33]	; 0x21
   11e02:	9205      	str	r2, [sp, #20]
   11e04:	f8b4 7060 	ldrh.w	r7, [r4, #96]	; 0x60
   11e08:	f8b4 6080 	ldrh.w	r6, [r4, #128]	; 0x80
   11e0c:	fa4f fa8a 	sxtb.w	sl, sl
   11e10:	f8b4 90a0 	ldrh.w	r9, [r4, #160]	; 0xa0
   11e14:	f7f3 ee96 	blx	5b44 <clamp255@plt>
   11e18:	9a03      	ldr	r2, [sp, #12]
   11e1a:	b23f      	sxth	r7, r7
   11e1c:	b236      	sxth	r6, r6
   11e1e:	fa0f f989 	sxth.w	r9, r9
   11e22:	fa1f fb80 	uxth.w	fp, r0
   11e26:	f342 008d 	sbfx	r0, r2, #2, #14
   11e2a:	f7f3 ee8c 	blx	5b44 <clamp255@plt>
   11e2e:	9b07      	ldr	r3, [sp, #28]
   11e30:	b25b      	sxtb	r3, r3
   11e32:	fb13 f30b 	smulbb	r3, r3, fp
   11e36:	1afb      	subs	r3, r7, r3
   11e38:	442b      	add	r3, r5
   11e3a:	b287      	uxth	r7, r0
   11e3c:	1198      	asrs	r0, r3, #6
   11e3e:	f7f4 ebb6 	blx	65ac <Clamp@plt>
   11e42:	9906      	ldr	r1, [sp, #24]
   11e44:	fb1a fa07 	smulbb	sl, sl, r7
   11e48:	b249      	sxtb	r1, r1
   11e4a:	fb1b a101 	smlabb	r1, fp, r1, sl
   11e4e:	1a71      	subs	r1, r6, r1
   11e50:	4429      	add	r1, r5
   11e52:	f808 0c10 	strb.w	r0, [r8, #-16]
   11e56:	1188      	asrs	r0, r1, #6
   11e58:	f7f4 eba8 	blx	65ac <Clamp@plt>
   11e5c:	9a05      	ldr	r2, [sp, #20]
   11e5e:	b252      	sxtb	r2, r2
   11e60:	fb12 f707 	smulbb	r7, r2, r7
   11e64:	ebc7 0909 	rsb	r9, r7, r9
   11e68:	444d      	add	r5, r9
   11e6a:	f808 0c0f 	strb.w	r0, [r8, #-15]
   11e6e:	11a8      	asrs	r0, r5, #6
   11e70:	f7f4 eb9c 	blx	65ac <Clamp@plt>
   11e74:	f8dd c020 	ldr.w	ip, [sp, #32]
   11e78:	9b01      	ldr	r3, [sp, #4]
   11e7a:	22ff      	movs	r2, #255	; 0xff
   11e7c:	9e00      	ldr	r6, [sp, #0]
   11e7e:	4463      	add	r3, ip
   11e80:	f808 2c0d 	strb.w	r2, [r8, #-13]
   11e84:	9904      	ldr	r1, [sp, #16]
   11e86:	f10c 0c04 	add.w	ip, ip, #4
   11e8a:	f8cd c01c 	str.w	ip, [sp, #28]
   11e8e:	f808 0c0e 	strb.w	r0, [r8, #-14]
   11e92:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
   11e96:	f9b4 50c0 	ldrsh.w	r5, [r4, #192]	; 0xc0
   11e9a:	f836 3b02 	ldrh.w	r3, [r6], #2
   11e9e:	0192      	lsls	r2, r2, #6
   11ea0:	f9b1 0000 	ldrsh.w	r0, [r1]
   11ea4:	f894 1020 	ldrb.w	r1, [r4, #32]
   11ea8:	9303      	str	r3, [sp, #12]
   11eaa:	fb02 f505 	mul.w	r5, r2, r5
   11eae:	7823      	ldrb	r3, [r4, #0]
   11eb0:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
   11eb4:	1080      	asrs	r0, r0, #2
   11eb6:	9105      	str	r1, [sp, #20]
   11eb8:	9600      	str	r6, [sp, #0]
   11eba:	9204      	str	r2, [sp, #16]
   11ebc:	9306      	str	r3, [sp, #24]
   11ebe:	0c2d      	lsrs	r5, r5, #16
   11ec0:	f894 a021 	ldrb.w	sl, [r4, #33]	; 0x21
   11ec4:	f8b4 7060 	ldrh.w	r7, [r4, #96]	; 0x60
   11ec8:	f8b4 6080 	ldrh.w	r6, [r4, #128]	; 0x80
   11ecc:	f8b4 90a0 	ldrh.w	r9, [r4, #160]	; 0xa0
   11ed0:	f7f3 ee38 	blx	5b44 <clamp255@plt>
   11ed4:	9b03      	ldr	r3, [sp, #12]
   11ed6:	b23f      	sxth	r7, r7
   11ed8:	fa4f fa8a 	sxtb.w	sl, sl
   11edc:	b236      	sxth	r6, r6
   11ede:	fa0f f989 	sxth.w	r9, r9
   11ee2:	fa1f fb80 	uxth.w	fp, r0
   11ee6:	f343 008d 	sbfx	r0, r3, #2, #14
   11eea:	f7f3 ee2c 	blx	5b44 <clamp255@plt>
   11eee:	9b06      	ldr	r3, [sp, #24]
   11ef0:	b25b      	sxtb	r3, r3
   11ef2:	fb13 f30b 	smulbb	r3, r3, fp
   11ef6:	1afb      	subs	r3, r7, r3
   11ef8:	442b      	add	r3, r5
   11efa:	b287      	uxth	r7, r0
   11efc:	1198      	asrs	r0, r3, #6
   11efe:	f7f4 eb56 	blx	65ac <Clamp@plt>
   11f02:	9905      	ldr	r1, [sp, #20]
   11f04:	fb1a fa07 	smulbb	sl, sl, r7
   11f08:	b249      	sxtb	r1, r1
   11f0a:	fb1b a101 	smlabb	r1, fp, r1, sl
   11f0e:	1a76      	subs	r6, r6, r1
   11f10:	442e      	add	r6, r5
   11f12:	f808 0c0c 	strb.w	r0, [r8, #-12]
   11f16:	11b0      	asrs	r0, r6, #6
   11f18:	f7f4 eb48 	blx	65ac <Clamp@plt>
   11f1c:	9a04      	ldr	r2, [sp, #16]
   11f1e:	b252      	sxtb	r2, r2
   11f20:	fb12 f707 	smulbb	r7, r2, r7
   11f24:	ebc7 0909 	rsb	r9, r7, r9
   11f28:	444d      	add	r5, r9
   11f2a:	f808 0c0b 	strb.w	r0, [r8, #-11]
   11f2e:	11a8      	asrs	r0, r5, #6
   11f30:	f7f4 eb3c 	blx	65ac <Clamp@plt>
   11f34:	23ff      	movs	r3, #255	; 0xff
   11f36:	f8dd c01c 	ldr.w	ip, [sp, #28]
   11f3a:	f808 3c09 	strb.w	r3, [r8, #-9]
   11f3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
   11f40:	459c      	cmp	ip, r3
   11f42:	f808 0c0a 	strb.w	r0, [r8, #-10]
   11f46:	f47f af3c 	bne.w	11dc2 <tt_I210ToARGBRow_C@@Base+0x3a>
   11f4a:	9801      	ldr	r0, [sp, #4]
   11f4c:	4623      	mov	r3, r4
   11f4e:	990d      	ldr	r1, [sp, #52]	; 0x34
   11f50:	4460      	add	r0, ip
   11f52:	9001      	str	r0, [sp, #4]
   11f54:	980a      	ldr	r0, [sp, #40]	; 0x28
   11f56:	004a      	lsls	r2, r1, #1
   11f58:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
   11f5c:	910a      	str	r1, [sp, #40]	; 0x28
   11f5e:	990b      	ldr	r1, [sp, #44]	; 0x2c
   11f60:	4411      	add	r1, r2
   11f62:	910b      	str	r1, [sp, #44]	; 0x2c
   11f64:	990c      	ldr	r1, [sp, #48]	; 0x30
   11f66:	4411      	add	r1, r2
   11f68:	910c      	str	r1, [sp, #48]	; 0x30
   11f6a:	9a19      	ldr	r2, [sp, #100]	; 0x64
   11f6c:	07d2      	lsls	r2, r2, #31
   11f6e:	d551      	bpl.n	12014 <tt_I210ToARGBRow_C@@Base+0x28c>
   11f70:	9a01      	ldr	r2, [sp, #4]
   11f72:	f9b3 50c0 	ldrsh.w	r5, [r3, #192]	; 0xc0
   11f76:	f893 b020 	ldrb.w	fp, [r3, #32]
   11f7a:	f9b2 4000 	ldrsh.w	r4, [r2]
   11f7e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   11f80:	f893 8021 	ldrb.w	r8, [r3, #33]	; 0x21
   11f84:	fa4f fb8b 	sxtb.w	fp, fp
   11f88:	01a4      	lsls	r4, r4, #6
   11f8a:	f893 a041 	ldrb.w	sl, [r3, #65]	; 0x41
   11f8e:	f9b2 0000 	ldrsh.w	r0, [r2]
   11f92:	9a0c      	ldr	r2, [sp, #48]	; 0x30
   11f94:	fa4f f888 	sxtb.w	r8, r8
   11f98:	f8b3 7060 	ldrh.w	r7, [r3, #96]	; 0x60
   11f9c:	fa4f fa8a 	sxtb.w	sl, sl
   11fa0:	1080      	asrs	r0, r0, #2
   11fa2:	f8b3 6080 	ldrh.w	r6, [r3, #128]	; 0x80
   11fa6:	8811      	ldrh	r1, [r2, #0]
   11fa8:	781a      	ldrb	r2, [r3, #0]
   11faa:	fb04 f405 	mul.w	r4, r4, r5
   11fae:	9101      	str	r1, [sp, #4]
   11fb0:	f8b3 50a0 	ldrh.w	r5, [r3, #160]	; 0xa0
   11fb4:	9200      	str	r2, [sp, #0]
   11fb6:	f7f3 edc6 	blx	5b44 <clamp255@plt>
   11fba:	9901      	ldr	r1, [sp, #4]
   11fbc:	0c24      	lsrs	r4, r4, #16
   11fbe:	fa04 f787 	sxtah	r7, r4, r7
   11fc2:	fa04 f686 	sxtah	r6, r4, r6
   11fc6:	fa04 f485 	sxtah	r4, r4, r5
   11fca:	fa1f f980 	uxth.w	r9, r0
   11fce:	f341 008d 	sbfx	r0, r1, #2, #14
   11fd2:	f7f3 edb8 	blx	5b44 <clamp255@plt>
   11fd6:	9a00      	ldr	r2, [sp, #0]
   11fd8:	b252      	sxtb	r2, r2
   11fda:	fb12 f309 	smulbb	r3, r2, r9
   11fde:	1afb      	subs	r3, r7, r3
   11fe0:	b287      	uxth	r7, r0
   11fe2:	1198      	asrs	r0, r3, #6
   11fe4:	f7f4 eae2 	blx	65ac <Clamp@plt>
   11fe8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
   11fea:	fb18 f807 	smulbb	r8, r8, r7
   11fee:	fb19 880b 	smlabb	r8, r9, fp, r8
   11ff2:	fb1a f707 	smulbb	r7, sl, r7
   11ff6:	ebc8 0606 	rsb	r6, r8, r6
   11ffa:	1be4      	subs	r4, r4, r7
   11ffc:	7018      	strb	r0, [r3, #0]
   11ffe:	11b0      	asrs	r0, r6, #6
   12000:	f7f4 ead4 	blx	65ac <Clamp@plt>
   12004:	9d0a      	ldr	r5, [sp, #40]	; 0x28
   12006:	7068      	strb	r0, [r5, #1]
   12008:	11a0      	asrs	r0, r4, #6
   1200a:	f7f4 ead0 	blx	65ac <Clamp@plt>
   1200e:	23ff      	movs	r3, #255	; 0xff
   12010:	70eb      	strb	r3, [r5, #3]
   12012:	70a8      	strb	r0, [r5, #2]
   12014:	b00f      	add	sp, #60	; 0x3c
   12016:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1201a:	bf00      	nop

0001201c <tt_I010ToARGBMatrix@@Base>:
   1201c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   12020:	2a00      	cmp	r2, #0
   12022:	bf18      	it	ne
   12024:	2800      	cmpne	r0, #0
   12026:	b087      	sub	sp, #28
   12028:	4617      	mov	r7, r2
   1202a:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
   1202e:	9d12      	ldr	r5, [sp, #72]	; 0x48
   12030:	f8dd a04c 	ldr.w	sl, [sp, #76]	; 0x4c
   12034:	f8dd 9058 	ldr.w	r9, [sp, #88]	; 0x58
   12038:	d04b      	beq.n	120d2 <tt_I010ToARGBMatrix@@Base+0xb6>
   1203a:	2d00      	cmp	r5, #0
   1203c:	bf18      	it	ne
   1203e:	f1bb 0f00 	cmpne.w	fp, #0
   12042:	d046      	beq.n	120d2 <tt_I010ToARGBMatrix@@Base+0xb6>
   12044:	461c      	mov	r4, r3
   12046:	9b15      	ldr	r3, [sp, #84]	; 0x54
   12048:	f1b9 0f00 	cmp.w	r9, #0
   1204c:	bf18      	it	ne
   1204e:	2b00      	cmpne	r3, #0
   12050:	dd3f      	ble.n	120d2 <tt_I010ToARGBMatrix@@Base+0xb6>
   12052:	f1b9 0f00 	cmp.w	r9, #0
   12056:	ea4f 0841 	mov.w	r8, r1, lsl #1
   1205a:	4611      	mov	r1, r2
   1205c:	465a      	mov	r2, fp
   1205e:	bfb8      	it	lt
   12060:	ea6f 0309 	mvnlt.w	r3, r9
   12064:	ea4f 0444 	mov.w	r4, r4, lsl #1
   12068:	bfb8      	it	lt
   1206a:	fb0a 5503 	mlalt	r5, sl, r3, r5
   1206e:	9b14      	ldr	r3, [sp, #80]	; 0x50
   12070:	bfb8      	it	lt
   12072:	f1ca 0a00 	rsblt	sl, sl, #0
   12076:	9404      	str	r4, [sp, #16]
   12078:	bfb8      	it	lt
   1207a:	f1c9 0900 	rsblt	r9, r9, #0
   1207e:	eb00 0608 	add.w	r6, r0, r8
   12082:	9300      	str	r3, [sp, #0]
   12084:	2400      	movs	r4, #0
   12086:	9b15      	ldr	r3, [sp, #84]	; 0x54
   12088:	9301      	str	r3, [sp, #4]
   1208a:	462b      	mov	r3, r5
   1208c:	f7f4 ea94 	blx	65b8 <tt_I210ToARGBRow_C@plt>
   12090:	9b11      	ldr	r3, [sp, #68]	; 0x44
   12092:	4455      	add	r5, sl
   12094:	9703      	str	r7, [sp, #12]
   12096:	005b      	lsls	r3, r3, #1
   12098:	9305      	str	r3, [sp, #20]
   1209a:	3401      	adds	r4, #1
   1209c:	4630      	mov	r0, r6
   1209e:	454c      	cmp	r4, r9
   120a0:	462b      	mov	r3, r5
   120a2:	9903      	ldr	r1, [sp, #12]
   120a4:	465a      	mov	r2, fp
   120a6:	4455      	add	r5, sl
   120a8:	4446      	add	r6, r8
   120aa:	d00e      	beq.n	120ca <tt_I010ToARGBMatrix@@Base+0xae>
   120ac:	9f14      	ldr	r7, [sp, #80]	; 0x50
   120ae:	9700      	str	r7, [sp, #0]
   120b0:	9f15      	ldr	r7, [sp, #84]	; 0x54
   120b2:	9701      	str	r7, [sp, #4]
   120b4:	f7f4 ea80 	blx	65b8 <tt_I210ToARGBRow_C@plt>
   120b8:	07e3      	lsls	r3, r4, #31
   120ba:	d5ee      	bpl.n	1209a <tt_I010ToARGBMatrix@@Base+0x7e>
   120bc:	9b04      	ldr	r3, [sp, #16]
   120be:	9a03      	ldr	r2, [sp, #12]
   120c0:	441a      	add	r2, r3
   120c2:	9b05      	ldr	r3, [sp, #20]
   120c4:	9203      	str	r2, [sp, #12]
   120c6:	449b      	add	fp, r3
   120c8:	e7e7      	b.n	1209a <tt_I010ToARGBMatrix@@Base+0x7e>
   120ca:	2000      	movs	r0, #0
   120cc:	b007      	add	sp, #28
   120ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   120d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   120d6:	b007      	add	sp, #28
   120d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

000120dc <tt_I010ToABGR@@Base>:
   120dc:	b5f0      	push	{r4, r5, r6, r7, lr}
   120de:	b089      	sub	sp, #36	; 0x24
   120e0:	4c09      	ldr	r4, [pc, #36]	; (12108 <tt_I010ToABGR@@Base+0x2c>)
   120e2:	e88d 000c 	stmia.w	sp, {r2, r3}
   120e6:	9f10      	ldr	r7, [sp, #64]	; 0x40
   120e8:	447c      	add	r4, pc
   120ea:	6824      	ldr	r4, [r4, #0]
   120ec:	9b13      	ldr	r3, [sp, #76]	; 0x4c
   120ee:	9e11      	ldr	r6, [sp, #68]	; 0x44
   120f0:	9d12      	ldr	r5, [sp, #72]	; 0x48
   120f2:	9306      	str	r3, [sp, #24]
   120f4:	9702      	str	r7, [sp, #8]
   120f6:	9404      	str	r4, [sp, #16]
   120f8:	9603      	str	r6, [sp, #12]
   120fa:	9505      	str	r5, [sp, #20]
   120fc:	9a0e      	ldr	r2, [sp, #56]	; 0x38
   120fe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
   12100:	f7f4 ea60 	blx	65c4 <tt_I010ToARGBMatrix@plt>
   12104:	b009      	add	sp, #36	; 0x24
   12106:	bdf0      	pop	{r4, r5, r6, r7, pc}
   12108:	4a0c      	ldr	r2, [pc, #48]	; (1213c <tt_Convert16To8Plane@@Base+0x8>)
	...

0001210c <tt_Convert16To8Row_C@@Base>:
   1210c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1210e:	2b00      	cmp	r3, #0
   12110:	dd0f      	ble.n	12132 <tt_Convert16To8Row_C@@Base+0x26>
   12112:	1e4d      	subs	r5, r1, #1
   12114:	eb00 0743 	add.w	r7, r0, r3, lsl #1
   12118:	4616      	mov	r6, r2
   1211a:	4604      	mov	r4, r0
   1211c:	f834 0b02 	ldrh.w	r0, [r4], #2
   12120:	fb06 f000 	mul.w	r0, r6, r0
   12124:	1400      	asrs	r0, r0, #16
   12126:	f7f3 ed0e 	blx	5b44 <clamp255@plt>
   1212a:	42bc      	cmp	r4, r7
   1212c:	f805 0f01 	strb.w	r0, [r5, #1]!
   12130:	d1f4      	bne.n	1211c <tt_Convert16To8Row_C@@Base+0x10>
   12132:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00012134 <tt_Convert16To8Plane@@Base>:
   12134:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   12138:	4605      	mov	r5, r0
   1213a:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
   1213e:	4614      	mov	r4, r2
   12140:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
   12144:	f1b8 0f00 	cmp.w	r8, #0
   12148:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
   1214c:	db1e      	blt.n	1218c <tt_Convert16To8Plane@@Base+0x58>
   1214e:	454b      	cmp	r3, r9
   12150:	bf08      	it	eq
   12152:	4549      	cmpeq	r1, r9
   12154:	d113      	bne.n	1217e <tt_Convert16To8Plane@@Base+0x4a>
   12156:	2700      	movs	r7, #0
   12158:	fb08 f909 	mul.w	r9, r8, r9
   1215c:	46ba      	mov	sl, r7
   1215e:	f04f 0801 	mov.w	r8, #1
   12162:	2600      	movs	r6, #0
   12164:	4628      	mov	r0, r5
   12166:	4621      	mov	r1, r4
   12168:	3601      	adds	r6, #1
   1216a:	465a      	mov	r2, fp
   1216c:	464b      	mov	r3, r9
   1216e:	4455      	add	r5, sl
   12170:	f7f4 ea2e 	blx	65d0 <tt_Convert16To8Row_C@plt>
   12174:	4546      	cmp	r6, r8
   12176:	443c      	add	r4, r7
   12178:	dbf4      	blt.n	12164 <tt_Convert16To8Plane@@Base+0x30>
   1217a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1217e:	f1b8 0f00 	cmp.w	r8, #0
   12182:	d0fa      	beq.n	1217a <tt_Convert16To8Plane@@Base+0x46>
   12184:	ea4f 0a41 	mov.w	sl, r1, lsl #1
   12188:	461f      	mov	r7, r3
   1218a:	e7ea      	b.n	12162 <tt_Convert16To8Plane@@Base+0x2e>
   1218c:	ea6f 0208 	mvn.w	r2, r8
   12190:	f1c8 0800 	rsb	r8, r8, #0
   12194:	fb03 4402 	mla	r4, r3, r2, r4
   12198:	425b      	negs	r3, r3
   1219a:	454b      	cmp	r3, r9
   1219c:	bf08      	it	eq
   1219e:	4549      	cmpeq	r1, r9
   121a0:	d0d9      	beq.n	12156 <tt_Convert16To8Plane@@Base+0x22>
   121a2:	ea4f 0a41 	mov.w	sl, r1, lsl #1
   121a6:	461f      	mov	r7, r3
   121a8:	e7db      	b.n	12162 <tt_Convert16To8Plane@@Base+0x2e>
   121aa:	bf00      	nop

000121ac <tt_I010ToI420@@Base>:
   121ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   121b0:	b087      	sub	sp, #28
   121b2:	469b      	mov	fp, r3
   121b4:	4690      	mov	r8, r2
   121b6:	9e18      	ldr	r6, [sp, #96]	; 0x60
   121b8:	9f10      	ldr	r7, [sp, #64]	; 0x40
   121ba:	1c74      	adds	r4, r6, #1
   121bc:	9005      	str	r0, [sp, #20]
   121be:	2f00      	cmp	r7, #0
   121c0:	bf18      	it	ne
   121c2:	2a00      	cmpne	r2, #0
   121c4:	f8dd a050 	ldr.w	sl, [sp, #80]	; 0x50
   121c8:	ea4f 0464 	mov.w	r4, r4, asr #1
   121cc:	f8dd 9058 	ldr.w	r9, [sp, #88]	; 0x58
   121d0:	9b19      	ldr	r3, [sp, #100]	; 0x64
   121d2:	d04a      	beq.n	1226a <tt_I010ToI420@@Base+0xbe>
   121d4:	f1b9 0f00 	cmp.w	r9, #0
   121d8:	bf18      	it	ne
   121da:	f1ba 0f00 	cmpne.w	sl, #0
   121de:	d044      	beq.n	1226a <tt_I010ToI420@@Base+0xbe>
   121e0:	2b00      	cmp	r3, #0
   121e2:	bf18      	it	ne
   121e4:	2e00      	cmpne	r6, #0
   121e6:	dd40      	ble.n	1226a <tt_I010ToI420@@Base+0xbe>
   121e8:	2b00      	cmp	r3, #0
   121ea:	db21      	blt.n	12230 <tt_I010ToI420@@Base+0x84>
   121ec:	1c5d      	adds	r5, r3, #1
   121ee:	9805      	ldr	r0, [sp, #20]
   121f0:	106d      	asrs	r5, r5, #1
   121f2:	9601      	str	r6, [sp, #4]
   121f4:	f44f 4680 	mov.w	r6, #16384	; 0x4000
   121f8:	9302      	str	r3, [sp, #8]
   121fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
   121fc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
   121fe:	9600      	str	r6, [sp, #0]
   12200:	f7f4 e9ec 	blx	65dc <tt_Convert16To8Plane@plt>
   12204:	4640      	mov	r0, r8
   12206:	4659      	mov	r1, fp
   12208:	4652      	mov	r2, sl
   1220a:	9b15      	ldr	r3, [sp, #84]	; 0x54
   1220c:	9600      	str	r6, [sp, #0]
   1220e:	9401      	str	r4, [sp, #4]
   12210:	9502      	str	r5, [sp, #8]
   12212:	f7f4 e9e4 	blx	65dc <tt_Convert16To8Plane@plt>
   12216:	4638      	mov	r0, r7
   12218:	9600      	str	r6, [sp, #0]
   1221a:	464a      	mov	r2, r9
   1221c:	9401      	str	r4, [sp, #4]
   1221e:	9502      	str	r5, [sp, #8]
   12220:	9911      	ldr	r1, [sp, #68]	; 0x44
   12222:	9b17      	ldr	r3, [sp, #92]	; 0x5c
   12224:	f7f4 e9da 	blx	65dc <tt_Convert16To8Plane@plt>
   12228:	2000      	movs	r0, #0
   1222a:	b007      	add	sp, #28
   1222c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   12230:	f1c3 0501 	rsb	r5, r3, #1
   12234:	9811      	ldr	r0, [sp, #68]	; 0x44
   12236:	ea6f 0e03 	mvn.w	lr, r3
   1223a:	425b      	negs	r3, r3
   1223c:	106d      	asrs	r5, r5, #1
   1223e:	1e6a      	subs	r2, r5, #1
   12240:	fb01 fe0e 	mul.w	lr, r1, lr
   12244:	4249      	negs	r1, r1
   12246:	fb0b fc02 	mul.w	ip, fp, r2
   1224a:	f1cb 0b00 	rsb	fp, fp, #0
   1224e:	fb02 f200 	mul.w	r2, r2, r0
   12252:	9805      	ldr	r0, [sp, #20]
   12254:	eb00 004e 	add.w	r0, r0, lr, lsl #1
   12258:	9005      	str	r0, [sp, #20]
   1225a:	eb08 084c 	add.w	r8, r8, ip, lsl #1
   1225e:	eb07 0742 	add.w	r7, r7, r2, lsl #1
   12262:	9a11      	ldr	r2, [sp, #68]	; 0x44
   12264:	4252      	negs	r2, r2
   12266:	9211      	str	r2, [sp, #68]	; 0x44
   12268:	e7c3      	b.n	121f2 <tt_I010ToI420@@Base+0x46>
   1226a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   1226e:	b007      	add	sp, #28
   12270:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00012274 <__udivsi3@@Base>:
   12274:	1e4a      	subs	r2, r1, #1
   12276:	bf08      	it	eq
   12278:	4770      	bxeq	lr
   1227a:	d33d      	bcc.n	122f8 <__udivsi3@@Base+0x84>
   1227c:	4288      	cmp	r0, r1
   1227e:	d930      	bls.n	122e2 <__udivsi3@@Base+0x6e>
   12280:	4211      	tst	r1, r2
   12282:	d032      	beq.n	122ea <__udivsi3@@Base+0x76>
   12284:	fab1 f381 	clz	r3, r1
   12288:	fab0 f280 	clz	r2, r0
   1228c:	eba3 0202 	sub.w	r2, r3, r2
   12290:	f04f 0301 	mov.w	r3, #1
   12294:	fa01 f102 	lsl.w	r1, r1, r2
   12298:	fa03 f302 	lsl.w	r3, r3, r2
   1229c:	f04f 0200 	mov.w	r2, #0
   122a0:	4288      	cmp	r0, r1
   122a2:	bf24      	itt	cs
   122a4:	1a40      	subcs	r0, r0, r1
   122a6:	431a      	orrcs	r2, r3
   122a8:	ebb0 0f51 	cmp.w	r0, r1, lsr #1
   122ac:	bf24      	itt	cs
   122ae:	eba0 0051 	subcs.w	r0, r0, r1, lsr #1
   122b2:	ea42 0253 	orrcs.w	r2, r2, r3, lsr #1
   122b6:	ebb0 0f91 	cmp.w	r0, r1, lsr #2
   122ba:	bf24      	itt	cs
   122bc:	eba0 0091 	subcs.w	r0, r0, r1, lsr #2
   122c0:	ea42 0293 	orrcs.w	r2, r2, r3, lsr #2
   122c4:	ebb0 0fd1 	cmp.w	r0, r1, lsr #3
   122c8:	bf24      	itt	cs
   122ca:	eba0 00d1 	subcs.w	r0, r0, r1, lsr #3
   122ce:	ea42 02d3 	orrcs.w	r2, r2, r3, lsr #3
   122d2:	2800      	cmp	r0, #0
   122d4:	bf1c      	itt	ne
   122d6:	ea5f 1313 	movsne.w	r3, r3, lsr #4
   122da:	0909      	lsrne	r1, r1, #4
   122dc:	d1e0      	bne.n	122a0 <__udivsi3@@Base+0x2c>
   122de:	4610      	mov	r0, r2
   122e0:	4770      	bx	lr
   122e2:	bf0c      	ite	eq
   122e4:	2001      	moveq	r0, #1
   122e6:	2000      	movne	r0, #0
   122e8:	4770      	bx	lr
   122ea:	fab1 f281 	clz	r2, r1
   122ee:	f1c2 021f 	rsb	r2, r2, #31
   122f2:	fa20 f002 	lsr.w	r0, r0, r2
   122f6:	4770      	bx	lr
   122f8:	b108      	cbz	r0, 122fe <__udivsi3@@Base+0x8a>
   122fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   122fe:	f001 bef9 	b.w	140f4 <__aeabi_llsl@@Base+0x258>
   12302:	bf00      	nop

00012304 <__aeabi_uidivmod@@Base>:
   12304:	2900      	cmp	r1, #0
   12306:	d0f7      	beq.n	122f8 <__udivsi3@@Base+0x84>
   12308:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
   1230c:	f7ff ffb2 	bl	12274 <__udivsi3@@Base>
   12310:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
   12314:	fb02 f300 	mul.w	r3, r2, r0
   12318:	eba1 0103 	sub.w	r1, r1, r3
   1231c:	4770      	bx	lr
   1231e:	bf00      	nop

00012320 <__divsi3@@Base>:
   12320:	2900      	cmp	r1, #0
   12322:	d056      	beq.n	123d2 <__divsi3@@Base+0xb2>
   12324:	ea80 0c01 	eor.w	ip, r0, r1
   12328:	bf48      	it	mi
   1232a:	4249      	negmi	r1, r1
   1232c:	1e4a      	subs	r2, r1, #1
   1232e:	d038      	beq.n	123a2 <__divsi3@@Base+0x82>
   12330:	0003      	movs	r3, r0
   12332:	bf48      	it	mi
   12334:	4243      	negmi	r3, r0
   12336:	428b      	cmp	r3, r1
   12338:	d938      	bls.n	123ac <__divsi3@@Base+0x8c>
   1233a:	4211      	tst	r1, r2
   1233c:	d03e      	beq.n	123bc <__divsi3@@Base+0x9c>
   1233e:	fab1 f281 	clz	r2, r1
   12342:	fab3 f083 	clz	r0, r3
   12346:	eba2 0000 	sub.w	r0, r2, r0
   1234a:	f04f 0201 	mov.w	r2, #1
   1234e:	fa01 f100 	lsl.w	r1, r1, r0
   12352:	fa02 f200 	lsl.w	r2, r2, r0
   12356:	f04f 0000 	mov.w	r0, #0
   1235a:	428b      	cmp	r3, r1
   1235c:	bf24      	itt	cs
   1235e:	1a5b      	subcs	r3, r3, r1
   12360:	4310      	orrcs	r0, r2
   12362:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
   12366:	bf24      	itt	cs
   12368:	eba3 0351 	subcs.w	r3, r3, r1, lsr #1
   1236c:	ea40 0052 	orrcs.w	r0, r0, r2, lsr #1
   12370:	ebb3 0f91 	cmp.w	r3, r1, lsr #2
   12374:	bf24      	itt	cs
   12376:	eba3 0391 	subcs.w	r3, r3, r1, lsr #2
   1237a:	ea40 0092 	orrcs.w	r0, r0, r2, lsr #2
   1237e:	ebb3 0fd1 	cmp.w	r3, r1, lsr #3
   12382:	bf24      	itt	cs
   12384:	eba3 03d1 	subcs.w	r3, r3, r1, lsr #3
   12388:	ea40 00d2 	orrcs.w	r0, r0, r2, lsr #3
   1238c:	2b00      	cmp	r3, #0
   1238e:	bf1c      	itt	ne
   12390:	ea5f 1212 	movsne.w	r2, r2, lsr #4
   12394:	0909      	lsrne	r1, r1, #4
   12396:	d1e0      	bne.n	1235a <__divsi3@@Base+0x3a>
   12398:	f1bc 0f00 	cmp.w	ip, #0
   1239c:	bf48      	it	mi
   1239e:	4240      	negmi	r0, r0
   123a0:	4770      	bx	lr
   123a2:	ea9c 0f00 	teq	ip, r0
   123a6:	bf48      	it	mi
   123a8:	4240      	negmi	r0, r0
   123aa:	4770      	bx	lr
   123ac:	bf38      	it	cc
   123ae:	2000      	movcc	r0, #0
   123b0:	bf04      	itt	eq
   123b2:	ea4f 70ec 	moveq.w	r0, ip, asr #31
   123b6:	f040 0001 	orreq.w	r0, r0, #1
   123ba:	4770      	bx	lr
   123bc:	fab1 f281 	clz	r2, r1
   123c0:	f1c2 021f 	rsb	r2, r2, #31
   123c4:	f1bc 0f00 	cmp.w	ip, #0
   123c8:	fa23 f002 	lsr.w	r0, r3, r2
   123cc:	bf48      	it	mi
   123ce:	4240      	negmi	r0, r0
   123d0:	4770      	bx	lr
   123d2:	2800      	cmp	r0, #0
   123d4:	bfc8      	it	gt
   123d6:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
   123da:	bfb8      	it	lt
   123dc:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
   123e0:	f001 be88 	b.w	140f4 <__aeabi_llsl@@Base+0x258>

000123e4 <__aeabi_idivmod@@Base>:
   123e4:	2900      	cmp	r1, #0
   123e6:	d0f4      	beq.n	123d2 <__divsi3@@Base+0xb2>
   123e8:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
   123ec:	f7ff ff9a 	bl	12324 <__divsi3@@Base+0x4>
   123f0:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
   123f4:	fb02 f300 	mul.w	r3, r2, r0
   123f8:	eba1 0103 	sub.w	r1, r1, r3
   123fc:	4770      	bx	lr
   123fe:	bf00      	nop

00012400 <__aeabi_frsub@@Base>:
   12400:	f080 4000 	eor.w	r0, r0, #2147483648	; 0x80000000
   12404:	e002      	b.n	1240c <__addsf3@@Base>
   12406:	bf00      	nop

00012408 <__aeabi_fsub@@Base>:
   12408:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000

0001240c <__addsf3@@Base>:
   1240c:	0042      	lsls	r2, r0, #1
   1240e:	bf1f      	itttt	ne
   12410:	ea5f 0341 	movsne.w	r3, r1, lsl #1
   12414:	ea92 0f03 	teqne	r2, r3
   12418:	ea7f 6c22 	mvnsne.w	ip, r2, asr #24
   1241c:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
   12420:	d06a      	beq.n	124f8 <__addsf3@@Base+0xec>
   12422:	ea4f 6212 	mov.w	r2, r2, lsr #24
   12426:	ebd2 6313 	rsbs	r3, r2, r3, lsr #24
   1242a:	bfc1      	itttt	gt
   1242c:	18d2      	addgt	r2, r2, r3
   1242e:	4041      	eorgt	r1, r0
   12430:	4048      	eorgt	r0, r1
   12432:	4041      	eorgt	r1, r0
   12434:	bfb8      	it	lt
   12436:	425b      	neglt	r3, r3
   12438:	2b19      	cmp	r3, #25
   1243a:	bf88      	it	hi
   1243c:	4770      	bxhi	lr
   1243e:	f010 4f00 	tst.w	r0, #2147483648	; 0x80000000
   12442:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
   12446:	f020 407f 	bic.w	r0, r0, #4278190080	; 0xff000000
   1244a:	bf18      	it	ne
   1244c:	4240      	negne	r0, r0
   1244e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
   12452:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
   12456:	f021 417f 	bic.w	r1, r1, #4278190080	; 0xff000000
   1245a:	bf18      	it	ne
   1245c:	4249      	negne	r1, r1
   1245e:	ea92 0f03 	teq	r2, r3
   12462:	d03f      	beq.n	124e4 <__addsf3@@Base+0xd8>
   12464:	f1a2 0201 	sub.w	r2, r2, #1
   12468:	fa41 fc03 	asr.w	ip, r1, r3
   1246c:	eb10 000c 	adds.w	r0, r0, ip
   12470:	f1c3 0320 	rsb	r3, r3, #32
   12474:	fa01 f103 	lsl.w	r1, r1, r3
   12478:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
   1247c:	d502      	bpl.n	12484 <__addsf3@@Base+0x78>
   1247e:	4249      	negs	r1, r1
   12480:	eb60 0040 	sbc.w	r0, r0, r0, lsl #1
   12484:	f5b0 0f00 	cmp.w	r0, #8388608	; 0x800000
   12488:	d313      	bcc.n	124b2 <__addsf3@@Base+0xa6>
   1248a:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
   1248e:	d306      	bcc.n	1249e <__addsf3@@Base+0x92>
   12490:	0840      	lsrs	r0, r0, #1
   12492:	ea4f 0131 	mov.w	r1, r1, rrx
   12496:	f102 0201 	add.w	r2, r2, #1
   1249a:	2afe      	cmp	r2, #254	; 0xfe
   1249c:	d251      	bcs.n	12542 <__addsf3@@Base+0x136>
   1249e:	f1b1 4f00 	cmp.w	r1, #2147483648	; 0x80000000
   124a2:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
   124a6:	bf08      	it	eq
   124a8:	f020 0001 	biceq.w	r0, r0, #1
   124ac:	ea40 0003 	orr.w	r0, r0, r3
   124b0:	4770      	bx	lr
   124b2:	0049      	lsls	r1, r1, #1
   124b4:	eb40 0000 	adc.w	r0, r0, r0
   124b8:	f410 0f00 	tst.w	r0, #8388608	; 0x800000
   124bc:	f1a2 0201 	sub.w	r2, r2, #1
   124c0:	d1ed      	bne.n	1249e <__addsf3@@Base+0x92>
   124c2:	fab0 fc80 	clz	ip, r0
   124c6:	f1ac 0c08 	sub.w	ip, ip, #8
   124ca:	ebb2 020c 	subs.w	r2, r2, ip
   124ce:	fa00 f00c 	lsl.w	r0, r0, ip
   124d2:	bfaa      	itet	ge
   124d4:	eb00 50c2 	addge.w	r0, r0, r2, lsl #23
   124d8:	4252      	neglt	r2, r2
   124da:	4318      	orrge	r0, r3
   124dc:	bfbc      	itt	lt
   124de:	40d0      	lsrlt	r0, r2
   124e0:	4318      	orrlt	r0, r3
   124e2:	4770      	bx	lr
   124e4:	f092 0f00 	teq	r2, #0
   124e8:	f481 0100 	eor.w	r1, r1, #8388608	; 0x800000
   124ec:	bf06      	itte	eq
   124ee:	f480 0000 	eoreq.w	r0, r0, #8388608	; 0x800000
   124f2:	3201      	addeq	r2, #1
   124f4:	3b01      	subne	r3, #1
   124f6:	e7b5      	b.n	12464 <__addsf3@@Base+0x58>
   124f8:	ea4f 0341 	mov.w	r3, r1, lsl #1
   124fc:	ea7f 6c22 	mvns.w	ip, r2, asr #24
   12500:	bf18      	it	ne
   12502:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
   12506:	d021      	beq.n	1254c <__addsf3@@Base+0x140>
   12508:	ea92 0f03 	teq	r2, r3
   1250c:	d004      	beq.n	12518 <__addsf3@@Base+0x10c>
   1250e:	f092 0f00 	teq	r2, #0
   12512:	bf08      	it	eq
   12514:	4608      	moveq	r0, r1
   12516:	4770      	bx	lr
   12518:	ea90 0f01 	teq	r0, r1
   1251c:	bf1c      	itt	ne
   1251e:	2000      	movne	r0, #0
   12520:	4770      	bxne	lr
   12522:	f012 4f7f 	tst.w	r2, #4278190080	; 0xff000000
   12526:	d104      	bne.n	12532 <__addsf3@@Base+0x126>
   12528:	0040      	lsls	r0, r0, #1
   1252a:	bf28      	it	cs
   1252c:	f040 4000 	orrcs.w	r0, r0, #2147483648	; 0x80000000
   12530:	4770      	bx	lr
   12532:	f112 7200 	adds.w	r2, r2, #33554432	; 0x2000000
   12536:	bf3c      	itt	cc
   12538:	f500 0000 	addcc.w	r0, r0, #8388608	; 0x800000
   1253c:	4770      	bxcc	lr
   1253e:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
   12542:	f043 40fe 	orr.w	r0, r3, #2130706432	; 0x7f000000
   12546:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
   1254a:	4770      	bx	lr
   1254c:	ea7f 6222 	mvns.w	r2, r2, asr #24
   12550:	bf16      	itet	ne
   12552:	4608      	movne	r0, r1
   12554:	ea7f 6323 	mvnseq.w	r3, r3, asr #24
   12558:	4601      	movne	r1, r0
   1255a:	0242      	lsls	r2, r0, #9
   1255c:	bf06      	itte	eq
   1255e:	ea5f 2341 	movseq.w	r3, r1, lsl #9
   12562:	ea90 0f01 	teqeq	r0, r1
   12566:	f440 0080 	orrne.w	r0, r0, #4194304	; 0x400000
   1256a:	4770      	bx	lr

0001256c <__aeabi_ui2f@@Base>:
   1256c:	f04f 0300 	mov.w	r3, #0
   12570:	e004      	b.n	1257c <__aeabi_i2f@@Base+0x8>
   12572:	bf00      	nop

00012574 <__aeabi_i2f@@Base>:
   12574:	f010 4300 	ands.w	r3, r0, #2147483648	; 0x80000000
   12578:	bf48      	it	mi
   1257a:	4240      	negmi	r0, r0
   1257c:	ea5f 0c00 	movs.w	ip, r0
   12580:	bf08      	it	eq
   12582:	4770      	bxeq	lr
   12584:	f043 4396 	orr.w	r3, r3, #1258291200	; 0x4b000000
   12588:	4601      	mov	r1, r0
   1258a:	f04f 0000 	mov.w	r0, #0
   1258e:	e01c      	b.n	125ca <__aeabi_l2f@@Base+0x2a>

00012590 <__aeabi_ul2f@@Base>:
   12590:	ea50 0201 	orrs.w	r2, r0, r1
   12594:	bf08      	it	eq
   12596:	4770      	bxeq	lr
   12598:	f04f 0300 	mov.w	r3, #0
   1259c:	e00a      	b.n	125b4 <__aeabi_l2f@@Base+0x14>
   1259e:	bf00      	nop

000125a0 <__aeabi_l2f@@Base>:
   125a0:	ea50 0201 	orrs.w	r2, r0, r1
   125a4:	bf08      	it	eq
   125a6:	4770      	bxeq	lr
   125a8:	f011 4300 	ands.w	r3, r1, #2147483648	; 0x80000000
   125ac:	d502      	bpl.n	125b4 <__aeabi_l2f@@Base+0x14>
   125ae:	4240      	negs	r0, r0
   125b0:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   125b4:	ea5f 0c01 	movs.w	ip, r1
   125b8:	bf02      	ittt	eq
   125ba:	4684      	moveq	ip, r0
   125bc:	4601      	moveq	r1, r0
   125be:	2000      	moveq	r0, #0
   125c0:	f043 43b6 	orr.w	r3, r3, #1526726656	; 0x5b000000
   125c4:	bf08      	it	eq
   125c6:	f1a3 5380 	subeq.w	r3, r3, #268435456	; 0x10000000
   125ca:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
   125ce:	fabc f28c 	clz	r2, ip
   125d2:	3a08      	subs	r2, #8
   125d4:	eba3 53c2 	sub.w	r3, r3, r2, lsl #23
   125d8:	db10      	blt.n	125fc <__aeabi_l2f@@Base+0x5c>
   125da:	fa01 fc02 	lsl.w	ip, r1, r2
   125de:	4463      	add	r3, ip
   125e0:	fa00 fc02 	lsl.w	ip, r0, r2
   125e4:	f1c2 0220 	rsb	r2, r2, #32
   125e8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
   125ec:	fa20 f202 	lsr.w	r2, r0, r2
   125f0:	eb43 0002 	adc.w	r0, r3, r2
   125f4:	bf08      	it	eq
   125f6:	f020 0001 	biceq.w	r0, r0, #1
   125fa:	4770      	bx	lr
   125fc:	f102 0220 	add.w	r2, r2, #32
   12600:	fa01 fc02 	lsl.w	ip, r1, r2
   12604:	f1c2 0220 	rsb	r2, r2, #32
   12608:	ea50 004c 	orrs.w	r0, r0, ip, lsl #1
   1260c:	fa21 f202 	lsr.w	r2, r1, r2
   12610:	eb43 0002 	adc.w	r0, r3, r2
   12614:	bf08      	it	eq
   12616:	ea20 70dc 	biceq.w	r0, r0, ip, lsr #31
   1261a:	4770      	bx	lr

0001261c <__aeabi_uldivmod@@Base>:
   1261c:	b94b      	cbnz	r3, 12632 <__aeabi_uldivmod@@Base+0x16>
   1261e:	b942      	cbnz	r2, 12632 <__aeabi_uldivmod@@Base+0x16>
   12620:	2900      	cmp	r1, #0
   12622:	bf08      	it	eq
   12624:	2800      	cmpeq	r0, #0
   12626:	d002      	beq.n	1262e <__aeabi_uldivmod@@Base+0x12>
   12628:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
   1262c:	4608      	mov	r0, r1
   1262e:	f001 bd69 	b.w	14104 <__aeabi_llsl@@Base+0x268>
   12632:	b082      	sub	sp, #8
   12634:	46ec      	mov	ip, sp
   12636:	e92d 5000 	stmdb	sp!, {ip, lr}
   1263a:	f7f3 efdc 	blx	65f4 <__gnu_uldivmod_helper@plt>
   1263e:	f8dd e004 	ldr.w	lr, [sp, #4]
   12642:	b002      	add	sp, #8
   12644:	bc0c      	pop	{r2, r3}
   12646:	4770      	bx	lr

00012648 <__aeabi_idiv0@@Base>:
   12648:	b502      	push	{r1, lr}
   1264a:	f04f 0008 	mov.w	r0, #8
   1264e:	f7f3 efde 	blx	660c <raise@plt>
   12652:	bd02      	pop	{r1, pc}

00012654 <__aeabi_f2ulz@@Base>:
   12654:	b5d0      	push	{r4, r6, r7, lr}
   12656:	f7f3 efe0 	blx	6618 <__aeabi_f2d@plt>
   1265a:	2200      	movs	r2, #0
   1265c:	4b0e      	ldr	r3, [pc, #56]	; (12698 <__aeabi_f2ulz@@Base+0x44>)
   1265e:	4606      	mov	r6, r0
   12660:	460f      	mov	r7, r1
   12662:	f7f3 efe0 	blx	6624 <__aeabi_dmul@plt>
   12666:	f7f3 efe4 	blx	6630 <__aeabi_d2uiz@plt>
   1266a:	4604      	mov	r4, r0
   1266c:	f7f3 efe6 	blx	663c <__aeabi_ui2d@plt>
   12670:	2200      	movs	r2, #0
   12672:	4b0a      	ldr	r3, [pc, #40]	; (1269c <__aeabi_f2ulz@@Base+0x48>)
   12674:	f7f3 efd6 	blx	6624 <__aeabi_dmul@plt>
   12678:	4602      	mov	r2, r0
   1267a:	460b      	mov	r3, r1
   1267c:	4630      	mov	r0, r6
   1267e:	4639      	mov	r1, r7
   12680:	f7f3 efe2 	blx	6648 <__aeabi_dsub@plt>
   12684:	f7f3 efd4 	blx	6630 <__aeabi_d2uiz@plt>
   12688:	2200      	movs	r2, #0
   1268a:	4623      	mov	r3, r4
   1268c:	ea42 0200 	orr.w	r2, r2, r0
   12690:	4610      	mov	r0, r2
   12692:	4619      	mov	r1, r3
   12694:	bdd0      	pop	{r4, r6, r7, pc}
   12696:	bf00      	nop
   12698:	0000      	movs	r0, r0
   1269a:	3df0      	subs	r5, #240	; 0xf0
   1269c:	0000      	movs	r0, r0
   1269e:	41f0      	rors	r0, r6

000126a0 <__gnu_ldivmod_helper@@Base>:
   126a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   126a2:	4614      	mov	r4, r2
   126a4:	4606      	mov	r6, r0
   126a6:	460f      	mov	r7, r1
   126a8:	461d      	mov	r5, r3
   126aa:	f7f3 efd4 	blx	6654 <__divdi3@plt>
   126ae:	fb04 f301 	mul.w	r3, r4, r1
   126b2:	fb00 3505 	mla	r5, r0, r5, r3
   126b6:	fba4 2300 	umull	r2, r3, r4, r0
   126ba:	9c06      	ldr	r4, [sp, #24]
   126bc:	1ab2      	subs	r2, r6, r2
   126be:	442b      	add	r3, r5
   126c0:	eb67 0303 	sbc.w	r3, r7, r3
   126c4:	e9c4 2300 	strd	r2, r3, [r4]
   126c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000126ca <__gnu_uldivmod_helper@@Base>:
   126ca:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   126cc:	4617      	mov	r7, r2
   126ce:	4604      	mov	r4, r0
   126d0:	460d      	mov	r5, r1
   126d2:	461e      	mov	r6, r3
   126d4:	f7f3 efc4 	blx	6660 <__udivdi3@plt>
   126d8:	fba0 2307 	umull	r2, r3, r0, r7
   126dc:	4346      	muls	r6, r0
   126de:	1aa2      	subs	r2, r4, r2
   126e0:	fb07 6601 	mla	r6, r7, r1, r6
   126e4:	9c06      	ldr	r4, [sp, #24]
   126e6:	4433      	add	r3, r6
   126e8:	eb65 0303 	sbc.w	r3, r5, r3
   126ec:	e9c4 2300 	strd	r2, r3, [r4]
   126f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   126f2:	0000      	movs	r0, r0
   126f4:	6803      	ldr	r3, [r0, #0]
   126f6:	005a      	lsls	r2, r3, #1
   126f8:	bf4c      	ite	mi
   126fa:	f043 4300 	orrmi.w	r3, r3, #2147483648	; 0x80000000
   126fe:	f023 4300 	bicpl.w	r3, r3, #2147483648	; 0x80000000
   12702:	4418      	add	r0, r3
   12704:	4770      	bx	lr
   12706:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1270a:	4680      	mov	r8, r0
   1270c:	4692      	mov	sl, r2
   1270e:	b321      	cbz	r1, 1275a <__gnu_uldivmod_helper@@Base+0x90>
   12710:	1e4f      	subs	r7, r1, #1
   12712:	f04f 0b00 	mov.w	fp, #0
   12716:	46b9      	mov	r9, r7
   12718:	eb0b 0409 	add.w	r4, fp, r9
   1271c:	eb04 74d4 	add.w	r4, r4, r4, lsr #31
   12720:	1064      	asrs	r4, r4, #1
   12722:	00e6      	lsls	r6, r4, #3
   12724:	eb08 0506 	add.w	r5, r8, r6
   12728:	4628      	mov	r0, r5
   1272a:	f7ff ffe3 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   1272e:	42bc      	cmp	r4, r7
   12730:	d017      	beq.n	12762 <__gnu_uldivmod_helper@@Base+0x98>
   12732:	9001      	str	r0, [sp, #4]
   12734:	f106 0008 	add.w	r0, r6, #8
   12738:	4440      	add	r0, r8
   1273a:	f7ff ffdb 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   1273e:	9b01      	ldr	r3, [sp, #4]
   12740:	459a      	cmp	sl, r3
   12742:	d204      	bcs.n	1274e <__gnu_uldivmod_helper@@Base+0x84>
   12744:	455c      	cmp	r4, fp
   12746:	d00a      	beq.n	1275e <__gnu_uldivmod_helper@@Base+0x94>
   12748:	f104 39ff 	add.w	r9, r4, #4294967295	; 0xffffffff
   1274c:	e7e4      	b.n	12718 <__gnu_uldivmod_helper@@Base+0x4e>
   1274e:	3801      	subs	r0, #1
   12750:	4582      	cmp	sl, r0
   12752:	d908      	bls.n	12766 <__gnu_uldivmod_helper@@Base+0x9c>
   12754:	f104 0b01 	add.w	fp, r4, #1
   12758:	e7de      	b.n	12718 <__gnu_uldivmod_helper@@Base+0x4e>
   1275a:	460d      	mov	r5, r1
   1275c:	e003      	b.n	12766 <__gnu_uldivmod_helper@@Base+0x9c>
   1275e:	2500      	movs	r5, #0
   12760:	e001      	b.n	12766 <__gnu_uldivmod_helper@@Base+0x9c>
   12762:	4582      	cmp	sl, r0
   12764:	d3ee      	bcc.n	12744 <__gnu_uldivmod_helper@@Base+0x7a>
   12766:	4628      	mov	r0, r5
   12768:	b003      	add	sp, #12
   1276a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1276e:	2801      	cmp	r0, #1
   12770:	d006      	beq.n	12780 <__gnu_uldivmod_helper@@Base+0xb6>
   12772:	2802      	cmp	r0, #2
   12774:	d008      	beq.n	12788 <__gnu_uldivmod_helper@@Base+0xbe>
   12776:	b958      	cbnz	r0, 12790 <__gnu_uldivmod_helper@@Base+0xc6>
   12778:	4806      	ldr	r0, [pc, #24]	; (12794 <__gnu_uldivmod_helper@@Base+0xca>)
   1277a:	4478      	add	r0, pc
   1277c:	6800      	ldr	r0, [r0, #0]
   1277e:	4770      	bx	lr
   12780:	4805      	ldr	r0, [pc, #20]	; (12798 <__gnu_uldivmod_helper@@Base+0xce>)
   12782:	4478      	add	r0, pc
   12784:	6800      	ldr	r0, [r0, #0]
   12786:	4770      	bx	lr
   12788:	4804      	ldr	r0, [pc, #16]	; (1279c <__gnu_uldivmod_helper@@Base+0xd2>)
   1278a:	4478      	add	r0, pc
   1278c:	6800      	ldr	r0, [r0, #0]
   1278e:	4770      	bx	lr
   12790:	2000      	movs	r0, #0
   12792:	4770      	bx	lr
   12794:	437e      	muls	r6, r7
   12796:	0000      	movs	r0, r0
   12798:	437a      	muls	r2, r7
   1279a:	0000      	movs	r0, r0
   1279c:	4376      	muls	r6, r6
   1279e:	0000      	movs	r0, r0
   127a0:	4b24      	ldr	r3, [pc, #144]	; (12834 <__gnu_uldivmod_helper@@Base+0x16a>)
   127a2:	b537      	push	{r0, r1, r2, r4, r5, lr}
   127a4:	447b      	add	r3, pc
   127a6:	681b      	ldr	r3, [r3, #0]
   127a8:	4604      	mov	r4, r0
   127aa:	1e8d      	subs	r5, r1, #2
   127ac:	b143      	cbz	r3, 127c0 <__gnu_uldivmod_helper@@Base+0xf6>
   127ae:	4628      	mov	r0, r5
   127b0:	a901      	add	r1, sp, #4
   127b2:	f7f3 ef5c 	blx	666c <__gnu_Unwind_Find_exidx@plt>
   127b6:	b960      	cbnz	r0, 127d2 <__gnu_uldivmod_helper@@Base+0x108>
   127b8:	2300      	movs	r3, #0
   127ba:	2009      	movs	r0, #9
   127bc:	6123      	str	r3, [r4, #16]
   127be:	e037      	b.n	12830 <__gnu_uldivmod_helper@@Base+0x166>
   127c0:	4b1d      	ldr	r3, [pc, #116]	; (12838 <__gnu_uldivmod_helper@@Base+0x16e>)
   127c2:	481e      	ldr	r0, [pc, #120]	; (1283c <__gnu_uldivmod_helper@@Base+0x172>)
   127c4:	447b      	add	r3, pc
   127c6:	681b      	ldr	r3, [r3, #0]
   127c8:	4478      	add	r0, pc
   127ca:	6800      	ldr	r0, [r0, #0]
   127cc:	1a1b      	subs	r3, r3, r0
   127ce:	10db      	asrs	r3, r3, #3
   127d0:	9301      	str	r3, [sp, #4]
   127d2:	462a      	mov	r2, r5
   127d4:	9901      	ldr	r1, [sp, #4]
   127d6:	f7ff ff96 	bl	12706 <__gnu_uldivmod_helper@@Base+0x3c>
   127da:	4605      	mov	r5, r0
   127dc:	2800      	cmp	r0, #0
   127de:	d0eb      	beq.n	127b8 <__gnu_uldivmod_helper@@Base+0xee>
   127e0:	f7ff ff88 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   127e4:	686b      	ldr	r3, [r5, #4]
   127e6:	2b01      	cmp	r3, #1
   127e8:	64a0      	str	r0, [r4, #72]	; 0x48
   127ea:	d103      	bne.n	127f4 <__gnu_uldivmod_helper@@Base+0x12a>
   127ec:	2300      	movs	r3, #0
   127ee:	2005      	movs	r0, #5
   127f0:	6123      	str	r3, [r4, #16]
   127f2:	e01d      	b.n	12830 <__gnu_uldivmod_helper@@Base+0x166>
   127f4:	2b00      	cmp	r3, #0
   127f6:	f105 0004 	add.w	r0, r5, #4
   127fa:	da02      	bge.n	12802 <__gnu_uldivmod_helper@@Base+0x138>
   127fc:	64e0      	str	r0, [r4, #76]	; 0x4c
   127fe:	2301      	movs	r3, #1
   12800:	e003      	b.n	1280a <__gnu_uldivmod_helper@@Base+0x140>
   12802:	f7ff ff77 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   12806:	2300      	movs	r3, #0
   12808:	64e0      	str	r0, [r4, #76]	; 0x4c
   1280a:	6ce0      	ldr	r0, [r4, #76]	; 0x4c
   1280c:	6523      	str	r3, [r4, #80]	; 0x50
   1280e:	6803      	ldr	r3, [r0, #0]
   12810:	2b00      	cmp	r3, #0
   12812:	da09      	bge.n	12828 <__gnu_uldivmod_helper@@Base+0x15e>
   12814:	f3c3 6003 	ubfx	r0, r3, #24, #4
   12818:	f7ff ffa9 	bl	1276e <__gnu_uldivmod_helper@@Base+0xa4>
   1281c:	2800      	cmp	r0, #0
   1281e:	6120      	str	r0, [r4, #16]
   12820:	bf0c      	ite	eq
   12822:	2009      	moveq	r0, #9
   12824:	2000      	movne	r0, #0
   12826:	e003      	b.n	12830 <__gnu_uldivmod_helper@@Base+0x166>
   12828:	f7ff ff64 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   1282c:	6120      	str	r0, [r4, #16]
   1282e:	2000      	movs	r0, #0
   12830:	b003      	add	sp, #12
   12832:	bd30      	pop	{r4, r5, pc}
   12834:	4360      	muls	r0, r4
   12836:	0000      	movs	r0, r0
   12838:	4344      	muls	r4, r0
   1283a:	0000      	movs	r0, r0
   1283c:	4344      	muls	r4, r0
   1283e:	0000      	movs	r0, r0
   12840:	6803      	ldr	r3, [r0, #0]
   12842:	b510      	push	{r4, lr}
   12844:	4604      	mov	r4, r0
   12846:	07d8      	lsls	r0, r3, #31
   12848:	d409      	bmi.n	1285e <__gnu_uldivmod_helper@@Base+0x194>
   1284a:	f013 0f02 	tst.w	r3, #2
   1284e:	f104 0048 	add.w	r0, r4, #72	; 0x48
   12852:	d002      	beq.n	1285a <__gnu_uldivmod_helper@@Base+0x190>
   12854:	f7f3 ef10 	blx	6678 <__gnu_Unwind_Restore_VFP_D@plt>
   12858:	e001      	b.n	1285e <__gnu_uldivmod_helper@@Base+0x194>
   1285a:	f7f3 ef14 	blx	6684 <__gnu_Unwind_Restore_VFP@plt>
   1285e:	6823      	ldr	r3, [r4, #0]
   12860:	0759      	lsls	r1, r3, #29
   12862:	d403      	bmi.n	1286c <__gnu_uldivmod_helper@@Base+0x1a2>
   12864:	f104 00d0 	add.w	r0, r4, #208	; 0xd0
   12868:	f7f3 ef12 	blx	6690 <__gnu_Unwind_Restore_VFP_D_16_to_31@plt>
   1286c:	6823      	ldr	r3, [r4, #0]
   1286e:	071a      	lsls	r2, r3, #28
   12870:	d403      	bmi.n	1287a <__gnu_uldivmod_helper@@Base+0x1b0>
   12872:	f504 70a8 	add.w	r0, r4, #336	; 0x150
   12876:	f7f3 ef12 	blx	669c <__gnu_Unwind_Restore_WMMXD@plt>
   1287a:	6823      	ldr	r3, [r4, #0]
   1287c:	06db      	lsls	r3, r3, #27
   1287e:	d405      	bmi.n	1288c <__gnu_uldivmod_helper@@Base+0x1c2>
   12880:	f504 70e8 	add.w	r0, r4, #464	; 0x1d0
   12884:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   12888:	f001 bc44 	b.w	14114 <__aeabi_llsl@@Base+0x278>
   1288c:	bd10      	pop	{r4, pc}
   1288e:	6803      	ldr	r3, [r0, #0]
   12890:	b10b      	cbz	r3, 12896 <__gnu_uldivmod_helper@@Base+0x1cc>
   12892:	5818      	ldr	r0, [r3, r0]
   12894:	4770      	bx	lr
   12896:	4618      	mov	r0, r3
   12898:	4770      	bx	lr
   1289a:	2009      	movs	r0, #9
   1289c:	4770      	bx	lr
   1289e:	4770      	bx	lr
   128a0:	b570      	push	{r4, r5, r6, lr}
   128a2:	4605      	mov	r5, r0
   128a4:	460c      	mov	r4, r1
   128a6:	4628      	mov	r0, r5
   128a8:	6c21      	ldr	r1, [r4, #64]	; 0x40
   128aa:	f7ff ff79 	bl	127a0 <__gnu_uldivmod_helper@@Base+0xd6>
   128ae:	4606      	mov	r6, r0
   128b0:	b108      	cbz	r0, 128b6 <__gnu_uldivmod_helper@@Base+0x1ec>
   128b2:	f7f3 eefa 	blx	66a8 <abort@plt>
   128b6:	6c23      	ldr	r3, [r4, #64]	; 0x40
   128b8:	2001      	movs	r0, #1
   128ba:	4629      	mov	r1, r5
   128bc:	4622      	mov	r2, r4
   128be:	616b      	str	r3, [r5, #20]
   128c0:	692b      	ldr	r3, [r5, #16]
   128c2:	4798      	blx	r3
   128c4:	2808      	cmp	r0, #8
   128c6:	d0ee      	beq.n	128a6 <__gnu_uldivmod_helper@@Base+0x1dc>
   128c8:	2807      	cmp	r0, #7
   128ca:	d1f2      	bne.n	128b2 <__gnu_uldivmod_helper@@Base+0x1e8>
   128cc:	4630      	mov	r0, r6
   128ce:	6c21      	ldr	r1, [r4, #64]	; 0x40
   128d0:	f7ff ffe5 	bl	1289e <__gnu_uldivmod_helper@@Base+0x1d4>
   128d4:	1d20      	adds	r0, r4, #4
   128d6:	f7f3 eeee 	blx	66b4 <restore_core_regs@plt>
   128da:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   128de:	1d0d      	adds	r5, r1, #4
   128e0:	f8d0 800c 	ldr.w	r8, [r0, #12]
   128e4:	4607      	mov	r7, r0
   128e6:	f8d0 9018 	ldr.w	r9, [r0, #24]
   128ea:	4692      	mov	sl, r2
   128ec:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   128ee:	f5ad 7d73 	sub.w	sp, sp, #972	; 0x3cc
   128f2:	ac03      	add	r4, sp, #12
   128f4:	ae02      	add	r6, sp, #8
   128f6:	f50d 7bf4 	add.w	fp, sp, #488	; 0x1e8
   128fa:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   128fc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   128fe:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   12900:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   12902:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   12904:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
   12908:	2500      	movs	r5, #0
   1290a:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
   1290e:	6035      	str	r5, [r6, #0]
   12910:	4638      	mov	r0, r7
   12912:	6c31      	ldr	r1, [r6, #64]	; 0x40
   12914:	f7ff ff44 	bl	127a0 <__gnu_uldivmod_helper@@Base+0xd6>
   12918:	f1ba 0f00 	cmp.w	sl, #0
   1291c:	bf0c      	ite	eq
   1291e:	f04f 0a09 	moveq.w	sl, #9
   12922:	f04f 0a0a 	movne.w	sl, #10
   12926:	4604      	mov	r4, r0
   12928:	b980      	cbnz	r0, 1294c <__gnu_uldivmod_helper@@Base+0x282>
   1292a:	6c33      	ldr	r3, [r6, #64]	; 0x40
   1292c:	4631      	mov	r1, r6
   1292e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
   12932:	4658      	mov	r0, fp
   12934:	617b      	str	r3, [r7, #20]
   12936:	f7f3 e864 	blx	5a00 <memcpy@plt>
   1293a:	693b      	ldr	r3, [r7, #16]
   1293c:	4650      	mov	r0, sl
   1293e:	4639      	mov	r1, r7
   12940:	465a      	mov	r2, fp
   12942:	4798      	blx	r3
   12944:	f8db 3038 	ldr.w	r3, [fp, #56]	; 0x38
   12948:	4605      	mov	r5, r0
   1294a:	e002      	b.n	12952 <__gnu_uldivmod_helper@@Base+0x288>
   1294c:	6bb3      	ldr	r3, [r6, #56]	; 0x38
   1294e:	f04a 0a10 	orr.w	sl, sl, #16
   12952:	6473      	str	r3, [r6, #68]	; 0x44
   12954:	2001      	movs	r0, #1
   12956:	e88d 0240 	stmia.w	sp, {r6, r9}
   1295a:	4651      	mov	r1, sl
   1295c:	463a      	mov	r2, r7
   1295e:	463b      	mov	r3, r7
   12960:	47c0      	blx	r8
   12962:	b990      	cbnz	r0, 1298a <__gnu_uldivmod_helper@@Base+0x2c0>
   12964:	b99c      	cbnz	r4, 1298e <__gnu_uldivmod_helper@@Base+0x2c4>
   12966:	4630      	mov	r0, r6
   12968:	4659      	mov	r1, fp
   1296a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
   1296e:	46a2      	mov	sl, r4
   12970:	f7f3 e846 	blx	5a00 <memcpy@plt>
   12974:	2d08      	cmp	r5, #8
   12976:	d0cb      	beq.n	12910 <__gnu_uldivmod_helper@@Base+0x246>
   12978:	2d07      	cmp	r5, #7
   1297a:	d106      	bne.n	1298a <__gnu_uldivmod_helper@@Base+0x2c0>
   1297c:	4620      	mov	r0, r4
   1297e:	6c31      	ldr	r1, [r6, #64]	; 0x40
   12980:	f7ff ff8d 	bl	1289e <__gnu_uldivmod_helper@@Base+0x1d4>
   12984:	a803      	add	r0, sp, #12
   12986:	f7f3 ee96 	blx	66b4 <restore_core_regs@plt>
   1298a:	2009      	movs	r0, #9
   1298c:	e000      	b.n	12990 <__gnu_uldivmod_helper@@Base+0x2c6>
   1298e:	4620      	mov	r0, r4
   12990:	f50d 7d73 	add.w	sp, sp, #972	; 0x3cc
   12994:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00012998 <_Unwind_GetCFA@@Base>:
   12998:	6c40      	ldr	r0, [r0, #68]	; 0x44
   1299a:	4770      	bx	lr

0001299c <__gnu_Unwind_RaiseException@@Base>:
   1299c:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   1299e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   129a2:	1d0d      	adds	r5, r1, #4
   129a4:	640b      	str	r3, [r1, #64]	; 0x40
   129a6:	4607      	mov	r7, r0
   129a8:	460e      	mov	r6, r1
   129aa:	b0f8      	sub	sp, #480	; 0x1e0
   129ac:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   129ae:	ac01      	add	r4, sp, #4
   129b0:	46e8      	mov	r8, sp
   129b2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   129b4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   129b6:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   129b8:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
   129ba:	c40f      	stmia	r4!, {r0, r1, r2, r3}
   129bc:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
   129c0:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
   129c4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
   129c8:	9300      	str	r3, [sp, #0]
   129ca:	4638      	mov	r0, r7
   129cc:	f8d8 1040 	ldr.w	r1, [r8, #64]	; 0x40
   129d0:	f7ff fee6 	bl	127a0 <__gnu_uldivmod_helper@@Base+0xd6>
   129d4:	b978      	cbnz	r0, 129f6 <__gnu_Unwind_RaiseException@@Base+0x5a>
   129d6:	693b      	ldr	r3, [r7, #16]
   129d8:	4639      	mov	r1, r7
   129da:	4642      	mov	r2, r8
   129dc:	4798      	blx	r3
   129de:	2808      	cmp	r0, #8
   129e0:	4604      	mov	r4, r0
   129e2:	d0f2      	beq.n	129ca <__gnu_Unwind_RaiseException@@Base+0x2e>
   129e4:	4640      	mov	r0, r8
   129e6:	f7ff ff2b 	bl	12840 <__gnu_uldivmod_helper@@Base+0x176>
   129ea:	2c06      	cmp	r4, #6
   129ec:	d103      	bne.n	129f6 <__gnu_Unwind_RaiseException@@Base+0x5a>
   129ee:	4638      	mov	r0, r7
   129f0:	4631      	mov	r1, r6
   129f2:	f7ff ff55 	bl	128a0 <__gnu_uldivmod_helper@@Base+0x1d6>
   129f6:	2009      	movs	r0, #9
   129f8:	b078      	add	sp, #480	; 0x1e0
   129fa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000129fe <__gnu_Unwind_ForcedUnwind@@Base>:
   129fe:	b510      	push	{r4, lr}
   12a00:	6182      	str	r2, [r0, #24]
   12a02:	6bda      	ldr	r2, [r3, #60]	; 0x3c
   12a04:	60c1      	str	r1, [r0, #12]
   12a06:	4619      	mov	r1, r3
   12a08:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   12a0c:	641a      	str	r2, [r3, #64]	; 0x40
   12a0e:	2200      	movs	r2, #0
   12a10:	e763      	b.n	128da <__gnu_uldivmod_helper@@Base+0x210>

00012a12 <__gnu_Unwind_Resume@@Base>:
   12a12:	b570      	push	{r4, r5, r6, lr}
   12a14:	4605      	mov	r5, r0
   12a16:	6943      	ldr	r3, [r0, #20]
   12a18:	460c      	mov	r4, r1
   12a1a:	68c6      	ldr	r6, [r0, #12]
   12a1c:	640b      	str	r3, [r1, #64]	; 0x40
   12a1e:	b11e      	cbz	r6, 12a28 <__gnu_Unwind_Resume@@Base+0x16>
   12a20:	2201      	movs	r2, #1
   12a22:	f7ff ff5a 	bl	128da <__gnu_uldivmod_helper@@Base+0x210>
   12a26:	e013      	b.n	12a50 <__gnu_Unwind_Resume@@Base+0x3e>
   12a28:	6903      	ldr	r3, [r0, #16]
   12a2a:	4629      	mov	r1, r5
   12a2c:	2002      	movs	r0, #2
   12a2e:	4622      	mov	r2, r4
   12a30:	4798      	blx	r3
   12a32:	2807      	cmp	r0, #7
   12a34:	d005      	beq.n	12a42 <__gnu_Unwind_Resume@@Base+0x30>
   12a36:	2808      	cmp	r0, #8
   12a38:	d10a      	bne.n	12a50 <__gnu_Unwind_Resume@@Base+0x3e>
   12a3a:	4628      	mov	r0, r5
   12a3c:	4621      	mov	r1, r4
   12a3e:	f7ff ff2f 	bl	128a0 <__gnu_uldivmod_helper@@Base+0x1d6>
   12a42:	4630      	mov	r0, r6
   12a44:	6c21      	ldr	r1, [r4, #64]	; 0x40
   12a46:	f7ff ff2a 	bl	1289e <__gnu_uldivmod_helper@@Base+0x1d4>
   12a4a:	1d20      	adds	r0, r4, #4
   12a4c:	f7f3 ee32 	blx	66b4 <restore_core_regs@plt>
   12a50:	f7f3 ee2a 	blx	66a8 <abort@plt>

00012a54 <__gnu_Unwind_Resume_or_Rethrow@@Base>:
   12a54:	68c2      	ldr	r2, [r0, #12]
   12a56:	b90a      	cbnz	r2, 12a5c <__gnu_Unwind_Resume_or_Rethrow@@Base+0x8>
   12a58:	f001 bb64 	b.w	14124 <__aeabi_llsl@@Base+0x288>
   12a5c:	6bca      	ldr	r2, [r1, #60]	; 0x3c
   12a5e:	640a      	str	r2, [r1, #64]	; 0x40
   12a60:	2200      	movs	r2, #0
   12a62:	e73a      	b.n	128da <__gnu_uldivmod_helper@@Base+0x210>

00012a64 <_Unwind_Complete@@Base>:
   12a64:	4770      	bx	lr

00012a66 <_Unwind_DeleteException@@Base>:
   12a66:	6883      	ldr	r3, [r0, #8]
   12a68:	4601      	mov	r1, r0
   12a6a:	b10b      	cbz	r3, 12a70 <_Unwind_DeleteException@@Base+0xa>
   12a6c:	2001      	movs	r0, #1
   12a6e:	4718      	bx	r3
   12a70:	4770      	bx	lr

00012a72 <_Unwind_VRS_Get@@Base>:
   12a72:	b500      	push	{lr}
   12a74:	2904      	cmp	r1, #4
   12a76:	d810      	bhi.n	12a9a <_Unwind_VRS_Get@@Base+0x28>
   12a78:	e8df f001 	tbb	[pc, r1]
   12a7c:	0d03      	lsrs	r3, r0, #20
   12a7e:	0d0f      	lsrs	r7, r1, #20
   12a80:	000d      	movs	r5, r1
   12a82:	b953      	cbnz	r3, 12a9a <_Unwind_VRS_Get@@Base+0x28>
   12a84:	2a0f      	cmp	r2, #15
   12a86:	d808      	bhi.n	12a9a <_Unwind_VRS_Get@@Base+0x28>
   12a88:	eb00 0082 	add.w	r0, r0, r2, lsl #2
   12a8c:	9a01      	ldr	r2, [sp, #4]
   12a8e:	6841      	ldr	r1, [r0, #4]
   12a90:	4618      	mov	r0, r3
   12a92:	6011      	str	r1, [r2, #0]
   12a94:	e002      	b.n	12a9c <_Unwind_VRS_Get@@Base+0x2a>
   12a96:	2001      	movs	r0, #1
   12a98:	e000      	b.n	12a9c <_Unwind_VRS_Get@@Base+0x2a>
   12a9a:	2002      	movs	r0, #2
   12a9c:	f85d fb04 	ldr.w	pc, [sp], #4
   12aa0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
   12aa2:	460a      	mov	r2, r1
   12aa4:	2100      	movs	r1, #0
   12aa6:	ab03      	add	r3, sp, #12
   12aa8:	9300      	str	r3, [sp, #0]
   12aaa:	460b      	mov	r3, r1
   12aac:	f7f3 ee08 	blx	66c0 <_Unwind_VRS_Get@plt>
   12ab0:	9803      	ldr	r0, [sp, #12]
   12ab2:	b005      	add	sp, #20
   12ab4:	f85d fb04 	ldr.w	pc, [sp], #4

00012ab8 <_Unwind_VRS_Set@@Base>:
   12ab8:	b500      	push	{lr}
   12aba:	2904      	cmp	r1, #4
   12abc:	d810      	bhi.n	12ae0 <_Unwind_VRS_Set@@Base+0x28>
   12abe:	e8df f001 	tbb	[pc, r1]
   12ac2:	0d03      	lsrs	r3, r0, #20
   12ac4:	0d0f      	lsrs	r7, r1, #20
   12ac6:	000d      	movs	r5, r1
   12ac8:	b953      	cbnz	r3, 12ae0 <_Unwind_VRS_Set@@Base+0x28>
   12aca:	2a0f      	cmp	r2, #15
   12acc:	d808      	bhi.n	12ae0 <_Unwind_VRS_Set@@Base+0x28>
   12ace:	9901      	ldr	r1, [sp, #4]
   12ad0:	eb00 0082 	add.w	r0, r0, r2, lsl #2
   12ad4:	6809      	ldr	r1, [r1, #0]
   12ad6:	6041      	str	r1, [r0, #4]
   12ad8:	4618      	mov	r0, r3
   12ada:	e002      	b.n	12ae2 <_Unwind_VRS_Set@@Base+0x2a>
   12adc:	2001      	movs	r0, #1
   12ade:	e000      	b.n	12ae2 <_Unwind_VRS_Set@@Base+0x2a>
   12ae0:	2002      	movs	r0, #2
   12ae2:	f85d fb04 	ldr.w	pc, [sp], #4
   12ae6:	b51f      	push	{r0, r1, r2, r3, r4, lr}
   12ae8:	460c      	mov	r4, r1
   12aea:	ab04      	add	r3, sp, #16
   12aec:	2100      	movs	r1, #0
   12aee:	f843 2d04 	str.w	r2, [r3, #-4]!
   12af2:	4622      	mov	r2, r4
   12af4:	9300      	str	r3, [sp, #0]
   12af6:	460b      	mov	r3, r1
   12af8:	f7f3 ede8 	blx	66cc <_Unwind_VRS_Set@plt>
   12afc:	b004      	add	sp, #16
   12afe:	bd10      	pop	{r4, pc}

00012b00 <__gnu_Unwind_Backtrace@@Base>:
   12b00:	6bd3      	ldr	r3, [r2, #60]	; 0x3c
   12b02:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   12b06:	1d14      	adds	r4, r2, #4
   12b08:	6413      	str	r3, [r2, #64]	; 0x40
   12b0a:	4607      	mov	r7, r0
   12b0c:	4688      	mov	r8, r1
   12b0e:	f5ad 7d0e 	sub.w	sp, sp, #568	; 0x238
   12b12:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
   12b14:	ad17      	add	r5, sp, #92	; 0x5c
   12b16:	ae16      	add	r6, sp, #88	; 0x58
   12b18:	c50f      	stmia	r5!, {r0, r1, r2, r3}
   12b1a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
   12b1c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
   12b1e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
   12b20:	c50f      	stmia	r5!, {r0, r1, r2, r3}
   12b22:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
   12b26:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
   12b2a:	466d      	mov	r5, sp
   12b2c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
   12b30:	6033      	str	r3, [r6, #0]
   12b32:	4628      	mov	r0, r5
   12b34:	6c31      	ldr	r1, [r6, #64]	; 0x40
   12b36:	f7ff fe33 	bl	127a0 <__gnu_uldivmod_helper@@Base+0xd6>
   12b3a:	b108      	cbz	r0, 12b40 <__gnu_Unwind_Backtrace@@Base+0x40>
   12b3c:	2409      	movs	r4, #9
   12b3e:	e014      	b.n	12b6a <__gnu_Unwind_Backtrace@@Base+0x6a>
   12b40:	4630      	mov	r0, r6
   12b42:	210c      	movs	r1, #12
   12b44:	462a      	mov	r2, r5
   12b46:	f7ff ffce 	bl	12ae6 <_Unwind_VRS_Set@@Base+0x2e>
   12b4a:	4630      	mov	r0, r6
   12b4c:	4641      	mov	r1, r8
   12b4e:	47b8      	blx	r7
   12b50:	2800      	cmp	r0, #0
   12b52:	d1f3      	bne.n	12b3c <__gnu_Unwind_Backtrace@@Base+0x3c>
   12b54:	692b      	ldr	r3, [r5, #16]
   12b56:	2008      	movs	r0, #8
   12b58:	4629      	mov	r1, r5
   12b5a:	4632      	mov	r2, r6
   12b5c:	4798      	blx	r3
   12b5e:	2805      	cmp	r0, #5
   12b60:	4604      	mov	r4, r0
   12b62:	d002      	beq.n	12b6a <__gnu_Unwind_Backtrace@@Base+0x6a>
   12b64:	2809      	cmp	r0, #9
   12b66:	d1e4      	bne.n	12b32 <__gnu_Unwind_Backtrace@@Base+0x32>
   12b68:	e7e8      	b.n	12b3c <__gnu_Unwind_Backtrace@@Base+0x3c>
   12b6a:	4630      	mov	r0, r6
   12b6c:	f7ff fe68 	bl	12840 <__gnu_uldivmod_helper@@Base+0x176>
   12b70:	4620      	mov	r0, r4
   12b72:	f50d 7d0e 	add.w	sp, sp, #568	; 0x238
   12b76:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   12b7a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   12b7e:	4617      	mov	r7, r2
   12b80:	6cca      	ldr	r2, [r1, #76]	; 0x4c
   12b82:	b089      	sub	sp, #36	; 0x24
   12b84:	460d      	mov	r5, r1
   12b86:	f000 0803 	and.w	r8, r0, #3
   12b8a:	1d14      	adds	r4, r2, #4
   12b8c:	9002      	str	r0, [sp, #8]
   12b8e:	6812      	ldr	r2, [r2, #0]
   12b90:	4699      	mov	r9, r3
   12b92:	9406      	str	r4, [sp, #24]
   12b94:	9205      	str	r2, [sp, #20]
   12b96:	b93b      	cbnz	r3, 12ba8 <__gnu_Unwind_Backtrace@@Base+0xa8>
   12b98:	0212      	lsls	r2, r2, #8
   12b9a:	f88d 301d 	strb.w	r3, [sp, #29]
   12b9e:	9205      	str	r2, [sp, #20]
   12ba0:	2303      	movs	r3, #3
   12ba2:	f88d 301c 	strb.w	r3, [sp, #28]
   12ba6:	e00c      	b.n	12bc2 <__gnu_Unwind_Backtrace@@Base+0xc2>
   12ba8:	2b02      	cmp	r3, #2
   12baa:	dc0a      	bgt.n	12bc2 <__gnu_Unwind_Backtrace@@Base+0xc2>
   12bac:	0c13      	lsrs	r3, r2, #16
   12bae:	f88d 301d 	strb.w	r3, [sp, #29]
   12bb2:	0412      	lsls	r2, r2, #16
   12bb4:	9205      	str	r2, [sp, #20]
   12bb6:	b2db      	uxtb	r3, r3
   12bb8:	2202      	movs	r2, #2
   12bba:	f88d 201c 	strb.w	r2, [sp, #28]
   12bbe:	eb04 0483 	add.w	r4, r4, r3, lsl #2
   12bc2:	f1b8 0f02 	cmp.w	r8, #2
   12bc6:	6d2b      	ldr	r3, [r5, #80]	; 0x50
   12bc8:	bf08      	it	eq
   12bca:	6bac      	ldreq	r4, [r5, #56]	; 0x38
   12bcc:	f013 0301 	ands.w	r3, r3, #1
   12bd0:	f040 80d4 	bne.w	12d7c <__gnu_Unwind_Backtrace@@Base+0x27c>
   12bd4:	9301      	str	r3, [sp, #4]
   12bd6:	f8d4 a000 	ldr.w	sl, [r4]
   12bda:	f1ba 0f00 	cmp.w	sl, #0
   12bde:	f000 80cf 	beq.w	12d80 <__gnu_Unwind_Backtrace@@Base+0x280>
   12be2:	f1b9 0f02 	cmp.w	r9, #2
   12be6:	6ca8      	ldr	r0, [r5, #72]	; 0x48
   12be8:	bf0a      	itet	eq
   12bea:	f104 0608 	addeq.w	r6, r4, #8
   12bee:	1d26      	addne	r6, r4, #4
   12bf0:	f8d4 b004 	ldreq.w	fp, [r4, #4]
   12bf4:	f04f 010f 	mov.w	r1, #15
   12bf8:	bf1c      	itt	ne
   12bfa:	f8b4 b002 	ldrhne.w	fp, [r4, #2]
   12bfe:	f8b4 a000 	ldrhne.w	sl, [r4]
   12c02:	f02b 0401 	bic.w	r4, fp, #1
   12c06:	4404      	add	r4, r0
   12c08:	4638      	mov	r0, r7
   12c0a:	f7ff ff49 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12c0e:	4284      	cmp	r4, r0
   12c10:	d807      	bhi.n	12c22 <__gnu_Unwind_Backtrace@@Base+0x122>
   12c12:	f02a 0301 	bic.w	r3, sl, #1
   12c16:	4423      	add	r3, r4
   12c18:	4298      	cmp	r0, r3
   12c1a:	bf2c      	ite	cs
   12c1c:	2000      	movcs	r0, #0
   12c1e:	2001      	movcc	r0, #1
   12c20:	e000      	b.n	12c24 <__gnu_Unwind_Backtrace@@Base+0x124>
   12c22:	2000      	movs	r0, #0
   12c24:	f00b 0b01 	and.w	fp, fp, #1
   12c28:	f00a 0401 	and.w	r4, sl, #1
   12c2c:	ea44 044b 	orr.w	r4, r4, fp, lsl #1
   12c30:	2c01      	cmp	r4, #1
   12c32:	d018      	beq.n	12c66 <__gnu_Unwind_Backtrace@@Base+0x166>
   12c34:	d302      	bcc.n	12c3c <__gnu_Unwind_Backtrace@@Base+0x13c>
   12c36:	2c02      	cmp	r4, #2
   12c38:	d04d      	beq.n	12cd6 <__gnu_Unwind_Backtrace@@Base+0x1d6>
   12c3a:	e0c2      	b.n	12dc2 <__gnu_Unwind_Backtrace@@Base+0x2c2>
   12c3c:	1d34      	adds	r4, r6, #4
   12c3e:	f1b8 0f00 	cmp.w	r8, #0
   12c42:	d0c8      	beq.n	12bd6 <__gnu_Unwind_Backtrace@@Base+0xd6>
   12c44:	2800      	cmp	r0, #0
   12c46:	d0c6      	beq.n	12bd6 <__gnu_Unwind_Backtrace@@Base+0xd6>
   12c48:	4630      	mov	r0, r6
   12c4a:	f7ff fd53 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   12c4e:	63ac      	str	r4, [r5, #56]	; 0x38
   12c50:	4606      	mov	r6, r0
   12c52:	4628      	mov	r0, r5
   12c54:	f7f3 ed40 	blx	66d8 <__cxa_begin_cleanup@plt>
   12c58:	2800      	cmp	r0, #0
   12c5a:	f000 80b2 	beq.w	12dc2 <__gnu_Unwind_Backtrace@@Base+0x2c2>
   12c5e:	4638      	mov	r0, r7
   12c60:	210f      	movs	r1, #15
   12c62:	4632      	mov	r2, r6
   12c64:	e0a9      	b.n	12dba <__gnu_Unwind_Backtrace@@Base+0x2ba>
   12c66:	f1b8 0f00 	cmp.w	r8, #0
   12c6a:	d125      	bne.n	12cb8 <__gnu_Unwind_Backtrace@@Base+0x1b8>
   12c6c:	b380      	cbz	r0, 12cd0 <__gnu_Unwind_Backtrace@@Base+0x1d0>
   12c6e:	6832      	ldr	r2, [r6, #0]
   12c70:	6873      	ldr	r3, [r6, #4]
   12c72:	ea4f 7ad2 	mov.w	sl, r2, lsr #31
   12c76:	1c9a      	adds	r2, r3, #2
   12c78:	f000 80a3 	beq.w	12dc2 <__gnu_Unwind_Backtrace@@Base+0x2c2>
   12c7c:	3301      	adds	r3, #1
   12c7e:	f105 0258 	add.w	r2, r5, #88	; 0x58
   12c82:	9204      	str	r2, [sp, #16]
   12c84:	d00a      	beq.n	12c9c <__gnu_Unwind_Backtrace@@Base+0x19c>
   12c86:	1d30      	adds	r0, r6, #4
   12c88:	f7ff fe01 	bl	1288e <__gnu_uldivmod_helper@@Base+0x1c4>
   12c8c:	4652      	mov	r2, sl
   12c8e:	ab04      	add	r3, sp, #16
   12c90:	4601      	mov	r1, r0
   12c92:	4628      	mov	r0, r5
   12c94:	f7f3 ed26 	blx	66e4 <__cxa_type_match@plt>
   12c98:	4604      	mov	r4, r0
   12c9a:	b1c8      	cbz	r0, 12cd0 <__gnu_Unwind_Backtrace@@Base+0x1d0>
   12c9c:	4638      	mov	r0, r7
   12c9e:	210d      	movs	r1, #13
   12ca0:	f7ff fefe 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12ca4:	2c02      	cmp	r4, #2
   12ca6:	9a04      	ldr	r2, [sp, #16]
   12ca8:	bf0c      	ite	eq
   12caa:	462b      	moveq	r3, r5
   12cac:	4613      	movne	r3, r2
   12cae:	6228      	str	r0, [r5, #32]
   12cb0:	bf08      	it	eq
   12cb2:	f843 2f2c 	streq.w	r2, [r3, #44]!
   12cb6:	e08c      	b.n	12dd2 <__gnu_Unwind_Backtrace@@Base+0x2d2>
   12cb8:	4638      	mov	r0, r7
   12cba:	210d      	movs	r1, #13
   12cbc:	6a2c      	ldr	r4, [r5, #32]
   12cbe:	f7ff feef 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12cc2:	4284      	cmp	r4, r0
   12cc4:	d104      	bne.n	12cd0 <__gnu_Unwind_Backtrace@@Base+0x1d0>
   12cc6:	6aab      	ldr	r3, [r5, #40]	; 0x28
   12cc8:	429e      	cmp	r6, r3
   12cca:	d101      	bne.n	12cd0 <__gnu_Unwind_Backtrace@@Base+0x1d0>
   12ccc:	4630      	mov	r0, r6
   12cce:	e040      	b.n	12d52 <__gnu_Unwind_Backtrace@@Base+0x252>
   12cd0:	f106 0408 	add.w	r4, r6, #8
   12cd4:	e77f      	b.n	12bd6 <__gnu_Unwind_Backtrace@@Base+0xd6>
   12cd6:	6834      	ldr	r4, [r6, #0]
   12cd8:	f024 4400 	bic.w	r4, r4, #2147483648	; 0x80000000
   12cdc:	f1b8 0f00 	cmp.w	r8, #0
   12ce0:	d11f      	bne.n	12d22 <__gnu_Unwind_Backtrace@@Base+0x222>
   12ce2:	2800      	cmp	r0, #0
   12ce4:	d042      	beq.n	12d6c <__gnu_Unwind_Backtrace@@Base+0x26c>
   12ce6:	9b02      	ldr	r3, [sp, #8]
   12ce8:	071b      	lsls	r3, r3, #28
   12cea:	d501      	bpl.n	12cf0 <__gnu_Unwind_Backtrace@@Base+0x1f0>
   12cec:	2c00      	cmp	r4, #0
   12cee:	d13d      	bne.n	12d6c <__gnu_Unwind_Backtrace@@Base+0x26c>
   12cf0:	f10d 0b10 	add.w	fp, sp, #16
   12cf4:	46c2      	mov	sl, r8
   12cf6:	f105 0358 	add.w	r3, r5, #88	; 0x58
   12cfa:	9303      	str	r3, [sp, #12]
   12cfc:	45a2      	cmp	sl, r4
   12cfe:	d062      	beq.n	12dc6 <__gnu_Unwind_Backtrace@@Base+0x2c6>
   12d00:	9b03      	ldr	r3, [sp, #12]
   12d02:	f10a 0a01 	add.w	sl, sl, #1
   12d06:	eb06 008a 	add.w	r0, r6, sl, lsl #2
   12d0a:	9304      	str	r3, [sp, #16]
   12d0c:	f7ff fdbf 	bl	1288e <__gnu_uldivmod_helper@@Base+0x1c4>
   12d10:	2200      	movs	r2, #0
   12d12:	465b      	mov	r3, fp
   12d14:	4601      	mov	r1, r0
   12d16:	4628      	mov	r0, r5
   12d18:	f7f3 ece4 	blx	66e4 <__cxa_type_match@plt>
   12d1c:	2800      	cmp	r0, #0
   12d1e:	d0ed      	beq.n	12cfc <__gnu_Unwind_Backtrace@@Base+0x1fc>
   12d20:	e024      	b.n	12d6c <__gnu_Unwind_Backtrace@@Base+0x26c>
   12d22:	4638      	mov	r0, r7
   12d24:	210d      	movs	r1, #13
   12d26:	f8d5 a020 	ldr.w	sl, [r5, #32]
   12d2a:	f7ff feb9 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12d2e:	4582      	cmp	sl, r0
   12d30:	d11c      	bne.n	12d6c <__gnu_Unwind_Backtrace@@Base+0x26c>
   12d32:	6aab      	ldr	r3, [r5, #40]	; 0x28
   12d34:	429e      	cmp	r6, r3
   12d36:	d119      	bne.n	12d6c <__gnu_Unwind_Backtrace@@Base+0x26c>
   12d38:	2300      	movs	r3, #0
   12d3a:	62eb      	str	r3, [r5, #44]	; 0x2c
   12d3c:	2304      	movs	r3, #4
   12d3e:	62ac      	str	r4, [r5, #40]	; 0x28
   12d40:	632b      	str	r3, [r5, #48]	; 0x30
   12d42:	18f3      	adds	r3, r6, r3
   12d44:	636b      	str	r3, [r5, #52]	; 0x34
   12d46:	6833      	ldr	r3, [r6, #0]
   12d48:	2b00      	cmp	r3, #0
   12d4a:	da0d      	bge.n	12d68 <__gnu_Unwind_Backtrace@@Base+0x268>
   12d4c:	1c60      	adds	r0, r4, #1
   12d4e:	eb06 0080 	add.w	r0, r6, r0, lsl #2
   12d52:	f7ff fccf 	bl	126f4 <__gnu_uldivmod_helper@@Base+0x2a>
   12d56:	210f      	movs	r1, #15
   12d58:	4602      	mov	r2, r0
   12d5a:	4638      	mov	r0, r7
   12d5c:	f7ff fec3 	bl	12ae6 <_Unwind_VRS_Set@@Base+0x2e>
   12d60:	4638      	mov	r0, r7
   12d62:	2100      	movs	r1, #0
   12d64:	462a      	mov	r2, r5
   12d66:	e028      	b.n	12dba <__gnu_Unwind_Backtrace@@Base+0x2ba>
   12d68:	2301      	movs	r3, #1
   12d6a:	9301      	str	r3, [sp, #4]
   12d6c:	6833      	ldr	r3, [r6, #0]
   12d6e:	3401      	adds	r4, #1
   12d70:	2b00      	cmp	r3, #0
   12d72:	bfb8      	it	lt
   12d74:	3604      	addlt	r6, #4
   12d76:	eb06 0484 	add.w	r4, r6, r4, lsl #2
   12d7a:	e72c      	b.n	12bd6 <__gnu_Unwind_Backtrace@@Base+0xd6>
   12d7c:	2300      	movs	r3, #0
   12d7e:	9301      	str	r3, [sp, #4]
   12d80:	f1b9 0f02 	cmp.w	r9, #2
   12d84:	dd02      	ble.n	12d8c <__gnu_Unwind_Backtrace@@Base+0x28c>
   12d86:	f7ff fd88 	bl	1289a <__gnu_uldivmod_helper@@Base+0x1d0>
   12d8a:	e003      	b.n	12d94 <__gnu_Unwind_Backtrace@@Base+0x294>
   12d8c:	4638      	mov	r0, r7
   12d8e:	a905      	add	r1, sp, #20
   12d90:	f7f3 ecae 	blx	66f0 <__gnu_unwind_execute@plt>
   12d94:	b9a8      	cbnz	r0, 12dc2 <__gnu_Unwind_Backtrace@@Base+0x2c2>
   12d96:	9b01      	ldr	r3, [sp, #4]
   12d98:	b90b      	cbnz	r3, 12d9e <__gnu_Unwind_Backtrace@@Base+0x29e>
   12d9a:	2008      	movs	r0, #8
   12d9c:	e01c      	b.n	12dd8 <__gnu_Unwind_Backtrace@@Base+0x2d8>
   12d9e:	210f      	movs	r1, #15
   12da0:	4638      	mov	r0, r7
   12da2:	f7ff fe7d 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12da6:	210e      	movs	r1, #14
   12da8:	4602      	mov	r2, r0
   12daa:	4638      	mov	r0, r7
   12dac:	f7ff fe9b 	bl	12ae6 <_Unwind_VRS_Set@@Base+0x2e>
   12db0:	4a0b      	ldr	r2, [pc, #44]	; (12de0 <__gnu_Unwind_Backtrace@@Base+0x2e0>)
   12db2:	210f      	movs	r1, #15
   12db4:	4638      	mov	r0, r7
   12db6:	447a      	add	r2, pc
   12db8:	6812      	ldr	r2, [r2, #0]
   12dba:	f7ff fe94 	bl	12ae6 <_Unwind_VRS_Set@@Base+0x2e>
   12dbe:	2007      	movs	r0, #7
   12dc0:	e00a      	b.n	12dd8 <__gnu_Unwind_Backtrace@@Base+0x2d8>
   12dc2:	2009      	movs	r0, #9
   12dc4:	e008      	b.n	12dd8 <__gnu_Unwind_Backtrace@@Base+0x2d8>
   12dc6:	4638      	mov	r0, r7
   12dc8:	210d      	movs	r1, #13
   12dca:	f7ff fe69 	bl	12aa0 <_Unwind_VRS_Get@@Base+0x2e>
   12dce:	9b04      	ldr	r3, [sp, #16]
   12dd0:	6228      	str	r0, [r5, #32]
   12dd2:	2006      	movs	r0, #6
   12dd4:	626b      	str	r3, [r5, #36]	; 0x24
   12dd6:	62ae      	str	r6, [r5, #40]	; 0x28
   12dd8:	b009      	add	sp, #36	; 0x24
   12dda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   12dde:	bf00      	nop
   12de0:	3d5a      	subs	r5, #90	; 0x5a
	...

00012de4 <__aeabi_unwind_cpp_pr0@@Base>:
   12de4:	2300      	movs	r3, #0
   12de6:	e6c8      	b.n	12b7a <__gnu_Unwind_Backtrace@@Base+0x7a>

00012de8 <__aeabi_unwind_cpp_pr1@@Base>:
   12de8:	2301      	movs	r3, #1
   12dea:	e6c6      	b.n	12b7a <__gnu_Unwind_Backtrace@@Base+0x7a>

00012dec <__aeabi_unwind_cpp_pr2@@Base>:
   12dec:	2302      	movs	r3, #2
   12dee:	e6c4      	b.n	12b7a <__gnu_Unwind_Backtrace@@Base+0x7a>

00012df0 <_Unwind_VRS_Pop@@Base>:
   12df0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   12df4:	4605      	mov	r5, r0
   12df6:	b0c2      	sub	sp, #264	; 0x108
   12df8:	4614      	mov	r4, r2
   12dfa:	461f      	mov	r7, r3
   12dfc:	2904      	cmp	r1, #4
   12dfe:	d877      	bhi.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12e00:	e8df f001 	tbb	[pc, r1]
   12e04:	1a03      	subs	r3, r0, r0
   12e06:	2676      	movs	r6, #118	; 0x76
   12e08:	004d      	lsls	r5, r1, #1
   12e0a:	2f00      	cmp	r7, #0
   12e0c:	d170      	bne.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12e0e:	2301      	movs	r3, #1
   12e10:	b2a1      	uxth	r1, r4
   12e12:	6b82      	ldr	r2, [r0, #56]	; 0x38
   12e14:	4618      	mov	r0, r3
   12e16:	1e5e      	subs	r6, r3, #1
   12e18:	fa00 f606 	lsl.w	r6, r0, r6
   12e1c:	420e      	tst	r6, r1
   12e1e:	bf1e      	ittt	ne
   12e20:	6816      	ldrne	r6, [r2, #0]
   12e22:	3204      	addne	r2, #4
   12e24:	f845 6023 	strne.w	r6, [r5, r3, lsl #2]
   12e28:	3301      	adds	r3, #1
   12e2a:	2b11      	cmp	r3, #17
   12e2c:	d1f3      	bne.n	12e16 <_Unwind_VRS_Pop@@Base+0x26>
   12e2e:	f414 5000 	ands.w	r0, r4, #8192	; 0x2000
   12e32:	d168      	bne.n	12f06 <_Unwind_VRS_Pop@@Base+0x116>
   12e34:	63aa      	str	r2, [r5, #56]	; 0x38
   12e36:	e0ef      	b.n	13018 <_Unwind_VRS_Pop@@Base+0x228>
   12e38:	f027 0304 	bic.w	r3, r7, #4
   12e3c:	2b01      	cmp	r3, #1
   12e3e:	d157      	bne.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12e40:	2f01      	cmp	r7, #1
   12e42:	ea4f 4814 	mov.w	r8, r4, lsr #16
   12e46:	b2a4      	uxth	r4, r4
   12e48:	eb04 0608 	add.w	r6, r4, r8
   12e4c:	d15d      	bne.n	12f0a <_Unwind_VRS_Pop@@Base+0x11a>
   12e4e:	e04a      	b.n	12ee6 <_Unwind_VRS_Pop@@Base+0xf6>
   12e50:	2f03      	cmp	r7, #3
   12e52:	d14d      	bne.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12e54:	0c26      	lsrs	r6, r4, #16
   12e56:	b2a4      	uxth	r4, r4
   12e58:	19a3      	adds	r3, r4, r6
   12e5a:	2b10      	cmp	r3, #16
   12e5c:	d848      	bhi.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12e5e:	6803      	ldr	r3, [r0, #0]
   12e60:	0719      	lsls	r1, r3, #28
   12e62:	d506      	bpl.n	12e72 <_Unwind_VRS_Pop@@Base+0x82>
   12e64:	f023 0308 	bic.w	r3, r3, #8
   12e68:	6003      	str	r3, [r0, #0]
   12e6a:	f500 70a8 	add.w	r0, r0, #336	; 0x150
   12e6e:	f7f3 ec46 	blx	66fc <__gnu_Unwind_Save_WMMXD@plt>
   12e72:	af20      	add	r7, sp, #128	; 0x80
   12e74:	eb07 06c6 	add.w	r6, r7, r6, lsl #3
   12e78:	4638      	mov	r0, r7
   12e7a:	3e04      	subs	r6, #4
   12e7c:	f7f3 ec3e 	blx	66fc <__gnu_Unwind_Save_WMMXD@plt>
   12e80:	6bab      	ldr	r3, [r5, #56]	; 0x38
   12e82:	eb03 04c4 	add.w	r4, r3, r4, lsl #3
   12e86:	42a3      	cmp	r3, r4
   12e88:	d004      	beq.n	12e94 <_Unwind_VRS_Pop@@Base+0xa4>
   12e8a:	f853 2b04 	ldr.w	r2, [r3], #4
   12e8e:	f846 2f04 	str.w	r2, [r6, #4]!
   12e92:	e7f8      	b.n	12e86 <_Unwind_VRS_Pop@@Base+0x96>
   12e94:	63ab      	str	r3, [r5, #56]	; 0x38
   12e96:	4638      	mov	r0, r7
   12e98:	f7f3 ec00 	blx	669c <__gnu_Unwind_Restore_WMMXD@plt>
   12e9c:	e033      	b.n	12f06 <_Unwind_VRS_Pop@@Base+0x116>
   12e9e:	bb3f      	cbnz	r7, 12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12ea0:	2c10      	cmp	r4, #16
   12ea2:	d825      	bhi.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12ea4:	6803      	ldr	r3, [r0, #0]
   12ea6:	06da      	lsls	r2, r3, #27
   12ea8:	d506      	bpl.n	12eb8 <_Unwind_VRS_Pop@@Base+0xc8>
   12eaa:	f023 0310 	bic.w	r3, r3, #16
   12eae:	6003      	str	r3, [r0, #0]
   12eb0:	f500 70e8 	add.w	r0, r0, #464	; 0x1d0
   12eb4:	f7f3 ec28 	blx	6708 <__gnu_Unwind_Save_WMMXC@plt>
   12eb8:	ae20      	add	r6, sp, #128	; 0x80
   12eba:	4630      	mov	r0, r6
   12ebc:	f7f3 ec24 	blx	6708 <__gnu_Unwind_Save_WMMXC@plt>
   12ec0:	6baa      	ldr	r2, [r5, #56]	; 0x38
   12ec2:	2300      	movs	r3, #0
   12ec4:	2101      	movs	r1, #1
   12ec6:	fa01 f003 	lsl.w	r0, r1, r3
   12eca:	4220      	tst	r0, r4
   12ecc:	bf1e      	ittt	ne
   12ece:	6810      	ldrne	r0, [r2, #0]
   12ed0:	3204      	addne	r2, #4
   12ed2:	f846 0023 	strne.w	r0, [r6, r3, lsl #2]
   12ed6:	3301      	adds	r3, #1
   12ed8:	2b04      	cmp	r3, #4
   12eda:	d1f4      	bne.n	12ec6 <_Unwind_VRS_Pop@@Base+0xd6>
   12edc:	63aa      	str	r2, [r5, #56]	; 0x38
   12ede:	4630      	mov	r0, r6
   12ee0:	f7f3 ec18 	blx	6714 <__gnu_Unwind_Restore_WMMXC@plt>
   12ee4:	e00f      	b.n	12f06 <_Unwind_VRS_Pop@@Base+0x116>
   12ee6:	2e10      	cmp	r6, #16
   12ee8:	d802      	bhi.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12eea:	f1b8 0f0f 	cmp.w	r8, #15
   12eee:	d97e      	bls.n	12fee <_Unwind_VRS_Pop@@Base+0x1fe>
   12ef0:	2002      	movs	r0, #2
   12ef2:	e091      	b.n	13018 <_Unwind_VRS_Pop@@Base+0x228>
   12ef4:	2f01      	cmp	r7, #1
   12ef6:	bf08      	it	eq
   12ef8:	3304      	addeq	r3, #4
   12efa:	2f01      	cmp	r7, #1
   12efc:	63ab      	str	r3, [r5, #56]	; 0x38
   12efe:	d14f      	bne.n	12fa0 <_Unwind_VRS_Pop@@Base+0x1b0>
   12f00:	a820      	add	r0, sp, #128	; 0x80
   12f02:	f7f3 ebc0 	blx	6684 <__gnu_Unwind_Restore_VFP@plt>
   12f06:	2000      	movs	r0, #0
   12f08:	e086      	b.n	13018 <_Unwind_VRS_Pop@@Base+0x228>
   12f0a:	2e20      	cmp	r6, #32
   12f0c:	d8f0      	bhi.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12f0e:	f1b8 0f0f 	cmp.w	r8, #15
   12f12:	d902      	bls.n	12f1a <_Unwind_VRS_Pop@@Base+0x12a>
   12f14:	2c00      	cmp	r4, #0
   12f16:	d16c      	bne.n	12ff2 <_Unwind_VRS_Pop@@Base+0x202>
   12f18:	e01a      	b.n	12f50 <_Unwind_VRS_Pop@@Base+0x160>
   12f1a:	2e10      	cmp	r6, #16
   12f1c:	d967      	bls.n	12fee <_Unwind_VRS_Pop@@Base+0x1fe>
   12f1e:	2f05      	cmp	r7, #5
   12f20:	d1e6      	bne.n	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12f22:	3e10      	subs	r6, #16
   12f24:	682b      	ldr	r3, [r5, #0]
   12f26:	07da      	lsls	r2, r3, #31
   12f28:	d54b      	bpl.n	12fc2 <_Unwind_VRS_Pop@@Base+0x1d2>
   12f2a:	2f05      	cmp	r7, #5
   12f2c:	4628      	mov	r0, r5
   12f2e:	f023 0201 	bic.w	r2, r3, #1
   12f32:	f840 2b48 	str.w	r2, [r0], #72
   12f36:	d13f      	bne.n	12fb8 <_Unwind_VRS_Pop@@Base+0x1c8>
   12f38:	f042 0202 	orr.w	r2, r2, #2
   12f3c:	602a      	str	r2, [r5, #0]
   12f3e:	f7f3 ebf0 	blx	6720 <__gnu_Unwind_Save_VFP_D@plt>
   12f42:	2e00      	cmp	r6, #0
   12f44:	d13e      	bne.n	12fc4 <_Unwind_VRS_Pop@@Base+0x1d4>
   12f46:	a820      	add	r0, sp, #128	; 0x80
   12f48:	f7f3 ebea 	blx	6720 <__gnu_Unwind_Save_VFP_D@plt>
   12f4c:	2e00      	cmp	r6, #0
   12f4e:	d148      	bne.n	12fe2 <_Unwind_VRS_Pop@@Base+0x1f2>
   12f50:	2600      	movs	r6, #0
   12f52:	6baa      	ldr	r2, [r5, #56]	; 0x38
   12f54:	2c00      	cmp	r4, #0
   12f56:	4613      	mov	r3, r2
   12f58:	dd0e      	ble.n	12f78 <_Unwind_VRS_Pop@@Base+0x188>
   12f5a:	a820      	add	r0, sp, #128	; 0x80
   12f5c:	0064      	lsls	r4, r4, #1
   12f5e:	eb00 00c8 	add.w	r0, r0, r8, lsl #3
   12f62:	2300      	movs	r3, #0
   12f64:	42a3      	cmp	r3, r4
   12f66:	d005      	beq.n	12f74 <_Unwind_VRS_Pop@@Base+0x184>
   12f68:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
   12f6c:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
   12f70:	3301      	adds	r3, #1
   12f72:	e7f7      	b.n	12f64 <_Unwind_VRS_Pop@@Base+0x174>
   12f74:	eb02 0383 	add.w	r3, r2, r3, lsl #2
   12f78:	2e00      	cmp	r6, #0
   12f7a:	d0bb      	beq.n	12ef4 <_Unwind_VRS_Pop@@Base+0x104>
   12f7c:	4642      	mov	r2, r8
   12f7e:	2a10      	cmp	r2, #16
   12f80:	bf38      	it	cc
   12f82:	2210      	movcc	r2, #16
   12f84:	a942      	add	r1, sp, #264	; 0x108
   12f86:	eb01 02c2 	add.w	r2, r1, r2, lsl #3
   12f8a:	eb03 01c6 	add.w	r1, r3, r6, lsl #3
   12f8e:	f5a2 72c6 	sub.w	r2, r2, #396	; 0x18c
   12f92:	428b      	cmp	r3, r1
   12f94:	d0ae      	beq.n	12ef4 <_Unwind_VRS_Pop@@Base+0x104>
   12f96:	f853 0b04 	ldr.w	r0, [r3], #4
   12f9a:	f842 0f04 	str.w	r0, [r2, #4]!
   12f9e:	e7f8      	b.n	12f92 <_Unwind_VRS_Pop@@Base+0x1a2>
   12fa0:	f1b8 0f0f 	cmp.w	r8, #15
   12fa4:	d802      	bhi.n	12fac <_Unwind_VRS_Pop@@Base+0x1bc>
   12fa6:	a820      	add	r0, sp, #128	; 0x80
   12fa8:	f7f3 eb66 	blx	6678 <__gnu_Unwind_Restore_VFP_D@plt>
   12fac:	2e00      	cmp	r6, #0
   12fae:	d0aa      	beq.n	12f06 <_Unwind_VRS_Pop@@Base+0x116>
   12fb0:	4668      	mov	r0, sp
   12fb2:	f7f3 eb6e 	blx	6690 <__gnu_Unwind_Restore_VFP_D_16_to_31@plt>
   12fb6:	e7a6      	b.n	12f06 <_Unwind_VRS_Pop@@Base+0x116>
   12fb8:	f023 0303 	bic.w	r3, r3, #3
   12fbc:	602b      	str	r3, [r5, #0]
   12fbe:	f7f3 ebb6 	blx	672c <__gnu_Unwind_Save_VFP@plt>
   12fc2:	b1fe      	cbz	r6, 13004 <_Unwind_VRS_Pop@@Base+0x214>
   12fc4:	682b      	ldr	r3, [r5, #0]
   12fc6:	0758      	lsls	r0, r3, #29
   12fc8:	d506      	bpl.n	12fd8 <_Unwind_VRS_Pop@@Base+0x1e8>
   12fca:	4628      	mov	r0, r5
   12fcc:	f023 0304 	bic.w	r3, r3, #4
   12fd0:	f840 3bd0 	str.w	r3, [r0], #208
   12fd4:	f7f3 ebb0 	blx	6738 <__gnu_Unwind_Save_VFP_D_16_to_31@plt>
   12fd8:	2f01      	cmp	r7, #1
   12fda:	d00f      	beq.n	12ffc <_Unwind_VRS_Pop@@Base+0x20c>
   12fdc:	f1b8 0f0f 	cmp.w	r8, #15
   12fe0:	d9b1      	bls.n	12f46 <_Unwind_VRS_Pop@@Base+0x156>
   12fe2:	4668      	mov	r0, sp
   12fe4:	f7f3 eba8 	blx	6738 <__gnu_Unwind_Save_VFP_D_16_to_31@plt>
   12fe8:	f1c8 0410 	rsb	r4, r8, #16
   12fec:	e7b1      	b.n	12f52 <_Unwind_VRS_Pop@@Base+0x162>
   12fee:	2600      	movs	r6, #0
   12ff0:	e798      	b.n	12f24 <_Unwind_VRS_Pop@@Base+0x134>
   12ff2:	2f05      	cmp	r7, #5
   12ff4:	f47f af7c 	bne.w	12ef0 <_Unwind_VRS_Pop@@Base+0x100>
   12ff8:	4626      	mov	r6, r4
   12ffa:	e7e3      	b.n	12fc4 <_Unwind_VRS_Pop@@Base+0x1d4>
   12ffc:	a820      	add	r0, sp, #128	; 0x80
   12ffe:	f7f3 eb96 	blx	672c <__gnu_Unwind_Save_VFP@plt>
   13002:	e7f1      	b.n	12fe8 <_Unwind_VRS_Pop@@Base+0x1f8>
   13004:	2f01      	cmp	r7, #1
   13006:	d103      	bne.n	13010 <_Unwind_VRS_Pop@@Base+0x220>
   13008:	a820      	add	r0, sp, #128	; 0x80
   1300a:	f7f3 eb90 	blx	672c <__gnu_Unwind_Save_VFP@plt>
   1300e:	e79f      	b.n	12f50 <_Unwind_VRS_Pop@@Base+0x160>
   13010:	f1b8 0f0f 	cmp.w	r8, #15
   13014:	d997      	bls.n	12f46 <_Unwind_VRS_Pop@@Base+0x156>
   13016:	e79b      	b.n	12f50 <_Unwind_VRS_Pop@@Base+0x160>
   13018:	b042      	add	sp, #264	; 0x108
   1301a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   1301e:	bf00      	nop

00013020 <__restore_core_regs@@Base>:
   13020:	f100 0134 	add.w	r1, r0, #52	; 0x34
   13024:	e891 0038 	ldmia.w	r1, {r3, r4, r5}
   13028:	469c      	mov	ip, r3
   1302a:	46a6      	mov	lr, r4
   1302c:	f84c 5d04 	str.w	r5, [ip, #-4]!
   13030:	e890 0fff 	ldmia.w	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
   13034:	46e5      	mov	sp, ip
   13036:	bd00      	pop	{pc}

00013038 <__gnu_Unwind_Restore_VFP@@Base>:
   13038:	ec90 0b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
   1303c:	4770      	bx	lr
   1303e:	bf00      	nop

00013040 <__gnu_Unwind_Save_VFP@@Base>:
   13040:	ec80 0b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
   13044:	4770      	bx	lr
   13046:	bf00      	nop

00013048 <__gnu_Unwind_Restore_VFP_D@@Base>:
   13048:	ec90 0b20 	vldmia	r0, {d0-d15}
   1304c:	4770      	bx	lr
   1304e:	bf00      	nop

00013050 <__gnu_Unwind_Save_VFP_D@@Base>:
   13050:	ec80 0b20 	vstmia	r0, {d0-d15}
   13054:	4770      	bx	lr
   13056:	bf00      	nop

00013058 <__gnu_Unwind_Restore_VFP_D_16_to_31@@Base>:
   13058:	ecd0 0b20 	vldmia	r0, {d16-d31}
   1305c:	4770      	bx	lr
   1305e:	bf00      	nop

00013060 <__gnu_Unwind_Save_VFP_D_16_to_31@@Base>:
   13060:	ecc0 0b20 	vstmia	r0, {d16-d31}
   13064:	4770      	bx	lr
   13066:	bf00      	nop

00013068 <__gnu_Unwind_Restore_WMMXD@@Base>:
   13068:	ecf0 0102 	ldfe	f0, [r0], #8
   1306c:	ecf0 1102 	ldfe	f1, [r0], #8
   13070:	ecf0 2102 	ldfe	f2, [r0], #8
   13074:	ecf0 3102 	ldfe	f3, [r0], #8
   13078:	ecf0 4102 	ldfe	f4, [r0], #8
   1307c:	ecf0 5102 	ldfe	f5, [r0], #8
   13080:	ecf0 6102 	ldfe	f6, [r0], #8
   13084:	ecf0 7102 	ldfe	f7, [r0], #8
   13088:	ecf0 8102 	ldfp	f0, [r0], #8
   1308c:	ecf0 9102 	ldfp	f1, [r0], #8
   13090:	ecf0 a102 	ldfp	f2, [r0], #8
   13094:	ecf0 b102 	ldfp	f3, [r0], #8
   13098:	ecf0 c102 	ldfp	f4, [r0], #8
   1309c:	ecf0 d102 	ldfp	f5, [r0], #8
   130a0:	ecf0 e102 	ldfp	f6, [r0], #8
   130a4:	ecf0 f102 	ldfp	f7, [r0], #8
   130a8:	4770      	bx	lr
   130aa:	bf00      	nop

000130ac <__gnu_Unwind_Save_WMMXD@@Base>:
   130ac:	ece0 0102 	stfe	f0, [r0], #8
   130b0:	ece0 1102 	stfe	f1, [r0], #8
   130b4:	ece0 2102 	stfe	f2, [r0], #8
   130b8:	ece0 3102 	stfe	f3, [r0], #8
   130bc:	ece0 4102 	stfe	f4, [r0], #8
   130c0:	ece0 5102 	stfe	f5, [r0], #8
   130c4:	ece0 6102 	stfe	f6, [r0], #8
   130c8:	ece0 7102 	stfe	f7, [r0], #8
   130cc:	ece0 8102 	stfp	f0, [r0], #8
   130d0:	ece0 9102 	stfp	f1, [r0], #8
   130d4:	ece0 a102 	stfp	f2, [r0], #8
   130d8:	ece0 b102 	stfp	f3, [r0], #8
   130dc:	ece0 c102 	stfp	f4, [r0], #8
   130e0:	ece0 d102 	stfp	f5, [r0], #8
   130e4:	ece0 e102 	stfp	f6, [r0], #8
   130e8:	ece0 f102 	stfp	f7, [r0], #8
   130ec:	4770      	bx	lr
   130ee:	bf00      	nop

000130f0 <__gnu_Unwind_Restore_WMMXC@@Base>:
   130f0:	fcb0 8101 	ldc2	1, cr8, [r0], #4
   130f4:	fcb0 9101 	ldc2	1, cr9, [r0], #4
   130f8:	fcb0 a101 	ldc2	1, cr10, [r0], #4
   130fc:	fcb0 b101 	ldc2	1, cr11, [r0], #4
   13100:	4770      	bx	lr
   13102:	bf00      	nop

00013104 <__gnu_Unwind_Save_WMMXC@@Base>:
   13104:	fca0 8101 	stc2	1, cr8, [r0], #4
   13108:	fca0 9101 	stc2	1, cr9, [r0], #4
   1310c:	fca0 a101 	stc2	1, cr10, [r0], #4
   13110:	fca0 b101 	stc2	1, cr11, [r0], #4
   13114:	4770      	bx	lr
   13116:	bf00      	nop

00013118 <_Unwind_RaiseException@@Base>:
   13118:	46ec      	mov	ip, sp
   1311a:	b500      	push	{lr}
   1311c:	e92d 5000 	stmdb	sp!, {ip, lr}
   13120:	e92d 1fff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
   13124:	f04f 0300 	mov.w	r3, #0
   13128:	e92d 000c 	stmdb	sp!, {r2, r3}
   1312c:	a901      	add	r1, sp, #4
   1312e:	f7f3 eb0a 	blx	6744 <__gnu_Unwind_RaiseException@plt>
   13132:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
   13136:	b012      	add	sp, #72	; 0x48
   13138:	4770      	bx	lr
   1313a:	bf00      	nop

0001313c <_Unwind_Resume@@Base>:
   1313c:	46ec      	mov	ip, sp
   1313e:	b500      	push	{lr}
   13140:	e92d 5000 	stmdb	sp!, {ip, lr}
   13144:	e92d 1fff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
   13148:	f04f 0300 	mov.w	r3, #0
   1314c:	e92d 000c 	stmdb	sp!, {r2, r3}
   13150:	a901      	add	r1, sp, #4
   13152:	f7f3 eafe 	blx	6750 <__gnu_Unwind_Resume@plt>
   13156:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
   1315a:	b012      	add	sp, #72	; 0x48
   1315c:	4770      	bx	lr
   1315e:	bf00      	nop

00013160 <_Unwind_Resume_or_Rethrow@@Base>:
   13160:	46ec      	mov	ip, sp
   13162:	b500      	push	{lr}
   13164:	e92d 5000 	stmdb	sp!, {ip, lr}
   13168:	e92d 1fff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
   1316c:	f04f 0300 	mov.w	r3, #0
   13170:	e92d 000c 	stmdb	sp!, {r2, r3}
   13174:	a901      	add	r1, sp, #4
   13176:	f7f3 eaf2 	blx	675c <__gnu_Unwind_Resume_or_Rethrow@plt>
   1317a:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
   1317e:	b012      	add	sp, #72	; 0x48
   13180:	4770      	bx	lr
   13182:	bf00      	nop

00013184 <_Unwind_ForcedUnwind@@Base>:
   13184:	46ec      	mov	ip, sp
   13186:	b500      	push	{lr}
   13188:	e92d 5000 	stmdb	sp!, {ip, lr}
   1318c:	e92d 1fff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
   13190:	f04f 0300 	mov.w	r3, #0
   13194:	e92d 000c 	stmdb	sp!, {r2, r3}
   13198:	ab01      	add	r3, sp, #4
   1319a:	f7f3 eae6 	blx	6768 <__gnu_Unwind_ForcedUnwind@plt>
   1319e:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
   131a2:	b012      	add	sp, #72	; 0x48
   131a4:	4770      	bx	lr
   131a6:	bf00      	nop

000131a8 <_Unwind_Backtrace@@Base>:
   131a8:	46ec      	mov	ip, sp
   131aa:	b500      	push	{lr}
   131ac:	e92d 5000 	stmdb	sp!, {ip, lr}
   131b0:	e92d 1fff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
   131b4:	f04f 0300 	mov.w	r3, #0
   131b8:	e92d 000c 	stmdb	sp!, {r2, r3}
   131bc:	aa01      	add	r2, sp, #4
   131be:	f7f3 eada 	blx	6774 <__gnu_Unwind_Backtrace@plt>
   131c2:	f8dd e040 	ldr.w	lr, [sp, #64]	; 0x40
   131c6:	b012      	add	sp, #72	; 0x48
   131c8:	4770      	bx	lr
   131ca:	bf00      	nop
   131cc:	7a03      	ldrb	r3, [r0, #8]
   131ce:	b953      	cbnz	r3, 131e6 <_Unwind_Backtrace@@Base+0x3e>
   131d0:	7a43      	ldrb	r3, [r0, #9]
   131d2:	b17b      	cbz	r3, 131f4 <_Unwind_Backtrace@@Base+0x4c>
   131d4:	3b01      	subs	r3, #1
   131d6:	7243      	strb	r3, [r0, #9]
   131d8:	6843      	ldr	r3, [r0, #4]
   131da:	1d1a      	adds	r2, r3, #4
   131dc:	6042      	str	r2, [r0, #4]
   131de:	681b      	ldr	r3, [r3, #0]
   131e0:	6003      	str	r3, [r0, #0]
   131e2:	2303      	movs	r3, #3
   131e4:	e000      	b.n	131e8 <_Unwind_Backtrace@@Base+0x40>
   131e6:	3b01      	subs	r3, #1
   131e8:	7203      	strb	r3, [r0, #8]
   131ea:	6803      	ldr	r3, [r0, #0]
   131ec:	021a      	lsls	r2, r3, #8
   131ee:	6002      	str	r2, [r0, #0]
   131f0:	0e18      	lsrs	r0, r3, #24
   131f2:	4770      	bx	lr
   131f4:	20b0      	movs	r0, #176	; 0xb0
   131f6:	4770      	bx	lr
   131f8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
   131fa:	2100      	movs	r1, #0
   131fc:	ab03      	add	r3, sp, #12
   131fe:	220c      	movs	r2, #12
   13200:	9300      	str	r3, [sp, #0]
   13202:	460b      	mov	r3, r1
   13204:	f7f3 ea5c 	blx	66c0 <_Unwind_VRS_Get@plt>
   13208:	9803      	ldr	r0, [sp, #12]
   1320a:	b005      	add	sp, #20
   1320c:	f85d fb04 	ldr.w	pc, [sp], #4
   13210:	e7f2      	b.n	131f8 <_Unwind_Backtrace@@Base+0x50>

00013212 <__gnu_unwind_execute@@Base>:
   13212:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
   13216:	2600      	movs	r6, #0
   13218:	b085      	sub	sp, #20
   1321a:	4605      	mov	r5, r0
   1321c:	460f      	mov	r7, r1
   1321e:	4638      	mov	r0, r7
   13220:	f7ff ffd4 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13224:	28b0      	cmp	r0, #176	; 0xb0
   13226:	4604      	mov	r4, r0
   13228:	d112      	bne.n	13250 <__gnu_unwind_execute@@Base+0x3e>
   1322a:	2e00      	cmp	r6, #0
   1322c:	f040 8128 	bne.w	13480 <__gnu_unwind_execute@@Base+0x26e>
   13230:	ac03      	add	r4, sp, #12
   13232:	4631      	mov	r1, r6
   13234:	4633      	mov	r3, r6
   13236:	9400      	str	r4, [sp, #0]
   13238:	4628      	mov	r0, r5
   1323a:	220e      	movs	r2, #14
   1323c:	f7f3 ea40 	blx	66c0 <_Unwind_VRS_Get@plt>
   13240:	9400      	str	r4, [sp, #0]
   13242:	4628      	mov	r0, r5
   13244:	4631      	mov	r1, r6
   13246:	220f      	movs	r2, #15
   13248:	4633      	mov	r3, r6
   1324a:	f7f3 ea40 	blx	66cc <_Unwind_VRS_Set@plt>
   1324e:	e117      	b.n	13480 <__gnu_unwind_execute@@Base+0x26e>
   13250:	f020 017f 	bic.w	r1, r0, #127	; 0x7f
   13254:	f011 01ff 	ands.w	r1, r1, #255	; 0xff
   13258:	d119      	bne.n	1328e <__gnu_unwind_execute@@Base+0x7c>
   1325a:	ea4f 0880 	mov.w	r8, r0, lsl #2
   1325e:	f10d 090c 	add.w	r9, sp, #12
   13262:	460b      	mov	r3, r1
   13264:	f8cd 9000 	str.w	r9, [sp]
   13268:	4628      	mov	r0, r5
   1326a:	220d      	movs	r2, #13
   1326c:	f7f3 ea28 	blx	66c0 <_Unwind_VRS_Get@plt>
   13270:	9b03      	ldr	r3, [sp, #12]
   13272:	fa5f f888 	uxtb.w	r8, r8
   13276:	f014 0f40 	tst.w	r4, #64	; 0x40
   1327a:	f108 0804 	add.w	r8, r8, #4
   1327e:	f8cd 9000 	str.w	r9, [sp]
   13282:	bf14      	ite	ne
   13284:	ebc8 0303 	rsbne	r3, r8, r3
   13288:	4443      	addeq	r3, r8
   1328a:	9303      	str	r3, [sp, #12]
   1328c:	e02e      	b.n	132ec <__gnu_unwind_execute@@Base+0xda>
   1328e:	f000 03f0 	and.w	r3, r0, #240	; 0xf0
   13292:	2b80      	cmp	r3, #128	; 0x80
   13294:	d117      	bne.n	132c6 <__gnu_unwind_execute@@Base+0xb4>
   13296:	0204      	lsls	r4, r0, #8
   13298:	4638      	mov	r0, r7
   1329a:	f7ff ff97 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   1329e:	4320      	orrs	r0, r4
   132a0:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
   132a4:	d101      	bne.n	132aa <__gnu_unwind_execute@@Base+0x98>
   132a6:	2009      	movs	r0, #9
   132a8:	e0eb      	b.n	13482 <__gnu_unwind_execute@@Base+0x270>
   132aa:	0104      	lsls	r4, r0, #4
   132ac:	2100      	movs	r1, #0
   132ae:	4628      	mov	r0, r5
   132b0:	b2a2      	uxth	r2, r4
   132b2:	460b      	mov	r3, r1
   132b4:	f7f3 ea64 	blx	6780 <_Unwind_VRS_Pop@plt>
   132b8:	2800      	cmp	r0, #0
   132ba:	d1f4      	bne.n	132a6 <__gnu_unwind_execute@@Base+0x94>
   132bc:	f414 4f00 	tst.w	r4, #32768	; 0x8000
   132c0:	bf18      	it	ne
   132c2:	2601      	movne	r6, #1
   132c4:	e7ab      	b.n	1321e <__gnu_unwind_execute@@Base+0xc>
   132c6:	2b90      	cmp	r3, #144	; 0x90
   132c8:	d117      	bne.n	132fa <__gnu_unwind_execute@@Base+0xe8>
   132ca:	f000 030d 	and.w	r3, r0, #13
   132ce:	2b0d      	cmp	r3, #13
   132d0:	d0e9      	beq.n	132a6 <__gnu_unwind_execute@@Base+0x94>
   132d2:	2100      	movs	r1, #0
   132d4:	f10d 080c 	add.w	r8, sp, #12
   132d8:	4628      	mov	r0, r5
   132da:	f8cd 8000 	str.w	r8, [sp]
   132de:	f004 020f 	and.w	r2, r4, #15
   132e2:	460b      	mov	r3, r1
   132e4:	f7f3 e9ec 	blx	66c0 <_Unwind_VRS_Get@plt>
   132e8:	f8cd 8000 	str.w	r8, [sp]
   132ec:	2100      	movs	r1, #0
   132ee:	4628      	mov	r0, r5
   132f0:	220d      	movs	r2, #13
   132f2:	460b      	mov	r3, r1
   132f4:	f7f3 e9ea 	blx	66cc <_Unwind_VRS_Set@plt>
   132f8:	e791      	b.n	1321e <__gnu_unwind_execute@@Base+0xc>
   132fa:	2ba0      	cmp	r3, #160	; 0xa0
   132fc:	d10e      	bne.n	1331c <__gnu_unwind_execute@@Base+0x10a>
   132fe:	f44f 627f 	mov.w	r2, #4080	; 0xff0
   13302:	43c3      	mvns	r3, r0
   13304:	f003 0307 	and.w	r3, r3, #7
   13308:	2100      	movs	r1, #0
   1330a:	411a      	asrs	r2, r3
   1330c:	0703      	lsls	r3, r0, #28
   1330e:	f402 627f 	and.w	r2, r2, #4080	; 0xff0
   13312:	4628      	mov	r0, r5
   13314:	bf48      	it	mi
   13316:	f442 4280 	orrmi.w	r2, r2, #16384	; 0x4000
   1331a:	e00d      	b.n	13338 <__gnu_unwind_execute@@Base+0x126>
   1331c:	2bb0      	cmp	r3, #176	; 0xb0
   1331e:	d14f      	bne.n	133c0 <__gnu_unwind_execute@@Base+0x1ae>
   13320:	28b1      	cmp	r0, #177	; 0xb1
   13322:	d10b      	bne.n	1333c <__gnu_unwind_execute@@Base+0x12a>
   13324:	4638      	mov	r0, r7
   13326:	f7ff ff51 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   1332a:	4602      	mov	r2, r0
   1332c:	2800      	cmp	r0, #0
   1332e:	d0ba      	beq.n	132a6 <__gnu_unwind_execute@@Base+0x94>
   13330:	f010 01f0 	ands.w	r1, r0, #240	; 0xf0
   13334:	d1b7      	bne.n	132a6 <__gnu_unwind_execute@@Base+0x94>
   13336:	4628      	mov	r0, r5
   13338:	460b      	mov	r3, r1
   1333a:	e09b      	b.n	13474 <__gnu_unwind_execute@@Base+0x262>
   1333c:	28b2      	cmp	r0, #178	; 0xb2
   1333e:	d125      	bne.n	1338c <__gnu_unwind_execute@@Base+0x17a>
   13340:	2100      	movs	r1, #0
   13342:	220d      	movs	r2, #13
   13344:	ac03      	add	r4, sp, #12
   13346:	4628      	mov	r0, r5
   13348:	460b      	mov	r3, r1
   1334a:	9400      	str	r4, [sp, #0]
   1334c:	f7f3 e9b8 	blx	66c0 <_Unwind_VRS_Get@plt>
   13350:	4638      	mov	r0, r7
   13352:	f7ff ff3b 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13356:	f04f 0802 	mov.w	r8, #2
   1335a:	f010 0180 	ands.w	r1, r0, #128	; 0x80
   1335e:	9b03      	ldr	r3, [sp, #12]
   13360:	f000 007f 	and.w	r0, r0, #127	; 0x7f
   13364:	d009      	beq.n	1337a <__gnu_unwind_execute@@Base+0x168>
   13366:	fa00 f008 	lsl.w	r0, r0, r8
   1336a:	f108 0807 	add.w	r8, r8, #7
   1336e:	4418      	add	r0, r3
   13370:	9003      	str	r0, [sp, #12]
   13372:	4638      	mov	r0, r7
   13374:	f7ff ff2a 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13378:	e7ef      	b.n	1335a <__gnu_unwind_execute@@Base+0x148>
   1337a:	f503 7301 	add.w	r3, r3, #516	; 0x204
   1337e:	fa00 f008 	lsl.w	r0, r0, r8
   13382:	4418      	add	r0, r3
   13384:	9400      	str	r4, [sp, #0]
   13386:	9003      	str	r0, [sp, #12]
   13388:	4628      	mov	r0, r5
   1338a:	e7b1      	b.n	132f0 <__gnu_unwind_execute@@Base+0xde>
   1338c:	28b3      	cmp	r0, #179	; 0xb3
   1338e:	d10a      	bne.n	133a6 <__gnu_unwind_execute@@Base+0x194>
   13390:	4638      	mov	r0, r7
   13392:	f7ff ff1b 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13396:	2101      	movs	r1, #1
   13398:	f000 020f 	and.w	r2, r0, #15
   1339c:	f000 03f0 	and.w	r3, r0, #240	; 0xf0
   133a0:	3201      	adds	r2, #1
   133a2:	4628      	mov	r0, r5
   133a4:	e01a      	b.n	133dc <__gnu_unwind_execute@@Base+0x1ca>
   133a6:	f000 03fc 	and.w	r3, r0, #252	; 0xfc
   133aa:	2bb4      	cmp	r3, #180	; 0xb4
   133ac:	f43f af7b 	beq.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   133b0:	f000 0207 	and.w	r2, r0, #7
   133b4:	2101      	movs	r1, #1
   133b6:	3201      	adds	r2, #1
   133b8:	4628      	mov	r0, r5
   133ba:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
   133be:	e7bb      	b.n	13338 <__gnu_unwind_execute@@Base+0x126>
   133c0:	2bc0      	cmp	r3, #192	; 0xc0
   133c2:	d14a      	bne.n	1345a <__gnu_unwind_execute@@Base+0x248>
   133c4:	28c6      	cmp	r0, #198	; 0xc6
   133c6:	d10c      	bne.n	133e2 <__gnu_unwind_execute@@Base+0x1d0>
   133c8:	4638      	mov	r0, r7
   133ca:	f7ff feff 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   133ce:	2103      	movs	r1, #3
   133d0:	f000 020f 	and.w	r2, r0, #15
   133d4:	f000 03f0 	and.w	r3, r0, #240	; 0xf0
   133d8:	3201      	adds	r2, #1
   133da:	4628      	mov	r0, r5
   133dc:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
   133e0:	e7aa      	b.n	13338 <__gnu_unwind_execute@@Base+0x126>
   133e2:	28c7      	cmp	r0, #199	; 0xc7
   133e4:	d10d      	bne.n	13402 <__gnu_unwind_execute@@Base+0x1f0>
   133e6:	4638      	mov	r0, r7
   133e8:	f7ff fef0 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   133ec:	4602      	mov	r2, r0
   133ee:	2800      	cmp	r0, #0
   133f0:	f43f af59 	beq.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   133f4:	f010 03f0 	ands.w	r3, r0, #240	; 0xf0
   133f8:	f47f af55 	bne.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   133fc:	4628      	mov	r0, r5
   133fe:	2104      	movs	r1, #4
   13400:	e038      	b.n	13474 <__gnu_unwind_execute@@Base+0x262>
   13402:	f000 03f8 	and.w	r3, r0, #248	; 0xf8
   13406:	2bc0      	cmp	r3, #192	; 0xc0
   13408:	d107      	bne.n	1341a <__gnu_unwind_execute@@Base+0x208>
   1340a:	f000 020f 	and.w	r2, r0, #15
   1340e:	2103      	movs	r1, #3
   13410:	3201      	adds	r2, #1
   13412:	4628      	mov	r0, r5
   13414:	f442 2220 	orr.w	r2, r2, #655360	; 0xa0000
   13418:	e78e      	b.n	13338 <__gnu_unwind_execute@@Base+0x126>
   1341a:	28c8      	cmp	r0, #200	; 0xc8
   1341c:	d10d      	bne.n	1343a <__gnu_unwind_execute@@Base+0x228>
   1341e:	4638      	mov	r0, r7
   13420:	f7ff fed4 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13424:	2101      	movs	r1, #1
   13426:	f000 02f0 	and.w	r2, r0, #240	; 0xf0
   1342a:	f000 000f 	and.w	r0, r0, #15
   1342e:	3210      	adds	r2, #16
   13430:	1c43      	adds	r3, r0, #1
   13432:	4628      	mov	r0, r5
   13434:	ea43 3202 	orr.w	r2, r3, r2, lsl #12
   13438:	e01b      	b.n	13472 <__gnu_unwind_execute@@Base+0x260>
   1343a:	28c9      	cmp	r0, #201	; 0xc9
   1343c:	f47f af33 	bne.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   13440:	4638      	mov	r0, r7
   13442:	f7ff fec3 	bl	131cc <_Unwind_Backtrace@@Base+0x24>
   13446:	2101      	movs	r1, #1
   13448:	f000 020f 	and.w	r2, r0, #15
   1344c:	f000 03f0 	and.w	r3, r0, #240	; 0xf0
   13450:	3201      	adds	r2, #1
   13452:	4628      	mov	r0, r5
   13454:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
   13458:	e00b      	b.n	13472 <__gnu_unwind_execute@@Base+0x260>
   1345a:	f000 03f8 	and.w	r3, r0, #248	; 0xf8
   1345e:	2bd0      	cmp	r3, #208	; 0xd0
   13460:	f47f af21 	bne.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   13464:	f000 0207 	and.w	r2, r0, #7
   13468:	2101      	movs	r1, #1
   1346a:	3201      	adds	r2, #1
   1346c:	4628      	mov	r0, r5
   1346e:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
   13472:	2305      	movs	r3, #5
   13474:	f7f3 e984 	blx	6780 <_Unwind_VRS_Pop@plt>
   13478:	2800      	cmp	r0, #0
   1347a:	f47f af14 	bne.w	132a6 <__gnu_unwind_execute@@Base+0x94>
   1347e:	e6ce      	b.n	1321e <__gnu_unwind_execute@@Base+0xc>
   13480:	2000      	movs	r0, #0
   13482:	b005      	add	sp, #20
   13484:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

00013488 <__gnu_unwind_frame@@Base>:
   13488:	b51f      	push	{r0, r1, r2, r3, r4, lr}
   1348a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
   1348c:	4608      	mov	r0, r1
   1348e:	a901      	add	r1, sp, #4
   13490:	685a      	ldr	r2, [r3, #4]
   13492:	0212      	lsls	r2, r2, #8
   13494:	9201      	str	r2, [sp, #4]
   13496:	f103 0208 	add.w	r2, r3, #8
   1349a:	9202      	str	r2, [sp, #8]
   1349c:	2203      	movs	r2, #3
   1349e:	f88d 200c 	strb.w	r2, [sp, #12]
   134a2:	79db      	ldrb	r3, [r3, #7]
   134a4:	f88d 300d 	strb.w	r3, [sp, #13]
   134a8:	f7f3 e922 	blx	66f0 <__gnu_unwind_execute@plt>
   134ac:	b005      	add	sp, #20
   134ae:	f85d fb04 	ldr.w	pc, [sp], #4

000134b2 <_Unwind_GetRegionStart@@Base>:
   134b2:	b508      	push	{r3, lr}
   134b4:	f7ff feac 	bl	13210 <_Unwind_Backtrace@@Base+0x68>
   134b8:	6c80      	ldr	r0, [r0, #72]	; 0x48
   134ba:	bd08      	pop	{r3, pc}

000134bc <_Unwind_GetLanguageSpecificData@@Base>:
   134bc:	b508      	push	{r3, lr}
   134be:	f7ff fea7 	bl	13210 <_Unwind_Backtrace@@Base+0x68>
   134c2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
   134c4:	79d8      	ldrb	r0, [r3, #7]
   134c6:	eb03 0080 	add.w	r0, r3, r0, lsl #2
   134ca:	3008      	adds	r0, #8
   134cc:	bd08      	pop	{r3, pc}

000134ce <_Unwind_GetDataRelBase@@Base>:
   134ce:	b508      	push	{r3, lr}
   134d0:	f7f3 e8ea 	blx	66a8 <abort@plt>

000134d4 <_Unwind_GetTextRelBase@@Base>:
   134d4:	b508      	push	{r3, lr}
   134d6:	f7f3 e8e8 	blx	66a8 <abort@plt>
	...

000134dc <__aeabi_drsub@@Base>:
   134dc:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
   134e0:	e002      	b.n	134e8 <__adddf3@@Base>
   134e2:	bf00      	nop

000134e4 <__aeabi_dsub@@Base>:
   134e4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

000134e8 <__adddf3@@Base>:
   134e8:	b530      	push	{r4, r5, lr}
   134ea:	ea4f 0441 	mov.w	r4, r1, lsl #1
   134ee:	ea4f 0543 	mov.w	r5, r3, lsl #1
   134f2:	ea94 0f05 	teq	r4, r5
   134f6:	bf08      	it	eq
   134f8:	ea90 0f02 	teqeq	r0, r2
   134fc:	bf1f      	itttt	ne
   134fe:	ea54 0c00 	orrsne.w	ip, r4, r0
   13502:	ea55 0c02 	orrsne.w	ip, r5, r2
   13506:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
   1350a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
   1350e:	f000 80e2 	beq.w	136d6 <__adddf3@@Base+0x1ee>
   13512:	ea4f 5454 	mov.w	r4, r4, lsr #21
   13516:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
   1351a:	bfb8      	it	lt
   1351c:	426d      	neglt	r5, r5
   1351e:	dd0c      	ble.n	1353a <__adddf3@@Base+0x52>
   13520:	442c      	add	r4, r5
   13522:	ea80 0202 	eor.w	r2, r0, r2
   13526:	ea81 0303 	eor.w	r3, r1, r3
   1352a:	ea82 0000 	eor.w	r0, r2, r0
   1352e:	ea83 0101 	eor.w	r1, r3, r1
   13532:	ea80 0202 	eor.w	r2, r0, r2
   13536:	ea81 0303 	eor.w	r3, r1, r3
   1353a:	2d36      	cmp	r5, #54	; 0x36
   1353c:	bf88      	it	hi
   1353e:	bd30      	pophi	{r4, r5, pc}
   13540:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
   13544:	ea4f 3101 	mov.w	r1, r1, lsl #12
   13548:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
   1354c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
   13550:	d002      	beq.n	13558 <__adddf3@@Base+0x70>
   13552:	4240      	negs	r0, r0
   13554:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   13558:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
   1355c:	ea4f 3303 	mov.w	r3, r3, lsl #12
   13560:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
   13564:	d002      	beq.n	1356c <__adddf3@@Base+0x84>
   13566:	4252      	negs	r2, r2
   13568:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
   1356c:	ea94 0f05 	teq	r4, r5
   13570:	f000 80a7 	beq.w	136c2 <__adddf3@@Base+0x1da>
   13574:	f1a4 0401 	sub.w	r4, r4, #1
   13578:	f1d5 0e20 	rsbs	lr, r5, #32
   1357c:	db0d      	blt.n	1359a <__adddf3@@Base+0xb2>
   1357e:	fa02 fc0e 	lsl.w	ip, r2, lr
   13582:	fa22 f205 	lsr.w	r2, r2, r5
   13586:	1880      	adds	r0, r0, r2
   13588:	f141 0100 	adc.w	r1, r1, #0
   1358c:	fa03 f20e 	lsl.w	r2, r3, lr
   13590:	1880      	adds	r0, r0, r2
   13592:	fa43 f305 	asr.w	r3, r3, r5
   13596:	4159      	adcs	r1, r3
   13598:	e00e      	b.n	135b8 <__adddf3@@Base+0xd0>
   1359a:	f1a5 0520 	sub.w	r5, r5, #32
   1359e:	f10e 0e20 	add.w	lr, lr, #32
   135a2:	2a01      	cmp	r2, #1
   135a4:	fa03 fc0e 	lsl.w	ip, r3, lr
   135a8:	bf28      	it	cs
   135aa:	f04c 0c02 	orrcs.w	ip, ip, #2
   135ae:	fa43 f305 	asr.w	r3, r3, r5
   135b2:	18c0      	adds	r0, r0, r3
   135b4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
   135b8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
   135bc:	d507      	bpl.n	135ce <__adddf3@@Base+0xe6>
   135be:	f04f 0e00 	mov.w	lr, #0
   135c2:	f1dc 0c00 	rsbs	ip, ip, #0
   135c6:	eb7e 0000 	sbcs.w	r0, lr, r0
   135ca:	eb6e 0101 	sbc.w	r1, lr, r1
   135ce:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
   135d2:	d31b      	bcc.n	1360c <__adddf3@@Base+0x124>
   135d4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
   135d8:	d30c      	bcc.n	135f4 <__adddf3@@Base+0x10c>
   135da:	0849      	lsrs	r1, r1, #1
   135dc:	ea5f 0030 	movs.w	r0, r0, rrx
   135e0:	ea4f 0c3c 	mov.w	ip, ip, rrx
   135e4:	f104 0401 	add.w	r4, r4, #1
   135e8:	ea4f 5244 	mov.w	r2, r4, lsl #21
   135ec:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
   135f0:	f080 809a 	bcs.w	13728 <__adddf3@@Base+0x240>
   135f4:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
   135f8:	bf08      	it	eq
   135fa:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
   135fe:	f150 0000 	adcs.w	r0, r0, #0
   13602:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
   13606:	ea41 0105 	orr.w	r1, r1, r5
   1360a:	bd30      	pop	{r4, r5, pc}
   1360c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
   13610:	4140      	adcs	r0, r0
   13612:	eb41 0101 	adc.w	r1, r1, r1
   13616:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
   1361a:	f1a4 0401 	sub.w	r4, r4, #1
   1361e:	d1e9      	bne.n	135f4 <__adddf3@@Base+0x10c>
   13620:	f091 0f00 	teq	r1, #0
   13624:	bf04      	itt	eq
   13626:	4601      	moveq	r1, r0
   13628:	2000      	moveq	r0, #0
   1362a:	fab1 f381 	clz	r3, r1
   1362e:	bf08      	it	eq
   13630:	3320      	addeq	r3, #32
   13632:	f1a3 030b 	sub.w	r3, r3, #11
   13636:	f1b3 0220 	subs.w	r2, r3, #32
   1363a:	da0c      	bge.n	13656 <__adddf3@@Base+0x16e>
   1363c:	320c      	adds	r2, #12
   1363e:	dd08      	ble.n	13652 <__adddf3@@Base+0x16a>
   13640:	f102 0c14 	add.w	ip, r2, #20
   13644:	f1c2 020c 	rsb	r2, r2, #12
   13648:	fa01 f00c 	lsl.w	r0, r1, ip
   1364c:	fa21 f102 	lsr.w	r1, r1, r2
   13650:	e00c      	b.n	1366c <__adddf3@@Base+0x184>
   13652:	f102 0214 	add.w	r2, r2, #20
   13656:	bfd8      	it	le
   13658:	f1c2 0c20 	rsble	ip, r2, #32
   1365c:	fa01 f102 	lsl.w	r1, r1, r2
   13660:	fa20 fc0c 	lsr.w	ip, r0, ip
   13664:	bfdc      	itt	le
   13666:	ea41 010c 	orrle.w	r1, r1, ip
   1366a:	4090      	lslle	r0, r2
   1366c:	1ae4      	subs	r4, r4, r3
   1366e:	bfa2      	ittt	ge
   13670:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
   13674:	4329      	orrge	r1, r5
   13676:	bd30      	popge	{r4, r5, pc}
   13678:	ea6f 0404 	mvn.w	r4, r4
   1367c:	3c1f      	subs	r4, #31
   1367e:	da1c      	bge.n	136ba <__adddf3@@Base+0x1d2>
   13680:	340c      	adds	r4, #12
   13682:	dc0e      	bgt.n	136a2 <__adddf3@@Base+0x1ba>
   13684:	f104 0414 	add.w	r4, r4, #20
   13688:	f1c4 0220 	rsb	r2, r4, #32
   1368c:	fa20 f004 	lsr.w	r0, r0, r4
   13690:	fa01 f302 	lsl.w	r3, r1, r2
   13694:	ea40 0003 	orr.w	r0, r0, r3
   13698:	fa21 f304 	lsr.w	r3, r1, r4
   1369c:	ea45 0103 	orr.w	r1, r5, r3
   136a0:	bd30      	pop	{r4, r5, pc}
   136a2:	f1c4 040c 	rsb	r4, r4, #12
   136a6:	f1c4 0220 	rsb	r2, r4, #32
   136aa:	fa20 f002 	lsr.w	r0, r0, r2
   136ae:	fa01 f304 	lsl.w	r3, r1, r4
   136b2:	ea40 0003 	orr.w	r0, r0, r3
   136b6:	4629      	mov	r1, r5
   136b8:	bd30      	pop	{r4, r5, pc}
   136ba:	fa21 f004 	lsr.w	r0, r1, r4
   136be:	4629      	mov	r1, r5
   136c0:	bd30      	pop	{r4, r5, pc}
   136c2:	f094 0f00 	teq	r4, #0
   136c6:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
   136ca:	bf06      	itte	eq
   136cc:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
   136d0:	3401      	addeq	r4, #1
   136d2:	3d01      	subne	r5, #1
   136d4:	e74e      	b.n	13574 <__adddf3@@Base+0x8c>
   136d6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
   136da:	bf18      	it	ne
   136dc:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
   136e0:	d029      	beq.n	13736 <__adddf3@@Base+0x24e>
   136e2:	ea94 0f05 	teq	r4, r5
   136e6:	bf08      	it	eq
   136e8:	ea90 0f02 	teqeq	r0, r2
   136ec:	d005      	beq.n	136fa <__adddf3@@Base+0x212>
   136ee:	ea54 0c00 	orrs.w	ip, r4, r0
   136f2:	bf04      	itt	eq
   136f4:	4619      	moveq	r1, r3
   136f6:	4610      	moveq	r0, r2
   136f8:	bd30      	pop	{r4, r5, pc}
   136fa:	ea91 0f03 	teq	r1, r3
   136fe:	bf1e      	ittt	ne
   13700:	2100      	movne	r1, #0
   13702:	2000      	movne	r0, #0
   13704:	bd30      	popne	{r4, r5, pc}
   13706:	ea5f 5c54 	movs.w	ip, r4, lsr #21
   1370a:	d105      	bne.n	13718 <__adddf3@@Base+0x230>
   1370c:	0040      	lsls	r0, r0, #1
   1370e:	4149      	adcs	r1, r1
   13710:	bf28      	it	cs
   13712:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
   13716:	bd30      	pop	{r4, r5, pc}
   13718:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
   1371c:	bf3c      	itt	cc
   1371e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
   13722:	bd30      	popcc	{r4, r5, pc}
   13724:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
   13728:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
   1372c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
   13730:	f04f 0000 	mov.w	r0, #0
   13734:	bd30      	pop	{r4, r5, pc}
   13736:	ea7f 5c64 	mvns.w	ip, r4, asr #21
   1373a:	bf1a      	itte	ne
   1373c:	4619      	movne	r1, r3
   1373e:	4610      	movne	r0, r2
   13740:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
   13744:	bf1c      	itt	ne
   13746:	460b      	movne	r3, r1
   13748:	4602      	movne	r2, r0
   1374a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
   1374e:	bf06      	itte	eq
   13750:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
   13754:	ea91 0f03 	teqeq	r1, r3
   13758:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
   1375c:	bd30      	pop	{r4, r5, pc}
   1375e:	bf00      	nop

00013760 <__aeabi_ui2d@@Base>:
   13760:	f090 0f00 	teq	r0, #0
   13764:	bf04      	itt	eq
   13766:	2100      	moveq	r1, #0
   13768:	4770      	bxeq	lr
   1376a:	b530      	push	{r4, r5, lr}
   1376c:	f44f 6480 	mov.w	r4, #1024	; 0x400
   13770:	f104 0432 	add.w	r4, r4, #50	; 0x32
   13774:	f04f 0500 	mov.w	r5, #0
   13778:	f04f 0100 	mov.w	r1, #0
   1377c:	e750      	b.n	13620 <__adddf3@@Base+0x138>
   1377e:	bf00      	nop

00013780 <__aeabi_i2d@@Base>:
   13780:	f090 0f00 	teq	r0, #0
   13784:	bf04      	itt	eq
   13786:	2100      	moveq	r1, #0
   13788:	4770      	bxeq	lr
   1378a:	b530      	push	{r4, r5, lr}
   1378c:	f44f 6480 	mov.w	r4, #1024	; 0x400
   13790:	f104 0432 	add.w	r4, r4, #50	; 0x32
   13794:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
   13798:	bf48      	it	mi
   1379a:	4240      	negmi	r0, r0
   1379c:	f04f 0100 	mov.w	r1, #0
   137a0:	e73e      	b.n	13620 <__adddf3@@Base+0x138>
   137a2:	bf00      	nop

000137a4 <__aeabi_f2d@@Base>:
   137a4:	0042      	lsls	r2, r0, #1
   137a6:	ea4f 01e2 	mov.w	r1, r2, asr #3
   137aa:	ea4f 0131 	mov.w	r1, r1, rrx
   137ae:	ea4f 7002 	mov.w	r0, r2, lsl #28
   137b2:	bf1f      	itttt	ne
   137b4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
   137b8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
   137bc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
   137c0:	4770      	bxne	lr
   137c2:	f092 0f00 	teq	r2, #0
   137c6:	bf14      	ite	ne
   137c8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
   137cc:	4770      	bxeq	lr
   137ce:	b530      	push	{r4, r5, lr}
   137d0:	f44f 7460 	mov.w	r4, #896	; 0x380
   137d4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
   137d8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
   137dc:	e720      	b.n	13620 <__adddf3@@Base+0x138>
   137de:	bf00      	nop

000137e0 <__aeabi_ul2d@@Base>:
   137e0:	ea50 0201 	orrs.w	r2, r0, r1
   137e4:	bf08      	it	eq
   137e6:	4770      	bxeq	lr
   137e8:	b530      	push	{r4, r5, lr}
   137ea:	f04f 0500 	mov.w	r5, #0
   137ee:	e00a      	b.n	13806 <__aeabi_l2d@@Base+0x16>

000137f0 <__aeabi_l2d@@Base>:
   137f0:	ea50 0201 	orrs.w	r2, r0, r1
   137f4:	bf08      	it	eq
   137f6:	4770      	bxeq	lr
   137f8:	b530      	push	{r4, r5, lr}
   137fa:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
   137fe:	d502      	bpl.n	13806 <__aeabi_l2d@@Base+0x16>
   13800:	4240      	negs	r0, r0
   13802:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   13806:	f44f 6480 	mov.w	r4, #1024	; 0x400
   1380a:	f104 0432 	add.w	r4, r4, #50	; 0x32
   1380e:	ea5f 5c91 	movs.w	ip, r1, lsr #22
   13812:	f43f aedc 	beq.w	135ce <__adddf3@@Base+0xe6>
   13816:	f04f 0203 	mov.w	r2, #3
   1381a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
   1381e:	bf18      	it	ne
   13820:	3203      	addne	r2, #3
   13822:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
   13826:	bf18      	it	ne
   13828:	3203      	addne	r2, #3
   1382a:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
   1382e:	f1c2 0320 	rsb	r3, r2, #32
   13832:	fa00 fc03 	lsl.w	ip, r0, r3
   13836:	fa20 f002 	lsr.w	r0, r0, r2
   1383a:	fa01 fe03 	lsl.w	lr, r1, r3
   1383e:	ea40 000e 	orr.w	r0, r0, lr
   13842:	fa21 f102 	lsr.w	r1, r1, r2
   13846:	4414      	add	r4, r2
   13848:	e6c1      	b.n	135ce <__adddf3@@Base+0xe6>
   1384a:	bf00      	nop

0001384c <__aeabi_dmul@@Base>:
   1384c:	b570      	push	{r4, r5, r6, lr}
   1384e:	f04f 0cff 	mov.w	ip, #255	; 0xff
   13852:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
   13856:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
   1385a:	bf1d      	ittte	ne
   1385c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
   13860:	ea94 0f0c 	teqne	r4, ip
   13864:	ea95 0f0c 	teqne	r5, ip
   13868:	f000 f8de 	bleq	13a28 <__aeabi_dmul@@Base+0x1dc>
   1386c:	442c      	add	r4, r5
   1386e:	ea81 0603 	eor.w	r6, r1, r3
   13872:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
   13876:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
   1387a:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
   1387e:	bf18      	it	ne
   13880:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
   13884:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
   13888:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
   1388c:	d038      	beq.n	13900 <__aeabi_dmul@@Base+0xb4>
   1388e:	fba0 ce02 	umull	ip, lr, r0, r2
   13892:	f04f 0500 	mov.w	r5, #0
   13896:	fbe1 e502 	umlal	lr, r5, r1, r2
   1389a:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
   1389e:	fbe0 e503 	umlal	lr, r5, r0, r3
   138a2:	f04f 0600 	mov.w	r6, #0
   138a6:	fbe1 5603 	umlal	r5, r6, r1, r3
   138aa:	f09c 0f00 	teq	ip, #0
   138ae:	bf18      	it	ne
   138b0:	f04e 0e01 	orrne.w	lr, lr, #1
   138b4:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
   138b8:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
   138bc:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
   138c0:	d204      	bcs.n	138cc <__aeabi_dmul@@Base+0x80>
   138c2:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
   138c6:	416d      	adcs	r5, r5
   138c8:	eb46 0606 	adc.w	r6, r6, r6
   138cc:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
   138d0:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
   138d4:	ea4f 20c5 	mov.w	r0, r5, lsl #11
   138d8:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
   138dc:	ea4f 2ece 	mov.w	lr, lr, lsl #11
   138e0:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
   138e4:	bf88      	it	hi
   138e6:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
   138ea:	d81e      	bhi.n	1392a <__aeabi_dmul@@Base+0xde>
   138ec:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
   138f0:	bf08      	it	eq
   138f2:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
   138f6:	f150 0000 	adcs.w	r0, r0, #0
   138fa:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
   138fe:	bd70      	pop	{r4, r5, r6, pc}
   13900:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
   13904:	ea46 0101 	orr.w	r1, r6, r1
   13908:	ea40 0002 	orr.w	r0, r0, r2
   1390c:	ea81 0103 	eor.w	r1, r1, r3
   13910:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
   13914:	bfc2      	ittt	gt
   13916:	ebd4 050c 	rsbsgt	r5, r4, ip
   1391a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
   1391e:	bd70      	popgt	{r4, r5, r6, pc}
   13920:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
   13924:	f04f 0e00 	mov.w	lr, #0
   13928:	3c01      	subs	r4, #1
   1392a:	f300 80ab 	bgt.w	13a84 <__aeabi_dmul@@Base+0x238>
   1392e:	f114 0f36 	cmn.w	r4, #54	; 0x36
   13932:	bfde      	ittt	le
   13934:	2000      	movle	r0, #0
   13936:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
   1393a:	bd70      	pople	{r4, r5, r6, pc}
   1393c:	f1c4 0400 	rsb	r4, r4, #0
   13940:	3c20      	subs	r4, #32
   13942:	da35      	bge.n	139b0 <__aeabi_dmul@@Base+0x164>
   13944:	340c      	adds	r4, #12
   13946:	dc1b      	bgt.n	13980 <__aeabi_dmul@@Base+0x134>
   13948:	f104 0414 	add.w	r4, r4, #20
   1394c:	f1c4 0520 	rsb	r5, r4, #32
   13950:	fa00 f305 	lsl.w	r3, r0, r5
   13954:	fa20 f004 	lsr.w	r0, r0, r4
   13958:	fa01 f205 	lsl.w	r2, r1, r5
   1395c:	ea40 0002 	orr.w	r0, r0, r2
   13960:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
   13964:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
   13968:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
   1396c:	fa21 f604 	lsr.w	r6, r1, r4
   13970:	eb42 0106 	adc.w	r1, r2, r6
   13974:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
   13978:	bf08      	it	eq
   1397a:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
   1397e:	bd70      	pop	{r4, r5, r6, pc}
   13980:	f1c4 040c 	rsb	r4, r4, #12
   13984:	f1c4 0520 	rsb	r5, r4, #32
   13988:	fa00 f304 	lsl.w	r3, r0, r4
   1398c:	fa20 f005 	lsr.w	r0, r0, r5
   13990:	fa01 f204 	lsl.w	r2, r1, r4
   13994:	ea40 0002 	orr.w	r0, r0, r2
   13998:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
   1399c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
   139a0:	f141 0100 	adc.w	r1, r1, #0
   139a4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
   139a8:	bf08      	it	eq
   139aa:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
   139ae:	bd70      	pop	{r4, r5, r6, pc}
   139b0:	f1c4 0520 	rsb	r5, r4, #32
   139b4:	fa00 f205 	lsl.w	r2, r0, r5
   139b8:	ea4e 0e02 	orr.w	lr, lr, r2
   139bc:	fa20 f304 	lsr.w	r3, r0, r4
   139c0:	fa01 f205 	lsl.w	r2, r1, r5
   139c4:	ea43 0302 	orr.w	r3, r3, r2
   139c8:	fa21 f004 	lsr.w	r0, r1, r4
   139cc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
   139d0:	fa21 f204 	lsr.w	r2, r1, r4
   139d4:	ea20 0002 	bic.w	r0, r0, r2
   139d8:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
   139dc:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
   139e0:	bf08      	it	eq
   139e2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
   139e6:	bd70      	pop	{r4, r5, r6, pc}
   139e8:	f094 0f00 	teq	r4, #0
   139ec:	d10f      	bne.n	13a0e <__aeabi_dmul@@Base+0x1c2>
   139ee:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
   139f2:	0040      	lsls	r0, r0, #1
   139f4:	eb41 0101 	adc.w	r1, r1, r1
   139f8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
   139fc:	bf08      	it	eq
   139fe:	3c01      	subeq	r4, #1
   13a00:	d0f7      	beq.n	139f2 <__aeabi_dmul@@Base+0x1a6>
   13a02:	ea41 0106 	orr.w	r1, r1, r6
   13a06:	f095 0f00 	teq	r5, #0
   13a0a:	bf18      	it	ne
   13a0c:	4770      	bxne	lr
   13a0e:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
   13a12:	0052      	lsls	r2, r2, #1
   13a14:	eb43 0303 	adc.w	r3, r3, r3
   13a18:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
   13a1c:	bf08      	it	eq
   13a1e:	3d01      	subeq	r5, #1
   13a20:	d0f7      	beq.n	13a12 <__aeabi_dmul@@Base+0x1c6>
   13a22:	ea43 0306 	orr.w	r3, r3, r6
   13a26:	4770      	bx	lr
   13a28:	ea94 0f0c 	teq	r4, ip
   13a2c:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
   13a30:	bf18      	it	ne
   13a32:	ea95 0f0c 	teqne	r5, ip
   13a36:	d00c      	beq.n	13a52 <__aeabi_dmul@@Base+0x206>
   13a38:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
   13a3c:	bf18      	it	ne
   13a3e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
   13a42:	d1d1      	bne.n	139e8 <__aeabi_dmul@@Base+0x19c>
   13a44:	ea81 0103 	eor.w	r1, r1, r3
   13a48:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
   13a4c:	f04f 0000 	mov.w	r0, #0
   13a50:	bd70      	pop	{r4, r5, r6, pc}
   13a52:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
   13a56:	bf06      	itte	eq
   13a58:	4610      	moveq	r0, r2
   13a5a:	4619      	moveq	r1, r3
   13a5c:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
   13a60:	d019      	beq.n	13a96 <__aeabi_dmul@@Base+0x24a>
   13a62:	ea94 0f0c 	teq	r4, ip
   13a66:	d102      	bne.n	13a6e <__aeabi_dmul@@Base+0x222>
   13a68:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
   13a6c:	d113      	bne.n	13a96 <__aeabi_dmul@@Base+0x24a>
   13a6e:	ea95 0f0c 	teq	r5, ip
   13a72:	d105      	bne.n	13a80 <__aeabi_dmul@@Base+0x234>
   13a74:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
   13a78:	bf1c      	itt	ne
   13a7a:	4610      	movne	r0, r2
   13a7c:	4619      	movne	r1, r3
   13a7e:	d10a      	bne.n	13a96 <__aeabi_dmul@@Base+0x24a>
   13a80:	ea81 0103 	eor.w	r1, r1, r3
   13a84:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
   13a88:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
   13a8c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
   13a90:	f04f 0000 	mov.w	r0, #0
   13a94:	bd70      	pop	{r4, r5, r6, pc}
   13a96:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
   13a9a:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
   13a9e:	bd70      	pop	{r4, r5, r6, pc}

00013aa0 <__aeabi_ddiv@@Base>:
   13aa0:	b570      	push	{r4, r5, r6, lr}
   13aa2:	f04f 0cff 	mov.w	ip, #255	; 0xff
   13aa6:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
   13aaa:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
   13aae:	bf1d      	ittte	ne
   13ab0:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
   13ab4:	ea94 0f0c 	teqne	r4, ip
   13ab8:	ea95 0f0c 	teqne	r5, ip
   13abc:	f000 f8a7 	bleq	13c0e <__aeabi_ddiv@@Base+0x16e>
   13ac0:	eba4 0405 	sub.w	r4, r4, r5
   13ac4:	ea81 0e03 	eor.w	lr, r1, r3
   13ac8:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
   13acc:	ea4f 3101 	mov.w	r1, r1, lsl #12
   13ad0:	f000 8088 	beq.w	13be4 <__aeabi_ddiv@@Base+0x144>
   13ad4:	ea4f 3303 	mov.w	r3, r3, lsl #12
   13ad8:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
   13adc:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
   13ae0:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
   13ae4:	ea4f 2202 	mov.w	r2, r2, lsl #8
   13ae8:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
   13aec:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
   13af0:	ea4f 2600 	mov.w	r6, r0, lsl #8
   13af4:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
   13af8:	429d      	cmp	r5, r3
   13afa:	bf08      	it	eq
   13afc:	4296      	cmpeq	r6, r2
   13afe:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
   13b02:	f504 7440 	add.w	r4, r4, #768	; 0x300
   13b06:	d202      	bcs.n	13b0e <__aeabi_ddiv@@Base+0x6e>
   13b08:	085b      	lsrs	r3, r3, #1
   13b0a:	ea4f 0232 	mov.w	r2, r2, rrx
   13b0e:	1ab6      	subs	r6, r6, r2
   13b10:	eb65 0503 	sbc.w	r5, r5, r3
   13b14:	085b      	lsrs	r3, r3, #1
   13b16:	ea4f 0232 	mov.w	r2, r2, rrx
   13b1a:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
   13b1e:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
   13b22:	ebb6 0e02 	subs.w	lr, r6, r2
   13b26:	eb75 0e03 	sbcs.w	lr, r5, r3
   13b2a:	bf22      	ittt	cs
   13b2c:	1ab6      	subcs	r6, r6, r2
   13b2e:	4675      	movcs	r5, lr
   13b30:	ea40 000c 	orrcs.w	r0, r0, ip
   13b34:	085b      	lsrs	r3, r3, #1
   13b36:	ea4f 0232 	mov.w	r2, r2, rrx
   13b3a:	ebb6 0e02 	subs.w	lr, r6, r2
   13b3e:	eb75 0e03 	sbcs.w	lr, r5, r3
   13b42:	bf22      	ittt	cs
   13b44:	1ab6      	subcs	r6, r6, r2
   13b46:	4675      	movcs	r5, lr
   13b48:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
   13b4c:	085b      	lsrs	r3, r3, #1
   13b4e:	ea4f 0232 	mov.w	r2, r2, rrx
   13b52:	ebb6 0e02 	subs.w	lr, r6, r2
   13b56:	eb75 0e03 	sbcs.w	lr, r5, r3
   13b5a:	bf22      	ittt	cs
   13b5c:	1ab6      	subcs	r6, r6, r2
   13b5e:	4675      	movcs	r5, lr
   13b60:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
   13b64:	085b      	lsrs	r3, r3, #1
   13b66:	ea4f 0232 	mov.w	r2, r2, rrx
   13b6a:	ebb6 0e02 	subs.w	lr, r6, r2
   13b6e:	eb75 0e03 	sbcs.w	lr, r5, r3
   13b72:	bf22      	ittt	cs
   13b74:	1ab6      	subcs	r6, r6, r2
   13b76:	4675      	movcs	r5, lr
   13b78:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
   13b7c:	ea55 0e06 	orrs.w	lr, r5, r6
   13b80:	d018      	beq.n	13bb4 <__aeabi_ddiv@@Base+0x114>
   13b82:	ea4f 1505 	mov.w	r5, r5, lsl #4
   13b86:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
   13b8a:	ea4f 1606 	mov.w	r6, r6, lsl #4
   13b8e:	ea4f 03c3 	mov.w	r3, r3, lsl #3
   13b92:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
   13b96:	ea4f 02c2 	mov.w	r2, r2, lsl #3
   13b9a:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
   13b9e:	d1c0      	bne.n	13b22 <__aeabi_ddiv@@Base+0x82>
   13ba0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
   13ba4:	d10b      	bne.n	13bbe <__aeabi_ddiv@@Base+0x11e>
   13ba6:	ea41 0100 	orr.w	r1, r1, r0
   13baa:	f04f 0000 	mov.w	r0, #0
   13bae:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
   13bb2:	e7b6      	b.n	13b22 <__aeabi_ddiv@@Base+0x82>
   13bb4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
   13bb8:	bf04      	itt	eq
   13bba:	4301      	orreq	r1, r0
   13bbc:	2000      	moveq	r0, #0
   13bbe:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
   13bc2:	bf88      	it	hi
   13bc4:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
   13bc8:	f63f aeaf 	bhi.w	1392a <__aeabi_dmul@@Base+0xde>
   13bcc:	ebb5 0c03 	subs.w	ip, r5, r3
   13bd0:	bf04      	itt	eq
   13bd2:	ebb6 0c02 	subseq.w	ip, r6, r2
   13bd6:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
   13bda:	f150 0000 	adcs.w	r0, r0, #0
   13bde:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
   13be2:	bd70      	pop	{r4, r5, r6, pc}
   13be4:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
   13be8:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
   13bec:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
   13bf0:	bfc2      	ittt	gt
   13bf2:	ebd4 050c 	rsbsgt	r5, r4, ip
   13bf6:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
   13bfa:	bd70      	popgt	{r4, r5, r6, pc}
   13bfc:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
   13c00:	f04f 0e00 	mov.w	lr, #0
   13c04:	3c01      	subs	r4, #1
   13c06:	e690      	b.n	1392a <__aeabi_dmul@@Base+0xde>
   13c08:	ea45 0e06 	orr.w	lr, r5, r6
   13c0c:	e68d      	b.n	1392a <__aeabi_dmul@@Base+0xde>
   13c0e:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
   13c12:	ea94 0f0c 	teq	r4, ip
   13c16:	bf08      	it	eq
   13c18:	ea95 0f0c 	teqeq	r5, ip
   13c1c:	f43f af3b 	beq.w	13a96 <__aeabi_dmul@@Base+0x24a>
   13c20:	ea94 0f0c 	teq	r4, ip
   13c24:	d10a      	bne.n	13c3c <__aeabi_ddiv@@Base+0x19c>
   13c26:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
   13c2a:	f47f af34 	bne.w	13a96 <__aeabi_dmul@@Base+0x24a>
   13c2e:	ea95 0f0c 	teq	r5, ip
   13c32:	f47f af25 	bne.w	13a80 <__aeabi_dmul@@Base+0x234>
   13c36:	4610      	mov	r0, r2
   13c38:	4619      	mov	r1, r3
   13c3a:	e72c      	b.n	13a96 <__aeabi_dmul@@Base+0x24a>
   13c3c:	ea95 0f0c 	teq	r5, ip
   13c40:	d106      	bne.n	13c50 <__aeabi_ddiv@@Base+0x1b0>
   13c42:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
   13c46:	f43f aefd 	beq.w	13a44 <__aeabi_dmul@@Base+0x1f8>
   13c4a:	4610      	mov	r0, r2
   13c4c:	4619      	mov	r1, r3
   13c4e:	e722      	b.n	13a96 <__aeabi_dmul@@Base+0x24a>
   13c50:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
   13c54:	bf18      	it	ne
   13c56:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
   13c5a:	f47f aec5 	bne.w	139e8 <__aeabi_dmul@@Base+0x19c>
   13c5e:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
   13c62:	f47f af0d 	bne.w	13a80 <__aeabi_dmul@@Base+0x234>
   13c66:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
   13c6a:	f47f aeeb 	bne.w	13a44 <__aeabi_dmul@@Base+0x1f8>
   13c6e:	e712      	b.n	13a96 <__aeabi_dmul@@Base+0x24a>

00013c70 <__aeabi_d2uiz@@Base>:
   13c70:	004a      	lsls	r2, r1, #1
   13c72:	d211      	bcs.n	13c98 <__aeabi_d2uiz@@Base+0x28>
   13c74:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
   13c78:	d211      	bcs.n	13c9e <__aeabi_d2uiz@@Base+0x2e>
   13c7a:	d50d      	bpl.n	13c98 <__aeabi_d2uiz@@Base+0x28>
   13c7c:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
   13c80:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
   13c84:	d40e      	bmi.n	13ca4 <__aeabi_d2uiz@@Base+0x34>
   13c86:	ea4f 23c1 	mov.w	r3, r1, lsl #11
   13c8a:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
   13c8e:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
   13c92:	fa23 f002 	lsr.w	r0, r3, r2
   13c96:	4770      	bx	lr
   13c98:	f04f 0000 	mov.w	r0, #0
   13c9c:	4770      	bx	lr
   13c9e:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
   13ca2:	d102      	bne.n	13caa <__aeabi_d2uiz@@Base+0x3a>
   13ca4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   13ca8:	4770      	bx	lr
   13caa:	f04f 0000 	mov.w	r0, #0
   13cae:	4770      	bx	lr

00013cb0 <__divdi3@@Base>:
   13cb0:	2900      	cmp	r1, #0
   13cb2:	468c      	mov	ip, r1
   13cb4:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   13cb8:	4680      	mov	r8, r0
   13cba:	4696      	mov	lr, r2
   13cbc:	461e      	mov	r6, r3
   13cbe:	da07      	bge.n	13cd0 <__divdi3@@Base+0x20>
   13cc0:	4240      	negs	r0, r0
   13cc2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
   13cc6:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   13cca:	4680      	mov	r8, r0
   13ccc:	468c      	mov	ip, r1
   13cce:	e000      	b.n	13cd2 <__divdi3@@Base+0x22>
   13cd0:	2700      	movs	r7, #0
   13cd2:	2b00      	cmp	r3, #0
   13cd4:	da06      	bge.n	13ce4 <__divdi3@@Base+0x34>
   13cd6:	4252      	negs	r2, r2
   13cd8:	ea6f 0707 	mvn.w	r7, r7
   13cdc:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
   13ce0:	4696      	mov	lr, r2
   13ce2:	461e      	mov	r6, r3
   13ce4:	45b4      	cmp	ip, r6
   13ce6:	4644      	mov	r4, r8
   13ce8:	bf08      	it	eq
   13cea:	45f0      	cmpeq	r8, lr
   13cec:	4665      	mov	r5, ip
   13cee:	4670      	mov	r0, lr
   13cf0:	4631      	mov	r1, r6
   13cf2:	d352      	bcc.n	13d9a <__divdi3@@Base+0xea>
   13cf4:	b116      	cbz	r6, 13cfc <__divdi3@@Base+0x4c>
   13cf6:	fab6 f686 	clz	r6, r6
   13cfa:	e002      	b.n	13d02 <__divdi3@@Base+0x52>
   13cfc:	fabe f68e 	clz	r6, lr
   13d00:	3620      	adds	r6, #32
   13d02:	b115      	cbz	r5, 13d0a <__divdi3@@Base+0x5a>
   13d04:	fab5 f385 	clz	r3, r5
   13d08:	e002      	b.n	13d10 <__divdi3@@Base+0x60>
   13d0a:	fab4 f384 	clz	r3, r4
   13d0e:	3320      	adds	r3, #32
   13d10:	1af6      	subs	r6, r6, r3
   13d12:	9601      	str	r6, [sp, #4]
   13d14:	4632      	mov	r2, r6
   13d16:	f7f2 ed3a 	blx	678c <__aeabi_llsl@plt>
   13d1a:	428d      	cmp	r5, r1
   13d1c:	4682      	mov	sl, r0
   13d1e:	bf08      	it	eq
   13d20:	4284      	cmpeq	r4, r0
   13d22:	468b      	mov	fp, r1
   13d24:	d30a      	bcc.n	13d3c <__divdi3@@Base+0x8c>
   13d26:	1a24      	subs	r4, r4, r0
   13d28:	4632      	mov	r2, r6
   13d2a:	eb65 0501 	sbc.w	r5, r5, r1
   13d2e:	2001      	movs	r0, #1
   13d30:	2100      	movs	r1, #0
   13d32:	f7f2 ed2c 	blx	678c <__aeabi_llsl@plt>
   13d36:	4602      	mov	r2, r0
   13d38:	460b      	mov	r3, r1
   13d3a:	e001      	b.n	13d40 <__divdi3@@Base+0x90>
   13d3c:	2200      	movs	r2, #0
   13d3e:	2300      	movs	r3, #0
   13d40:	b36e      	cbz	r6, 13d9e <__divdi3@@Base+0xee>
   13d42:	ea5f 0b5b 	movs.w	fp, fp, lsr #1
   13d46:	ea4f 0a3a 	mov.w	sl, sl, rrx
   13d4a:	ebb4 080a 	subs.w	r8, r4, sl
   13d4e:	eb65 090b 	sbc.w	r9, r5, fp
   13d52:	eb18 0808 	adds.w	r8, r8, r8
   13d56:	eb49 0909 	adc.w	r9, r9, r9
   13d5a:	f118 0801 	adds.w	r8, r8, #1
   13d5e:	f149 0900 	adc.w	r9, r9, #0
   13d62:	1920      	adds	r0, r4, r4
   13d64:	eb45 0105 	adc.w	r1, r5, r5
   13d68:	455d      	cmp	r5, fp
   13d6a:	bf08      	it	eq
   13d6c:	4554      	cmpeq	r4, sl
   13d6e:	bf24      	itt	cs
   13d70:	4640      	movcs	r0, r8
   13d72:	4649      	movcs	r1, r9
   13d74:	3e01      	subs	r6, #1
   13d76:	4604      	mov	r4, r0
   13d78:	460d      	mov	r5, r1
   13d7a:	d1e6      	bne.n	13d4a <__divdi3@@Base+0x9a>
   13d7c:	eb10 0802 	adds.w	r8, r0, r2
   13d80:	9a01      	ldr	r2, [sp, #4]
   13d82:	eb41 0903 	adc.w	r9, r1, r3
   13d86:	f7f2 ed08 	blx	6798 <__aeabi_llsr@plt>
   13d8a:	9a01      	ldr	r2, [sp, #4]
   13d8c:	f7f2 ecfe 	blx	678c <__aeabi_llsl@plt>
   13d90:	ebb8 0200 	subs.w	r2, r8, r0
   13d94:	eb69 0301 	sbc.w	r3, r9, r1
   13d98:	e001      	b.n	13d9e <__divdi3@@Base+0xee>
   13d9a:	2200      	movs	r2, #0
   13d9c:	2300      	movs	r3, #0
   13d9e:	1c38      	adds	r0, r7, #0
   13da0:	f04f 0100 	mov.w	r1, #0
   13da4:	bf18      	it	ne
   13da6:	2001      	movne	r0, #1
   13da8:	4244      	negs	r4, r0
   13daa:	eb61 0541 	sbc.w	r5, r1, r1, lsl #1
   13dae:	4062      	eors	r2, r4
   13db0:	1880      	adds	r0, r0, r2
   13db2:	ea83 0305 	eor.w	r3, r3, r5
   13db6:	4159      	adcs	r1, r3
   13db8:	b003      	add	sp, #12
   13dba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00013dbe <__udivdi3@@Base>:
   13dbe:	4299      	cmp	r1, r3
   13dc0:	bf08      	it	eq
   13dc2:	4290      	cmpeq	r0, r2
   13dc4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   13dc8:	4606      	mov	r6, r0
   13dca:	460f      	mov	r7, r1
   13dcc:	d355      	bcc.n	13e7a <__udivdi3@@Base+0xbc>
   13dce:	b113      	cbz	r3, 13dd6 <__udivdi3@@Base+0x18>
   13dd0:	fab3 f483 	clz	r4, r3
   13dd4:	e002      	b.n	13ddc <__udivdi3@@Base+0x1e>
   13dd6:	fab2 f482 	clz	r4, r2
   13dda:	3420      	adds	r4, #32
   13ddc:	b117      	cbz	r7, 13de4 <__udivdi3@@Base+0x26>
   13dde:	fab7 f187 	clz	r1, r7
   13de2:	e002      	b.n	13dea <__udivdi3@@Base+0x2c>
   13de4:	fab6 f186 	clz	r1, r6
   13de8:	3120      	adds	r1, #32
   13dea:	1a64      	subs	r4, r4, r1
   13dec:	4610      	mov	r0, r2
   13dee:	4619      	mov	r1, r3
   13df0:	4622      	mov	r2, r4
   13df2:	4625      	mov	r5, r4
   13df4:	f7f2 ecca 	blx	678c <__aeabi_llsl@plt>
   13df8:	428f      	cmp	r7, r1
   13dfa:	4682      	mov	sl, r0
   13dfc:	bf08      	it	eq
   13dfe:	4286      	cmpeq	r6, r0
   13e00:	468b      	mov	fp, r1
   13e02:	d308      	bcc.n	13e16 <__udivdi3@@Base+0x58>
   13e04:	1a36      	subs	r6, r6, r0
   13e06:	4622      	mov	r2, r4
   13e08:	eb67 0701 	sbc.w	r7, r7, r1
   13e0c:	2001      	movs	r0, #1
   13e0e:	2100      	movs	r1, #0
   13e10:	f7f2 ecbc 	blx	678c <__aeabi_llsl@plt>
   13e14:	e001      	b.n	13e1a <__udivdi3@@Base+0x5c>
   13e16:	2000      	movs	r0, #0
   13e18:	2100      	movs	r1, #0
   13e1a:	b384      	cbz	r4, 13e7e <__udivdi3@@Base+0xc0>
   13e1c:	ea5f 0b5b 	movs.w	fp, fp, lsr #1
   13e20:	ea4f 0a3a 	mov.w	sl, sl, rrx
   13e24:	ebb6 080a 	subs.w	r8, r6, sl
   13e28:	eb67 090b 	sbc.w	r9, r7, fp
   13e2c:	eb18 0808 	adds.w	r8, r8, r8
   13e30:	eb49 0909 	adc.w	r9, r9, r9
   13e34:	f118 0801 	adds.w	r8, r8, #1
   13e38:	f149 0900 	adc.w	r9, r9, #0
   13e3c:	19b2      	adds	r2, r6, r6
   13e3e:	eb47 0307 	adc.w	r3, r7, r7
   13e42:	455f      	cmp	r7, fp
   13e44:	bf08      	it	eq
   13e46:	4556      	cmpeq	r6, sl
   13e48:	bf3c      	itt	cc
   13e4a:	4690      	movcc	r8, r2
   13e4c:	4699      	movcc	r9, r3
   13e4e:	3c01      	subs	r4, #1
   13e50:	4646      	mov	r6, r8
   13e52:	464f      	mov	r7, r9
   13e54:	d1e6      	bne.n	13e24 <__udivdi3@@Base+0x66>
   13e56:	eb18 0a00 	adds.w	sl, r8, r0
   13e5a:	462a      	mov	r2, r5
   13e5c:	eb49 0b01 	adc.w	fp, r9, r1
   13e60:	4640      	mov	r0, r8
   13e62:	4649      	mov	r1, r9
   13e64:	f7f2 ec98 	blx	6798 <__aeabi_llsr@plt>
   13e68:	462a      	mov	r2, r5
   13e6a:	f7f2 ec90 	blx	678c <__aeabi_llsl@plt>
   13e6e:	ebba 0000 	subs.w	r0, sl, r0
   13e72:	eb6b 0101 	sbc.w	r1, fp, r1
   13e76:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   13e7a:	2000      	movs	r0, #0
   13e7c:	2100      	movs	r1, #0
   13e7e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

00013e84 <__aeabi_llsr@@Base>:
   13e84:	40d0      	lsrs	r0, r2
   13e86:	1c0b      	adds	r3, r1, #0
   13e88:	40d1      	lsrs	r1, r2
   13e8a:	469c      	mov	ip, r3
   13e8c:	3a20      	subs	r2, #32
   13e8e:	40d3      	lsrs	r3, r2
   13e90:	4318      	orrs	r0, r3
   13e92:	4252      	negs	r2, r2
   13e94:	4663      	mov	r3, ip
   13e96:	4093      	lsls	r3, r2
   13e98:	4318      	orrs	r0, r3
   13e9a:	4770      	bx	lr

00013e9c <__aeabi_llsl@@Base>:
   13e9c:	4091      	lsls	r1, r2
   13e9e:	1c03      	adds	r3, r0, #0
   13ea0:	4090      	lsls	r0, r2
   13ea2:	469c      	mov	ip, r3
   13ea4:	3a20      	subs	r2, #32
   13ea6:	4093      	lsls	r3, r2
   13ea8:	4319      	orrs	r1, r3
   13eaa:	4252      	negs	r2, r2
   13eac:	4663      	mov	r3, ip
   13eae:	40d3      	lsrs	r3, r2
   13eb0:	4319      	orrs	r1, r3
   13eb2:	4770      	bx	lr
   13eb4:	4778      	bx	pc
   13eb6:	46c0      	nop			; (mov r8, r8)
   13eb8:	c000      	stmia	r0!, {}
   13eba:	e59f      	b.n	139fc <__aeabi_dmul@@Base+0x1b0>
   13ebc:	f00f e08c 	blx	422fd8 <_end@@Base+0x40bfc0>
   13ec0:	1b84      	subs	r4, r0, r6
   13ec2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13ec6:	46c0      	nop			; (mov r8, r8)
   13ec8:	c000      	stmia	r0!, {}
   13eca:	e59f      	b.n	13a0c <__aeabi_dmul@@Base+0x1c0>
   13ecc:	f00f e08c 	blx	422fe8 <_end@@Base+0x40bfd0>
   13ed0:	1b98      	subs	r0, r3, r6
   13ed2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13ed6:	46c0      	nop			; (mov r8, r8)
   13ed8:	c000      	stmia	r0!, {}
   13eda:	e59f      	b.n	13a1c <__aeabi_dmul@@Base+0x1d0>
   13edc:	f00f e08c 	blx	422ff8 <_end@@Base+0x40bfe0>
   13ee0:	1b34      	subs	r4, r6, r4
   13ee2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13ee6:	46c0      	nop			; (mov r8, r8)
   13ee8:	c000      	stmia	r0!, {}
   13eea:	e59f      	b.n	13a2c <__aeabi_dmul@@Base+0x1e0>
   13eec:	f00f e08c 	blx	423008 <_end@@Base+0x40bff0>
   13ef0:	1bf0      	subs	r0, r6, r7
   13ef2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13ef6:	46c0      	nop			; (mov r8, r8)
   13ef8:	c000      	stmia	r0!, {}
   13efa:	e59f      	b.n	13a3c <__aeabi_dmul@@Base+0x1f0>
   13efc:	f00f e08c 	blx	423018 <_end@@Base+0x40c000>
   13f00:	1d6c      	adds	r4, r5, #5
   13f02:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f06:	46c0      	nop			; (mov r8, r8)
   13f08:	c000      	stmia	r0!, {}
   13f0a:	e59f      	b.n	13a4c <__aeabi_dmul@@Base+0x200>
   13f0c:	f00f e08c 	blx	423028 <_end@@Base+0x40c010>
   13f10:	1d98      	adds	r0, r3, #6
   13f12:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f16:	46c0      	nop			; (mov r8, r8)
   13f18:	c000      	stmia	r0!, {}
   13f1a:	e59f      	b.n	13a5c <__aeabi_dmul@@Base+0x210>
   13f1c:	f00f e08c 	blx	423038 <_end@@Base+0x40c020>
   13f20:	1da0      	adds	r0, r4, #6
   13f22:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f26:	46c0      	nop			; (mov r8, r8)
   13f28:	c000      	stmia	r0!, {}
   13f2a:	e59f      	b.n	13a6c <__aeabi_dmul@@Base+0x220>
   13f2c:	f00f e08c 	blx	423048 <_end@@Base+0x40c030>
   13f30:	1b50      	subs	r0, r2, r5
   13f32:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f36:	46c0      	nop			; (mov r8, r8)
   13f38:	c000      	stmia	r0!, {}
   13f3a:	e59f      	b.n	13a7c <__aeabi_dmul@@Base+0x230>
   13f3c:	f00f e08c 	blx	423058 <_end@@Base+0x40c040>
   13f40:	1ce4      	adds	r4, r4, #3
   13f42:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f46:	46c0      	nop			; (mov r8, r8)
   13f48:	c000      	stmia	r0!, {}
   13f4a:	e59f      	b.n	13a8c <__aeabi_dmul@@Base+0x240>
   13f4c:	f00f e08c 	blx	423068 <_end@@Base+0x40c050>
   13f50:	1d94      	adds	r4, r2, #6
   13f52:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f56:	46c0      	nop			; (mov r8, r8)
   13f58:	c000      	stmia	r0!, {}
   13f5a:	e59f      	b.n	13a9c <__aeabi_dmul@@Base+0x250>
   13f5c:	f00f e08c 	blx	423078 <_end@@Base+0x40c060>
   13f60:	1d90      	adds	r0, r2, #6
   13f62:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f66:	46c0      	nop			; (mov r8, r8)
   13f68:	c000      	stmia	r0!, {}
   13f6a:	e59f      	b.n	13aac <__aeabi_ddiv@@Base+0xc>
   13f6c:	f00f e08c 	blx	423088 <_end@@Base+0x40c070>
   13f70:	1db0      	adds	r0, r6, #6
   13f72:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f76:	46c0      	nop			; (mov r8, r8)
   13f78:	c000      	stmia	r0!, {}
   13f7a:	e59f      	b.n	13abc <__aeabi_ddiv@@Base+0x1c>
   13f7c:	f00f e08c 	blx	423098 <_end@@Base+0x40c080>
   13f80:	1dd0      	adds	r0, r2, #7
   13f82:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f86:	46c0      	nop			; (mov r8, r8)
   13f88:	c000      	stmia	r0!, {}
   13f8a:	e59f      	b.n	13acc <__aeabi_ddiv@@Base+0x2c>
   13f8c:	f00f e08c 	blx	4230a8 <_end@@Base+0x40c090>
   13f90:	1de4      	adds	r4, r4, #7
   13f92:	ffff 4778 	vqshl.u32	q10, q12, #31
   13f96:	46c0      	nop			; (mov r8, r8)
   13f98:	c000      	stmia	r0!, {}
   13f9a:	e59f      	b.n	13adc <__aeabi_ddiv@@Base+0x3c>
   13f9c:	f00f e08c 	blx	4230b8 <_end@@Base+0x40c0a0>
   13fa0:	1e40      	subs	r0, r0, #1
   13fa2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13fa6:	46c0      	nop			; (mov r8, r8)
   13fa8:	c000      	stmia	r0!, {}
   13faa:	e59f      	b.n	13aec <__aeabi_ddiv@@Base+0x4c>
   13fac:	f00f e08c 	blx	4230c8 <_end@@Base+0x40c0b0>
   13fb0:	1ddc      	adds	r4, r3, #7
   13fb2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13fb6:	46c0      	nop			; (mov r8, r8)
   13fb8:	c000      	stmia	r0!, {}
   13fba:	e59f      	b.n	13afc <__aeabi_ddiv@@Base+0x5c>
   13fbc:	f00f e08c 	blx	4230d8 <_end@@Base+0x40c0c0>
   13fc0:	1b44      	subs	r4, r0, r5
   13fc2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13fc6:	46c0      	nop			; (mov r8, r8)
   13fc8:	c000      	stmia	r0!, {}
   13fca:	e59f      	b.n	13b0c <__aeabi_ddiv@@Base+0x6c>
   13fcc:	f00f e08c 	blx	4230e8 <_end@@Base+0x40c0d0>
   13fd0:	1d38      	adds	r0, r7, #4
   13fd2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13fd6:	46c0      	nop			; (mov r8, r8)
   13fd8:	c000      	stmia	r0!, {}
   13fda:	e59f      	b.n	13b1c <__aeabi_ddiv@@Base+0x7c>
   13fdc:	f00f e08c 	blx	4230f8 <_end@@Base+0x40c0e0>
   13fe0:	1fbc      	subs	r4, r7, #6
   13fe2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13fe6:	46c0      	nop			; (mov r8, r8)
   13fe8:	c000      	stmia	r0!, {}
   13fea:	e59f      	b.n	13b2c <__aeabi_ddiv@@Base+0x8c>
   13fec:	f00f e08c 	blx	423108 <_end@@Base+0x40c0f0>
   13ff0:	200c      	movs	r0, #12
   13ff2:	ffff 4778 	vqshl.u32	q10, q12, #31
   13ff6:	46c0      	nop			; (mov r8, r8)
   13ff8:	c000      	stmia	r0!, {}
   13ffa:	e59f      	b.n	13b3c <__aeabi_ddiv@@Base+0x9c>
   13ffc:	f00f e08c 	blx	423118 <_end@@Base+0x40c100>
   14000:	1d44      	adds	r4, r0, #5
   14002:	ffff 4778 	vqshl.u32	q10, q12, #31
   14006:	46c0      	nop			; (mov r8, r8)
   14008:	c000      	stmia	r0!, {}
   1400a:	e59f      	b.n	13b4c <__aeabi_ddiv@@Base+0xac>
   1400c:	f00f e08c 	blx	423128 <_end@@Base+0x40c110>
   14010:	1c50      	adds	r0, r2, #1
   14012:	ffff 4778 	vqshl.u32	q10, q12, #31
   14016:	46c0      	nop			; (mov r8, r8)
   14018:	c000      	stmia	r0!, {}
   1401a:	e59f      	b.n	13b5c <__aeabi_ddiv@@Base+0xbc>
   1401c:	f00f e08c 	blx	423138 <_end@@Base+0x40c120>
   14020:	2000      	movs	r0, #0
   14022:	ffff 4778 	vqshl.u32	q10, q12, #31
   14026:	46c0      	nop			; (mov r8, r8)
   14028:	c000      	stmia	r0!, {}
   1402a:	e59f      	b.n	13b6c <__aeabi_ddiv@@Base+0xcc>
   1402c:	f00f e08c 	blx	423148 <_end@@Base+0x40c130>
   14030:	2050      	movs	r0, #80	; 0x50
   14032:	ffff 4778 	vqshl.u32	q10, q12, #31
   14036:	46c0      	nop			; (mov r8, r8)
   14038:	c000      	stmia	r0!, {}
   1403a:	e59f      	b.n	13b7c <__aeabi_ddiv@@Base+0xdc>
   1403c:	f00f e08c 	blx	423158 <_end@@Base+0x40c140>
   14040:	20ac      	movs	r0, #172	; 0xac
   14042:	ffff 4778 	vqshl.u32	q10, q12, #31
   14046:	46c0      	nop			; (mov r8, r8)
   14048:	c000      	stmia	r0!, {}
   1404a:	e59f      	b.n	13b8c <__aeabi_ddiv@@Base+0xec>
   1404c:	f00f e08c 	blx	423168 <_end@@Base+0x40c150>
   14050:	20f0      	movs	r0, #240	; 0xf0
   14052:	ffff 4778 	vqshl.u32	q10, q12, #31
   14056:	46c0      	nop			; (mov r8, r8)
   14058:	c000      	stmia	r0!, {}
   1405a:	e59f      	b.n	13b9c <__aeabi_ddiv@@Base+0xfc>
   1405c:	f00f e08c 	blx	423178 <_end@@Base+0x40c160>
   14060:	21c4      	movs	r1, #196	; 0xc4
   14062:	ffff 4778 	vqshl.u32	q10, q12, #31
   14066:	46c0      	nop			; (mov r8, r8)
   14068:	c000      	stmia	r0!, {}
   1406a:	e59f      	b.n	13bac <__aeabi_ddiv@@Base+0x10c>
   1406c:	f00f e08c 	blx	423188 <_end@@Base+0x40c170>
   14070:	21fc      	movs	r1, #252	; 0xfc
   14072:	ffff 4778 	vqshl.u32	q10, q12, #31
   14076:	46c0      	nop			; (mov r8, r8)
   14078:	c000      	stmia	r0!, {}
   1407a:	e59f      	b.n	13bbc <__aeabi_ddiv@@Base+0x11c>
   1407c:	f00f e08c 	blx	423198 <_end@@Base+0x40c180>
   14080:	2294      	movs	r2, #148	; 0x94
   14082:	ffff 4778 	vqshl.u32	q10, q12, #31
   14086:	46c0      	nop			; (mov r8, r8)
   14088:	c000      	stmia	r0!, {}
   1408a:	e59f      	b.n	13bcc <__aeabi_ddiv@@Base+0x12c>
   1408c:	f00f e08c 	blx	4231a8 <_end@@Base+0x40c190>
   14090:	22d8      	movs	r2, #216	; 0xd8
   14092:	ffff 4778 	vqshl.u32	q10, q12, #31
   14096:	46c0      	nop			; (mov r8, r8)
   14098:	c000      	stmia	r0!, {}
   1409a:	e59f      	b.n	13bdc <__aeabi_ddiv@@Base+0x13c>
   1409c:	f00f e08c 	blx	4231b8 <_end@@Base+0x40c1a0>
   140a0:	1ae8      	subs	r0, r5, r3
   140a2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140a6:	46c0      	nop			; (mov r8, r8)
   140a8:	c000      	stmia	r0!, {}
   140aa:	e59f      	b.n	13bec <__aeabi_ddiv@@Base+0x14c>
   140ac:	f00f e08c 	blx	4231c8 <_end@@Base+0x40c1b0>
   140b0:	2408      	movs	r4, #8
   140b2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140b6:	46c0      	nop			; (mov r8, r8)
   140b8:	c000      	stmia	r0!, {}
   140ba:	e59f      	b.n	13bfc <__aeabi_ddiv@@Base+0x15c>
   140bc:	f00f e08c 	blx	4231d8 <_end@@Base+0x40c1c0>
   140c0:	241c      	movs	r4, #28
   140c2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140c6:	46c0      	nop			; (mov r8, r8)
   140c8:	c000      	stmia	r0!, {}
   140ca:	e59f      	b.n	13c0c <__aeabi_ddiv@@Base+0x16c>
   140cc:	f00f e08c 	blx	4231e8 <_end@@Base+0x40c1d0>
   140d0:	243c      	movs	r4, #60	; 0x3c
   140d2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140d6:	46c0      	nop			; (mov r8, r8)
   140d8:	c000      	stmia	r0!, {}
   140da:	e59f      	b.n	13c1c <__aeabi_ddiv@@Base+0x17c>
   140dc:	f00f e08c 	blx	4231f8 <_end@@Base+0x40c1e0>
   140e0:	2468      	movs	r4, #104	; 0x68
   140e2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140e6:	46c0      	nop			; (mov r8, r8)
   140e8:	c000      	stmia	r0!, {}
   140ea:	e59f      	b.n	13c2c <__aeabi_ddiv@@Base+0x18c>
   140ec:	f00f e08c 	blx	423208 <_end@@Base+0x40c1f0>
   140f0:	1a50      	subs	r0, r2, r1
   140f2:	ffff 4778 	vqshl.u32	q10, q12, #31
   140f6:	46c0      	nop			; (mov r8, r8)
   140f8:	c000      	stmia	r0!, {}
   140fa:	e59f      	b.n	13c3c <__aeabi_ddiv@@Base+0x19c>
   140fc:	f00f e08c 	blx	423218 <_end@@Base+0x40c200>
   14100:	24e4      	movs	r4, #228	; 0xe4
   14102:	ffff 4778 	vqshl.u32	q10, q12, #31
   14106:	46c0      	nop			; (mov r8, r8)
   14108:	c000      	stmia	r0!, {}
   1410a:	e59f      	b.n	13c4c <__aeabi_ddiv@@Base+0x1ac>
   1410c:	f00f e08c 	blx	423228 <_end@@Base+0x40c210>
   14110:	24ec      	movs	r4, #236	; 0xec
   14112:	ffff 4778 	vqshl.u32	q10, q12, #31
   14116:	46c0      	nop			; (mov r8, r8)
   14118:	c000      	stmia	r0!, {}
   1411a:	e59f      	b.n	13c5c <__aeabi_ddiv@@Base+0x1bc>
   1411c:	f00f e08c 	blx	423238 <_end@@Base+0x40c220>
   14120:	25f0      	movs	r5, #240	; 0xf0
   14122:	ffff 4778 	vqshl.u32	q10, q12, #31
   14126:	46c0      	nop			; (mov r8, r8)
   14128:	c000      	stmia	r0!, {}
   1412a:	e59f      	b.n	13c6c <__aeabi_ddiv@@Base+0x1cc>
   1412c:	f00f e08c 	blx	423248 <_end@@Base+0x40c230>
   14130:	2610      	movs	r6, #16
   14132:	Address 0x0000000000014132 is out of bounds.

