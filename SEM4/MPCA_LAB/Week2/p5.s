;/* Find GCD of 2 numbers */

ldr r0, =60
ldr r1, =24

gcd:
        cmp      r0, r1
        subgt    r0, r0, r1
        sublt    r1, r1, r0
        bne      gcd

swi 0x11
