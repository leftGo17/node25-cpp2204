	.file	"a.cpp"
# GNU C++17 (Ubuntu 11.4.0-1ubuntu1~22.04.2) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=cascadelake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mavx512f -mbmi -mbmi2 -maes -mpclmul -mavx512vl -mavx512bw -mavx512dq -mavx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mavx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mpku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=25344 -mtune=cascadelake -O3 -fomit-frame-pointer -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	_Z4funcPi
	.type	_Z4funcPi, @function
_Z4funcPi:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# a.cpp:2: 	a[0] = 111;
	vmovdqa	.LC0(%rip), %ymm0	#, tmp83
# a.cpp:1: void func(int *a){
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# a.cpp:2: 	a[0] = 111;
	vmovdqu	%ymm0, (%rdi)	# tmp83, MEM <vector(8) int> [(int *)a_2(D)]
	vmovdqu	%ymm0, 32(%rdi)	# tmp83, MEM <vector(8) int> [(int *)a_2(D) + 32B]
	vzeroupper
# a.cpp:21: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	_Z4funcPi, .-_Z4funcPi
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	111
	.long	222
	.long	111
	.long	222
	.long	111
	.long	222
	.long	111
	.long	222
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
