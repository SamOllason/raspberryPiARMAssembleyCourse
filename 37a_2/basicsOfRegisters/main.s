
    .global main //same kind of thing as using 'export' directive

main:

            LDR     R0, =A   // point R0 to the memory location defined by 'A'
            MOV     R1, #5   // put the number '5' into R1
            STR     R1, [R0] // store the value in R1 in the address pointed at by R0

            LDR     R0, =D // we preserved the value to memory above ('STR'), so can safely reuse R0
            MOV     R1,  #4
            STR     R1, [R0]

            LDR     R0, =C
            MOV     R1, #200
            STR     R1, [R0]

            MOV     R7, #1 // tell OS to terminate our assembly program
            SVC     0 // transer program execution back to OS


          .data
A:        .space 4 // allocate some space in memory (4 bytes)
D:        .space 4
C:        .space
          .align
          .end
