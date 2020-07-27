.global _start

.section .data
msg:	.ascii "yellow\n"
	len = . - msg

.section .text
_start:
	movb $'H', msg
	movb $'!', 5+msg(,1)
	mov $4, %eax
	mov $1, %ebx
	mov $msg, %ecx
	mov $len, %edx
	int $0x80
	mov $1, %eax
	mov $0, %ebx
	int $0x80
