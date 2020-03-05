@ Program to find whether given number is odd or even
ldr r0,=0x05
ands r1,r0,#1
cmp r1,#0
bne l1
ldr r2,=0x0     @ Number is odd
swi 0x11
l1:
ldr r2,=0x1     @ Number is even
swi 0x11