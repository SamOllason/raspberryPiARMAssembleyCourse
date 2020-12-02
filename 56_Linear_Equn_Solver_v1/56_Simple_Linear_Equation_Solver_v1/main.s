// The equation that this assembley module will solve below,
// we solve for P
// P = Q + R + S
// let Q=2, R=4, S=5

    .EQU    Q,2 // assign symbolic name to values (so we can refer to them as vars)
    .EQU    R,4
    .EQU    S,5

    .global main

main:

    // simplest way: move the value into registers and compute

    MOV     R1,#Q // must use hash signs as symbols refers to literals
    MOV     R2,#R
    MOV     R3,#S

    ADD     R0, R1, R2
    ADD     R0, R0, R3

    MOV R7,#1 // terminate program
    SVC     0 // hand back control to processor

    .end
