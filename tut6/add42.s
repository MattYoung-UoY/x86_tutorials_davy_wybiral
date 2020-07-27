.global add42

add42:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	add $42, %eax
	mov %ebp, %esp
	pop %ebp
	ret
