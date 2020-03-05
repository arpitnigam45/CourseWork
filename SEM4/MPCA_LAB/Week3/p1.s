; Add Array of 10 numbers taking data from memory locations stored as byte data

ldr r0, =a  ;address of a
mov r1, #10 ;counter
mov r2, #0  ;contains sum

loop:
    ldrb r3, [r0]    ;putting data in r3
    add r2, r2, r3   ;add the number t0 r2
    add r0, r0, #1   ;go to next element in array
    sub r1, r1, #1   ;reduce 1 from counter
    cmp r1, #0       ;if counter is not zero, continue with loop
    bne loop

swi 0x11

.data
a: .byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
