@ To perform convolution using MUL instruction 
@(addition of multiplication of respective numbers of location A and location B)
ldr r0,=0x00
ldr r1,=a
ldr r2,=b
mov r3,#6
loop:
ldrb r4,[r1]
ldrb r5,[r2]
mul r4,r5,r4
add r0,r0,r4
sub r3,r3,#1
add r1,r1,#1
add r2,r2,#1
cmp r3,#0
bne loop
swi 0x11
.data
a: .byte 1,2,3,4,5,6
b: .byte 1,2,3,4,5,6