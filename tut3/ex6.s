.global _start

_start:
	sub $4, %esp
	movb $'H', (%esp)
	movb $'e', 1(%esp)
	movb $'y', 2(%esp)
	movb $'!', 3(%esp)
	mov $4, %eax
	mov $1, %ebx
	mov %esp, %ecx
	mov $4, %edx
	int $0x80
	mov $1, %eax
	mov $0, %ebx
	int $0x80
