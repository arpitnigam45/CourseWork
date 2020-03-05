; Fibbonaci series

ldr r0, =a  ;address of a

mov r1, #3 ;number of fibbonacci numbers to
mov r2, #0  ;number 1
mov r3, #1  ;number 2

add r0, r0, #2

loop:
    add r2, r2, r3 ; first number generated
    strb r2, [r0]  ; store byte in memeory
    add r0, r0, #1 ; go to next byte address
    subs r1, r1, #1; decrement number of fibbonaci to generate
    beq end
    
    
    add r3, r2, r3 ; second number generated
    strb r3, [r0]  ; store byte in memeory
    add r0, r0, #1 ; go to next byte address
    subs r1, r1, #1; decrement number of fibbonaci to generate
    bne loop

end:
    swi 0x11

.data
a: .byte 0, 1
