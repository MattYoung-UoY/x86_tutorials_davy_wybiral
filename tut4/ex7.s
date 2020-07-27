.global _start

_start:
	call func
	mov $1, %eax
	mov $0, %ebx
	int $0x80

func:
	push %ebp
	mov %esp, %ebp
	sub $2, %esp
	movb $'H', (%esp)
	movb $'i', 1(%esp)
	mov $4, %eax
	mov $1, %ebx
	mov %esp, %ecx
	mov $2, %edx
	int $0x80
	mov %ebp, %esp
	pop %ebp
	ret
