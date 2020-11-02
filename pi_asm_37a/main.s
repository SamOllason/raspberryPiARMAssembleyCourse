
        .global main //same as using export directive

main:

            LDR     R0, =A
            MOV     R1, #5 // put the number 5 into R1
            STR     R1, [R0] // store the value in R1 in the address pointed at by R0

            LDR     R0, =D // preserved the value to memory above ('STR') so can reuse R0
            MOV     R1,  #4
            STR     R1, [R0]

          .data
A:        .space 4 // allocate some space in memory
D:        .space 4
C:        .space
          .align
          .end



