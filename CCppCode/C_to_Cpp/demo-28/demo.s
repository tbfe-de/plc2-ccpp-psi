	.file	"demo.cpp"
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__I_sensor1
	.section	.dtors,"w"
	.align 4
	.long	__GLOBAL__D_sensor1
.globl __ZTV12meassurement
	.section	.rdata$_ZTV12meassurement,"dr"
	.linkonce same_size
	.align 8
__ZTV12meassurement:
	.long	0
	.long	__ZTI12meassurement
	.long	__ZN12meassurement13prepare_firstEi
	.long	__ZN12meassurement17calculate_currentEi
	.long	__ZN12meassurementD1Ev
	.long	__ZN12meassurementD0Ev
	.long	__ZN12meassurement14update_currentEv
.globl __ZTI12meassurement
	.section	.rdata$_ZTI12meassurement,"dr"
	.linkonce same_size
	.align 4
__ZTI12meassurement:
	.long	__ZTVN10__cxxabiv117__class_type_infoE+8
	.long	__ZTS12meassurement
.globl __ZTS12meassurement
	.section	.rdata$_ZTS12meassurement,"dr"
	.linkonce same_size
__ZTS12meassurement:
	.ascii "12meassurement\0"
.globl __ZTV16avg_meassurement
	.section	.rdata$_ZTV16avg_meassurement,"dr"
	.linkonce same_size
	.align 8
__ZTV16avg_meassurement:
	.long	0
	.long	__ZTI16avg_meassurement
	.long	__ZN16avg_meassurement13prepare_firstEi
	.long	__ZN16avg_meassurement17calculate_currentEi
	.long	__ZN16avg_meassurementD1Ev
	.long	__ZN16avg_meassurementD0Ev
	.long	__ZN12meassurement14update_currentEv
.globl __ZTI16avg_meassurement
	.section	.rdata$_ZTI16avg_meassurement,"dr"
	.linkonce same_size
	.align 4
__ZTI16avg_meassurement:
	.long	__ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	__ZTS16avg_meassurement
	.long	__ZTI12meassurement
.globl __ZTS16avg_meassurement
	.section	.rdata$_ZTS16avg_meassurement,"dr"
	.linkonce same_size
__ZTS16avg_meassurement:
	.ascii "16avg_meassurement\0"
.globl _m3
	.bss
	.align 32
_m3:
	.space 64
.globl _m2
	.align 4
_m2:
	.space 24
.globl _m
	.align 4
_m:
	.space 24
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
.globl __ZN12meassurement13prepare_firstEi
	.def	__ZN12meassurement13prepare_firstEi;	.scl	2;	.type	32;	.endef
__ZN12meassurement13prepare_firstEi:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 2
	.p2align 4,,15
.globl __ZN12meassurement17calculate_currentEi
	.def	__ZN12meassurement17calculate_currentEi;	.scl	2;	.type	32;	.endef
__ZN12meassurement17calculate_currentEi:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	popl	%ebp
	ret
	.align 2
	.p2align 4,,15
.globl __ZN12meassurement14update_currentEv
	.def	__ZN12meassurement14update_currentEv;	.scl	2;	.type	32;	.endef
__ZN12meassurement14update_currentEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %ebx
	cmpb	$0, 4(%ebx)
	movl	8(%ebx), %eax
	movl	(%eax), %esi
	jne	L10
