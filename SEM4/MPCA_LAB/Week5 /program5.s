@ To check whether a given number is odd or even parity
ldr r0,=0x1234abcd
ldr r1,=0x20
loop:
movs r0,r0,lsr #1
addcs r2,r2,#1      @ Adds 1 to r2 if the last digit is 1
addcc r3,r3,#1      @ Adds 1 to r3 if the last digit is 0
sub r1,r1,#1
cmp r1,#0
bne loop
ands r4,r3,#1
cmp r4,#0
bne l1
ldr r5,=0x0     @ Even parity
swi 0x11
l1:
ldr r5,=0x1     @ Odd parity
swi 0x11