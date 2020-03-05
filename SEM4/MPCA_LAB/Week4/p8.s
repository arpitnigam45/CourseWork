@ Add a series of 32 bit number using table address
ldr r0,=a
ldr r1,=0x06
ldr r2,=0x00
loop:
ldr r3,[r0]
add r2,r3,r2
add r0,r0,#4
sub r1,r1,#1
cmp r1,#0
bne loop
swi 0x11
.data
a:.word 10,20,30,40,50,60