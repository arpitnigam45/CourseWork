;/* Add 2 numbers loaded from memory, store the result in memory */

ldr r0, =a
ldr r1, =b
ldr r2, =c

ldrb r3, [r0]
ldrb r4, [r1]

add r4, r4, r3

strb r4, [r2]

swi 0x11

.data
a: .byte 10
b: .byte 20
c: .byte 00
