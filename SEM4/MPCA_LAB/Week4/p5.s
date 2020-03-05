@ Program to implement mul(add(a,b),c)
ldr r0,=0x02
ldr r1,=0x03
ldr r2,=0x08
add r1,r1,r0
mul r2,r1,r2
swi 0x11