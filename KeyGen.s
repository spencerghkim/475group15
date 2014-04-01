	.file	"KeyGen.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB1069:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1069:
	.size	_ZnwmPv, .-_ZnwmPv
	.globl	randGen
	.bss
	.align 32
	.type	randGen, @object
	.size	randGen, 5000
randGen:
	.zero	5000
	.globl	uni_dist
	.align 16
	.type	uni_dist, @object
	.size	uni_dist, 16
uni_dist:
	.zero	16
	.text
	.globl	_Z12keyGeneratorRSt6vectorIySaIyEE
	.type	_Z12keyGeneratorRSt6vectorIySaIyEE, @function
_Z12keyGeneratorRSt6vectorIySaIyEE:
.LFB2557:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2557
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	time
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$randGen, %edi
.LEHB0:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	$randGen, %esi
	movl	$uni_dist, %edi
	call	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_
.LEHE0:
	andl	$4294967295, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIySaIyEE9push_backEOy
.LEHE1:
	addl	$1, -4(%rbp)
.L4:
	cmpl	$3, -4(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L5
	jmp	.L10
.L9:
	jmp	.L7
.L8:
.L7:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2557:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2557:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2557-.LLSDACSB2557
.LLSDACSB2557:
	.uleb128 .LEHB0-.LFB2557
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB2557
	.uleb128 0
	.uleb128 .LEHB1-.LFB2557
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB2557
	.uleb128 0
	.uleb128 .LEHB2-.LFB2557
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2557:
	.text
	.size	_Z12keyGeneratorRSt6vectorIySaIyEE, .-_Z12keyGeneratorRSt6vectorIySaIyEE
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB2623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2623:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt24uniform_int_distributionIyEC2Eyy,"axG",@progbits,_ZNSt24uniform_int_distributionIyEC5Eyy,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIyEC2Eyy
	.type	_ZNSt24uniform_int_distributionIyEC2Eyy, @function
_ZNSt24uniform_int_distributionIyEC2Eyy:
.LFB2626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIyE10param_typeC1Eyy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2626:
	.size	_ZNSt24uniform_int_distributionIyEC2Eyy, .-_ZNSt24uniform_int_distributionIyEC2Eyy
	.weak	_ZNSt24uniform_int_distributionIyEC1Eyy
	.set	_ZNSt24uniform_int_distributionIyEC1Eyy,_ZNSt24uniform_int_distributionIyEC2Eyy
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB2628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$1, -8(%rbp)
	jmp	.L14
.L15:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$30, %rax
	xorq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	$1812433253, %rax, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L14:
	cmpq	$623, -8(%rbp)
	setbe	%al
	testb	%al, %al
	jne	.L15
	movq	-24(%rbp), %rax
	movq	$624, 4992(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2628:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_,"axG",@progbits,_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_
	.type	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_, @function
_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_:
.LFB2629:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2629
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIyE5paramEv
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE
.LEHE3:
	jmp	.L20
.L19:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2629:
	.section	.gcc_except_table
.LLSDA2629:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2629-.LLSDACSB2629
.LLSDACSB2629:
	.uleb128 .LEHB3-.LFB2629
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L19-.LFB2629
	.uleb128 0
	.uleb128 .LEHB4-.LFB2629
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2629:
	.section	.text._ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_,"axG",@progbits,_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_,comdat
	.size	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_, .-_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_
	.section	.text._ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2631:
	.size	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorIySaIyEE9push_backEOy,"axG",@progbits,_ZNSt6vectorIySaIyEE9push_backEOy,comdat
	.align 2
	.weak	_ZNSt6vectorIySaIyEE9push_backEOy
	.type	_ZNSt6vectorIySaIyEE9push_backEOy, @function
_ZNSt6vectorIySaIyEE9push_backEOy:
.LFB2630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRyEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.size	_ZNSt6vectorIySaIyEE9push_backEOy, .-_ZNSt6vectorIySaIyEE9push_backEOy
	.section	.text._ZNSt24uniform_int_distributionIyE10param_typeC2Eyy,"axG",@progbits,_ZNSt24uniform_int_distributionIyE10param_typeC5Eyy,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy
	.type	_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy, @function
_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy:
.LFB2689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2689:
	.size	_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy, .-_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy
	.weak	_ZNSt24uniform_int_distributionIyE10param_typeC1Eyy
	.set	_ZNSt24uniform_int_distributionIyE10param_typeC1Eyy,_ZNSt24uniform_int_distributionIyE10param_typeC2Eyy
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB2691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2691:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB2692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2692:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNKSt24uniform_int_distributionIyE5paramEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIyE5paramEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIyE5paramEv
	.type	_ZNKSt24uniform_int_distributionIyE5paramEv, @function
_ZNKSt24uniform_int_distributionIyE5paramEv:
.LFB2693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2693:
	.size	_ZNKSt24uniform_int_distributionIyE5paramEv, .-_ZNKSt24uniform_int_distributionIyE5paramEv
	.section	.text._ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE:
.LFB2694:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2694
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$-1, -48(%rbp)
	movl	$0, -44(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIyE10param_type1bEv
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIyE10param_type1aEv
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$4294967294, %eax
	cmpq	%rax, -56(%rbp)
	ja	.L32
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$4294967295, %eax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.L33:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setae	%al
	testb	%al, %al
	jne	.L33
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.L34
.L32:
	movl	$4294967295, %eax
	cmpq	%rax, -56(%rbp)
	jbe	.L35
.L39:
	movl	$0, -88(%rbp)
	movl	$1, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIyE10param_typeC1Eyy
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE
.LEHE5:
	salq	$32, %rax
	movq	%rax, -96(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	-96(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.L36
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.L37
.L36:
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	jne	.L39
	jmp	.L34
.L35:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -24(%rbp)
.L34:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIyE10param_type1aEv
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L43
.L42:
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume
.LEHE6:
.L43:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2694:
	.section	.gcc_except_table
.LLSDA2694:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2694-.LLSDACSB2694
.LLSDACSB2694:
	.uleb128 .LEHB5-.LFB2694
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L42-.LFB2694
	.uleb128 0
	.uleb128 .LEHB6-.LFB2694
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2694:
	.section	.text._ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE,comdat
	.size	_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionIyEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEyRT_RKNS0_10param_typeE
	.section	.text._ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2698:
	.size	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_
	.type	_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_, @function
_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_:
.LFB2697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L47
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L46
.L47:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2697:
	.size	_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_, .-_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_
	.weak	_ZNSt6vectorIySaIyEE12emplace_backIJyEEEvDpOT_
	.set	_ZNSt6vectorIySaIyEE12emplace_backIJyEEEvDpOT_,_ZNSt6vectorIySaIyEE12emplace_backIIyEEEvDpOT_
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm:
.LFB2736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2736:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb0EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm:
.LFB2737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	movabsq	$945986875574848801, %rdx
	movq	-16(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	imulq	$624, %rax, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2737:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb0EE6__calcEm
	.section	.text._ZNKSt24uniform_int_distributionIyE10param_type1aEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIyE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIyE10param_type1aEv
	.type	_ZNKSt24uniform_int_distributionIyE10param_type1aEv, @function
_ZNKSt24uniform_int_distributionIyE10param_type1aEv:
.LFB2738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2738:
	.size	_ZNKSt24uniform_int_distributionIyE10param_type1aEv, .-_ZNKSt24uniform_int_distributionIyE10param_type1aEv
	.section	.text._ZNKSt24uniform_int_distributionIyE10param_type1bEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIyE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIyE10param_type1bEv
	.type	_ZNKSt24uniform_int_distributionIyE10param_type1bEv, @function
_ZNKSt24uniform_int_distributionIyE10param_type1bEv:
.LFB2739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2739:
	.size	_ZNKSt24uniform_int_distributionIyE10param_type1bEv, .-_ZNKSt24uniform_int_distributionIyE10param_type1bEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB2740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	4992(%rax), %rax
	cmpq	$623, %rax
	jbe	.L58
	movq	$-2147483648, -24(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L59
.L62:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	andq	$-2147483648, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	leaq	397(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-40(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-40(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L60
	movl	$2567483615, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	movq	%rdx, %rcx
	xorq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L59:
	cmpq	$226, -8(%rbp)
	setbe	%al
	testb	%al, %al
	jne	.L62
	movq	$227, -16(%rbp)
	jmp	.L63
.L66:
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	andq	$-2147483648, %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	leaq	-227(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-48(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-48(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L64
	movl	$2567483615, %eax
	jmp	.L65
.L64:
	movl	$0, %eax
.L65:
	movq	%rdx, %rcx
	xorq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -16(%rbp)
.L63:
	cmpq	$622, -16(%rbp)
	setbe	%al
	testb	%al, %al
	jne	.L66
	movq	-72(%rbp), %rax
	movq	4984(%rax), %rax
	movq	%rax, %rdx
	andq	$-2147483648, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$2147483647, %eax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	3168(%rax), %rax
	movq	-56(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-56(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L67
	movl	$2567483615, %eax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4984(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4992(%rax)
.L58:
	movq	-72(%rbp), %rax
	movq	4992(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rax,8), %rdx
	movq	%rdx, -64(%rbp)
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4992(%rax)
	movq	-64(%rbp), %rax
	shrq	$11, %rax
	andl	$4294967295, %eax
	xorq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	$18, %rax
	xorq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2740:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_:
.LFB2741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2741:
	.size	_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_
	.weak	_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_
	.set	_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_,_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_
	.section	.rodata
.LC0:
	.string	"vector::_M_emplace_back_aux"
	.section	.text._ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_
	.type	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_, @function
_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_:
.LFB2742:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2742
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$.LC0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm
.LEHE7:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt16allocator_traitsISaIyEE9constructIyIyEEEvRS0_PT_DpOT0_
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_
.LEHE8:
	movq	%rax, -24(%rbp)
	addq	$8, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym
.LEHE9:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L78
.L77:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
.L76:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	$0, -24(%rbp)
	jne	.L74
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_
	jmp	.L75
.L74:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E
.L75:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym
	call	__cxa_rethrow
.LEHE11:
.L78:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2742:
	.section	.gcc_except_table
	.align 4
.LLSDA2742:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2742-.LLSDATTD2742
.LLSDATTD2742:
	.byte	0x1
	.uleb128 .LLSDACSE2742-.LLSDACSB2742
.LLSDACSB2742:
	.uleb128 .LEHB7-.LFB2742
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2742
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L76-.LFB2742
	.uleb128 0x1
	.uleb128 .LEHB9-.LFB2742
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2742
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2742
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L77-.LFB2742
	.uleb128 0
.LLSDACSE2742:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2742:
	.section	.text._ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_,comdat
	.size	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_, .-_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_
	.weak	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIJyEEEvDpOT_
	.set	_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIJyEEEvDpOT_,_ZNSt6vectorIySaIyEE19_M_emplace_back_auxIIyEEEvDpOT_
	.section	.text._ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_
	.type	_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_, @function
_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_:
.LFB2753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2753:
	.size	_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_, .-_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_
	.weak	_ZNSt16allocator_traitsISaIyEE12_S_constructIyJyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_JDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_
	.set	_ZNSt16allocator_traitsISaIyEE12_S_constructIyJyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_JDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_,_ZNSt16allocator_traitsISaIyEE12_S_constructIyIyEEENSt9enable_ifIXsrNS1_18__construct_helperIT_IDpT0_EEE5valueEvE4typeERS0_PS5_DpOS6_
	.section	.text._ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc:
.LFB2754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L81
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc
.L81:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE4sizeEv
	cmpq	-24(%rbp), %rax
	ja	.L82
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	cmpq	-24(%rbp), %rax
	jae	.L83
.L82:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIySaIyEE8max_sizeEv
	jmp	.L84
.L83:
	movq	-24(%rbp), %rax
.L84:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2754:
	.size	_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseIySaIyEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm:
.LFB2755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv
	jmp	.L88
.L87:
	movl	$0, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2755:
	.size	_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, .-_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm
	.section	.text._ZNKSt6vectorIySaIyEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIySaIyEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIySaIyEE4sizeEv
	.type	_ZNKSt6vectorIySaIyEE4sizeEv, @function
_ZNKSt6vectorIySaIyEE4sizeEv:
.LFB2756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2756:
	.size	_ZNKSt6vectorIySaIyEE4sizeEv, .-_ZNKSt6vectorIySaIyEE4sizeEv
	.section	.text._ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv:
.LFB2757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2757:
	.size	_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_:
.LFB2758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2758:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPyS0_SaIyEET0_T_S3_S2_RT1_
	.section	.text._ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_:
.LFB2759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2759:
	.size	_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIyEE7destroyIyEEvRS0_PT_
	.section	.text._ZSt8_DestroyIPyyEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E:
.LFB2760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPyEvT_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2760:
	.size	_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym,"axG",@progbits,_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym
	.type	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, @function
_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym:
.LFB2761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L98
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2761:
	.size	_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, .-_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym
	.section	.text._ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_:
.LFB2767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIyEOT_RNSt16remove_referenceIS0_E4typeE
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L100
	movq	%rbx, (%rax)
.L100:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2767:
	.size	_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_
	.weak	_ZN9__gnu_cxx13new_allocatorIyE9constructIyJyEEEvPT_DpOT0_
	.set	_ZN9__gnu_cxx13new_allocatorIyE9constructIyJyEEEvPT_DpOT0_,_ZN9__gnu_cxx13new_allocatorIyE9constructIyIyEEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorIySaIyEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIySaIyEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIySaIyEE8max_sizeEv
	.type	_ZNKSt6vectorIySaIyEE8max_sizeEv, @function
_ZNKSt6vectorIySaIyEE8max_sizeEv:
.LFB2768:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2768
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2768:
	.section	.gcc_except_table
.LLSDA2768:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2768-.LLSDACSB2768
.LLSDACSB2768:
.LLSDACSE2768:
	.section	.text._ZNKSt6vectorIySaIyEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIySaIyEE8max_sizeEv,comdat
	.size	_ZNKSt6vectorIySaIyEE8max_sizeEv, .-_ZNKSt6vectorIySaIyEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB2769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jae	.L106
	movq	-16(%rbp), %rax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
.L107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2769:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv:
.LFB2770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L109
	call	_ZSt17__throw_bad_allocv
.L109:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2770:
	.size	_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIyE8allocateEmPKv
	.section	.text._ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_
	.type	_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_, @function
_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_:
.LFB2771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPyEC1ES0_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2771:
	.size	_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_, .-_ZSt32__make_move_if_noexcept_iteratorIPySt13move_iteratorIS0_EET0_T_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E:
.LFB2772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2772:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPyES1_yET0_T_S4_S3_RSaIT1_E
	.section	.text._ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_
	.type	_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_, @function
_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_:
.LFB2773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2773:
	.size	_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_, .-_ZNSt16allocator_traitsISaIyEE10_S_destroyIyEENSt9enable_ifIXsrNS1_16__destroy_helperIT_EE5valueEvE4typeERS0_PS5_
	.section	.text._ZSt8_DestroyIPyEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPyEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPyEvT_S1_
	.type	_ZSt8_DestroyIPyEvT_S1_, @function
_ZSt8_DestroyIPyEvT_S1_:
.LFB2774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2774:
	.size	_ZSt8_DestroyIPyEvT_S1_, .-_ZSt8_DestroyIPyEvT_S1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym
	.type	_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym, @function
_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym:
.LFB2775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2775:
	.size	_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym, .-_ZN9__gnu_cxx13new_allocatorIyE10deallocateEPym
	.section	.text._ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_:
.LFB2786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2786:
	.size	_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_
	.section	.text._ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv:
.LFB2787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2787:
	.size	_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv:
.LFB2788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2788:
	.size	_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv
	.section	.text._ZNSt13move_iteratorIPyEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPyEC5ES0_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPyEC2ES0_
	.type	_ZNSt13move_iteratorIPyEC2ES0_, @function
_ZNSt13move_iteratorIPyEC2ES0_:
.LFB2790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2790:
	.size	_ZNSt13move_iteratorIPyEC2ES0_, .-_ZNSt13move_iteratorIPyEC2ES0_
	.weak	_ZNSt13move_iteratorIPyEC1ES0_
	.set	_ZNSt13move_iteratorIPyEC1ES0_,_ZNSt13move_iteratorIPyEC2ES0_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_:
.LFB2792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2792:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_, .-_ZSt18uninitialized_copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_:
.LFB2793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2793:
	.size	_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIyE7destroyIyEEvPT_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_:
.LFB2794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2794:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_,"axG",@progbits,_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_,comdat
	.weak	_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_
	.type	_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_, @function
_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_:
.LFB2803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIyE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2803:
	.size	_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_, .-_ZNSt16allocator_traitsISaIyEE11_S_max_sizeIKS0_EENSt9enable_ifIXsrNS1_16__maxsize_helperIT_EE5valueEmE4typeERS6_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_:
.LFB2804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2804:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPyES3_EET0_T_S6_S5_
	.section	.text._ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	.type	_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_, @function
_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_:
.LFB2805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2805:
	.size	_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_, .-_ZSt4copyISt13move_iteratorIPyES1_ET0_T_S4_S3_
	.section	.text._ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_, @function
_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_:
.LFB2806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2806:
	.size	_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_, .-_ZSt12__miter_baseISt13move_iteratorIPyEENSt11_Miter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_:
.LFB2807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2807:
	.size	_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb1EPyS0_ET1_T0_S2_S1_
	.section	.text._ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_, @function
_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_:
.LFB2808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPyE4baseEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2808:
	.size	_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_, .-_ZNSt10_Iter_baseISt13move_iteratorIPyELb1EE7_S_baseES2_
	.section	.text._ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_,"axG",@progbits,_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_,comdat
	.weak	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_
	.type	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_, @function
_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_:
.LFB2809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2809:
	.size	_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_, .-_ZSt12__niter_baseIPyENSt11_Niter_baseIT_E13iterator_typeES2_
	.section	.text._ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_:
.LFB2810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2810:
	.size	_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb1EPyS0_ET1_T0_S2_S1_
	.section	.text._ZNKSt13move_iteratorIPyE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPyE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPyE4baseEv
	.type	_ZNKSt13move_iteratorIPyE4baseEv, @function
_ZNKSt13move_iteratorIPyE4baseEv:
.LFB2811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2811:
	.size	_ZNKSt13move_iteratorIPyE4baseEv, .-_ZNKSt13move_iteratorIPyE4baseEv
	.section	.text._ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_,"axG",@progbits,_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_,comdat
	.weak	_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_
	.type	_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_, @function
_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_:
.LFB2812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2812:
	.size	_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_, .-_ZNSt10_Iter_baseIPyLb0EE7_S_baseES0_
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_:
.LFB2813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L150
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
.L150:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2813:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L152
	cmpl	$65535, -8(%rbp)
	jne	.L152
	movl	$5489, %esi
	movl	$randGen, %edi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	movl	$4294967295, %edx
	movl	$0, %esi
	movl	$uni_dist, %edi
	call	_ZNSt24uniform_int_distributionIyEC1Eyy
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2814:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_randGen, @function
_GLOBAL__sub_I_randGen:
.LFB2815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2815:
	.size	_GLOBAL__sub_I_randGen, .-_GLOBAL__sub_I_randGen
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_randGen
	.ident	"GCC: (GNU) 4.7.0"
	.section	.note.GNU-stack,"",@progbits
