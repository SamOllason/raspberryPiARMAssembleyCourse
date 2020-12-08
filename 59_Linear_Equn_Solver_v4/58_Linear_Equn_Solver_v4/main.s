// same linear equation, solving in a more compact way
// by using (and reusing!) fewer registers
// P = Q + R + S
// let P=2, R=4, S=5

        .global main

main:
        ADRL        R0,P
        LDR         R1,[R0,#4]
        LDR         R2,[R0,#8]

        ADD         R2,R1,R2
        LDR         R1,[R0,#12]
        ADD         R2,R2,R1 // this is where we are being more compact than v3

        MOV         R7,#1
        SVC         0



// Allocate and initialise some memory, and label this memory P.
// We can use offsets to access the particular pieces of memory.

P:      .space      4
        .word       2
        .word       4
        .word       5
        .align
        .end
