.global _start

.section .text
_start:
	mov $1, %ebx
	mov $6, %ecx
label:
	add %ebx, %ebx
	dec %ecx
	cmp $0, %ecx
	jg label
	mov $1, %eax
	int $0x80
