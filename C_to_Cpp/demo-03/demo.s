	.file	"demo.c"
.globl _current3
	.bss
	.align 4
_current3:
	.space 4
.globl _maximum3
	.align 4
_maximum3:
	.space 4
.globl _minimum3
	.align 4
_minimum3:
	.space 4
.globl _current2
	.align 4
_current2:
	.space 4
.globl _maximum2
	.align 4
_maximum2:
	.space 4
.globl _minimum2
	.align 4
_minimum2:
	.space 4
.globl _current
	.align 4
_current:
	.space 4
.globl _maximum
	.align 4
_maximum:
	.space 4
.globl _minimum
	.align 4
_minimum:
	.space 4
.globl _sensor3
	.align 4
_sensor3:
	.space 4
.globl _sensor2
	.align 4
_sensor2:
	.space 4
.globl _sensor1
	.align 4
_sensor1:
	.space 4
	.data
	.align 4
_ZZ14update_currentPKiE5first:
	.long	1
	.text
	.align 2
	.p2align 4,,15
.globl __Z14update_currentPKi
	.def	__Z14update_currentPKi;	.scl	2;	.type	32;	.endef
__Z14update_currentPKi:
	pushl	%ebp
	movl	_ZZ14update_currentPKiE5first, %edx
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%edx, %edx
	movl	(%eax), %eax
	movl	%eax, _current
	je	L5
	movl	%eax, _maximum
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, _minimum
L2:
	cmpl	%eax, %edx
	jle	L3
	movl	%eax, _minimum
L3:
	cmpl	%eax, %ecx
	jge	L4
	movl	%eax, _maximum
L4:
	popl	%ebp
	xorl	%eax, %eax
	movl	%eax, _ZZ14update_currentPKiE5first
	ret
	.p2align 4,,7
L5:
	movl	_maximum, %ecx
	movl	_minimum, %edx
	jmp	L2
	.data
	.align 4
_ZZ15update_current2PKiE5first:
	.long	1
	.text
	.align 2
	.p2align 4,,15
.globl __Z15update_current2PKi
	.def	__Z15update_current2PKi;	.scl	2;	.type	32;	.endef
__Z15update_current2PKi:
	pushl	%ebp
	movl	_ZZ15update_current2PKiE5first, %edx
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%edx, %edx
	movl	(%eax), %eax
	movl	%eax, _current2
	je	L11
	movl	%eax, _maximum2
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, _minimum2
L8:
	cmpl	%eax, %edx
	jle	L9
	movl	%eax, _minimum2
L9:
	cmpl	%eax, %ecx
	jge	L10
	movl	%eax, _maximum2
L10:
	popl	%ebp
	xorl	%ecx, %ecx
	movl	%ecx, _ZZ15update_current2PKiE5first
	ret
	.p2align 4,,7
L11:
	movl	_maximum2, %ecx
	movl	_minimum2, %edx
	jmp	L8
	.data
	.align 4
_ZZ15update_current3PKiE5first:
	.long	1
.lcomm _ZZ15update_current3PKiE3avg,48
	.section .rdata,"dr"
	.align 4
_ZZ15update_current3PKiE1N:
	.long	10
	.text
	.align 2
	.p2align 4,,15
.globl __Z15update_current3PKi
	.def	__Z15update_current3PKi;	.scl	2;	.type	32;	.endef
__Z15update_current3PKi:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	pushl	%ebx
	movl	_ZZ15update_current3PKiE5first, %ebx
	movl	(%eax), %ecx
	testl	%ebx, %ebx
	je	L13
	xorl	%edx, %edx
	.p2align 4,,15
L17:
	movl	%ecx, _ZZ15update_current3PKiE3avg(,%edx,4)
	incl	%edx
	cmpl	$9, %edx
	jle	L17
L13:
	movl	$1, %edx
	.p2align 4,,15
L21:
	movl	_ZZ15update_current3PKiE3avg(,%edx,4), %eax
	movl	%eax, _ZZ15update_current3PKiE3avg-4(,%edx,4)
	incl	%edx
	cmpl	$9, %edx
	jle	L21
	movl	%ecx, _ZZ15update_current3PKiE3avg+36
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L25:
	movl	_ZZ15update_current3PKiE3avg(,%edx,4), %eax
	incl	%edx
	addl	%eax, %ecx
	cmpl	$9, %edx
	jle	L25
	movl	$1717986919, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	testl	%ebx, %ebx
	movl	%edx, _current3
	je	L35
	movl	%edx, _maximum3
	movl	%edx, %ecx
	movl	%edx, %eax
	movl	%edx, _minimum3
L26:
	cmpl	%edx, %eax
	jle	L27
	movl	%edx, _minimum3
L27:
	cmpl	%edx, %ecx
	jge	L28
	movl	%edx, _maximum3
L28:
	popl	%ebx
	xorl	%ecx, %ecx
	movl	%ecx, _ZZ15update_current3PKiE5first
	popl	%ebp
	ret
L35:
	movl	_maximum3, %ecx
	movl	_minimum3, %eax
	jmp	L26
