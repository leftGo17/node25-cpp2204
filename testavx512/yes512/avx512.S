	.file	"tmp.cpp"
	.text
	.p2align 4
	.globl	_Z4funcPiS_i
	.type	_Z4funcPiS_i, @function
_Z4funcPiS_i:
.LFB0:
	.cfi_startproc
	endbr64
	leal	15(%rdx), %eax
	testl	%edx, %edx
	cmovs	%eax, %edx
	andl	$-16, %edx
	jle	.L5
	shrl	$4, %edx
	vpbroadcastd	.LC1(%rip), %zmm1
	salq	$6, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	vpslld	$2, (%rsi,%rax), %zmm0
	vpaddd	(%rsi,%rax), %zmm0, %zmm0
	vpslld	$1, %zmm0, %zmm0
	vpaddd	%zmm1, %zmm0, %zmm0
	vmovdqa32	%zmm0, (%rdi,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L3
	vzeroupper
.L5:
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4funcPiS_i, .-_Z4funcPiS_i
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	20
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
