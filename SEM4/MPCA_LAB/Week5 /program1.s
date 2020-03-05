@ To find length of the string Hello World
ldr r0,=a
loop:
ldrb r1,[r0]
cmp r1,#0
beq stop
add r2,r2,#1
add r0,r0,#1
b loop
stop:
swi 0x11
.data
a: .asciz "Hello World"
