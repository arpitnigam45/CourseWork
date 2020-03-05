@ Program to add and subtract two registers
ldr r0,=0x05
ldr r1,=0x10
add r2,r0,r1
sub r3,r1,r0
swi 0x11        @To terminate the program