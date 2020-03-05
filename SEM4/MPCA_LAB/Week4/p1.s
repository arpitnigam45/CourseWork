@ Program to add 64 bit numbers
ldr r0,=a
ldr r1,[r0]
add r0,r0,#4
ldr r2,[r0]
add r0,r0,#4
ldr r3,[r0]
add r0,r0,#4
ldr r4,[r0]
add r5,r3,r1
add r6,r2,r4
swi 0x11
.data
a: .word 0,1,2,3
