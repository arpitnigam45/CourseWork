@ Program to add registers if r0=r1; else subtract them
ldr r0,=0x05
ldr r1,=0x05
cmp r0,r1
bne neq
add r2,r0,r1
swi 0x11
neq:
sub r2,r1,r0
swi 0x11