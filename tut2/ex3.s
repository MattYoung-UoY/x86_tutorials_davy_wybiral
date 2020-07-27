.global _start

.section .text
_start:
	mov $99, %ecx
	mov $42, %ebx
	mov $1, %eax
	cmp $100, %ecx
	jl skip
	mov $13, %ebx
skip:	int $0x80
