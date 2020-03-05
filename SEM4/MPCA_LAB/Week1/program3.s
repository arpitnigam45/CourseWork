@ Program to add 5 registers
ldr r0,=0x05
ldr r1,=0x10
ldr r2,=0x13
ldr r3,=0x25
ldr r4,=0x15
adc r5,r0,r1
adc r6,r5,r2
adc r7,r6,r3
adc r8,r7,r4
swi 0x11