#include "syscall.h"

extern int __syscall_cp_asm(int,int,void*,int);

int
main()
{
	__syscall_cp_asm(__NR_write, 1, "hello, world\n", 13);
	return 0;
}
