// Solving linear equation for P:

// P = Q + R + S
// let Q=2, R=4, S=5


// this time we will put the data in memory as constants before program runs
// use .WORD directive


        .data

P:      .space      4 // reserve 4 bytes in memory and created label P to reference that space
Q:      .word       2 // here we have created a 32-bit variable called Q in memory and set it to 2
R:      .word       4
S:      .word       5


        .global     main

main:
        LDR     R1,Q
        LDR     R2,R
        LDR     R3,S

        ADD     R0,R1,R2
        ADD     R0,R0,R3

        LDR     R4, =P // load the address of space P into R4
        STR     R0, [R4] // store the value in R0 at the address stored in P

        MOV     R7,#1
        SVC     0
