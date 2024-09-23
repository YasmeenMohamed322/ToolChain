
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b580      	push	{r7, lr}
   2:	b082      	sub	sp, #8
   4:	af00      	add	r7, sp, #0
   6:	463b      	mov	r3, r7
   8:	2200      	movs	r2, #0
   a:	601a      	str	r2, [r3, #0]
   c:	809a      	strh	r2, [r3, #4]
   e:	2301      	movs	r3, #1
  10:	703b      	strb	r3, [r7, #0]
  12:	2304      	movs	r3, #4
  14:	707b      	strb	r3, [r7, #1]
  16:	2301      	movs	r3, #1
  18:	70bb      	strb	r3, [r7, #2]
  1a:	2302      	movs	r3, #2
  1c:	713b      	strb	r3, [r7, #4]
  1e:	2003      	movs	r0, #3
  20:	f7ff fffe 	bl	0 <RCC_enuAPB2_EnableClock>
  24:	463b      	mov	r3, r7
  26:	4618      	mov	r0, r3
  28:	f7ff fffe 	bl	0 <GPIO_enuInit>
  2c:	f383 8808 	msr	MSP, r3
  30:	2200      	movs	r2, #0
  32:	2104      	movs	r1, #4
  34:	2001      	movs	r0, #1
  36:	f7ff fffe 	bl	0 <GPIO_enuSetPinValue>
  3a:	e7fe      	b.n	3a <main+0x3a>
