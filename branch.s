	.section	.text
	.global main
	.type main,%function
main:
	mov	r0,#-100
	mov	r1,#-1
	mov	r2,r0
	cmp	r0,#0
	bgt	bypass
	mul	r0,r2,r1
bypass:
	mov	r2,r0
	nop
	.end
