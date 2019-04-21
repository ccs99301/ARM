/* ======================== */
/*       DATA section       */
/* ======================== */
	.data
	.align 4

/* --- variable a --- */
	.type a, %object
	.size a, 24
a:
	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6

/* --- variable b --- */
	.type b, %object
	.size b, 24
b:
	.word 7
	.word 8
	.word 9
	.word 10
	.word 11
	.word 12

c:
	.space 16, 0

/* --- variable d --- */
	.type d, %object
	.size d, 16
d:
	.word 13
	.word 14
	.word 15
	.word 16

/* ========================= */
/*       TEXT section        */
/* ========================= */
	.section .text
	.global main
	.type main,%function
.matrix:
	.word a
	.word b
	.word c
	.word d
main:
	ldr r0, .matrix
	ldr r1, [r0], #4  /* r1 := mem32[r0] */
			  /* r0 := r0 + 4    */
	ldr r2, [r0], #4
	ldr r3, [r0]

	ldr r0, .matrix + 4
	ldr r4, [r0], #8
	ldr r5, [r0], #8
	ldr r6, [r0]

	ldr r11, .matrix + 8

	mul r7, r1, r4		//c1
	mul r8, r2, r5
	mul r9, r3, r6
	add r10, r7, r8
	add r10, r10, r9
	str r10, [r11], #4

	ldr r0, .matrix + 4
	ldr r4, [r0], #4
	ldr r4, [r0], #8
	ldr r5, [r0], #8
	ldr r6, [r0]

	mul r7, r1, r4		//c2
	mul r8, r2, r5
	mul r9, r3, r6
	add r10, r7, r8
	add r10, r10 ,r9
	str r10, [r11], #4

	ldr r0, .matrix
	ldr r1, [r0], #12
	ldr r1, [r0], #4
	ldr r2, [r0], #4
	ldr r3, [r0]
	ldr r0, .matrix + 4
	ldr r4, [r0], #8
	ldr r5, [r0], #8
	ldr r6, [r0]

	mul r7, r1, r4		//c3
	mul r8, r2, r5
	mul r9, r3, r6
	add r10, r7, r8
	add r10, r10, r9
	str r10, [r11], #4

	ldr r0, .matrix + 4
	ldr r4, [r0], #4
	ldr r4, [r0], #8
	ldr r5, [r0], #8
	ldr r6, [r0]

	mul r7, r1, r4		//c4
	mul r8, r2, r5
	mul r9, r3, r6
	add r10, r7, r8
	add r10, r10, r9
	str r10, [r11]

	ldr r0, .matrix + 8
	ldr r1, .matrix +12
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2, r3
	str r2, [r0], #4
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2, r3
	str r2, [r0], #4
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2, r3
	str r2, [r0], #4
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2 ,r3
	str r2, [r0]
        nop
