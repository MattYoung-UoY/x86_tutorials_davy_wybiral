.global _start
_start:
	mov $1, %eax
	mov $42, %ebx
	sub $29, %ebx
	int $0x80
