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
	.text
	.align 2
	.p2align 4,,15
	.def	__Z15update_internalPiS_S_S_i;	.scl	3;	.type	32;	.endef
__Z15update_internalPiS_S_S_i:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	%ebx, (%esp)
	movl	%edx, %ebx
	movl	12(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	8(%ebp), %esi
	movl	%edx, (%eax)
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L5
	movl	%edx, (%ecx)
	movl	%edx, %eax
	movl	%edx, (%ebx)
L2:
	cmpl	%edx, %eax
	jle	L3
	movl	%edx, (%ebx)
L3:
	cmpl	%edx, (%ecx)
	jge	L4
	movl	%edx, (%ecx)
L4:
	movl	$0, (%esi)
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L5:
	movl	(%ebx), %eax
	jmp	L2
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
	movl	$_maximum, %ecx
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$_minimum, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$_ZZ14update_currentPKiE5first, (%esp)
	movl	%eax, 4(%esp)
	movl	$_current, %eax
	call	__Z15update_internalPiS_S_S_i
	leave
	ret
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
	movl	$_maximum2, %ecx
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$_minimum2, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$_ZZ15update_current2PKiE5first, (%esp)
	movl	%eax, 4(%esp)
	movl	$_current2, %eax
	call	__Z15update_internalPiS_S_S_i
	leave
	ret
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
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	_ZZ15update_current3PKiE5first, %eax
	testl	%eax, %eax
	je	L10
	xorl	%edx, %edx
	.p2align 4,,15
L14:
	movl	%ecx, _ZZ15update_current3PKiE3avg(,%edx,4)
	incl	%edx
	cmpl	$9, %edx
	jle	L14
L10:
	movl	$1, %edx
	.p2align 4,,15
L18:
	movl	_ZZ15update_current3PKiE3avg(,%edx,4), %eax
	movl	%eax, _ZZ15update_current3PKiE3avg-4(,%edx,4)
	incl	%edx
	cmpl	$9, %edx
	jle	L18
	movl	%ecx, _ZZ15update_current3PKiE3avg+36
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,15
L22:
	movl	_ZZ15update_current3PKiE3avg(,%edx,4), %eax
	incl	%edx
	addl	%eax, %ecx
	cmpl	$9, %edx
	jle	L22
	movl	$_ZZ15update_current3PKiE5first, (%esp)
	movl	%ecx, %eax
	movl	$1717986919, %edx
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	$_maximum3, %ecx
	sarl	$2, %edx
	subl	%eax, %edx
	movl	%edx, 4(%esp)
	movl	$_current3, %eax
	movl	$_minimum3, %edx
	call	__Z15update_internalPiS_S_S_i
	leave
	ret
