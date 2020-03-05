;/* Based on values of number in R0, - Store 1 in R1 if R0==0,- Store 2 in  R1 if R0 is +ve,- Store 3 in  R1 if R0 is -ve */

mov r0, #0

cmp r0, #0

beq store1
blt store2
bgt store3

b end

store1:
    mov r1, #1
    b end
    
store2:
    mov r1, #2
    b end

store3:
    mov r1, #3
    b end

end:
    swi 0x11
