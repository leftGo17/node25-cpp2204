	.file	"tmp.cpp"
# GNU C++17 (Ubuntu 11.4.0-1ubuntu1~22.04.2) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=cascadelake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mavx512f -mbmi -mbmi2 -maes -mpclmul -mavx512vl -mavx512bw -mavx512dq -mavx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mavx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mpku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=25344 -mtune=cascadelake -O3 -fomit-frame-pointer -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	_Z4funcPiS_i
	.type	_Z4funcPiS_i, @function
_Z4funcPiS_i:
.LFB0:
	.cfi_startproc
	endbr64	
# tmp.cpp:4:     n = n / 8 * 8;
	leal	7(%rdx), %eax	#, tmp96
	testl	%edx, %edx	# n
	cmovs	%eax, %edx	# tmp96,, n
# tmp.cpp:5:     for (int i = 0; i < n; i++) a[i] = b[i] * 10 + 10;
	andl	$-8, %edx	#, n
	jle	.L5	#,
	shrl	$3, %edx	#,
	vpbroadcastd	.LC1(%rip), %ymm2	#, tmp106
	salq	$5, %rdx	#, _5
	xorl	%eax, %eax	# ivtmp.16
	.p2align 4,,10
	.p2align 3
.L3:
# tmp.cpp:5:     for (int i = 0; i < n; i++) a[i] = b[i] * 10 + 10;
	vpaddd	(%rsi,%rax), %ymm2, %ymm1	# MEM <vector(8) int> [(int *)b_14 + ivtmp.16_31 * 1], tmp106, vect__6.9
	vpslld	$2, %ymm1, %ymm0	#, vect__6.9, tmp103
	vpaddd	%ymm1, %ymm0, %ymm0	# vect__6.9, tmp103, vect__8.10
	vpslld	$1, %ymm0, %ymm0	#, vect__8.10, tmp105
# tmp.cpp:5:     for (int i = 0; i < n; i++) a[i] = b[i] * 10 + 10;
	vmovdqa	%ymm0, (%rdi,%rax)	# tmp105, MEM <vector(8) int> [(int *)a_12 + ivtmp.16_31 * 1]
	addq	$32, %rax	#, ivtmp.16
	cmpq	%rax, %rdx	# ivtmp.16, _5
	jne	.L3	#,
	vzeroupper
.L5:
# tmp.cpp:6: }
	ret	
	.cfi_endproc
.LFE0:
	.size	_Z4funcPiS_i, .-_Z4funcPiS_i
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1
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
