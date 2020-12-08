// Solving a linear equation using indirect adressing.
// Setup a pointer to variables and access them through the pointer.
// Using offsets to navigate to the initialised variables and the allocated memory

// P = Q + R + S
// let P=2, R=4, S=5

            .global main

main:
            ADRL    R4,Vals // R4 points to Vals area
            LDR     R1,[R4,#4] // Load the value at address of R4 at offset of 4, which is the first word we declared below
            LDR     R2,[R4,#R] // load R=4 into R2
            LDR     R3,[R4,#S] // load S=5 into R3

            ADD     R0,R1,R2
            ADD     R0,R0,R3

            STR     R0,[R4,#P]

            MOV     R7,#1
            SVC     0


            // here we are using the variables as memory offsets
            .equ    P,0 // giving symvolic name to 0
            .equ    Q,4
            .equ    R,8
            .equ    S,12


// Vals refers t some memory we have allocated and initialised to variables
Vals:       .space      4 // 4 bytes allocated for 32-bit allocations (not: not initialised - set to zero)
            .word       2 // initialise a 32-bit value in memory initialised to 2 (in the space above)
            .word       4
            .word       5
            .align         // alwasys good to do this wehn working with memory
            .end
