@To find how many times the letter 'l' occurs in Hello World
ldr r0,=a
loop:
ldrb r1,[r0]
cmp r1,#0
beq stop
cmp r1,#108
beq eq
add r0,r0,#1
b loop
stop:
swi 0x11
eq:
add r2,r2,#1
add r0,r0,#1
b loop
.data
a: .asciz "Hello World"
