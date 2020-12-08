
// Solving a linear equation using indirect adressing
// setup a pointer to variables and access them through the pointer
// using offsets to navigate to the initialised variables and the allocated memory

// P = Q + R + S
// let P=2, R=4, S=5


            .global main

main:
            ADRL    R4,Vals // R4 points to Vals area
            LDR     R2, [R4, #4]




            .equ    P,0 // giving symvolic name to 0
            .equ    Q,4
            .equ    R,8
            .equ    S,12



Vals:       .space      4 // 4 bytes allocated for 32-bit allocations (not: not initialised - set to zero)
            .word       2 // initialise a 32-bit value in memory initialised to 2 (in the space above)
            .word       4
            .word       5
            .align         // alwasys good to do this wehn working with memory
            .end
