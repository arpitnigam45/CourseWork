@ Program for basic logical operations using registers
ldr r0,=0x00
ldr r1,=0x01
and r2,r0,r1
orr r3,r0,r1
eor r4,r0,r1
bic r5,r0,r1
swi 0x11    