TEXT __syscall_cp_asm(SB), $-4
	MOVW R0,R7
	MOVW R1,R0
	MOVW R2,R1
	MOVW R3,R2
	SWI 0
	RET
