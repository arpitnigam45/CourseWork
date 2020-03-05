@ To copy a string from one location to another
ldr r0,=a
ldr r1,=b
loop:
ldrb r2,[r0]
cmp r2,#0
beq stop
strb r2,[r1]
add r0,r0,#1
add r1,r1,#1
b loop
stop:
swi 0x11

.data
a:.asciz "HELLO"
b:.asciz ""
