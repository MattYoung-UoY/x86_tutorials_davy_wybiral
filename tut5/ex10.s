.global main
.extern printf

.section .data
msg:	.ascii "Testing %i..."
	.byte 0x0a, 0x00

main:
	push %ebp
	mov %esp, %ebp
	push $123
	push $msg
	call printf
	mov $0, %eax
	mov %ebp, %esp
	pop %ebp
	ret
