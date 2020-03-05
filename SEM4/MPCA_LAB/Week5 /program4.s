@ To sort an array using bubble sort
ldr r0,=a
ldr r1,=0x4
ldr r4,=0x05

loop:
ldrb r2,[r0]
add r0,r0,#1
ldrb r3,[r0]
sub r1,r1,#1
cmp r2,r3
bgt greater
cmp r1,#0
beq stop
b loop

greater:
ldrb r3,[r0]
ldrb r2,[r0,#-1]
strb r3,[r0,#-1]
strb r2,[r0]
cmp r1,#0
beq stop
b loop

stop:
sub r4,r4,#1
cmp r4,#0
beq end
ldr r0,=a
ldr r1,=0x04
b loop

end:
swi 0x11


.data
a:.byte 10,30,50,20,40