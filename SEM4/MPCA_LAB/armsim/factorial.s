mov r0,#4
mov r1,#1

factorial:
	mul r1,r0,r1
	sub r0,r0,#1
	cmp r0,#1
	bne factorial
	beq end
end:
