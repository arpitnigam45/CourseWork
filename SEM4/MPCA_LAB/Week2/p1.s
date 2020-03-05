;/* To find factorial of number stored in R0. Store value in R1 */

mov r0, #4
mov r1, #1

loop:
    
    mul r1, r0, r1
    sub r0, r0, #1
    cmp r0, #1
    bne loop

swi 0x11
