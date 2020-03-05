; Linear search of array of 10 numbers

ldr r0, =a  ;address of a
mov r1, #10 ;counter
mov r2, #19  ;contains key

loop:
    ldrb r3, [r0]    ;putting data in r3
    cmp r3, r2       ;compare and check if key is found
    beq found        ;if they are equal, goto found
    
    add r0, r0, #1   ;go to next element in array
    sub r1, r1, #1   ;reduce 1 from counter
    cmp r1, #0       ;if counter is not zero, continue with loop
    bne loop

notfound:
    mov r6, #-1
    b end

found:
    mov r7, r0
    b end

end:
    swi 0x11

.data
a: .byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
