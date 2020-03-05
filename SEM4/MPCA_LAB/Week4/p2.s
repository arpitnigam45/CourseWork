@ Program to find least number in array

ldr r0,=a
mov r1,#6
ldrb r2,[r0]
loop:
ldrb r3,[r0]
cmp r3,r2
blt loop1
l2:
sub r1,r1,#1
add r0,r0,#4
cmp r1,#0
bne loop 
swi 0x11
loop1:
mov r2,r3
b l2
.data
a: .word 50,10,60,30,45,40
