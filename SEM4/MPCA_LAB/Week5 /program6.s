@ Multiplication using shift method (without using MUL)
ldr r0,=20
ldr r1,=11
ldr r3,=0
ldr r4,=0
loop:
cmp r1,#0
beq nomul
mov r5,r1
movs r5,r5,lsr #1      
mov r2,#0
addcs r2,r2,#1      @gives 1 if the number in r5(ie. r1) is odd
cmp r2,#1
addeq r4,r4,r0,lsl r3   @sum += r0 << r3
lsr r1,#1           @ r1>>1
nomul:
add r3,r3,#1        @ r3 is incremented regularly
cmp r1,#0
swieq 0x11
b loop