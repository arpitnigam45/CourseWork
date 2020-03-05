@ Program to find factorial using subroutine
mov r0,#6
mov r1,#1
loop:
mov lr,pc
b go
cmp r0,#0
swieq 0x11
b loop
go:
mul r1,r0,r1
sub r0,r0,#1
mov r15,r14