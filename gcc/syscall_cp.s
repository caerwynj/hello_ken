.syntax unified
.global __cp_begin
.hidden __cp_begin
.global __cp_end
.hidden __cp_end
.global __syscall_cp_asm
.hidden __syscall_cp_asm
.type __syscall_cp_asm,%function
__syscall_cp_asm:
	mov ip,sp
	stmfd sp!,{r4,r5,r6,r7}
__cp_begin:
	mov r7,r0
	mov r0,r1
	mov r1,r2	
	mov r2,r3
	svc 0
__cp_end:
	ldmfd sp!,{r4,r5,r6,r7}
	bx lr