L4:
	movl	(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	*4(%eax)
	cmpb	$0, 4(%ebx)
	movl	%eax, 20(%ebx)
	je	L8
	movl	%eax, 16(%ebx)
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, 12(%ebx)
L5:
	cmpl	%eax, %edx
	jle	L6
	movl	%eax, 12(%ebx)
L6:
	cmpl	%eax, %ecx
	jge	L7
	movl	%eax, 16(%ebx)
L7:
	movb	$0, 4(%ebx)
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.p2align 4,,7
L8:
	movl	16(%ebx), %ecx
	movl	12(%ebx), %edx
	jmp	L5
	.p2align 4,,7
L10:
	movl	(%ebx), %edx
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	*(%edx)
	jmp	L4
	.section	.text$_ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	.def	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_;	.scl	2;	.type	32;	.endef
__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %edi
	movl	12(%ebp), %edx
	movl	(%edi), %eax
	movl	%edx, -20(%ebp)
	movl	%eax, %ebx
	cmpl	%edi, %ebx
	movl	%eax, -16(%ebp)
	je	L28
	.p2align 4,,15
L33:
	movl	-20(%ebp), %eax
	movl	(%ebx), %esi
	movl	(%eax), %ecx
	cmpl	%ecx, 8(%ebx)
	je	L32
	movl	%esi, -16(%ebp)
	movl	%esi, %ebx
L34:
	cmpl	%edi, %ebx
	jne	L33
L28:
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L32:
	movl	%ebx, (%esp)
	call	__ZNSt15_List_node_base6unhookEv
	movl	%ebx, (%esp)
	movl	%esi, %ebx
	call	__ZdlPv
	movl	%esi, -16(%ebp)
	jmp	L34
	.section	.text$_ZN12meassurementD0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZN12meassurementD0Ev
	.def	__ZN12meassurementD0Ev;	.scl	2;	.type	32;	.endef
__ZN12meassurementD0Ev:
	pushl	%ebp
	movl	%esp, %ebp
	leal	-8(%ebp), %eax
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	movl	$__ZTV12meassurement+8, (%ebx)
	movl	%ebx, -8(%ebp)
	movl	%eax, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	movl	%ebx, (%esp)
	call	__ZdlPv
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
	.section	.text$_ZN12meassurementD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZN12meassurementD1Ev
	.def	__ZN12meassurementD1Ev;	.scl	2;	.type	32;	.endef
__ZN12meassurementD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %edx
	leal	-4(%ebp), %eax
	movl	$__ZTV12meassurement+8, (%edx)
	movl	%edx, -4(%ebp)
	movl	%eax, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	leave
	ret
	.section	.text$_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	.def	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_;	.scl	2;	.type	32;	.endef
__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	16(%ebp), %esi
	movl	12(%ebp), %ebx
	jmp	L56
	.p2align 4,,7
L57:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	call	__ZdlPv
L56:
	cmpl	%esi, %ebx
	jb	L57
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.section	.text$_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv
	.def	__ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %ebx
	movl	12(%ebx), %edx
	movl	%edx, (%esp)
	call	__ZdlPv
	movl	20(%ebx), %ecx
	leal	8(%ebx), %edx
	leal	4(%ecx), %eax
	movl	%eax, 12(%edx)
	movl	4(%ecx), %eax
	movl	%eax, 4(%edx)
	addl	$512, %eax
	movl	%eax, 8(%edx)
	movl	12(%ebx), %eax
	movl	%eax, 8(%ebx)
	popl	%eax
	popl	%ebx
	popl	%ebp
	ret
	.section	.text$_ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_
	.def	__ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
__ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_:
	pushl	%ebp
	movl	%esp, %ebp
	movl	16(%ebp), %ecx
	pushl	%esi
	movl	12(%ebp), %esi
	pushl	%ebx
	movl	8(%ebp), %ebx
	movl	(%ebx), %edx
	cmpl	(%esi), %edx
	je	L86
	movl	8(%ebx), %eax
	jmp	L84
	.p2align 4,,7
L71:
	cmpl	(%esi), %edx
	je	L86
L84:
	addl	(%edx), %ecx
	addl	$4, %edx
	cmpl	%eax, %edx
	movl	%edx, (%ebx)
	jne	L71
	movl	12(%ebx), %edx
	leal	4(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, 12(%ebx)
	leal	512(%edx), %eax
	movl	%edx, (%ebx)
	cmpl	(%esi), %edx
	movl	%edx, 4(%ebx)
	movl	%eax, 8(%ebx)
	jne	L84
	.p2align 4,,15
L86:
	popl	%ebx
	movl	%ecx, %eax
	popl	%esi
	popl	%ebp
	ret
	.section	.text$_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	.def	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_;	.scl	2;	.type	32;	.endef
__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	16(%ebp), %edi
	pushl	%esi
	movl	12(%ebp), %esi
	pushl	%ebx
	movl	8(%ebp), %ebx
	movl	(%ebx), %edx
	cmpl	(%esi), %edx
	je	L104
	movl	8(%ebx), %ecx
	jmp	L102
	.p2align 4,,7
L89:
	cmpl	(%esi), %eax
	movl	%eax, %edx
	je	L104
L102:
	movl	(%edi), %eax
	movl	%eax, (%edx)
	leal	4(%edx), %eax
	cmpl	%ecx, %eax
	movl	%eax, (%ebx)
	jne	L89
	movl	12(%ebx), %ecx
	leal	4(%ecx), %edx
	movl	%edx, 12(%ebx)
	movl	4(%ecx), %edx
	leal	512(%edx), %eax
	movl	%edx, (%ebx)
	movl	%eax, %ecx
	movl	%eax, 8(%ebx)
	movl	%edx, %eax
	cmpl	(%esi), %eax
	movl	%edx, 4(%ebx)
	movl	%eax, %edx
	jne	L102
	.p2align 4,,15
L104:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.section	.text$_ZNKSt15_Deque_iteratorIiRiPiEplEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNKSt15_Deque_iteratorIiRiPiEplEi
	.def	__ZNKSt15_Deque_iteratorIiRiPiEplEi;	.scl	2;	.type	32;	.endef
__ZNKSt15_Deque_iteratorIiRiPiEplEi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	%edi, -4(%ebp)
	movl	12(%ebp), %eax
	movl	16(%ebp), %edi
	movl	%ebx, -12(%ebp)
	movl	%esi, -8(%ebp)
	movl	(%eax), %edx
	movl	4(%eax), %ebx
	movl	8(%eax), %ecx
	movl	12(%eax), %esi
	movl	%edx, %eax
	movl	%ecx, -44(%ebp)
	subl	%ebx, %eax
	sarl	$2, %eax
	movl	%ecx, -32(%ebp)
	movl	%eax, %ecx
	addl	%edi, %ecx
	movl	%edx, -40(%ebp)
	movl	%ebx, -36(%ebp)
	movl	%esi, -28(%ebp)
	js	L108
	cmpl	$127, %ecx
	jle	L135
L108:
	testl	%ecx, %ecx
	jle	L114
	movl	%ecx, %eax
	movl	$128, %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
L115:
	movl	-28(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -28(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -36(%ebp)
	leal	(%edx,%ecx,4), %eax
	movl	8(%ebp), %ecx
	movl	%eax, -40(%ebp)
	leal	512(%edx), %esi
	movl	%esi, -32(%ebp)
	movl	%eax, (%ecx)
	movl	%ecx, %eax
	movl	%edx, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret	$4
	.p2align 4,,7
L135:
	movl	8(%ebp), %ecx
	leal	(%edx,%edi,4), %eax
	movl	%esi, %edi
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %esi
	movl	%ebx, %edx
	movl	%eax, (%ecx)
	movl	%ecx, %eax
	movl	%edx, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret	$4
	.p2align 4,,7
L114:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L115
	.def	__Unwind_SjLj_Resume;	.scl	2;	.type	32;	.endef
	.def	___gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	__Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.section	.text$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_
	.def	__ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_;	.scl	2;	.type	32;	.endef
__ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	%esi, -8(%ebp)
	movl	8(%ebp), %esi
	leal	-64(%ebp), %ecx
	movl	%ebx, -12(%ebp)
	leal	-12(%ebp), %ebx
	movl	%edi, -4(%ebp)
	movl	%esi, -68(%ebp)
	movl	$___gxx_personality_sj0, -40(%ebp)
	movl	$LLSDA1741, -36(%ebp)
	movl	%ebx, -32(%ebp)
	movl	$L153, -28(%ebp)
	movl	%esp, -24(%ebp)
	movl	%ecx, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, -72(%ebp)
	cmpl	%edx, %eax
	jae	L136
L159:
	movl	$512, (%esp)
	movl	$2, -60(%ebp)
	call	__Znwj
	movl	-72(%ebp), %edx
	movl	16(%ebp), %edi
	movl	%eax, (%edx)
	addl	$4, %edx
	cmpl	%edi, %edx
	movl	%edx, -72(%ebp)
	jb	L159
L136:
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L153:
	addl	$12, %ebp
	cmpl	$1, -60(%ebp)
	movl	-56(%ebp), %edi
	movl	%edi, -76(%ebp)
	je	L152
L148:
L150:
	movl	$0, -60(%ebp)
	call	___cxa_end_catch
	movl	$-1, -60(%ebp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	__Unwind_SjLj_Resume
L152:
L147:
	movl	-76(%ebp), %esi
	movl	%esi, (%esp)
	call	___cxa_begin_catch
	movl	-72(%ebp), %ebx
	movl	12(%ebp), %ecx
	movl	-68(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	movl	$1, -60(%ebp)
	call	___cxa_rethrow
	.section	.gcc_except_table,"dr"
	.align 4
LLSDA1741:
	.byte	0xff
	.byte	0x0
	.uleb128 LLSDATT1741-LLSDATTD1741
LLSDATTD1741:
	.byte	0x1
	.uleb128 LLSDACSE1741-LLSDACSB1741
LLSDACSB1741:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x1
LLSDACSE1741:
	.byte	0x1
	.byte	0x0
	.align 4
	.long	0
LLSDATT1741:
	.section	.text$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,"x"
	.linkonce discard
	.section	.text$_ZNSt11_Deque_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt11_Deque_baseIiSaIiEED2Ev
	.def	__ZNSt11_Deque_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt11_Deque_baseIiSaIiEED2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$52, %esp
	movl	8(%ebp), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L268
L210:
L213:
L217:
L221:
L225:
L228:
L231:
L235:
L239:
L243:
L246:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
	.p2align 4,,7
L268:
L163:
L166:
L168:
L172:
L175:
L177:
L180:
L183:
L187:
L191:
L194:
L197:
L201:
L205:
	movl	36(%ebx), %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebx), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	__ZdlPv
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
L249:
L252:
L256:
L260:
L264:
L160:
	.section	.text$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj
	.def	__ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj;	.scl	2;	.type	32;	.endef
__ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj:
	pushl	%ebp
	movl	%esp, %ebp
	leal	-108(%ebp), %edx
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	leal	-24(%ebp), %ebx
	movl	%edx, (%esp)
	movl	8(%ebp), %esi
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA1723, -80(%ebp)
	movl	%esi, -120(%ebp)
	movl	%ebx, -76(%ebp)
	movl	$L433, -72(%ebp)
	movl	%esp, -68(%ebp)
	call	__Unwind_SjLj_Register
	movl	$8, -112(%ebp)
	movl	12(%ebp), %eax
	leal	-116(%ebp), %edx
	shrl	$7, %eax
	leal	1(%eax), %ecx
	addl	$3, %eax
	movl	%ecx, -124(%ebp)
	cmpl	$8, %eax
	movl	%eax, -116(%ebp)
	ja	L274
	leal	-112(%ebp), %edx
L274:
L275:
L278:
L280:
L284:
L287:
L289:
L292:
L295:
L299:
L303:
L306:
L309:
L313:
L317:
	movl	(%edx), %edi
	movl	-120(%ebp), %eax
	movl	%edi, 4(%eax)
	sall	$2, %edi
	movl	%edi, (%esp)
	movl	$3, -104(%ebp)
	call	__Znwj
L322:
L325:
L329:
L333:
L336:
L339:
L343:
L347:
	movl	-120(%ebp), %ebx
	movl	-124(%ebp), %edx
	movl	-124(%ebp), %esi
	movl	%eax, (%ebx)
	movl	4(%ebx), %edi
	movl	%ebx, %ecx
	movl	%ecx, (%esp)
	movl	$2, -104(%ebp)
	subl	%edx, %edi
	shrl	%edi
	leal	(%eax,%edi,4), %edx
	leal	(%edx,%esi,4), %ebx
	movl	%edx, -132(%ebp)
	movl	%ebx, -136(%ebp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	call	__ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_
L269:
	andl	$127, 12(%ebp)
	movl	-132(%ebp), %eax
	movl	-120(%ebp), %ebx
	movl	-136(%ebp), %edi
	movl	(%eax), %esi
	addl	$8, %ebx
	movl	%eax, 12(%ebx)
	movl	-136(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%esi, 4(%ebx)
	addl	$512, %esi
	subl	$4, %edx
	movl	%esi, 8(%ebx)
	movl	-120(%ebp), %esi
	movl	-4(%edi), %eax
	addl	$24, %esi
	movl	%eax, 4(%esi)
	addl	$512, %eax
	movl	%edx, 12(%esi)
	movl	%eax, 8(%esi)
	movl	-120(%ebp), %esi
	leal	-108(%ebp), %eax
	movl	28(%esi), %edx
	movl	12(%esi), %ebx
	leal	(%edx,%ecx,4), %edi
	movl	%ebx, 8(%esi)
	movl	%edi, 24(%esi)
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L433:
	addl	$24, %ebp
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	cmpl	$1, %eax
	movl	%edx, -128(%ebp)
	je	L432
	cmpl	$2, %eax
	je	L437
L415:
	movl	$0, -104(%ebp)
	call	___cxa_end_catch
L437:
L417:
	movl	$-1, -104(%ebp)
	movl	-128(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__Unwind_SjLj_Resume
	.p2align 4,,7
L432:
L352:
L353:
L356:
L358:
L362:
L365:
L367:
L370:
L373:
L377:
L381:
L384:
L387:
L391:
L395:
L400:
L403:
L407:
L411:
	movl	-128(%ebp), %edi
	movl	%edi, (%esp)
	call	___cxa_begin_catch
	movl	-120(%ebp), %ecx
	movl	(%ecx), %esi
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	-120(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$1, -104(%ebp)
	call	___cxa_rethrow
	.section	.gcc_except_table,"dr"
	.align 4
LLSDA1723:
	.byte	0xff
	.byte	0x0
	.uleb128 LLSDATT1723-LLSDATTD1723
LLSDATTD1723:
	.byte	0x1
	.uleb128 LLSDACSE1723-LLSDACSB1723
LLSDACSB1723:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x2
	.uleb128 0x0
LLSDACSE1723:
	.byte	0x1
	.byte	0x0
	.align 4
	.long	0
LLSDATT1723:
	.section	.text$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj,"x"
	.linkonce discard
	.section	.text$_ZNSt5dequeIiSaIiEE5clearEv,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE5clearEv
	.def	__ZNSt5dequeIiSaIiEE5clearEv;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE5clearEv:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %esi
	movl	20(%esi), %edx
	movl	36(%esi), %eax
	leal	4(%edx), %ebx
	cmpl	%ebx, %eax
	jbe	L468
	.p2align 4,,15
L453:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	call	__ZdlPv
	movl	36(%esi), %eax
	cmpl	%ebx, %eax
	ja	L453
	movl	20(%esi), %edx
L468:
	cmpl	%eax, %edx
	je	L464
	movl	28(%esi), %edx
	movl	%edx, (%esp)
	call	__ZdlPv
L464:
	movl	16(%esi), %ebx
	movl	8(%esi), %edx
	movl	12(%esi), %eax
	movl	%ebx, 32(%esi)
	movl	20(%esi), %ecx
	movl	%edx, 24(%esi)
	movl	%eax, 28(%esi)
	movl	%ecx, 36(%esi)
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.section	.text$_ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_
	.def	__ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_;	.scl	2;	.type	32;	.endef
__ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$348, %esp
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	20(%ebp), %ecx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	12(%eax), %ebx
	movl	%edi, -276(%ebp)
	movl	%edi, -36(%ebp)
	movl	8(%eax), %edi
	movl	%esi, -40(%ebp)
	movl	(%edx), %eax
	movl	%edi, -32(%ebp)
	movl	%esi, -316(%ebp)
	movl	4(%edx), %esi
	movl	8(%edx), %edx
	movl	%ebx, -28(%ebp)
	movl	%eax, -56(%ebp)
	movl	%edx, -288(%ebp)
	movl	%edx, -48(%ebp)
	movl	16(%ebp), %edx
	movl	%esi, -52(%ebp)
	movl	12(%edx), %edx
	movl	%edx, -320(%ebp)
	movl	%edx, -44(%ebp)
	movl	(%ecx), %edx
	movl	%edx, -324(%ebp)
	movl	%edx, -72(%ebp)
	movl	4(%ecx), %edx
	movl	%edx, -328(%ebp)
	movl	%edx, -68(%ebp)
	movl	8(%ecx), %edx
	movl	12(%ecx), %ecx
	movl	%eax, -104(%ebp)
	movl	%edx, -332(%ebp)
	movl	%edx, -64(%ebp)
	movl	-316(%ebp), %edx
	movl	%ecx, -336(%ebp)
	movl	%ecx, -60(%ebp)
	movl	%edx, -88(%ebp)
	movl	-276(%ebp), %edx
	movl	%ebx, -76(%ebp)
	movl	%esi, -100(%ebp)
	movl	%edx, -84(%ebp)
	movl	-288(%ebp), %edx
	movl	%ecx, -108(%ebp)
	movl	%ebx, -124(%ebp)
	movl	%edx, -96(%ebp)
	movl	-320(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edi, -80(%ebp)
	movl	%edx, -92(%ebp)
	movl	-324(%ebp), %edx
	movl	%edi, -128(%ebp)
	movl	%edx, -120(%ebp)
	movl	-328(%ebp), %edx
	movl	%edx, -116(%ebp)
	movl	-332(%ebp), %edx
	movl	%edx, -112(%ebp)
	movl	-316(%ebp), %edx
	movl	%edx, -136(%ebp)
	movl	-276(%ebp), %edx
	movl	%edx, -132(%ebp)
	movl	%esi, -148(%ebp)
	movl	-288(%ebp), %edx
	movl	%ecx, -156(%ebp)
	movl	%ebx, -172(%ebp)
	movl	%edx, -144(%ebp)
	movl	-320(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%esi, -196(%ebp)
	movl	%edx, -140(%ebp)
	movl	-324(%ebp), %edx
	movl	%ecx, -204(%ebp)
	movl	%edi, -176(%ebp)
	movl	%edx, -168(%ebp)
	movl	-328(%ebp), %edx
	movl	%edx, -164(%ebp)
	movl	-332(%ebp), %edx
	movl	%edx, -160(%ebp)
	movl	-316(%ebp), %edx
	movl	%edx, -184(%ebp)
	movl	-276(%ebp), %edx
	movl	%edx, -180(%ebp)
	movl	-288(%ebp), %edx
	movl	%edx, -192(%ebp)
	movl	-320(%ebp), %edx
	movl	%edx, -188(%ebp)
	movl	-324(%ebp), %edx
	movl	%edx, -216(%ebp)
	movl	-328(%ebp), %edx
	movl	%edx, -212(%ebp)
	movl	-332(%ebp), %edx
	movl	%edx, -208(%ebp)
	movl	-316(%ebp), %edx
	movl	%edx, -232(%ebp)
	movl	-276(%ebp), %edx
	movl	%edx, -228(%ebp)
	movl	-288(%ebp), %edx
	movl	%ebx, -220(%ebp)
	movl	%eax, -248(%ebp)
	movl	%edx, -240(%ebp)
	movl	-320(%ebp), %edx
	movl	%esi, -244(%ebp)
	movl	%ecx, -252(%ebp)
	movl	%edx, -236(%ebp)
	movl	-324(%ebp), %edx
	movl	%ebx, -268(%ebp)
	movl	%eax, -296(%ebp)
	subl	%esi, %eax
	sarl	$2, %eax
	movl	%edx, -264(%ebp)
	movl	-328(%ebp), %edx
	movl	%esi, -292(%ebp)
	movl	%ecx, -300(%ebp)
	movl	%edx, -260(%ebp)
	movl	-332(%ebp), %edx
	movl	%ebx, -352(%ebp)
	movl	%edi, -224(%ebp)
	movl	%edx, -256(%ebp)
	movl	-316(%ebp), %edx
	movl	%edi, -272(%ebp)
	movl	%edx, -280(%ebp)
	movl	-320(%ebp), %edx
	subl	%ebx, -320(%ebp)
	movl	%edx, -284(%ebp)
	movl	-324(%ebp), %edx
	movl	%edx, -312(%ebp)
	movl	-328(%ebp), %edx
	movl	%edx, -308(%ebp)
	movl	-332(%ebp), %edx
	movl	%edx, -304(%ebp)
	sarl	$2, -320(%ebp)
	movl	-316(%ebp), %esi
	sall	$7, -320(%ebp)
	movl	%edi, -348(%ebp)
	movl	-320(%ebp), %edx
	leal	-128(%edx,%eax), %ecx
	movl	%edi, %eax
	subl	%esi, %eax
	sarl	$2, %eax
	leal	(%ecx,%eax), %ebx
	testl	%ebx, %ebx
	jle	L525
	movl	-336(%ebp), %eax
	movl	-324(%ebp), %ecx
	movl	-332(%ebp), %edx
	movl	%eax, -356(%ebp)
	movl	-328(%ebp), %edi
	jmp	L515
	.p2align 4,,7
L508:
	decl	%ebx
	testl	%ebx, %ebx
	jle	L524
L515:
	movl	(%esi), %eax
	addl	$4, %esi
	cmpl	-348(%ebp), %esi
	movl	%eax, (%ecx)
	movl	%esi, -280(%ebp)
	je	L527
L501:
	addl	$4, %ecx
	cmpl	%edx, %ecx
	movl	%ecx, -312(%ebp)
	jne	L508
	movl	-356(%ebp), %ecx
	decl	%ebx
	addl	$4, -356(%ebp)
	testl	%ebx, %ebx
	movl	4(%ecx), %edi
	movl	-356(%ebp), %edx
	movl	%edi, %ecx
	movl	%edx, -300(%ebp)
	leal	512(%edi), %edx
	movl	%edi, -308(%ebp)
	movl	%edx, -304(%ebp)
	movl	%edi, -312(%ebp)
	jg	L515
	.p2align 4,,15
L524:
	movl	8(%ebp), %eax
	movl	%edi, 4(%eax)
	movl	-356(%ebp), %edi
	movl	%ecx, (%eax)
	movl	%edx, 8(%eax)
	movl	%edi, 12(%eax)
	addl	$348, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.p2align 4,,7
L527:
	movl	-352(%ebp), %esi
	movl	%esi, -340(%ebp)
	movl	-340(%ebp), %eax
	addl	$4, %esi
	movl	%esi, -352(%ebp)
	movl	%esi, -268(%ebp)
	movl	4(%eax), %esi
	movl	%esi, -344(%ebp)
	movl	%esi, -276(%ebp)
	addl	$512, %esi
	movl	%esi, -348(%ebp)
	movl	%esi, -272(%ebp)
	movl	-344(%ebp), %esi
	movl	%esi, -280(%ebp)
	jmp	L501
L525:
	movl	-300(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	-308(%ebp), %edi
	movl	-312(%ebp), %ecx
	movl	%ebx, -356(%ebp)
	movl	-304(%ebp), %edx
	movl	%edi, 4(%eax)
	movl	-356(%ebp), %edi
	movl	%ecx, (%eax)
	movl	%edx, 8(%eax)
	movl	%edi, 12(%eax)
	addl	$348, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.section	.text$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb
	.def	__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb:
	pushl	%ebp
	movl	%esp, %ebp
	leal	-24(%ebp), %ecx
	pushl	%edi
	leal	-108(%ebp), %edx
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	movl	8(%ebp), %esi
	movzbl	16(%ebp), %eax
	movl	%ecx, -76(%ebp)
	movl	%esi, -112(%ebp)
	movl	%edx, (%esp)
	movb	%al, -113(%ebp)
	movl	$___gxx_personality_sj0, -84(%ebp)
	movl	$LLSDA1754, -80(%ebp)
	movl	$L700, -72(%ebp)
	movl	%esp, -68(%ebp)
	call	__Unwind_SjLj_Register
	movl	-112(%ebp), %ebx
	movl	12(%ebp), %ecx
	movl	36(%ebx), %esi
	movl	%ebx, %edi
	movl	20(%ebx), %ebx
	movl	%esi, %eax
	movl	4(%edi), %edx
	subl	%ebx, %eax
	sarl	$2, %eax
	incl	%eax
	movl	%eax, -120(%ebp)
	addl	%ecx, %eax
	movl	%eax, -124(%ebp)
	addl	%eax, %eax
	cmpl	%eax, %edx
	jbe	L529
	movl	-124(%ebp), %eax
	subl	%eax, %edx
	shrl	%edx
	cmpb	$0, -113(%ebp)
	movl	(%edi), %eax
	leal	(%eax,%edx,4), %edx
	movl	%edx, -128(%ebp)
	jne	L704
	cmpl	-128(%ebp), %ebx
	jbe	L531
L706:
	movl	%ebx, 4(%esp)
	leal	4(%esi), %edx
	subl	%ebx, %edx
	movl	%edx, 8(%esp)
	movl	-128(%ebp), %ebx
	movl	%ebx, (%esp)
L703:
	call	_memmove
L543:
L528:
	movl	-128(%ebp), %edi
	movl	-112(%ebp), %edx
	movl	-120(%ebp), %ebx
	movl	(%edi), %ecx
	addl	$8, %edx
	movl	%edi, 12(%edx)
	movl	%ecx, 4(%edx)
	addl	$512, %ecx
	movl	%ecx, 8(%edx)
	leal	(%edi,%ebx,4), %ecx
	movl	-112(%ebp), %edx
	movl	-4(%ecx), %edi
	leal	-4(%ecx), %esi
	leal	-108(%ebp), %ebx
	addl	$24, %edx
	movl	%edi, 4(%edx)
	addl	$512, %edi
	movl	%esi, 12(%edx)
	movl	%edi, 8(%edx)
	movl	%ebx, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L529:
	movl	-112(%ebp), %ebx
	leal	12(%ebp), %eax
	addl	$4, %ebx
	cmpl	%ecx, %edx
	jae	L705
L545:
L546:
L549:
L551:
L555:
L558:
L560:
L563:
L566:
L570:
L574:
L577:
L580:
L584:
L588:
	movl	-112(%ebp), %edi
	movl	(%eax), %ebx
	movl	4(%edi), %edx
	movl	$1, -104(%ebp)
	addl	%edx, %ebx
	addl	$2, %ebx
	movl	%ebx, -132(%ebp)
	sall	$2, %ebx
	movl	%ebx, (%esp)
	call	__Znwj
L610:
L614:
L618:
	movl	%eax, -136(%ebp)
	movl	-132(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	-136(%ebp), %ebx
	subl	%edx, %ecx
	shrl	%ecx
	cmpb	$0, -113(%ebp)
	leal	(%ebx,%ecx,4), %esi
	movl	%esi, -128(%ebp)
	je	L622
	movl	-128(%ebp), %esi
	movl	12(%ebp), %eax
	leal	(%esi,%eax,4), %edi
	movl	%edi, -128(%ebp)
L622:
L628:
L631:
L633:
L637:
L640:
L642:
L645:
L648:
L652:
L656:
L659:
L662:
L666:
L670:
L675:
L678:
L682:
L686:
	movl	-112(%ebp), %ebx
	movl	-128(%ebp), %esi
	movl	36(%ebx), %ecx
	movl	20(%ebx), %eax
	movl	%esi, (%esp)
	addl	$4, %ecx
	subl	%eax, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	(%ebx), %edi
	movl	%edi, (%esp)
	call	__ZdlPv
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	jmp	L543
	.p2align 4,,7
L705:
	movl	%ebx, %eax
	jmp	L545
	.p2align 4,,7
L704:
	leal	(%edx,%ecx,4), %edi
	movl	%edi, -128(%ebp)
	cmpl	-128(%ebp), %ebx
	ja	L706
L531:
	movl	%ebx, 4(%esp)
	leal	4(%esi), %eax
	movl	-120(%ebp), %ecx
	movl	-128(%ebp), %esi
	subl	%ebx, %eax
	andl	$-4, %eax
	movl	%eax, 8(%esp)
	leal	(%esi,%ecx,4), %edi
	subl	%eax, %edi
	movl	%edi, (%esp)
	jmp	L703
	.p2align 4,,7
L700:
L593:
L596:
L600:
L604:
L607:
	addl	$24, %ebp
	movl	$-1, -104(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Resume
	.section	.gcc_except_table,"dr"
LLSDA1754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1754-LLSDACSB1754
LLSDACSB1754:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1754:
	.section	.text$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb,"x"
	.linkonce discard
	.section	.text$_ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi
	.def	__ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	%ebx, -12(%ebp)
	movl	12(%ebp), %ebx
	movl	%esi, -8(%ebp)
	movl	8(%ebp), %esi
	movl	%edi, -4(%ebp)
	movl	(%ebx), %edi
	movl	36(%esi), %ebx
	movl	(%esi), %ecx
	movl	4(%esi), %eax
	movl	%ebx, %edx
	subl	%ecx, %edx
	sarl	$2, %edx
	subl	%edx, %eax
	cmpl	$1, %eax
	jbe	L739
L709:
L716:
	movl	$512, (%esp)
	call	__Znwj
	movl	%eax, 4(%ebx)
	movl	24(%esi), %eax
	testl	%eax, %eax
	je	L722
	movl	%edi, (%eax)
L720:
L722:
	movl	36(%esi), %ecx
	leal	24(%esi), %ebx
	movl	4(%ecx), %eax
	leal	4(%ecx), %edx
	movl	%edx, 12(%ebx)
	movl	%eax, 4(%ebx)
	movl	28(%esi), %edi
	addl	$512, %eax
	movl	%eax, 8(%ebx)
	movl	%edi, 24(%esi)
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
L739:
	movl	%esi, (%esp)
	xorl	%edx, %edx
	movl	$1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb
	movl	36(%esi), %ebx
	jmp	L709
L729:
L735:
L737:
L707:
	.text
	.align 2
	.p2align 4,,15
.globl __ZN16avg_meassurement17calculate_currentEi
	.def	__ZN16avg_meassurement17calculate_currentEi;	.scl	2;	.type	32;	.endef
__ZN16avg_meassurement17calculate_currentEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	8(%ebp), %esi
	leal	24(%esi), %ebx
	movl	16(%ebx), %eax
	movl	8(%ebx), %edx
	subl	$4, %eax
	cmpl	%eax, %edx
	je	L741
	leal	4(%edx), %ecx
	movl	%ecx, 8(%ebx)
L744:
	movl	32(%ebx), %eax
	movl	24(%ebx), %edx
	subl	$4, %eax
	cmpl	%eax, %edx
	je	L745
L747:
	testl	%edx, %edx
	jne	L760
L751:
L753:
	leal	4(%edx), %eax
	movl	%eax, 24(%ebx)
L755:
L740:
	movl	48(%esi), %eax
	leal	48(%esi), %edx
	movl	4(%edx), %ecx
	leal	-24(%ebp), %ebx
	movl	%eax, -24(%ebp)
	movl	8(%edx), %eax
	movl	%ecx, -20(%ebp)
	movl	12(%edx), %ecx
	leal	32(%esi), %edx
	movl	%eax, -16(%ebp)
	movl	32(%esi), %eax
	movl	4(%edx), %esi
	movl	%ecx, -12(%ebp)
	leal	-40(%ebp), %ecx
	movl	%eax, -40(%ebp)
	movl	8(%edx), %eax
	movl	%esi, -36(%ebp)
	movl	12(%edx), %esi
	xorl	%edx, %edx
	movl	%edx, 8(%esp)
	movl	%esi, -28(%ebp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, -32(%ebp)
	call	__ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_
	movl	$1717986919, %ecx
	movl	%eax, %esi
	movl	%esi, %ebx
	imull	%ecx
	addl	$48, %esp
	sarl	$31, %ebx
	sarl	$2, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.p2align 4,,7
L760:
	movl	12(%ebp), %ecx
	movl	%ecx, (%edx)
	jmp	L753
	.p2align 4,,7
L745:
	movl	%ebx, (%esp)
	leal	12(%ebp), %edx
	movl	%edx, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi
	jmp	L755
	.p2align 4,,7
L741:
	movl	%ebx, (%esp)
	call	__ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv
	jmp	L744
	.section	.text$_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj
	.def	__ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	leal	-12(%ebp), %edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	leal	-64(%ebp), %ebx
	movl	%ebx, (%esp)
	movl	8(%ebp), %eax
	movl	$___gxx_personality_sj0, -40(%ebp)
	movl	$LLSDA1796, -36(%ebp)
	movl	%eax, -68(%ebp)
	movl	%edi, -32(%ebp)
	movl	$L797, -28(%ebp)
	movl	%esp, -24(%ebp)
	call	__Unwind_SjLj_Register
	movl	-68(%ebp), %ebx
	movl	12(%ebp), %ecx
	movl	36(%ebx), %edx
	movl	(%ebx), %esi
	addl	$127, %ecx
	movl	4(%ebx), %eax
	shrl	$7, %ecx
	subl	%esi, %edx
	sarl	$2, %edx
	movl	%ecx, -72(%ebp)
	subl	%edx, %eax
	incl	%ecx
	cmpl	%eax, %ecx
	ja	L807
L771:
	movl	$1, -76(%ebp)
	movl	-72(%ebp), %esi
	cmpl	%esi, -76(%ebp)
	ja	L761
L808:
	movl	-68(%ebp), %edi
	movl	36(%edi), %ebx
	movl	$512, (%esp)
	movl	$2, -60(%ebp)
	movl	%ebx, -80(%ebp)
	call	__Znwj
	movl	-76(%ebp), %ecx
	movl	-80(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
	movl	-72(%ebp), %eax
	incl	%ecx
	movl	%ecx, -76(%ebp)
	cmpl	%eax, %ecx
	jbe	L808
L761:
	leal	-64(%ebp), %esi
	movl	%esi, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L797:
	addl	$12, %ebp
	movl	-60(%ebp), %ebx
	movl	-56(%ebp), %edi
	movl	%ebx, -92(%ebp)
	decl	%ebx
	movl	%edi, -84(%ebp)
	je	L796
L792:
L794:
	movl	$0, -60(%ebp)
	call	___cxa_end_catch
	movl	$-1, -60(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Resume
	.p2align 4,,7
L807:
	movl	%ebx, (%esp)
	movl	-72(%ebp), %ecx
	xorl	%edx, %edx
	movl	%edx, 8(%esp)
	movl	$-1, -60(%ebp)
	movl	%ecx, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb
	jmp	L771
L796:
L782:
	movl	-84(%ebp), %ebx
	movl	%ebx, (%esp)
	call	___cxa_begin_catch
	movl	$1, -88(%ebp)
	movl	-76(%ebp), %esi
	cmpl	%esi, -92(%ebp)
	jmp	L806
	.p2align 4,,7
L809:
	movl	-68(%ebp), %edx
	movl	-88(%ebp), %ecx
	movl	36(%edx), %esi
	movl	(%esi,%ecx,4), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	incl	-88(%ebp)
	movl	-76(%ebp), %edi
	cmpl	%edi, -88(%ebp)
L806:
	jb	L809
	movl	$1, -60(%ebp)
	call	___cxa_rethrow
	.section	.gcc_except_table,"dr"
	.align 4
LLSDA1796:
	.byte	0xff
	.byte	0x0
	.uleb128 LLSDATT1796-LLSDATTD1796
LLSDATTD1796:
	.byte	0x1
	.uleb128 LLSDACSE1796-LLSDACSB1796
LLSDACSB1796:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x1
LLSDACSE1796:
	.byte	0x1
	.byte	0x0
	.align 4
	.long	0
LLSDATT1796:
	.section	.text$_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj,"x"
	.linkonce discard
	.section	.text$_ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj
	.def	__ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	leal	-12(%ebp), %esi
	pushl	%ebx
	subl	$108, %esp
	leal	-64(%ebp), %ebx
	movl	$___gxx_personality_sj0, -40(%ebp)
	movl	8(%ebp), %edi
	movl	$LLSDA1794, -36(%ebp)
	movl	%esi, -32(%ebp)
	movl	%edi, -68(%ebp)
	movl	$L846, -28(%ebp)
	movl	%esp, -24(%ebp)
	movl	%ebx, (%esp)
	call	__Unwind_SjLj_Register
	movl	12(%ebp), %edx
	addl	$127, %edx
	shrl	$7, %edx
	movl	%edx, -72(%ebp)
	movl	-68(%ebp), %edx
	movl	20(%edx), %eax
	movl	(%edx), %ecx
	subl	%ecx, %eax
	sarl	$2, %eax
	cmpl	-72(%ebp), %eax
	jb	L856
L820:
	movl	$1, -76(%ebp)
	movl	-72(%ebp), %edx
	cmpl	%edx, -76(%ebp)
	ja	L810
L857:
	movl	-68(%ebp), %edi
	movl	-76(%ebp), %ebx
	movl	20(%edi), %esi
	movl	$512, (%esp)
	sall	$2, %ebx
	movl	$2, -60(%ebp)
	movl	%esi, -80(%ebp)
	subl	%ebx, -80(%ebp)
	call	__Znwj
	incl	-76(%ebp)
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-72(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	jbe	L857
L810:
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L846:
	addl	$12, %ebp
	movl	-60(%ebp), %ebx
	movl	-56(%ebp), %esi
	movl	%ebx, -92(%ebp)
	decl	%ebx
	movl	%esi, -84(%ebp)
	je	L845
L841:
L843:
	movl	$0, -60(%ebp)
	call	___cxa_end_catch
	movl	$-1, -60(%ebp)
	movl	-84(%ebp), %edi
	movl	%edi, (%esp)
	call	__Unwind_SjLj_Resume
	.p2align 4,,7
L856:
	movl	%edx, (%esp)
	movl	-72(%ebp), %eax
	movl	$1, %ecx
	movl	%ecx, 8(%esp)
	movl	$-1, -60(%ebp)
	movl	%eax, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb
	jmp	L820
L845:
L831:
	movl	-84(%ebp), %ebx
	movl	%ebx, (%esp)
	call	___cxa_begin_catch
	movl	$1, -88(%ebp)
	movl	-76(%ebp), %edx
	cmpl	%edx, -92(%ebp)
	jmp	L855
	.p2align 4,,7
L858:
	movl	-68(%ebp), %edx
	movl	-88(%ebp), %ecx
	movl	20(%edx), %eax
	sall	$2, %ecx
	subl	%ecx, %eax
	movl	(%eax), %edi
	movl	%edi, (%esp)
	call	__ZdlPv
	incl	-88(%ebp)
	movl	-76(%ebp), %esi
	cmpl	%esi, -88(%ebp)
L855:
	jb	L858
	movl	$1, -60(%ebp)
	call	___cxa_rethrow
	.section	.gcc_except_table,"dr"
	.align 4
LLSDA1794:
	.byte	0xff
	.byte	0x0
	.uleb128 LLSDATT1794-LLSDATTD1794
LLSDATTD1794:
	.byte	0x1
	.uleb128 LLSDACSE1794-LLSDACSB1794
LLSDACSB1794:
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x1
	.uleb128 0x1
LLSDACSE1794:
	.byte	0x1
	.byte	0x0
	.align 4
	.long	0
LLSDATT1794:
	.section	.text$_ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj,"x"
	.linkonce discard
	.section	.text$_ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi
	.def	__ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$716, %esp
	movl	8(%ebp), %ebx
	movl	12(%ebp), %ecx
	movl	%ebx, %edi
	addl	$8, %edi
	movl	%ebx, -480(%ebp)
	movl	12(%ecx), %edx
	movl	12(%edi), %ebx
	movl	4(%ecx), %esi
	movl	(%ecx), %eax
	subl	%ebx, %edx
	sarl	$2, %edx
	movl	8(%edi), %ecx
	subl	%esi, %eax
	sarl	$2, %eax
	sall	$7, %edx
	leal	-128(%edx,%eax), %edx
	movl	-480(%ebp), %eax
	movl	8(%eax), %esi
	addl	$24, %eax
	movl	%eax, -572(%ebp)
	subl	%esi, %ecx
	sarl	$2, %ecx
	addl	%ecx, %edx
	movl	%edx, -484(%ebp)
	movl	12(%eax), %edx
	movl	-480(%ebp), %eax
	subl	%ebx, %edx
	movl	24(%eax), %ebx
	sarl	$2, %edx
	sall	$7, %edx
	movl	%ebx, %eax
	movl	%ebx, -684(%ebp)
	movl	-572(%ebp), %ebx
	subl	4(%ebx), %eax
	movl	20(%ebp), %ebx
	sarl	$2, %eax
	leal	-128(%edx,%eax), %edx
	addl	%ecx, %edx
	movl	%edx, %eax
	movl	%edx, -488(%ebp)
	shrl	%eax
	movl	(%ebx), %ecx
	cmpl	-484(%ebp), %eax
	movl	%ecx, -476(%ebp)
	jle	L871
	movl	%esi, -612(%ebp)
	movl	%esi, %eax
	movl	-480(%ebp), %esi
	movl	12(%esi), %edx
	subl	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, 16(%ebp)
	ja	L1302
L872:
	movl	-612(%ebp), %edx
	movl	4(%edi), %ebx
	movl	-612(%ebp), %eax
	movl	%edx, -56(%ebp)
	movl	8(%edi), %esi
	movl	16(%ebp), %edx
	movl	%ebx, -52(%ebp)
	subl	%ebx, %eax
	sarl	$2, %eax
	movl	%esi, -492(%ebp)
	negl	%edx
	movl	%eax, %ecx
	movl	%esi, -48(%ebp)
	movl	12(%edi), %esi
	addl	%edx, %ecx
	movl	%esi, -44(%ebp)
	js	L874
	cmpl	$127, %ecx
	jle	L1303
L874:
	testl	%ecx, %ecx
	jle	L880
	movl	%ecx, %eax
	movl	$128, %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
L881:
	movl	-44(%ebp), %edx
	leal	(%edx,%ebx,4), %eax
	movl	(%eax), %edx
	movl	%eax, -628(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%eax, -44(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%edx, -52(%ebp)
	movl	%esi, -48(%ebp)
	movl	%eax, -56(%ebp)
L879:
	movl	%eax, -40(%ebp)
	movl	-628(%ebp), %eax
	movl	%edx, -36(%ebp)
	movl	4(%edi), %ecx
	movl	%eax, -28(%ebp)
	movl	12(%edi), %ebx
	movl	%esi, -32(%ebp)
	movl	8(%edi), %edx
	movl	%ecx, -52(%ebp)
	movl	-612(%ebp), %esi
	movl	-484(%ebp), %eax
	movl	%ebx, -44(%ebp)
	leal	-72(%ebp), %ebx
	movl	%esi, -56(%ebp)
	movl	%edx, -48(%ebp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	movl	-72(%ebp), %esi
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	%esi, -496(%ebp)
	movl	%esi, (%eax)
	movl	-68(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	-64(%ebp), %edx
	movl	%ecx, -500(%ebp)
	movl	-484(%ebp), %ecx
	movl	%edx, 8(%eax)
	movl	-60(%ebp), %esi
	cmpl	%ecx, 16(%ebp)
	movl	%edx, -504(%ebp)
	movl	%esi, -508(%ebp)
	movl	%esi, 12(%eax)
	jle	L1304
	movl	-480(%ebp), %ebx
	movl	-496(%ebp), %eax
	movl	12(%edi), %edx
	movl	8(%ebx), %esi
	movl	8(%edi), %ebx
	movl	%eax, -312(%ebp)
	movl	-504(%ebp), %eax
	movl	%edx, -316(%ebp)
	movl	4(%edi), %ecx
	movl	-500(%ebp), %edi
	movl	%eax, -304(%ebp)
	movl	-36(%ebp), %eax
	movl	%edi, -308(%ebp)
	movl	-508(%ebp), %edi
	movl	%eax, -524(%ebp)
	movl	%eax, -292(%ebp)
	movl	-32(%ebp), %eax
	movl	%edi, -300(%ebp)
	movl	-40(%ebp), %edi
	movl	%eax, -528(%ebp)
	movl	%eax, -288(%ebp)
	movl	-28(%ebp), %eax
	movl	%esi, -328(%ebp)
	movl	%edi, -296(%ebp)
	movl	%eax, -532(%ebp)
	movl	%eax, -284(%ebp)
	movl	-480(%ebp), %eax
	movl	%ecx, -324(%ebp)
	movl	%ecx, -276(%ebp)
	movl	8(%eax), %eax
	movl	%ebx, -320(%ebp)
	movl	%ebx, -272(%ebp)
	movl	%eax, -280(%ebp)
	movl	%edx, -268(%ebp)
	movl	-496(%ebp), %eax
	movl	%esi, -248(%ebp)
	movl	%ecx, -244(%ebp)
	movl	%eax, -232(%ebp)
	movl	-500(%ebp), %eax
	movl	%edx, -236(%ebp)
	movl	%esi, -200(%ebp)
	movl	%eax, -228(%ebp)
	movl	-504(%ebp), %eax
	movl	%ecx, -196(%ebp)
	movl	%edx, -188(%ebp)
	movl	%eax, -224(%ebp)
	movl	-508(%ebp), %eax
	movl	%ebx, -240(%ebp)
	movl	%edi, -216(%ebp)
	movl	%eax, -220(%ebp)
	movl	-524(%ebp), %eax
	movl	%ebx, -192(%ebp)
	movl	%edi, -168(%ebp)
	movl	%eax, -212(%ebp)
	movl	-528(%ebp), %eax
	movl	%eax, -208(%ebp)
	movl	-532(%ebp), %eax
	movl	%eax, -204(%ebp)
	movl	-496(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	-500(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	-504(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-508(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-524(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-528(%ebp), %eax
	movl	%esi, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	%eax, -160(%ebp)
	movl	-532(%ebp), %eax
	movl	%edx, -140(%ebp)
	movl	%esi, -104(%ebp)
	movl	%eax, -156(%ebp)
	movl	-496(%ebp), %eax
	movl	%ecx, -100(%ebp)
	movl	%edx, -92(%ebp)
	movl	%eax, -136(%ebp)
	movl	-500(%ebp), %eax
	movl	%ebx, -144(%ebp)
	movl	%edi, -120(%ebp)
	movl	%eax, -132(%ebp)
	movl	-504(%ebp), %eax
	movl	%ebx, -96(%ebp)
	movl	%eax, -128(%ebp)
	movl	-508(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-524(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-528(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-532(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-496(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-500(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-504(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-508(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-524(%ebp), %eax
	movl	%esi, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	%eax, -68(%ebp)
	movl	-528(%ebp), %eax
	movl	%edx, -332(%ebp)
	movl	%esi, -392(%ebp)
	movl	%eax, -64(%ebp)
	movl	-532(%ebp), %eax
	movl	%ecx, -388(%ebp)
	movl	%edx, -380(%ebp)
	movl	%eax, -60(%ebp)
	movl	-496(%ebp), %eax
	movl	%edi, -72(%ebp)
	movl	%ebx, -336(%ebp)
	movl	%eax, -360(%ebp)
	movl	-500(%ebp), %eax
	movl	%edi, -376(%ebp)
	movl	%ebx, -384(%ebp)
	movl	%eax, -356(%ebp)
	movl	-504(%ebp), %eax
	movl	%eax, -352(%ebp)
	movl	-508(%ebp), %eax
	movl	%eax, -348(%ebp)
	movl	-524(%ebp), %eax
	movl	%eax, -372(%ebp)
	movl	-528(%ebp), %eax
	movl	%eax, -368(%ebp)
	movl	-532(%ebp), %eax
	movl	%eax, -364(%ebp)
	movl	-496(%ebp), %eax
	movl	%eax, -408(%ebp)
	movl	-500(%ebp), %eax
	movl	%eax, -404(%ebp)
	movl	-504(%ebp), %eax
	movl	%ecx, -436(%ebp)
	movl	-500(%ebp), %ecx
	movl	%eax, -400(%ebp)
	movl	-508(%ebp), %eax
	movl	%ecx, -452(%ebp)
	movl	-508(%ebp), %ecx
	movl	%eax, -396(%ebp)
	movl	-524(%ebp), %eax
	movl	%ecx, -444(%ebp)
	movl	-528(%ebp), %ecx
	movl	%eax, -420(%ebp)
	movl	-528(%ebp), %eax
	subl	%edx, -508(%ebp)
	movl	%esi, -440(%ebp)
	movl	%eax, -416(%ebp)
	movl	-532(%ebp), %eax
	movl	%edx, -428(%ebp)
	movl	%ecx, -464(%ebp)
	movl	%eax, -412(%ebp)
	movl	-496(%ebp), %eax
	movl	%edx, -592(%ebp)
	movl	%edi, -424(%ebp)
	movl	%eax, -456(%ebp)
	movl	-504(%ebp), %eax
	movl	%ebx, -432(%ebp)
	movl	%edi, -472(%ebp)
	movl	%eax, -448(%ebp)
	movl	-524(%ebp), %eax
	movl	%eax, -468(%ebp)
	movl	-532(%ebp), %eax
	movl	%eax, -460(%ebp)
	sarl	$2, -508(%ebp)
	movl	-500(%ebp), %edx
	subl	%edx, -496(%ebp)
	sall	$7, -508(%ebp)
	sarl	$2, -496(%ebp)
	movl	-508(%ebp), %ecx
	movl	-496(%ebp), %eax
	leal	-128(%ecx,%eax), %edx
	movl	%ebx, %eax
	movl	%esi, %ecx
	subl	%esi, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %esi
	testl	%esi, %esi
	jle	L1293
	movl	-528(%ebp), %edx
	movl	-532(%ebp), %eax
	movl	%edx, -600(%ebp)
	movl	-524(%ebp), %edx
	movl	%eax, -604(%ebp)
	movl	%edx, -596(%ebp)
	jmp	L1038
	.p2align 4,,7
L1031:
	decl	%esi
	testl	%esi, %esi
	jle	L1287
L1038:
	movl	(%ecx), %eax
	addl	$4, %ecx
	cmpl	%ebx, %ecx
	movl	%eax, (%edi)
	movl	%ecx, -440(%ebp)
	je	L1305
L1024:
	addl	$4, %edi
	cmpl	-600(%ebp), %edi
	movl	%edi, -472(%ebp)
	jne	L1031
	movl	-604(%ebp), %edx
	decl	%esi
	addl	$4, -604(%ebp)
	movl	4(%edx), %edi
	movl	-604(%ebp), %eax
	movl	%edi, -596(%ebp)
	movl	%edi, -468(%ebp)
	addl	$512, %edi
	testl	%esi, %esi
	movl	%edi, -600(%ebp)
	movl	%edi, -464(%ebp)
	movl	-596(%ebp), %edi
	movl	%eax, -460(%ebp)
	movl	%edi, -472(%ebp)
	jg	L1038
	.p2align 4,,15
L1287:
L1056:
L1063:
L1065:
L1279:
L1280:
L1282:
L859:
	movl	%edi, -264(%ebp)
	movl	-596(%ebp), %esi
	movl	-596(%ebp), %ecx
	movl	%edi, -472(%ebp)
	movl	-600(%ebp), %edx
	movl	-604(%ebp), %eax
	movl	%esi, -436(%ebp)
	movl	-600(%ebp), %esi
	movl	-280(%ebp), %ebx
	movl	%ecx, -260(%ebp)
	movl	%edx, -256(%ebp)
	movl	%eax, -252(%ebp)
	movl	%ecx, -468(%ebp)
	movl	-276(%ebp), %ecx
	movl	%edx, -464(%ebp)
	movl	-272(%ebp), %edx
	movl	%eax, -460(%ebp)
	movl	-268(%ebp), %eax
	movl	%esi, -432(%ebp)
	movl	-604(%ebp), %esi
	movl	%edx, -448(%ebp)
	movl	%edx, -416(%ebp)
	movl	%edx, -400(%ebp)
	movl	%ebx, -456(%ebp)
	movl	%ecx, -452(%ebp)
	movl	%eax, -444(%ebp)
	movl	%edi, -440(%ebp)
	movl	%esi, -428(%ebp)
	leal	-408(%ebp), %esi
	movl	%ebx, -424(%ebp)
	movl	%ecx, -420(%ebp)
	movl	%eax, -412(%ebp)
	movl	%ebx, -408(%ebp)
	movl	%ecx, -404(%ebp)
	movl	%eax, -396(%ebp)
	movl	-604(%ebp), %ebx
	movl	%edi, -392(%ebp)
	movl	-600(%ebp), %ecx
	leal	-392(%ebp), %eax
	movl	-596(%ebp), %edi
	movl	%ebx, -380(%ebp)
	leal	-476(%ebp), %ebx
	movl	%edi, -388(%ebp)
	movl	%ecx, -384(%ebp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	movl	-40(%ebp), %edx
	movl	-480(%ebp), %esi
	movl	%edx, 8(%esi)
	movl	-36(%ebp), %edi
	movl	%edi, 12(%esi)
	movl	-32(%ebp), %ecx
	movl	%ecx, 16(%esi)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esi)
	movl	12(%ebp), %esi
	movl	(%esi), %edx
	movl	4(%esi), %edi
	movl	8(%esi), %ecx
	movl	12(%esi), %eax
	movl	%edx, -472(%ebp)
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %esi
	movl	%edi, -468(%ebp)
	movl	-52(%ebp), %edi
	movl	%ecx, -464(%ebp)
	movl	-48(%ebp), %ecx
	movl	%edx, -456(%ebp)
	leal	-472(%ebp), %edx
	movl	%edi, -452(%ebp)
	leal	-456(%ebp), %edi
	movl	%esi, -444(%ebp)
	movl	%eax, -460(%ebp)
	movl	%ecx, -448(%ebp)
	movl	%ebx, 8(%esp)
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1071:
L1072:
L1074:
	.p2align 4,,7
L871:
	movl	-480(%ebp), %ebx
	movl	-684(%ebp), %edi
	movl	32(%ebx), %eax
	subl	%edi, %eax
	sarl	$2, %eax
	decl	%eax
	cmpl	%eax, 16(%ebp)
	ja	L1306
L1077:
	movl	16(%ebp), %ebx
	leal	-472(%ebp), %ecx
	movl	%ebx, 8(%esp)
	movl	-572(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	movl	-572(%ebp), %eax
	subl	$4, %esp
	movl	-480(%ebp), %ecx
	movl	-484(%ebp), %ebx
	movl	8(%eax), %edi
	movl	24(%ecx), %esi
	movl	%edi, -536(%ebp)
	movl	-536(%ebp), %edx
	movl	%esi, -456(%ebp)
	movl	4(%eax), %esi
	movl	%edi, -448(%ebp)
	movl	12(%eax), %edi
	movl	-488(%ebp), %eax
	movl	%edx, -416(%ebp)
	movl	%esi, -452(%ebp)
	subl	%ebx, %eax
	movl	24(%ecx), %ebx
	movl	%eax, -540(%ebp)
	movl	%eax, %edx
	negl	%edx
	movl	%edi, -444(%ebp)
	movl	%ebx, %eax
	subl	%esi, %eax
	movl	%ebx, -424(%ebp)
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	%esi, -420(%ebp)
	addl	%edx, %ecx
	movl	%edi, -412(%ebp)
	js	L1081
	cmpl	$127, %ecx
	jle	L1307
L1081:
	testl	%ecx, %ecx
	jle	L1087
	movl	%ecx, %eax
	movl	$128, %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
L1088:
	movl	-412(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -412(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -420(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -416(%ebp)
	movl	%eax, -424(%ebp)
L1086:
	movl	%edx, -436(%ebp)
	movl	12(%ebp), %ebx
	movl	-540(%ebp), %ecx
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
	movl	%eax, -440(%ebp)
	movl	%eax, (%ebx)
	movl	-436(%ebp), %esi
	cmpl	%ecx, 16(%ebp)
	movl	%esi, 4(%ebx)
	movl	-432(%ebp), %edi
	movl	%edi, 8(%ebx)
	movl	-428(%ebp), %edx
	movl	%edx, 12(%ebx)
	jge	L1110
	movl	-480(%ebp), %esi
	movl	-572(%ebp), %ecx
	movl	24(%esi), %edx
	movl	12(%ecx), %ebx
	movl	8(%ecx), %edi
	movl	%edx, -624(%ebp)
	movl	-624(%ebp), %eax
	movl	%edx, -424(%ebp)
	movl	4(%ecx), %edx
	movl	16(%ebp), %ecx
	movl	%ebx, -412(%ebp)
	subl	%edx, %eax
	sarl	$2, %eax
	movl	%edx, -420(%ebp)
	negl	%ecx
	movl	%eax, %ebx
	movl	%edi, -416(%ebp)
	addl	%ecx, %ebx
	js	L1112
	cmpl	$127, %ebx
	jg	L1112
	movl	-624(%ebp), %ebx
	movl	-412(%ebp), %edi
	movl	-416(%ebp), %esi
	leal	(%ebx,%ecx,4), %eax
	movl	%eax, -424(%ebp)
L1117:
	movl	%edx, -436(%ebp)
	movl	-624(%ebp), %edx
	movl	%edi, -428(%ebp)
	movl	%eax, -440(%ebp)
	movl	%edx, -408(%ebp)
	movl	-572(%ebp), %edx
	movl	%esi, -432(%ebp)
	movl	12(%edx), %ebx
	movl	4(%edx), %eax
	movl	8(%edx), %edi
	movl	%ebx, -396(%ebp)
	movl	-480(%ebp), %ebx
	movl	%eax, -404(%ebp)
	movl	4(%edx), %eax
	movl	24(%ebx), %ecx
	movl	%edi, -400(%ebp)
	leal	-392(%ebp), %edi
	movl	%ecx, -392(%ebp)
	movl	8(%edx), %ecx
	movl	%eax, -388(%ebp)
	movl	12(%edx), %eax
	leal	-376(%ebp), %edx
	movl	%ecx, -384(%ebp)
	movl	-440(%ebp), %ecx
	movl	%eax, -380(%ebp)
	movl	-436(%ebp), %eax
	movl	%esi, -368(%ebp)
	movl	-428(%ebp), %esi
	movl	%ecx, -376(%ebp)
	leal	-424(%ebp), %ecx
	movl	%eax, -372(%ebp)
	leal	-408(%ebp), %eax
	movl	%esi, -364(%ebp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_
	movl	-472(%ebp), %edi
	subl	$4, %esp
	movl	%edi, 24(%ebx)
	movl	-468(%ebp), %edx
	movl	%edx, 28(%ebx)
	movl	-464(%ebp), %esi
	movl	%esi, 32(%ebx)
	movl	-460(%ebp), %eax
	movl	%eax, 36(%ebx)
	movl	12(%ebp), %ecx
	movl	12(%ebp), %esi
	movl	12(%ebp), %edi
	movl	(%ecx), %ebx
	movl	12(%ebp), %ecx
	movl	8(%esi), %eax
	movl	4(%edi), %edx
	movl	%ebx, -660(%ebp)
	movl	-432(%ebp), %esi
	movl	%ebx, -408(%ebp)
	movl	12(%ecx), %ebx
	movl	%eax, -668(%ebp)
	movl	-436(%ebp), %ecx
	movl	%eax, -400(%ebp)
	movl	-456(%ebp), %edi
	movl	%edx, -664(%ebp)
	movl	-428(%ebp), %eax
	movl	%ebx, -672(%ebp)
	movl	%ebx, -396(%ebp)
	movl	-440(%ebp), %ebx
	movl	%edx, -404(%ebp)
	movl	%ecx, -388(%ebp)
	movl	%esi, -384(%ebp)
	movl	%eax, -380(%ebp)
	movl	%ebx, -392(%ebp)
	movl	%edi, -544(%ebp)
	movl	-452(%ebp), %edx
	movl	%edi, -376(%ebp)
	movl	-444(%ebp), %edi
	movl	%edx, -548(%ebp)
	movl	%edx, -372(%ebp)
	movl	-448(%ebp), %edx
	movl	%edi, -552(%ebp)
	movl	%edi, -364(%ebp)
	movl	-660(%ebp), %edi
	movl	%edx, -368(%ebp)
	movl	%ecx, -340(%ebp)
	movl	%edi, -360(%ebp)
	movl	-664(%ebp), %edi
	movl	%esi, -336(%ebp)
	movl	%eax, -332(%ebp)
	movl	%edi, -356(%ebp)
	movl	-668(%ebp), %edi
	movl	%edx, -320(%ebp)
	movl	%ebx, -344(%ebp)
	movl	%edi, -352(%ebp)
	movl	-672(%ebp), %edi
	movl	%edi, -348(%ebp)
	movl	-544(%ebp), %edi
	movl	%edi, -328(%ebp)
	movl	-548(%ebp), %edi
	movl	%edi, -324(%ebp)
	movl	-552(%ebp), %edi
	movl	%edi, -316(%ebp)
	movl	-660(%ebp), %edi
	movl	%edi, -312(%ebp)
	movl	-664(%ebp), %edi
	movl	%edi, -308(%ebp)
	movl	-668(%ebp), %edi
	movl	%edi, -304(%ebp)
	movl	-672(%ebp), %edi
	movl	%ecx, -292(%ebp)
	movl	%esi, -288(%ebp)
	movl	%edi, -300(%ebp)
	movl	-544(%ebp), %edi
	movl	%eax, -284(%ebp)
	movl	%edx, -272(%ebp)
	movl	%edi, -280(%ebp)
	movl	-548(%ebp), %edi
	movl	%ecx, -244(%ebp)
	movl	%esi, -240(%ebp)
	movl	%edi, -276(%ebp)
	movl	-552(%ebp), %edi
	movl	%eax, -236(%ebp)
	movl	%edx, -224(%ebp)
	movl	%edi, -268(%ebp)
	movl	-660(%ebp), %edi
	movl	%ebx, -296(%ebp)
	movl	%ebx, -248(%ebp)
	movl	%edi, -264(%ebp)
	movl	-664(%ebp), %edi
	movl	%edi, -260(%ebp)
	movl	-668(%ebp), %edi
	movl	%edi, -256(%ebp)
	movl	-672(%ebp), %edi
	movl	%edi, -252(%ebp)
	movl	-544(%ebp), %edi
	movl	%edi, -232(%ebp)
	movl	-548(%ebp), %edi
	movl	%edi, -228(%ebp)
	movl	-552(%ebp), %edi
	movl	%edi, -220(%ebp)
	movl	-660(%ebp), %edi
	movl	%edi, -216(%ebp)
	movl	-664(%ebp), %edi
	movl	%esi, -192(%ebp)
	movl	%esi, -144(%ebp)
	movl	-544(%ebp), %esi
	movl	%edi, -212(%ebp)
	movl	-668(%ebp), %edi
	movl	%ecx, -196(%ebp)
	movl	%eax, -188(%ebp)
	movl	%edi, -208(%ebp)
	movl	-672(%ebp), %edi
	movl	%edx, -176(%ebp)
	movl	%ecx, -148(%ebp)
	movl	%edi, -204(%ebp)
	movl	-544(%ebp), %edi
	movl	%eax, -140(%ebp)
	movl	%ebx, -200(%ebp)
	movl	%edi, -184(%ebp)
	movl	-548(%ebp), %edi
	movl	%ebx, -152(%ebp)
	movl	%esi, -136(%ebp)
	movl	%edi, -180(%ebp)
	movl	-552(%ebp), %edi
	movl	%edi, -172(%ebp)
	movl	-660(%ebp), %edi
	movl	%edi, -168(%ebp)
	movl	-664(%ebp), %edi
	movl	%edi, -164(%ebp)
	movl	-668(%ebp), %edi
	movl	%edi, -160(%ebp)
	movl	-672(%ebp), %edi
	movl	%edi, -156(%ebp)
	movl	-548(%ebp), %edi
	movl	%edi, -132(%ebp)
	movl	%edx, -128(%ebp)
	movl	-552(%ebp), %edi
	movl	%eax, -648(%ebp)
	movl	-672(%ebp), %edx
	movl	%ecx, -644(%ebp)
	movl	%edi, -124(%ebp)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%ebx, %eax
	sarl	$2, %edi
	subl	%ecx, %eax
	sall	$7, %edi
	movl	-660(%ebp), %ecx
	sarl	$2, %eax
	leal	-128(%edi,%eax), %edx
	movl	-668(%ebp), %eax
	subl	%ecx, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %edi
	testl	%edi, %edi
	jle	L1289
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %ecx
	movl	%eax, -652(%ebp)
	jmp	L1187
	.p2align 4,,7
L1171:
	movl	%esi, -556(%ebp)
	subl	$4, %esi
	cmpl	-644(%ebp), %ebx
	movl	%esi, -136(%ebp)
	je	L1308
L1179:
	leal	-4(%ebx), %edx
	movl	%ebx, %eax
	movl	-4(%eax), %eax
	movl	%edx, -152(%ebp)
	movl	%edx, %ebx
	movl	-556(%ebp), %edx
	decl	%edi
	testl	%edi, %edi
	movl	%eax, -4(%edx)
	jle	L1289
L1187:
	cmpl	%ecx, %esi
	jne	L1171
	movl	-652(%ebp), %esi
	subl	$4, -652(%ebp)
	movl	-652(%ebp), %ecx
	movl	%ecx, -124(%ebp)
	movl	-4(%esi), %ecx
	leal	512(%ecx), %edx
	movl	%ecx, -132(%ebp)
	movl	%edx, %esi
	movl	%esi, -556(%ebp)
	subl	$4, %esi
	cmpl	-644(%ebp), %ebx
	movl	%edx, -128(%ebp)
	movl	%esi, -136(%ebp)
	jne	L1179
	.p2align 4,,15
L1308:
	movl	-648(%ebp), %ebx
	decl	%edi
	movl	-4(%ebx), %eax
	leal	-4(%ebx), %edx
	movl	%edx, -648(%ebp)
	movl	%eax, -644(%ebp)
	movl	%eax, -148(%ebp)
	addl	$512, %eax
	movl	%eax, %ebx
	movl	%edx, -140(%ebp)
	leal	-4(%ebx), %edx
	testl	%edi, %edi
	movl	%eax, -144(%ebp)
	movl	%ebx, %eax
	movl	-4(%eax), %eax
	movl	%edx, -152(%ebp)
	movl	%edx, %ebx
	movl	-556(%ebp), %edx
	movl	%eax, -4(%edx)
	jg	L1187
	.p2align 4,,15
L1289:
	movl	-660(%ebp), %ebx
	movl	-664(%ebp), %ecx
	movl	-668(%ebp), %esi
	movl	%ebx, -424(%ebp)
	movl	-672(%ebp), %edi
	leal	-408(%ebp), %ebx
	movl	%ecx, -420(%ebp)
	movl	16(%ebp), %edx
	movl	%esi, -416(%ebp)
	leal	-408(%ebp), %esi
	movl	%edi, -412(%ebp)
	leal	-424(%ebp), %edi
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	subl	$4, %esp
	leal	-476(%ebp), %ecx
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1303:
	movl	%esi, -628(%ebp)
	movl	-612(%ebp), %ecx
	movl	-492(%ebp), %esi
	leal	(%ecx,%edx,4), %eax
	movl	%ebx, %edx
	movl	%eax, -56(%ebp)
	jmp	L879
L1307:
	leal	(%ebx,%edx,4), %eax
	movl	%esi, %edx
	movl	-536(%ebp), %esi
	movl	%eax, -424(%ebp)
	jmp	L1086
L1302:
	movl	16(%ebp), %ebx
	movl	%esi, (%esp)
	subl	%eax, %ebx
	movl	%ebx, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj
	movl	8(%esi), %eax
	movl	%eax, -612(%ebp)
	jmp	L872
L1306:
	movl	16(%ebp), %esi
	movl	%ebx, (%esp)
	subl	%eax, %esi
	movl	%esi, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj
	jmp	L1077
	.p2align 4,,7
L1305:
	movl	-592(%ebp), %ebx
	movl	4(%ebx), %edx
	leal	4(%ebx), %eax
	movl	%eax, -592(%ebp)
	movl	%eax, -428(%ebp)
	leal	512(%edx), %ecx
	movl	%ecx, %ebx
	movl	%ecx, -432(%ebp)
	movl	%edx, %ecx
	movl	%edx, -436(%ebp)
	movl	%edx, -440(%ebp)
	jmp	L1024
L1112:
	testl	%ebx, %ebx
	jle	L1118
	movl	%ebx, %eax
	movl	$128, %edi
	cltd
	idivl	%edi
	movl	%eax, %ecx
L1119:
	movl	-412(%ebp), %esi
	leal	(%esi,%ecx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -412(%ebp)
	sall	$7, %ecx
	subl	%ecx, %ebx
	movl	%edx, -420(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ebx,4), %eax
	movl	%esi, -416(%ebp)
	movl	%eax, -424(%ebp)
	jmp	L1117
L1110:
	movl	-480(%ebp), %edi
	movl	-572(%ebp), %esi
	movl	24(%edi), %ebx
	movl	4(%esi), %edx
	movl	8(%esi), %eax
	movl	12(%esi), %ecx
	movl	%ebx, -424(%ebp)
	movl	16(%ebp), %ebx
	movl	%edx, -420(%ebp)
	leal	-408(%ebp), %edx
	movl	%eax, -416(%ebp)
	movl	%ecx, -412(%ebp)
	movl	%ebx, 8(%esp)
	movl	12(%ebp), %ebx
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	movl	8(%ebx), %ecx
	subl	$4, %esp
	movl	(%ebx), %esi
	movl	4(%ebx), %eax
	movl	12(%ebx), %edx
	movl	%ecx, -384(%ebp)
	movl	-572(%ebp), %ecx
	movl	%esi, -392(%ebp)
	movl	24(%edi), %esi
	movl	8(%ecx), %ebx
	movl	%eax, -388(%ebp)
	movl	-424(%ebp), %edi
	movl	4(%ecx), %eax
	movl	%edx, -380(%ebp)
	movl	12(%ecx), %edx
	movl	-404(%ebp), %ecx
	movl	%esi, -376(%ebp)
	movl	-420(%ebp), %esi
	movl	%eax, -372(%ebp)
	movl	-396(%ebp), %eax
	movl	%ebx, -368(%ebp)
	movl	-408(%ebp), %ebx
	movl	%edx, -364(%ebp)
	movl	-400(%ebp), %edx
	movl	%edi, -360(%ebp)
	movl	-416(%ebp), %edi
	movl	%esi, -356(%ebp)
	movl	-412(%ebp), %esi
	movl	%eax, -332(%ebp)
	movl	-424(%ebp), %eax
	movl	%edi, -352(%ebp)
	movl	%esi, -348(%ebp)
	movl	%ebx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	%edx, -336(%ebp)
	movl	%eax, -328(%ebp)
	movl	-420(%ebp), %eax
	movl	%ecx, -308(%ebp)
	movl	%edx, -304(%ebp)
	movl	%eax, -324(%ebp)
	movl	-396(%ebp), %eax
	movl	%ecx, -292(%ebp)
	movl	-420(%ebp), %ecx
	movl	%edx, -288(%ebp)
	movl	-424(%ebp), %edx
	movl	%esi, -316(%ebp)
	movl	%ebx, -312(%ebp)
	movl	%eax, -300(%ebp)
	movl	%ebx, -296(%ebp)
	leal	-476(%ebp), %ebx
	movl	%eax, -284(%ebp)
	leal	-280(%ebp), %eax
	movl	%esi, -268(%ebp)
	leal	-296(%ebp), %esi
	movl	%edi, -320(%ebp)
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	%edi, -272(%ebp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	movl	-408(%ebp), %ecx
	movl	-392(%ebp), %edi
	movl	-388(%ebp), %eax
	movl	%ecx, -560(%ebp)
	movl	-384(%ebp), %edx
	movl	-380(%ebp), %esi
	movl	%ecx, -328(%ebp)
	movl	-404(%ebp), %ecx
	movl	-368(%ebp), %ebx
	movl	%edi, -360(%ebp)
	movl	-372(%ebp), %edi
	movl	%ecx, -324(%ebp)
	movl	-400(%ebp), %ecx
	movl	%eax, -356(%ebp)
	movl	-376(%ebp), %eax
	movl	%ecx, -564(%ebp)
	movl	%ecx, -320(%ebp)
	movl	-396(%ebp), %ecx
	movl	%edx, -352(%ebp)
	movl	-364(%ebp), %edx
	movl	%ecx, -568(%ebp)
	movl	%ecx, -316(%ebp)
	movl	-392(%ebp), %ecx
	movl	%eax, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	%ecx, -312(%ebp)
	movl	-388(%ebp), %ecx
	movl	%ebx, -336(%ebp)
	movl	%edx, -332(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-384(%ebp), %ecx
	movl	%esi, -348(%ebp)
	movl	%ecx, -304(%ebp)
	movl	%esi, -300(%ebp)
	movl	-560(%ebp), %ecx
	movl	%eax, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	%ecx, -280(%ebp)
	movl	-404(%ebp), %ecx
	movl	%ebx, -288(%ebp)
	movl	%edx, -284(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-564(%ebp), %ecx
	movl	%eax, -248(%ebp)
	movl	%edi, -244(%ebp)
	movl	%ecx, -272(%ebp)
	movl	-568(%ebp), %ecx
	movl	%ebx, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	%ecx, -268(%ebp)
	movl	-392(%ebp), %ecx
	movl	%esi, -252(%ebp)
	movl	%ecx, -264(%ebp)
	movl	-388(%ebp), %ecx
	movl	%ecx, -260(%ebp)
	movl	-384(%ebp), %ecx
	movl	%ecx, -256(%ebp)
	movl	-560(%ebp), %ecx
	movl	%ecx, -232(%ebp)
	movl	-404(%ebp), %ecx
	movl	%ecx, -228(%ebp)
	movl	-564(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	movl	-568(%ebp), %ecx
	movl	%ecx, -220(%ebp)
	movl	-392(%ebp), %ecx
	movl	%ecx, -216(%ebp)
	movl	-388(%ebp), %ecx
	movl	%ecx, -212(%ebp)
	movl	-384(%ebp), %ecx
	movl	%eax, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	%ecx, -208(%ebp)
	movl	-560(%ebp), %ecx
	movl	%ebx, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	%ecx, -184(%ebp)
	movl	-404(%ebp), %ecx
	movl	%eax, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	%ecx, -180(%ebp)
	movl	-564(%ebp), %ecx
	movl	%ebx, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	%ecx, -176(%ebp)
	movl	-568(%ebp), %ecx
	movl	%esi, -204(%ebp)
	movl	%esi, -156(%ebp)
	movl	%ecx, -172(%ebp)
	movl	-392(%ebp), %ecx
	movl	%ecx, -168(%ebp)
	movl	-388(%ebp), %ecx
	movl	%ecx, -164(%ebp)
	movl	-384(%ebp), %ecx
	movl	%ecx, -160(%ebp)
	movl	-560(%ebp), %ecx
	movl	%ecx, -136(%ebp)
	movl	-404(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	movl	-564(%ebp), %ecx
	movl	%ecx, -128(%ebp)
	movl	-568(%ebp), %ecx
	movl	%ecx, -124(%ebp)
	movl	-392(%ebp), %ecx
	movl	%ebx, -96(%ebp)
	movl	%ebx, -48(%ebp)
	movl	-560(%ebp), %ebx
	movl	%ecx, -120(%ebp)
	movl	-388(%ebp), %ecx
	movl	%eax, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-384(%ebp), %ecx
	movl	%edx, -92(%ebp)
	movl	%eax, -56(%ebp)
	subl	%edi, %eax
	sarl	$2, %eax
	movl	%ecx, -112(%ebp)
	movl	-560(%ebp), %ecx
	movl	%edi, -52(%ebp)
	movl	%edx, -44(%ebp)
	subl	%esi, %edx
	sarl	$2, %edx
	movl	%ecx, -88(%ebp)
	movl	-404(%ebp), %ecx
	sall	$7, %edx
	movl	%ebx, -40(%ebp)
	leal	-128(%edx,%eax), %edx
	movl	%ecx, -84(%ebp)
	movl	-564(%ebp), %ecx
	movl	%esi, -108(%ebp)
	movl	%esi, -60(%ebp)
	movl	%ecx, -80(%ebp)
	movl	-568(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	movl	-392(%ebp), %ecx
	movl	%ecx, -72(%ebp)
	movl	-388(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	movl	-384(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	movl	-404(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	movl	-384(%ebp), %edi
	movl	%esi, -636(%ebp)
	movl	-564(%ebp), %ebx
	movl	-568(%ebp), %ecx
	movl	%edi, -632(%ebp)
	movl	-632(%ebp), %eax
	movl	%ebx, -32(%ebp)
	movl	-392(%ebp), %ebx
	movl	%ecx, -28(%ebp)
	subl	%ebx, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %edi
	testl	%edi, %edi
	jle	L1291
	movl	-568(%ebp), %eax
	movl	-560(%ebp), %ecx
	movl	-564(%ebp), %esi
	movl	%eax, -640(%ebp)
	jmp	L1254
	.p2align 4,,7
L1247:
	decl	%edi
	testl	%edi, %edi
	jle	L1291
L1254:
	movl	(%ebx), %edx
	addl	$4, %ebx
	cmpl	-632(%ebp), %ebx
	movl	%edx, (%ecx)
	movl	%ebx, -72(%ebp)
	je	L1309
L1240:
	addl	$4, %ecx
	cmpl	%esi, %ecx
	movl	%ecx, -40(%ebp)
	jne	L1247
	movl	-640(%ebp), %ecx
	decl	%edi
	addl	$4, -640(%ebp)
	testl	%edi, %edi
	movl	4(%ecx), %edx
	movl	-640(%ebp), %esi
	movl	%edx, %ecx
	movl	%esi, -28(%ebp)
	leal	512(%edx), %esi
	movl	%edx, -36(%ebp)
	movl	%esi, -32(%ebp)
	movl	%edx, -40(%ebp)
	jg	L1254
L1291:
L1265:
L1272:
L1274:
	movl	-472(%ebp), %edx
	movl	-480(%ebp), %esi
	movl	%edx, 24(%esi)
	movl	-468(%ebp), %eax
	movl	%eax, 28(%esi)
	movl	-464(%ebp), %ebx
	movl	%ebx, 32(%esi)
	movl	-460(%ebp), %edi
	movl	%edi, 36(%esi)
	movl	-452(%ebp), %edx
	movl	-456(%ebp), %ecx
	movl	-444(%ebp), %ebx
	movl	-448(%ebp), %eax
	movl	%edx, -436(%ebp)
	movl	12(%ebp), %edx
	movl	%ecx, -440(%ebp)
	movl	%ebx, -428(%ebp)
	movl	(%edx), %edi
	movl	%eax, -432(%ebp)
	movl	12(%edx), %eax
	leal	-476(%ebp), %ebx
	movl	4(%edx), %esi
	movl	8(%edx), %ecx
	movl	%edi, -424(%ebp)
	leal	-440(%ebp), %edi
	movl	%eax, -412(%ebp)
	leal	-424(%ebp), %eax
	movl	%esi, -420(%ebp)
	movl	%ecx, -416(%ebp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
L1311:
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1309:
	movl	-636(%ebp), %edx
	leal	4(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -636(%ebp)
	movl	%eax, -60(%ebp)
	leal	512(%edx), %ebx
	movl	%ebx, -632(%ebp)
	movl	%ebx, -64(%ebp)
	movl	%edx, %ebx
	movl	%edx, -68(%ebp)
	movl	%edx, -72(%ebp)
	jmp	L1240
L1304:
	movl	16(%ebp), %esi
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	leal	-104(%ebp), %ebx
	movl	%esi, 8(%esp)
	leal	-88(%ebp), %esi
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	movl	-36(%ebp), %eax
	subl	$4, %esp
	movl	-40(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%eax, -100(%ebp)
	movl	-72(%ebp), %eax
	movl	%ecx, -104(%ebp)
	movl	-28(%ebp), %ecx
	movl	%eax, -120(%ebp)
	movl	-64(%ebp), %eax
	movl	%edx, -96(%ebp)
	movl	-68(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	-480(%ebp), %eax
	movl	%edx, -116(%ebp)
	movl	-60(%ebp), %edx
	movl	8(%eax), %eax
	movl	%ecx, -92(%ebp)
	leal	-120(%ebp), %ecx
	movl	%eax, -136(%ebp)
	movl	4(%edi), %eax
	movl	%edx, -108(%ebp)
	leal	-136(%ebp), %edx
	movl	%eax, -132(%ebp)
	movl	8(%edi), %eax
	movl	%eax, -128(%ebp)
	movl	12(%edi), %eax
	movl	%eax, -124(%ebp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	call	__ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_
	movl	-40(%ebp), %esi
	subl	$4, %esp
	movl	-480(%ebp), %ebx
	movl	%esi, 8(%ebx)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%ebx)
	movl	-32(%ebp), %edx
	movl	%edx, 16(%ebx)
	movl	-28(%ebp), %ecx
	movl	%ecx, 20(%ebx)
	movl	-72(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	-68(%ebp), %eax
	movl	-64(%ebp), %ecx
	movl	%ebx, -120(%ebp)
	movl	(%edi), %esi
	movl	12(%ebp), %edi
	movl	%eax, -116(%ebp)
	movl	-60(%ebp), %edx
	movl	%esi, -656(%ebp)
	movl	%esi, -104(%ebp)
	movl	4(%edi), %esi
	movl	12(%ebp), %edi
	movl	%ecx, -112(%ebp)
	movl	%esi, -608(%ebp)
	movl	%esi, -100(%ebp)
	movl	8(%edi), %esi
	movl	12(%ebp), %edi
	movl	%edx, -108(%ebp)
	movl	%esi, -616(%ebp)
	movl	%esi, -96(%ebp)
	movl	12(%edi), %esi
	movl	%esi, -620(%ebp)
	movl	%esi, -92(%ebp)
	movl	-56(%ebp), %esi
	movl	%esi, -88(%ebp)
	movl	-52(%ebp), %edi
	movl	%eax, -148(%ebp)
	movl	%edx, -140(%ebp)
	movl	%edi, -512(%ebp)
	movl	%edi, -84(%ebp)
	movl	-48(%ebp), %edi
	movl	%eax, -196(%ebp)
	movl	%edx, -188(%ebp)
	movl	%edi, -516(%ebp)
	movl	%edi, -80(%ebp)
	movl	-44(%ebp), %edi
	movl	%ebx, -152(%ebp)
	movl	%ecx, -144(%ebp)
	movl	%edi, -520(%ebp)
	movl	%edi, -76(%ebp)
	movl	-656(%ebp), %edi
	movl	%esi, -184(%ebp)
	movl	%ebx, -200(%ebp)
	movl	%edi, -168(%ebp)
	movl	-608(%ebp), %edi
	movl	%ecx, -192(%ebp)
	movl	%edi, -164(%ebp)
	movl	-616(%ebp), %edi
	movl	%edi, -160(%ebp)
	movl	-620(%ebp), %edi
	movl	%edi, -156(%ebp)
	movl	-512(%ebp), %edi
	movl	%edi, -180(%ebp)
	movl	-516(%ebp), %edi
	movl	%edi, -176(%ebp)
	movl	-520(%ebp), %edi
	movl	%edi, -172(%ebp)
	movl	-656(%ebp), %edi
	movl	%edi, -216(%ebp)
	movl	-608(%ebp), %edi
	movl	%eax, -244(%ebp)
	movl	%edx, -236(%ebp)
	movl	%edi, -212(%ebp)
	movl	-616(%ebp), %edi
	movl	%esi, -232(%ebp)
	movl	%ebx, -248(%ebp)
	movl	%edi, -208(%ebp)
	movl	-620(%ebp), %edi
	movl	%ecx, -240(%ebp)
	movl	%esi, -280(%ebp)
	movl	%edi, -204(%ebp)
	movl	-512(%ebp), %edi
	movl	%ebx, -296(%ebp)
	movl	%edi, -228(%ebp)
	movl	-516(%ebp), %edi
	movl	%edi, -224(%ebp)
	movl	-520(%ebp), %edi
	movl	%edi, -220(%ebp)
	movl	-656(%ebp), %edi
	movl	%edi, -264(%ebp)
	movl	-608(%ebp), %edi
	movl	%edi, -260(%ebp)
	movl	-616(%ebp), %edi
	movl	%edi, -256(%ebp)
	movl	-620(%ebp), %edi
	movl	%edi, -252(%ebp)
	movl	-512(%ebp), %edi
	movl	%edi, -276(%ebp)
	movl	-516(%ebp), %edi
	movl	%edi, -272(%ebp)
	movl	-520(%ebp), %edi
	movl	%edi, -268(%ebp)
	movl	%eax, -292(%ebp)
	movl	-656(%ebp), %edi
	movl	%edx, -580(%ebp)
	movl	-608(%ebp), %eax
	movl	%edx, -284(%ebp)
	movl	-620(%ebp), %edx
	movl	%edi, -312(%ebp)
	movl	-616(%ebp), %edi
	movl	%eax, -308(%ebp)
	movl	-620(%ebp), %eax
	movl	%edi, -304(%ebp)
	movl	-512(%ebp), %edi
	movl	%eax, -300(%ebp)
	movl	-516(%ebp), %eax
	movl	%edi, -324(%ebp)
	movl	-520(%ebp), %edi
	movl	%eax, -320(%ebp)
	movl	-580(%ebp), %eax
	movl	%edi, -316(%ebp)
	movl	-608(%ebp), %edi
	subl	%eax, %edx
	movl	%ecx, -288(%ebp)
	movl	-656(%ebp), %eax
	sarl	$2, %edx
	movl	%esi, -328(%ebp)
	sall	$7, %edx
	movl	%ecx, -576(%ebp)
	subl	%edi, %eax
	sarl	$2, %eax
	leal	-128(%edx,%eax), %edx
	movl	%ecx, %eax
	subl	%ebx, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %edi
	testl	%edi, %edi
	jle	L1292
	movl	-516(%ebp), %eax
	movl	-520(%ebp), %edx
	movl	-512(%ebp), %ecx
	movl	%eax, -584(%ebp)
	movl	%edx, -588(%ebp)
	jmp	L949
	.p2align 4,,7
L942:
	decl	%edi
	testl	%edi, %edi
	jle	L1285
L949:
	movl	(%ebx), %edx
	addl	$4, %ebx
	cmpl	-576(%ebp), %ebx
	movl	%edx, (%esi)
	movl	%ebx, -296(%ebp)
	je	L1310
L935:
	addl	$4, %esi
	cmpl	-584(%ebp), %esi
	movl	%esi, -328(%ebp)
	jne	L942
	movl	-588(%ebp), %edx
	decl	%edi
	addl	$4, -588(%ebp)
	testl	%edi, %edi
	movl	-588(%ebp), %ecx
	movl	%ecx, -316(%ebp)
	movl	4(%edx), %ecx
	leal	512(%ecx), %esi
	movl	%esi, -584(%ebp)
	movl	%esi, -320(%ebp)
	movl	%ecx, %esi
	movl	%ecx, -324(%ebp)
	movl	%ecx, -328(%ebp)
	jg	L949
L1285:
	movl	%esi, -136(%ebp)
	movl	-588(%ebp), %edi
	movl	-616(%ebp), %edx
	movl	%ecx, -132(%ebp)
	movl	-584(%ebp), %eax
	movl	-608(%ebp), %esi
	movl	%edi, -124(%ebp)
	movl	-656(%ebp), %edi
	movl	-620(%ebp), %ecx
	movl	%eax, -128(%ebp)
	movl	-608(%ebp), %ebx
	movl	%edi, %eax
	movl	%edx, -320(%ebp)
	subl	%esi, %eax
	sarl	$2, %eax
	movl	%edx, -288(%ebp)
	movl	16(%ebp), %edx
	movl	%ecx, -316(%ebp)
	movl	%ecx, -284(%ebp)
	negl	%edx
	movl	%eax, %ecx
	movl	%edi, -328(%ebp)
	addl	%edx, %ecx
	movl	%ebx, -324(%ebp)
	movl	%edi, -296(%ebp)
	movl	%ebx, -292(%ebp)
	js	L958
	cmpl	$127, %ecx
	jg	L958
	leal	(%edi,%edx,4), %eax
	movl	-288(%ebp), %esi
	movl	-284(%ebp), %edi
	movl	%eax, -296(%ebp)
	movl	-292(%ebp), %edx
L963:
	movl	%eax, -312(%ebp)
	leal	-328(%ebp), %ecx
	leal	-312(%ebp), %eax
	movl	%edi, -300(%ebp)
	leal	-476(%ebp), %edi
	movl	%edx, -308(%ebp)
	movl	%esi, -304(%ebp)
	movl	%edi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	jmp	L1311
L1310:
	movl	-580(%ebp), %edx
	leal	4(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -580(%ebp)
	movl	%eax, -284(%ebp)
	leal	512(%edx), %ebx
	movl	%ebx, -576(%ebp)
	movl	%ebx, -288(%ebp)
	movl	%edx, %ebx
	movl	%edx, -292(%ebp)
	movl	%edx, -296(%ebp)
	jmp	L935
L1087:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1088
L880:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L881
L958:
	testl	%ecx, %ecx
	jle	L964
	movl	%ecx, %eax
	movl	$128, %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
L965:
	movl	-284(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -284(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -292(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -288(%ebp)
	movl	%eax, -296(%ebp)
	jmp	L963
L1293:
	movl	-464(%ebp), %ebx
	movl	-460(%ebp), %ecx
	movl	-468(%ebp), %esi
	movl	%ebx, -600(%ebp)
	movl	-472(%ebp), %edi
	movl	%ecx, -604(%ebp)
	movl	%esi, -596(%ebp)
	jmp	L1287
L1118:
	movl	%ebx, %ecx
	shrl	$7, %ecx
	orl	$-33554432, %ecx
	jmp	L1119
L1292:
	movl	-320(%ebp), %ebx
	movl	-316(%ebp), %edi
	movl	-328(%ebp), %esi
	movl	%ebx, -584(%ebp)
	movl	-324(%ebp), %ecx
	movl	%edi, -588(%ebp)
	jmp	L1285
L964:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L965
	.section	.text$_ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi
	.def	__ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	20(%ebp), %edx
	movl	8(%eax), %edi
	movl	%eax, -140(%ebp)
	movl	(%ebx), %ecx
	movl	16(%ebp), %esi
	movl	%edx, -144(%ebp)
	cmpl	%edi, %ecx
	je	L1380
L1355:
L1356:
L1358:
	movl	-140(%ebp), %eax
	cmpl	24(%eax), %ecx
	je	L1381
L1373:
L1374:
L1376:
L1312:
	movl	%ecx, -136(%ebp)
	movl	4(%ebx), %eax
	leal	-136(%ebp), %edx
	movl	8(%ebx), %edi
	movl	12(%ebx), %ecx
	movl	-140(%ebp), %ebx
	movl	%eax, -132(%ebp)
	movl	-144(%ebp), %eax
	movl	%edi, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1381:
	movl	%eax, %edx
	movl	32(%eax), %eax
	subl	%ecx, %eax
	sarl	$2, %eax
	decl	%eax
	cmpl	%eax, %esi
	ja	L1382
L1362:
	movl	%esi, 8(%esp)
	movl	-140(%ebp), %ebx
	leal	-136(%ebp), %edi
	movl	%edi, (%esp)
	addl	$24, %ebx
	movl	%ebx, 4(%esp)
	call	__ZNKSt15_Deque_iteratorIiRiPiEplEi
	movl	-140(%ebp), %ecx
	subl	$4, %esp
	movl	4(%ebx), %eax
	movl	8(%ebx), %esi
	movl	24(%ecx), %edx
	movl	-132(%ebp), %ecx
	movl	%eax, -36(%ebp)
	movl	%edx, -172(%ebp)
	movl	-172(%ebp), %edi
	movl	%esi, -32(%ebp)
	movl	%edx, -120(%ebp)
	movl	-128(%ebp), %edx
	movl	%edi, -88(%ebp)
	movl	-36(%ebp), %edi
	movl	%eax, -116(%ebp)
	movl	-124(%ebp), %eax
	movl	%esi, -112(%ebp)
	movl	12(%ebx), %esi
	movl	-136(%ebp), %ebx
	movl	%edi, -84(%ebp)
	movl	-32(%ebp), %edi
	movl	%eax, -92(%ebp)
	movl	%eax, -60(%ebp)
	movl	%esi, -108(%ebp)
	movl	%ebx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	%edx, -96(%ebp)
	movl	%edi, -80(%ebp)
	leal	-56(%ebp), %edi
	movl	%esi, -76(%ebp)
	movl	%ebx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	%ebx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	leal	-40(%ebp), %ecx
	movl	%edx, -48(%ebp)
	movl	-172(%ebp), %ebx
	movl	%eax, -44(%ebp)
	movl	-144(%ebp), %edx
	movl	%esi, -28(%ebp)
	movl	%ebx, -40(%ebp)
	movl	%edx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	movl	-136(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, 24(%edx)
	movl	-132(%ebp), %esi
	movl	%esi, 28(%edx)
	movl	-128(%ebp), %ebx
	movl	%ebx, 32(%edx)
	movl	-124(%ebp), %ecx
	movl	%ecx, 36(%edx)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1380:
	movl	-140(%ebp), %edx
	movl	%ecx, %eax
	movl	12(%edx), %ecx
	subl	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %esi
	ja	L1383
L1314:
	movl	%edi, -56(%ebp)
	movl	-140(%ebp), %ecx
	addl	$8, %ecx
	movl	%ecx, -160(%ebp)
	movl	12(%ecx), %edx
	movl	4(%ecx), %ebx
	movl	8(%ecx), %eax
	movl	%edx, -152(%ebp)
	movl	%edx, -44(%ebp)
	movl	%esi, %edx
	movl	%edi, %esi
	movl	%ebx, -52(%ebp)
	subl	%ebx, %esi
	negl	%edx
	movl	%eax, -148(%ebp)
	sarl	$2, %esi
	movl	%esi, %ecx
	movl	%eax, -48(%ebp)
	addl	%edx, %ecx
	js	L1316
	cmpl	$127, %ecx
	jle	L1384
L1316:
	testl	%ecx, %ecx
	jle	L1322
	movl	%ecx, %eax
	movl	$128, %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
L1323:
	movl	-44(%ebp), %edx
	leal	(%edx,%ebx,4), %eax
	movl	(%eax), %edx
	movl	%eax, -156(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%eax, -44(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%edx, -52(%ebp)
	movl	%esi, -48(%ebp)
	movl	%eax, -56(%ebp)
L1321:
	movl	%eax, -40(%ebp)
	movl	-156(%ebp), %ecx
	movl	-160(%ebp), %eax
	movl	%esi, -32(%ebp)
	movl	-40(%ebp), %esi
	movl	%edx, -36(%ebp)
	movl	-36(%ebp), %ebx
	movl	%esi, -56(%ebp)
	movl	-32(%ebp), %esi
	movl	%ecx, -28(%ebp)
	movl	%ebx, -52(%ebp)
	movl	%ecx, %ebx
	movl	%esi, -48(%ebp)
	movl	8(%eax), %edx
	movl	%ecx, -44(%ebp)
	movl	4(%eax), %ecx
	movl	12(%eax), %eax
	movl	%edi, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	%eax, -108(%ebp)
	movl	%eax, -60(%ebp)
	movl	-40(%ebp), %eax
	movl	%edx, -64(%ebp)
	movl	%esi, -80(%ebp)
	movl	%eax, -88(%ebp)
	movl	-36(%ebp), %eax
	movl	%ebx, -76(%ebp)
	movl	%edi, -104(%ebp)
	movl	%eax, -84(%ebp)
	movl	-108(%ebp), %eax
	movl	%ecx, -100(%ebp)
	movl	%edx, -96(%ebp)
	movl	%eax, -92(%ebp)
	movl	%edi, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-36(%ebp), %eax
	movl	%edx, -112(%ebp)
	movl	-40(%ebp), %edx
	leal	-136(%ebp), %ecx
	movl	%esi, -128(%ebp)
	movl	-144(%ebp), %edi
	movl	%eax, -132(%ebp)
	movl	%edx, -136(%ebp)
	leal	-120(%ebp), %edx
	movl	%ebx, -124(%ebp)
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	movl	-140(%ebp), %edi
	movl	-40(%ebp), %eax
	movl	%eax, 8(%edi)
	movl	-36(%ebp), %esi
	movl	%esi, 12(%edi)
	movl	-32(%ebp), %ebx
	movl	%ebx, 16(%edi)
	movl	-28(%ebp), %ecx
	movl	%ecx, 20(%edi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1384:
	movl	-152(%ebp), %esi
	leal	(%edi,%edx,4), %eax
	movl	%ebx, %edx
	movl	%eax, -56(%ebp)
	movl	%esi, -156(%ebp)
	movl	-148(%ebp), %esi
	jmp	L1321
	.p2align 4,,7
L1382:
	movl	%edx, (%esp)
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj
	jmp	L1362
L1383:
	movl	%edx, (%esp)
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj
	movl	-140(%ebp), %ebx
	movl	8(%ebx), %edi
	jmp	L1314
L1322:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1323
	.section	.text$_ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_
	.def	__ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_;	.scl	2;	.type	32;	.endef
__ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$460, %esp
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	8(%eax), %edx
	movl	(%ecx), %esi
	movl	%eax, -332(%ebp)
	movl	%edx, -400(%ebp)
	cmpl	%edx, %esi
	jne	L1611
	addl	$24, %eax
	movl	%eax, -388(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %edi
	movl	-332(%ebp), %eax
	movl	%edi, -416(%ebp)
	cmpl	24(%eax), %edi
	jne	L1386
	movl	%eax, (%esp)
	call	__ZNSt5dequeIiSaIiEE5clearEv
	movl	-388(%ebp), %esi
	movl	-332(%ebp), %ecx
	movl	4(%esi), %edi
	movl	24(%ecx), %eax
	movl	12(%esi), %ebx
	movl	8(%ebp), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%ecx)
	movl	8(%ebp), %eax
	movl	%edi, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	%ebx, 12(%ecx)
	addl	$460, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.p2align 4,,7
L1611:
	movl	20(%ebp), %edx
	movl	-332(%ebp), %edi
	movl	(%edx), %ebx
	addl	$24, %edi
	movl	%edi, -388(%ebp)
	movl	%ebx, -416(%ebp)
L1386:
	movl	20(%ebp), %eax
	movl	20(%ebp), %edx
	movl	12(%ecx), %ebx
	movl	4(%eax), %edi
	movl	12(%edx), %edx
	movl	-416(%ebp), %eax
	movl	%edi, -396(%ebp)
	movl	8(%ecx), %edi
	movl	4(%ecx), %ecx
	movl	%ebx, -340(%ebp)
	movl	%edx, -408(%ebp)
	subl	%ebx, %edx
	movl	-396(%ebp), %ebx
	movl	%edi, -404(%ebp)
	sarl	$2, %edx
	sall	$7, %edx
	movl	%ecx, -392(%ebp)
	subl	%ebx, %eax
	sarl	$2, %eax
	leal	-128(%edx,%eax), %edx
	movl	%edi, %eax
	movl	-332(%ebp), %edi
	subl	%esi, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %ebx
	movl	%ebx, -336(%ebp)
	addl	$8, %edi
	movl	-340(%ebp), %edx
	movl	%edi, -344(%ebp)
	movl	12(%edi), %ebx
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	-344(%ebp), %edi
	sarl	$2, %eax
	subl	%ebx, %edx
	sarl	$2, %edx
	movl	8(%edi), %ecx
	sall	$7, %edx
	leal	-128(%edx,%eax), %edx
	movl	-332(%ebp), %eax
	movl	%ecx, -352(%ebp)
	movl	8(%eax), %edi
	subl	%edi, %ecx
	sarl	$2, %ecx
	addl	%ecx, %edx
	movl	%edx, -348(%ebp)
	movl	-388(%ebp), %edx
	movl	%ecx, -444(%ebp)
	movl	12(%edx), %eax
	movl	%edx, %ecx
	movl	(%edx), %edx
	subl	4(%ecx), %edx
	subl	%ebx, %eax
	movl	-336(%ebp), %ecx
	sarl	$2, %eax
	sall	$7, %eax
	sarl	$2, %edx
	leal	-128(%eax,%edx), %eax
	movl	-444(%ebp), %edx
	addl	%edx, %eax
	subl	%ecx, %eax
	shrl	%eax
	cmpl	%eax, -348(%ebp)
	jae	L1401
	movl	%edi, -56(%ebp)
	movl	-344(%ebp), %ecx
	movl	-352(%ebp), %edx
	movl	%ebx, -44(%ebp)
	movl	4(%ecx), %eax
	movl	-392(%ebp), %ecx
	movl	%edx, -48(%ebp)
	movl	-404(%ebp), %edx
	movl	%ecx, -68(%ebp)
	movl	-340(%ebp), %ecx
	movl	%edx, -64(%ebp)
	movl	-416(%ebp), %edx
	movl	%ecx, -60(%ebp)
	movl	-396(%ebp), %ecx
	movl	%edx, -88(%ebp)
	movl	20(%ebp), %edx
	movl	%ecx, -84(%ebp)
	movl	%eax, -52(%ebp)
	movl	8(%edx), %ecx
	movl	-408(%ebp), %edx
	movl	%esi, -72(%ebp)
	movl	%ecx, -356(%ebp)
	movl	%ecx, -80(%ebp)
	movl	-352(%ebp), %ecx
	movl	%edx, -76(%ebp)
	movl	-392(%ebp), %edx
	movl	%ecx, -96(%ebp)
	movl	-404(%ebp), %ecx
	movl	%edi, -104(%ebp)
	movl	%eax, -100(%ebp)
	movl	%ebx, -92(%ebp)
	movl	%esi, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	%ecx, -112(%ebp)
	movl	-340(%ebp), %edx
	movl	%edi, -152(%ebp)
	movl	-416(%ebp), %ecx
	movl	%eax, -148(%ebp)
	movl	%edx, -108(%ebp)
	movl	-396(%ebp), %edx
	movl	%ecx, -136(%ebp)
	movl	-356(%ebp), %ecx
	movl	%edx, -132(%ebp)
	movl	-408(%ebp), %edx
	movl	%ecx, -128(%ebp)
	movl	-352(%ebp), %ecx
	movl	%edx, -124(%ebp)
	movl	-392(%ebp), %edx
	movl	%ecx, -144(%ebp)
	movl	-404(%ebp), %ecx
	movl	%edx, -164(%ebp)
	movl	-340(%ebp), %edx
	movl	%ecx, -160(%ebp)
	movl	-416(%ebp), %ecx
	movl	%edx, -156(%ebp)
	movl	-396(%ebp), %edx
	movl	%ecx, -184(%ebp)
	movl	-356(%ebp), %ecx
	movl	%edx, -180(%ebp)
	movl	-408(%ebp), %edx
	movl	%ecx, -176(%ebp)
	movl	-352(%ebp), %ecx
	movl	%ebx, -140(%ebp)
	movl	%esi, -168(%ebp)
	movl	%edx, -172(%ebp)
	movl	%edi, -200(%ebp)
	movl	%eax, -196(%ebp)
	movl	%ecx, -192(%ebp)
	movl	-392(%ebp), %edx
	movl	%ebx, -188(%ebp)
	movl	-404(%ebp), %ecx
	movl	%esi, -216(%ebp)
	movl	%edx, -212(%ebp)
	movl	-340(%ebp), %edx
	movl	%ecx, -208(%ebp)
	movl	-416(%ebp), %ecx
	movl	%edx, -204(%ebp)
	movl	-396(%ebp), %edx
	movl	%ecx, -232(%ebp)
	movl	-356(%ebp), %ecx
	movl	%edx, -228(%ebp)
	movl	-408(%ebp), %edx
	movl	%ecx, -224(%ebp)
	movl	-352(%ebp), %ecx
	movl	%edx, -220(%ebp)
	movl	-392(%ebp), %edx
	movl	%ecx, -240(%ebp)
	movl	-404(%ebp), %ecx
	movl	%edx, -260(%ebp)
	movl	-340(%ebp), %edx
	movl	%ecx, -256(%ebp)
	movl	-416(%ebp), %ecx
	movl	%edx, -252(%ebp)
	movl	-396(%ebp), %edx
	movl	%ecx, -280(%ebp)
	movl	-356(%ebp), %ecx
	movl	%edi, -248(%ebp)
	movl	%eax, -244(%ebp)
	movl	%ebx, -236(%ebp)
	movl	%esi, -264(%ebp)
	movl	%edx, -276(%ebp)
	movl	%ecx, -272(%ebp)
	movl	-408(%ebp), %edx
	movl	%edi, -296(%ebp)
	movl	-352(%ebp), %edi
	movl	%ebx, -284(%ebp)
	movl	-408(%ebp), %ebx
	movl	%eax, -292(%ebp)
	movl	-392(%ebp), %ecx
	movl	%edx, -268(%ebp)
	movl	-340(%ebp), %eax
	movl	%edi, -288(%ebp)
	movl	-404(%ebp), %edx
	movl	%ebx, -316(%ebp)
	movl	-416(%ebp), %edi
	movl	%esi, -312(%ebp)
	movl	-348(%ebp), %ebx
	movl	%ecx, -308(%ebp)
	movl	-340(%ebp), %ecx
	testl	%ebx, %ebx
	movl	%edx, -304(%ebp)
	movl	%esi, %edx
	movl	-392(%ebp), %esi
	movl	%eax, -300(%ebp)
	movl	-356(%ebp), %eax
	movl	%edi, -328(%ebp)
	movl	-396(%ebp), %edi
	movl	%eax, -320(%ebp)
	movl	%ecx, -376(%ebp)
	movl	%edi, -324(%ebp)
	movl	%esi, -448(%ebp)
	jle	L1612
	movl	%eax, -380(%ebp)
	movl	%edi, %esi
	movl	-416(%ebp), %ecx
	movl	-408(%ebp), %edi
	movl	%edi, -384(%ebp)
	jmp	L1451
	.p2align 4,,7
L1435:
	movl	%ecx, -360(%ebp)
	subl	$4, %ecx
	cmpl	-448(%ebp), %edx
	movl	%ecx, -328(%ebp)
	je	L1616
L1443:
	movl	%edx, %edi
	decl	%ebx
	movl	-4(%edi), %eax
	movl	-360(%ebp), %edi
	leal	-4(%edx), %edx
	testl	%ebx, %ebx
	movl	%edx, -312(%ebp)
	movl	%eax, -4(%edi)
	jle	L1608
L1451:
	cmpl	%esi, %ecx
	jne	L1435
	movl	-384(%ebp), %edi
	subl	$4, -384(%ebp)
	movl	-384(%ebp), %esi
	movl	%esi, -316(%ebp)
	movl	-4(%edi), %esi
	leal	512(%esi), %eax
	movl	%esi, -324(%ebp)
	movl	%eax, %ecx
	movl	%ecx, -360(%ebp)
	subl	$4, %ecx
	cmpl	-448(%ebp), %edx
	movl	%eax, -380(%ebp)
	movl	%eax, -320(%ebp)
	movl	%ecx, -328(%ebp)
	jne	L1443
	.p2align 4,,15
L1616:
	movl	-376(%ebp), %edx
	decl	%ebx
	movl	-4(%edx), %eax
	leal	-4(%edx), %edi
	movl	%edi, -376(%ebp)
	movl	%eax, -448(%ebp)
	movl	%eax, -308(%ebp)
	addl	$512, %eax
	movl	%eax, %edx
	movl	%edi, -300(%ebp)
	movl	%edx, %edi
	testl	%ebx, %ebx
	movl	%eax, -304(%ebp)
	movl	-4(%edi), %eax
	movl	-360(%ebp), %edi
	leal	-4(%edx), %edx
	movl	%edx, -312(%ebp)
	movl	%eax, -4(%edi)
	jg	L1451
	.p2align 4,,15
L1608:
	movl	%esi, -36(%ebp)
	movl	-384(%ebp), %edi
	movl	-344(%ebp), %esi
	movl	%ecx, -40(%ebp)
	movl	-380(%ebp), %edx
	movl	-336(%ebp), %ecx
	movl	%edi, -28(%ebp)
	movl	-400(%ebp), %edi
	movl	%edx, -32(%ebp)
	movl	4(%esi), %edx
	movl	8(%esi), %ebx
	movl	%edi, -312(%ebp)
	movl	12(%esi), %eax
	movl	%edi, %esi
	movl	%edx, -308(%ebp)
	subl	%edx, %esi
	sarl	$2, %esi
	movl	%ebx, -304(%ebp)
	addl	%esi, %ecx
	movl	%eax, -300(%ebp)
	js	L1460
	cmpl	$127, %ecx
	jg	L1460
	movl	-336(%ebp), %ecx
	movl	-304(%ebp), %esi
	leal	(%edi,%ecx,4), %eax
	movl	%eax, -312(%ebp)
	movl	-300(%ebp), %edi
L1465:
	movl	%esi, -320(%ebp)
	movl	-344(%ebp), %esi
	movl	-344(%ebp), %ecx
	movl	%edi, -316(%ebp)
	movl	-400(%ebp), %edi
	movl	%edx, -324(%ebp)
	movl	4(%esi), %ebx
	movl	%eax, -328(%ebp)
	movl	-400(%ebp), %edx
	movl	%edi, -312(%ebp)
	movl	-320(%ebp), %eax
	movl	8(%ecx), %edi
	movl	%ebx, -428(%ebp)
	movl	12(%ecx), %esi
	movl	-324(%ebp), %ecx
	movl	%ebx, -308(%ebp)
	movl	-328(%ebp), %ebx
	movl	%edi, -304(%ebp)
	movl	%eax, -288(%ebp)
	movl	-316(%ebp), %eax
	movl	%edx, -280(%ebp)
	movl	-428(%ebp), %edx
	movl	%edi, -272(%ebp)
	movl	-320(%ebp), %edi
	movl	%ecx, -292(%ebp)
	movl	%edx, -276(%ebp)
	movl	%ecx, -260(%ebp)
	movl	%esi, -300(%ebp)
	movl	%ebx, -296(%ebp)
	movl	%eax, -284(%ebp)
	movl	%esi, -268(%ebp)
	movl	%ebx, -264(%ebp)
	movl	%edi, -256(%ebp)
	movl	%eax, -252(%ebp)
	movl	-332(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	20(%edi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	movl	-328(%ebp), %esi
	movl	%esi, 8(%edi)
	movl	-324(%ebp), %ebx
	movl	%ebx, 12(%edi)
	movl	-320(%ebp), %edx
	movl	%edx, 16(%edi)
	movl	-316(%ebp), %ecx
	movl	%ecx, 20(%edi)
L1494:
	movl	-332(%ebp), %edx
	movl	-344(%ebp), %ecx
	movl	8(%edx), %ebx
	movl	4(%ecx), %edx
	movl	8(%ecx), %edi
	movl	12(%ecx), %eax
	movl	%ebx, -328(%ebp)
	movl	%ebx, %esi
	movl	-348(%ebp), %ecx
	movl	%edx, -324(%ebp)
	subl	%edx, %esi
	sarl	$2, %esi
	movl	%edi, -320(%ebp)
	addl	%esi, %ecx
	movl	%eax, -316(%ebp)
	js	L1579
	cmpl	$127, %ecx
	jg	L1579
	movl	-348(%ebp), %esi
	movl	-316(%ebp), %edi
	leal	(%ebx,%esi,4), %eax
	movl	%eax, -328(%ebp)
	movl	-320(%ebp), %esi
L1584:
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	8(%ebp), %eax
	movl	%edx, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	addl	$460, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
	.p2align 4,,7
L1401:
	movl	-396(%ebp), %ebx
	movl	20(%ebp), %edi
	movl	-332(%ebp), %ecx
	movl	%ebx, -308(%ebp)
	movl	-408(%ebp), %eax
	movl	8(%edi), %ebx
	movl	24(%ecx), %edx
	movl	%esi, -280(%ebp)
	movl	-388(%ebp), %edi
	movl	%eax, -300(%ebp)
	movl	%ebx, -304(%ebp)
	movl	4(%edi), %ecx
	movl	%edx, -424(%ebp)
	movl	8(%edi), %eax
	movl	%edx, -296(%ebp)
	movl	12(%edi), %edx
	movl	-392(%ebp), %edi
	movl	%ecx, -292(%ebp)
	movl	%eax, -288(%ebp)
	movl	%edi, -276(%ebp)
	movl	-404(%ebp), %edi
	movl	%edx, -284(%ebp)
	movl	%ebx, -256(%ebp)
	movl	%edi, -272(%ebp)
	movl	-340(%ebp), %edi
	movl	%edi, -268(%ebp)
	movl	-416(%ebp), %edi
	movl	%edi, -264(%ebp)
	movl	-396(%ebp), %edi
	movl	%edi, -260(%ebp)
	movl	-408(%ebp), %edi
	movl	%edi, -252(%ebp)
	movl	-424(%ebp), %edi
	movl	%edi, -248(%ebp)
	movl	-392(%ebp), %edi
	movl	%ecx, -244(%ebp)
	movl	%eax, -240(%ebp)
	movl	%edi, -228(%ebp)
	movl	-404(%ebp), %edi
	movl	%edx, -236(%ebp)
	movl	%ecx, -196(%ebp)
	movl	%edi, -224(%ebp)
	movl	-340(%ebp), %edi
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	%edi, -220(%ebp)
	movl	-416(%ebp), %edi
	movl	%esi, -232(%ebp)
	movl	%ebx, -208(%ebp)
	movl	%edi, -216(%ebp)
	movl	-396(%ebp), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -212(%ebp)
	movl	-408(%ebp), %edi
	movl	%edi, -204(%ebp)
	movl	-424(%ebp), %edi
	movl	%edi, -200(%ebp)
	movl	-392(%ebp), %edi
	movl	%edi, -180(%ebp)
	movl	-404(%ebp), %edi
	movl	%edi, -176(%ebp)
	movl	-340(%ebp), %edi
	movl	%edi, -172(%ebp)
	movl	-416(%ebp), %edi
	movl	%edi, -168(%ebp)
	movl	-396(%ebp), %edi
	movl	%edi, -164(%ebp)
	movl	%ebx, -160(%ebp)
	movl	-408(%ebp), %edi
	movl	%eax, -144(%ebp)
	movl	%eax, -96(%ebp)
	movl	-404(%ebp), %eax
	movl	%edi, -156(%ebp)
	movl	-424(%ebp), %edi
	movl	%eax, -80(%ebp)
	movl	-408(%ebp), %eax
	movl	%edi, -152(%ebp)
	movl	-392(%ebp), %edi
	movl	%ecx, -148(%ebp)
	movl	%edx, -140(%ebp)
	movl	%edi, -132(%ebp)
	movl	-404(%ebp), %edi
	movl	%ecx, -100(%ebp)
	movl	%edx, -92(%ebp)
	subl	%eax, %edx
	sarl	$2, %edx
	movl	%edi, -128(%ebp)
	movl	-340(%ebp), %edi
	sall	$7, %edx
	movl	%esi, -136(%ebp)
	movl	%edi, -124(%ebp)
	movl	-416(%ebp), %edi
	movl	%ebx, -112(%ebp)
	movl	%esi, -88(%ebp)
	movl	%edi, -120(%ebp)
	movl	-396(%ebp), %edi
	movl	%edi, -116(%ebp)
	movl	-408(%ebp), %edi
	movl	%edi, -108(%ebp)
	movl	-424(%ebp), %edi
	movl	%edi, -104(%ebp)
	movl	-392(%ebp), %edi
	movl	%edi, -84(%ebp)
	movl	-340(%ebp), %edi
	movl	%edi, -76(%ebp)
	movl	%eax, -420(%ebp)
	movl	-424(%ebp), %edi
	movl	%ebx, %eax
	movl	%ebx, -412(%ebp)
	subl	%ecx, %edi
	movl	-416(%ebp), %ecx
	sarl	$2, %edi
	leal	-128(%edx,%edi), %edx
	subl	%ecx, %eax
	sarl	$2, %eax
	leal	(%edx,%eax), %edi
	testl	%edi, %edi
	jle	L1613
	movl	%ecx, -312(%ebp)
	movl	-404(%ebp), %eax
	movl	-340(%ebp), %edx
	movl	-392(%ebp), %ebx
	movl	%eax, -368(%ebp)
	movl	%edx, -372(%ebp)
	jmp	L1535
	.p2align 4,,7
L1528:
	decl	%edi
	testl	%edi, %edi
	jle	L1610
L1535:
	movl	(%ecx), %edx
	addl	$4, %ecx
	cmpl	-412(%ebp), %ecx
	movl	%edx, (%esi)
	movl	%ecx, -120(%ebp)
	je	L1617
L1521:
	addl	$4, %esi
	cmpl	-368(%ebp), %esi
	movl	%esi, -88(%ebp)
	jne	L1528
	movl	-372(%ebp), %edx
	decl	%edi
	addl	$4, -372(%ebp)
	testl	%edi, %edi
	movl	-372(%ebp), %ebx
	movl	%ebx, -76(%ebp)
	movl	4(%edx), %ebx
	leal	512(%ebx), %esi
	movl	%esi, -368(%ebp)
	movl	%esi, -80(%ebp)
	movl	%ebx, %esi
	movl	%ebx, -84(%ebp)
	movl	%ebx, -88(%ebp)
	jg	L1535
	.p2align 4,,15
L1610:
	movl	%ebx, -324(%ebp)
	movl	-368(%ebp), %edi
	movl	-388(%ebp), %edx
	movl	%esi, -328(%ebp)
	movl	-372(%ebp), %ebx
	movl	-424(%ebp), %eax
	movl	%edi, -320(%ebp)
	movl	8(%edx), %esi
	movl	%ebx, -316(%ebp)
	movl	4(%edx), %ebx
	movl	%esi, -364(%ebp)
	movl	%esi, -304(%ebp)
	movl	12(%edx), %esi
	movl	-336(%ebp), %edx
	movl	%eax, -312(%ebp)
	subl	%ebx, %eax
	sarl	$2, %eax
	movl	%ebx, -308(%ebp)
	negl	%edx
	movl	%eax, %ecx
	movl	%esi, -300(%ebp)
	addl	%edx, %ecx
	js	L1543
	cmpl	$127, %ecx
	jg	L1543
	movl	-424(%ebp), %ecx
	movl	%esi, %edi
	movl	-364(%ebp), %esi
	leal	(%ecx,%edx,4), %eax
	movl	%ebx, %edx
	movl	%eax, -312(%ebp)
L1548:
	movl	%edi, -316(%ebp)
	movl	-388(%ebp), %ecx
	movl	%edx, %edi
	movl	%edx, -324(%ebp)
	movl	-424(%ebp), %ebx
	movl	%edx, -308(%ebp)
	movl	-316(%ebp), %edx
	movl	%eax, -328(%ebp)
	movl	%eax, -312(%ebp)
	movl	%ecx, %eax
	movl	%edx, -300(%ebp)
	movl	12(%eax), %eax
	movl	%ebx, -296(%ebp)
	movl	4(%ecx), %ebx
	movl	%edi, -276(%ebp)
	movl	-424(%ebp), %edi
	movl	%eax, -252(%ebp)
	movl	%eax, -284(%ebp)
	movl	-328(%ebp), %eax
	movl	%edi, -264(%ebp)
	movl	-332(%ebp), %edi
	movl	%esi, -320(%ebp)
	movl	%esi, -304(%ebp)
	movl	8(%ecx), %ecx
	movl	%edx, -268(%ebp)
	addl	$4, %edx
	movl	%eax, -280(%ebp)
	movl	36(%edi), %eax
	movl	%ebx, -292(%ebp)
	movl	%ecx, -288(%ebp)
	addl	$4, %eax
	movl	%esi, -272(%ebp)
	movl	%ebx, -260(%ebp)
	movl	%ecx, -256(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	movl	-328(%ebp), %ebx
	movl	%ebx, 24(%edi)
	movl	-324(%ebp), %esi
	movl	%esi, 28(%edi)
	movl	-320(%ebp), %edx
	movl	%edx, 32(%edi)
	movl	-316(%ebp), %ecx
	movl	%ecx, 36(%edi)
	jmp	L1494
	.p2align 4,,7
L1617:
	movl	-420(%ebp), %edx
	leal	4(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -420(%ebp)
	movl	%eax, -108(%ebp)
	leal	512(%edx), %ecx
	movl	%ecx, -412(%ebp)
	movl	%ecx, -112(%ebp)
	movl	%edx, %ecx
	movl	%edx, -116(%ebp)
	movl	%edx, -120(%ebp)
	jmp	L1521
	.p2align 4,,7
L1579:
	testl	%ecx, %ecx
	jle	L1585
	movl	%ecx, %eax
	movl	$128, %edi
	cltd
	idivl	%edi
	movl	%eax, %ebx
L1586:
	movl	-316(%ebp), %esi
	leal	(%esi,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -316(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -324(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -320(%ebp)
	movl	%eax, -328(%ebp)
	jmp	L1584
L1460:
	testl	%ecx, %ecx
	jle	L1466
	movl	%ecx, %eax
	movl	$128, %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
L1467:
	movl	-300(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -300(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -308(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -304(%ebp)
	movl	%eax, -312(%ebp)
	jmp	L1465
L1543:
	testl	%ecx, %ecx
	jle	L1549
	movl	%ecx, %eax
	movl	$128, %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
L1550:
	movl	-300(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -300(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -308(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -304(%ebp)
	movl	%eax, -312(%ebp)
	jmp	L1548
L1585:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1586
L1613:
	movl	-80(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %esi
	movl	%ecx, -368(%ebp)
	movl	-84(%ebp), %ebx
	movl	%edi, -372(%ebp)
	jmp	L1610
L1612:
	movl	-316(%ebp), %edx
	movl	-320(%ebp), %ebx
	movl	-328(%ebp), %ecx
	movl	%edx, -384(%ebp)
	movl	-324(%ebp), %esi
	movl	%ebx, -380(%ebp)
	jmp	L1608
L1466:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1467
L1549:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1550
	.text
	.align 2
	.p2align 4,,15
.globl __ZN16avg_meassurement13prepare_firstEi
	.def	__ZN16avg_meassurement13prepare_firstEi;	.scl	2;	.type	32;	.endef
__ZN16avg_meassurement13prepare_firstEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	movl	8(%ebp), %edx
	movl	$10, -120(%ebp)
	movl	12(%ebp), %edi
	movl	%edx, -112(%ebp)
	movl	-112(%ebp), %ebx
	movl	%edi, -108(%ebp)
	movl	-112(%ebp), %edi
	addl	$24, %edx
	movl	%edx, -116(%ebp)
	movl	-112(%ebp), %ecx
	addl	$32, %ebx
	movl	%ebx, -124(%ebp)
	addl	$48, %edi
	movl	-124(%ebp), %eax
	movl	12(%edi), %ebx
	movl	12(%eax), %esi
	movl	48(%ecx), %eax
	movl	4(%edi), %ecx
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	-124(%ebp), %esi
	sarl	$2, %edx
	subl	%ecx, %eax
	sarl	$2, %eax
	sall	$7, %edx
	leal	-128(%edx,%eax), %edx
	movl	8(%esi), %eax
	movl	-112(%ebp), %esi
	subl	32(%esi), %eax
	sarl	$2, %eax
	addl	%eax, %edx
	cmpl	$10, %edx
	jb	L1681
	movl	%ecx, -36(%ebp)
	movl	-116(%ebp), %esi
	movl	-112(%ebp), %edx
	movl	%ebx, -28(%ebp)
	movl	24(%esi), %eax
	addl	$48, %edx
	movl	%edx, -136(%ebp)
	movl	8(%edx), %edi
	movl	%eax, -40(%ebp)
	movl	-112(%ebp), %eax
	movl	8(%esi), %edx
	movl	%edi, -32(%ebp)
	addl	$32, %eax
	movl	4(%eax), %ebx
	movl	%eax, -132(%ebp)
	movl	8(%eax), %ecx
	movl	%edx, %edi
	movl	%edx, -88(%ebp)
	movl	12(%eax), %esi
	subl	%ebx, %edi
	movl	%ecx, -128(%ebp)
	sarl	$2, %edi
	movl	%ecx, -80(%ebp)
	movl	%ecx, -96(%ebp)
	movl	%edi, %ecx
	addl	$10, %ecx
	movl	%ebx, -84(%ebp)
	movl	%esi, -76(%ebp)
	movl	%edx, -104(%ebp)
	movl	%ebx, -100(%ebp)
	movl	%esi, -92(%ebp)
	js	L1646
	cmpl	$127, %ecx
	jle	L1682
L1646:
	testl	%ecx, %ecx
	jle	L1652
	movl	%ecx, %eax
	movl	$128, %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
L1653:
	movl	-92(%ebp), %eax
	leal	(%eax,%ebx,4), %edi
	movl	(%edi), %edx
	movl	%edi, -92(%ebp)
	sall	$7, %ebx
	subl	%ebx, %ecx
	movl	%edx, -100(%ebp)
	leal	512(%edx), %esi
	leal	(%edx,%ecx,4), %eax
	movl	%esi, -96(%ebp)
	movl	%eax, -104(%ebp)
L1651:
	movl	%eax, -72(%ebp)
	leal	-40(%ebp), %ecx
	leal	-72(%ebp), %eax
	movl	%edx, -68(%ebp)
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	leal	-56(%ebp), %edi
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-116(%ebp), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	__ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_
	movl	-116(%ebp), %edx
	subl	$4, %esp
	movl	-136(%ebp), %esi
	movl	24(%edx), %ebx
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	movl	%ebx, -104(%ebp)
	movl	12(%esi), %edi
	movl	-116(%ebp), %ebx
	movl	%ecx, -100(%ebp)
	movl	-132(%ebp), %esi
	movl	%edi, -92(%ebp)
	movl	8(%ebx), %edx
	movl	%eax, -96(%ebp)
	movl	4(%esi), %ecx
	leal	-88(%ebp), %edi
	movl	12(%esi), %ebx
	movl	8(%esi), %eax
	movl	%edx, -88(%ebp)
	leal	-108(%ebp), %edx
	movl	%ecx, -84(%ebp)
	leal	-104(%ebp), %ecx
	movl	%ebx, -76(%ebp)
	movl	%eax, -80(%ebp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1682:
	movl	%esi, %edi
	movl	-128(%ebp), %esi
	leal	40(%edx), %eax
	movl	%eax, -104(%ebp)
	movl	%ebx, %edx
	jmp	L1651
	.p2align 4,,7
L1681:
	movl	%ebx, -28(%ebp)
	movl	-116(%ebp), %esi
	movl	8(%edi), %edx
	movl	%ecx, -36(%ebp)
	movl	24(%esi), %eax
	movl	-116(%ebp), %esi
	movl	%edx, -32(%ebp)
	leal	-56(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	8(%esi), %ebx
	movl	-124(%ebp), %esi
	movl	%ebx, -56(%ebp)
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	movl	12(%esi), %ebx
	movl	%ecx, -52(%ebp)
	leal	-108(%ebp), %ecx
	movl	%eax, -48(%ebp)
	leal	-40(%ebp), %eax
	movl	%ebx, -44(%ebp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_
	movl	12(%edi), %edx
	movl	-116(%ebp), %esi
	movl	-124(%ebp), %ecx
	movl	%edx, -28(%ebp)
	movl	24(%esi), %ebx
	movl	4(%edi), %esi
	movl	%edx, -44(%ebp)
	movl	12(%ecx), %eax
	movl	%ebx, -56(%ebp)
	movl	12(%edi), %edx
	movl	%esi, -52(%ebp)
	movl	-112(%ebp), %ecx
	movl	%ebx, -140(%ebp)
	subl	%eax, %edx
	movl	8(%edi), %ebx
	movl	48(%ecx), %eax
	sarl	$2, %edx
	movl	4(%edi), %ecx
	movl	%ebx, -48(%ebp)
	movl	-124(%ebp), %edi
	sall	$7, %edx
	movl	%esi, -36(%ebp)
	subl	%ecx, %eax
	movl	-112(%ebp), %ecx
	sarl	$2, %eax
	leal	-128(%edx,%eax), %edx
	movl	8(%edi), %eax
	movl	%ebx, -32(%ebp)
	movl	32(%ecx), %edi
	leal	-108(%ebp), %ebx
	leal	-40(%ebp), %esi
	subl	%edi, %eax
	sarl	$2, %eax
	movl	-140(%ebp), %edi
	addl	%eax, %edx
	subl	%edx, -120(%ebp)
	movl	%edi, -40(%ebp)
	movl	%ebx, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-116(%ebp), %ecx
	movl	%ecx, (%esp)
	call	__ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1652:
	movl	%ecx, %ebx
	shrl	$7, %ebx
	orl	$-33554432, %ebx
	jmp	L1653
	.section	.text$_ZN16avg_meassurementD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZN16avg_meassurementD1Ev
	.def	__ZN16avg_meassurementD1Ev;	.scl	2;	.type	32;	.endef
__ZN16avg_meassurementD1Ev:
L1685:
L1694:
L1698:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	%ebx, -12(%ebp)
	movl	8(%ebp), %ebx
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	movl	%ebx, -96(%ebp)
	movl	-96(%ebp), %esi
	movl	$__ZTV16avg_meassurement+8, (%ebx)
	addl	$24, %ebx
	movl	-96(%ebp), %eax
	movl	%ebx, (%esp)
	movl	-96(%ebp), %ecx
	movl	32(%esi), %edi
	addl	$32, %eax
	movl	4(%eax), %ebx
	movl	8(%eax), %esi
	movl	%edi, -108(%ebp)
	movl	%edi, -40(%ebp)
	movl	12(%eax), %edi
	movl	%ebx, -36(%ebp)
	movl	-96(%ebp), %eax
	movl	%esi, -32(%ebp)
	movl	48(%ecx), %edx
	movl	%edi, -28(%ebp)
	addl	$48, %eax
	movl	4(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%edx, -56(%ebp)
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	movl	%ecx, -52(%ebp)
	movl	%edx, -48(%ebp)
	movl	%eax, -76(%ebp)
	movl	%eax, -44(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	%ebx, -68(%ebp)
	movl	-112(%ebp), %ebx
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	%ebx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	%edx, -80(%ebp)
	call	__ZNSt11_Deque_baseIiSaIiEED2Ev
	movl	-96(%ebp), %edx
	leal	-92(%ebp), %eax
	movl	$__ZTV12meassurement+8, (%edx)
	movl	%edx, -92(%ebp)
	movl	%eax, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
L1683:
	.section	.text$_ZN16avg_meassurementD0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
.globl __ZN16avg_meassurementD0Ev
	.def	__ZN16avg_meassurementD0Ev;	.scl	2;	.type	32;	.endef
__ZN16avg_meassurementD0Ev:
L1708:
L1717:
L1721:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	%ebx, -12(%ebp)
	movl	8(%ebp), %ebx
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	movl	%ebx, -96(%ebp)
	movl	-96(%ebp), %esi
	movl	$__ZTV16avg_meassurement+8, (%ebx)
	addl	$24, %ebx
	movl	-96(%ebp), %eax
	movl	%ebx, (%esp)
	movl	-96(%ebp), %ecx
	movl	32(%esi), %edi
	addl	$32, %eax
	movl	4(%eax), %ebx
	movl	8(%eax), %esi
	movl	%edi, -108(%ebp)
	movl	%edi, -40(%ebp)
	movl	12(%eax), %edi
	movl	%ebx, -36(%ebp)
	movl	-96(%ebp), %eax
	movl	%esi, -32(%ebp)
	movl	48(%ecx), %edx
	movl	%edi, -28(%ebp)
	addl	$48, %eax
	movl	4(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%edx, -56(%ebp)
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	movl	%ecx, -52(%ebp)
	movl	%edx, -48(%ebp)
	movl	%eax, -76(%ebp)
	movl	%eax, -44(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	%ebx, -68(%ebp)
	movl	-112(%ebp), %ebx
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	%ebx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	%edx, -80(%ebp)
	call	__ZNSt11_Deque_baseIiSaIiEED2Ev
	movl	-96(%ebp), %ecx
	leal	-92(%ebp), %edx
	movl	$__ZTV12meassurement+8, (%ecx)
	movl	%ecx, -92(%ebp)
	movl	%edx, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%ebp, %esp
	popl	%ebp
	ret
L1706:
	.text
	.align 2
	.p2align 4,,15
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
	pushl	%ebp
	movl	%esp, %ebp
	leal	-156(%ebp), %ecx
	pushl	%edi
	movl	$___gxx_personality_sj0, %edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	leal	-24(%ebp), %ebx
	movl	%eax, -176(%ebp)
	movl	%edx, -180(%ebp)
	movl	%edi, -132(%ebp)
	movl	$LLSDA1818, -128(%ebp)
	movl	%ebx, -124(%ebp)
	movl	$L1926, -120(%ebp)
	movl	%esp, -116(%ebp)
	movl	%ecx, (%esp)
	call	__Unwind_SjLj_Register
	cmpl	$65535, -180(%ebp)
	sete	%dl
	cmpl	$1, -176(%ebp)
	sete	%al
	testb	%al, %dl
	jne	L1927
	cmpl	$65535, -180(%ebp)
	sete	%dl
	cmpl	$1, -176(%ebp)
	sete	%al
	testb	%al, %dl
	jne	L1928
L1755:
	cmpl	$65535, -180(%ebp)
	sete	%dl
	cmpl	$1, -176(%ebp)
	sete	%cl
	testb	%cl, %dl
	jne	L1929
L1780:
	cmpl	$65535, -180(%ebp)
	movl	-176(%ebp), %esi
	sete	%bl
	testl	%esi, %esi
	sete	%al
	andb	%al, %bl
	movb	%bl, -185(%ebp)
	jne	L1930
L1729:
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L1927:
L1736:
L1740:
L1744:
L1747:
L1749:
	movb	$1, _m+4
	movl	$-1, %eax
	movl	$__ZTV12meassurement+8, %ebx
	movl	%ebx, _m
	movl	$_sensor1, %ecx
	movl	$-1, %esi
	movl	$12, (%esp)
	movl	%eax, -152(%ebp)
	movl	%ecx, _m+8
	call	__Znwj
	movl	$_m, 8(%eax)
	movl	$__ZN12meassurement3allE, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%esi, -152(%ebp)
	call	__ZNSt15_List_node_base4hookEPS_
	cmpl	$65535, -180(%ebp)
	sete	%dl
	cmpl	$1, -176(%ebp)
	sete	%al
	testb	%al, %dl
	je	L1755
	.p2align 4,,15
L1928:
L1761:
L1765:
L1769:
L1772:
L1774:
	movb	$1, _m2+4
	movl	$-1, %ecx
	movl	$__ZTV12meassurement+8, %eax
	movl	%eax, _m2
	movl	$_sensor2, %ebx
	movl	$__ZN12meassurement3allE, %esi
	movl	$12, (%esp)
	movl	$-1, %edi
	movl	%ecx, -152(%ebp)
	movl	%ebx, _m2+8
	call	__Znwj
	movl	$_m2, 8(%eax)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, -152(%ebp)
	call	__ZNSt15_List_node_base4hookEPS_
	cmpl	$65535, -180(%ebp)
	sete	%dl
	cmpl	$1, -176(%ebp)
	sete	%cl
	testb	%cl, %dl
	je	L1780
	.p2align 4,,15
L1929:
L1786:
L1790:
L1794:
L1797:
L1799:
L1805:
L1808:
L1810:
L1813:
L1816:
L1818:
L1823:
	movb	$1, _m3+4
	movl	$__ZTV12meassurement+8, %edx
	movl	$-1, %eax
	movl	%edx, _m3
	movl	$_sensor3, %ecx
	movl	$__ZN12meassurement3allE, %ebx
	movl	$12, (%esp)
	movl	$-1, %esi
	movl	$__ZTV16avg_meassurement+8, %edi
	movl	%eax, -152(%ebp)
	movl	%ecx, _m3+8
	call	__Znwj
	movl	$_m3, 8(%eax)
	movl	%ebx, 4(%esp)
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	movl	%esi, -152(%ebp)
	xorl	%esi, %esi
	call	__ZNSt15_List_node_base4hookEPS_
	movl	%edi, _m3
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%edx, _m3+24
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	%ecx, _m3+28
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%eax, _m3+32
	xorl	%eax, %eax
	movl	%ebx, _m3+36
	xorl	%ebx, %ebx
	movl	%esi, _m3+40
	xorl	%esi, %esi
	movl	%edi, _m3+44
	movl	$1, %edi
	movl	%edx, _m3+48
	movl	%ecx, _m3+52
	movl	%eax, _m3+56
	movl	%ebx, _m3+60
	movl	%esi, 4(%esp)
	movl	$_m3+24, (%esp)
	movl	%edi, -152(%ebp)
	call	__ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj
	cmpl	$65535, -180(%ebp)
	movl	-176(%ebp), %esi
	sete	%bl
	testl	%esi, %esi
	sete	%al
	andb	%al, %bl
	movb	%bl, -185(%ebp)
	je	L1729
	.p2align 4,,15
L1930:
L1894:
L1903:
L1907:
	movl	_m3+44, %esi
	movl	$__ZTV16avg_meassurement+8, %ebx
	movl	_m3+32, %ecx
	movl	%ebx, _m3
	movl	_m3+36, %edx
	movl	_m3+40, %edi
	movl	%esi, -44(%ebp)
	movl	_m3+60, %eax
	movl	%ecx, -192(%ebp)
	movl	%ecx, -56(%ebp)
	movl	_m3+48, %ebx
	movl	%eax, -92(%ebp)
	movl	%eax, -60(%ebp)
	movl	-192(%ebp), %eax
	movl	%edx, -196(%ebp)
	movl	%edx, -52(%ebp)
	movl	_m3+52, %ecx
	movl	%edi, -48(%ebp)
	movl	_m3+56, %edx
	movl	%eax, -88(%ebp)
	movl	-196(%ebp), %eax
	movl	%ebx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	%eax, -84(%ebp)
	movl	%edi, -80(%ebp)
	movl	$_m3, %edi
	movl	%ebx, -104(%ebp)
	movl	$__ZTV12meassurement+8, %ebx
	movl	%ecx, -100(%ebp)
	movl	%edx, -96(%ebp)
	movl	%esi, -76(%ebp)
	movl	$_m3+24, (%esp)
	call	__ZNSt11_Deque_baseIiSaIiEED2Ev
	movl	%edi, -164(%ebp)
	leal	-164(%ebp), %edx
	movl	$-1, %ecx
	movl	%ebx, _m3
	movl	%edx, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	movl	%ecx, -152(%ebp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	cmpb	$0, -185(%ebp)
	je	L1729
	movl	$__ZTV12meassurement+8, %edx
	movl	$_m2, %eax
	leal	-168(%ebp), %edi
	movl	%eax, -168(%ebp)
	movl	$-1, %esi
	movl	%edx, _m2
	movl	%edi, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	movl	%esi, -152(%ebp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	cmpb	$0, -185(%ebp)
	je	L1729
	leal	-172(%ebp), %ebx
	movl	$-1, %ecx
	movl	$__ZTV12meassurement+8, %edi
	movl	%edi, _m
	movl	$_m, %esi
	movl	%esi, -172(%ebp)
	movl	%ebx, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	movl	%ecx, -152(%ebp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__Unwind_SjLj_Unregister
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L1870:
L1874:
L1878:
L1881:
	.p2align 4,,7
L1926:
L1826:
L1829:
L1832:
L1836:
L1840:
L1844:
L1847:
L1850:
L1853:
L1856:
L1860:
L1864:
L1867:
L1883:
L1889:
	addl	$24, %ebp
	movl	-148(%ebp), %edi
	movl	$__ZTV12meassurement+8, %edx
	movl	$_m3, %ecx
	movl	%ecx, -160(%ebp)
	leal	-160(%ebp), %eax
	xorl	%ebx, %ebx
	movl	%edx, _m3
	movl	%edi, -184(%ebp)
	movl	$-1, %edi
	movl	%eax, 4(%esp)
	movl	$__ZN12meassurement3allE, (%esp)
	movl	%ebx, -152(%ebp)
	call	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_
	movl	-184(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edi, -152(%ebp)
	call	__Unwind_SjLj_Resume
	.section	.gcc_except_table,"dr"
LLSDA1818:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE1818-LLSDACSB1818
LLSDACSB1818:
	.uleb128 0x0
	.uleb128 0x0
LLSDACSE1818:
	.text
	.align 2
	.p2align 4,,15
	.def	__GLOBAL__I_sensor1;	.scl	3;	.type	32;	.endef
__GLOBAL__I_sensor1:
	pushl	%ebp
	movl	$65535, %edx
	movl	%esp, %ebp
	popl	%ebp
	movl	$1, %eax
	jmp	__Z41__static_initialization_and_destruction_0ii
	.align 2
	.p2align 4,,15
	.def	__GLOBAL__D_sensor1;	.scl	3;	.type	32;	.endef
__GLOBAL__D_sensor1:
	pushl	%ebp
	movl	$65535, %edx
	movl	%esp, %ebp
	popl	%ebp
	xorl	%eax, %eax
	jmp	__Z41__static_initialization_and_destruction_0ii
	.def	__ZN16avg_meassurementD0Ev;	.scl	3;	.type	32;	.endef
	.def	__ZN16avg_meassurementD1Ev;	.scl	3;	.type	32;	.endef
	.def	__ZSt18uninitialized_copyISt15_Deque_iteratorIiRiPiES3_ET0_T_S5_S4_;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEj;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEj;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEjRKi;	.scl	3;	.type	32;	.endef
	.def	__Znwj;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE5clearEv;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEjRKi;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE17_M_reallocate_mapEjb;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE5eraseESt15_Deque_iteratorIiRiPiES5_;	.scl	3;	.type	32;	.endef
	.def	__ZNKSt15_Deque_iteratorIiRiPiEplEi;	.scl	3;	.type	32;	.endef
	.def	__ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_;	.scl	3;	.type	32;	.endef
	.def	__ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_;	.scl	3;	.type	32;	.endef
	.def	___cxa_rethrow;	.scl	3;	.type	32;	.endef
	.def	__ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_;	.scl	3;	.type	32;	.endef
	.def	__ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEj;	.scl	3;	.type	32;	.endef
	.def	__ZNSt15_List_node_base6unhookEv;	.scl	3;	.type	32;	.endef
	.def	__ZNSt15_List_node_base4hookEPS_;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi;	.scl	3;	.type	32;	.endef
	.def	__ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv;	.scl	3;	.type	32;	.endef
	.def	__ZNSt11_Deque_baseIiSaIiEED2Ev;	.scl	3;	.type	32;	.endef
	.def	__ZSt10accumulateISt15_Deque_iteratorIiRiPiEiET0_T_S5_S4_;	.scl	3;	.type	32;	.endef
	.def	___cxa_end_catch;	.scl	3;	.type	32;	.endef
	.def	___cxa_begin_catch;	.scl	3;	.type	32;	.endef
	.def	__ZdlPv;	.scl	3;	.type	32;	.endef
	.def	__ZNSt4listIP12meassurementSaIS1_EE6removeERKS1_;	.scl	3;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
