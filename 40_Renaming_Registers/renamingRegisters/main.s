// Renmaing registers R1, R2, R3
// in the same way that we can rename variables in a C program

VAL1        .req        R1 // giving R1 a symbolic name
VAL2        .req        R2
SUM         .req        R3


            .global main // use gloabl to export the label 'main' which contains the assembly routine to make it available in other files


main:
            MOV         VAL1, #0x25 // must use a has as we are using a literal here
            MOV         VAL2, #0x34 //

            ADD         SUM, VAL1, VAL2 // add the contents of registers and store them in SUM

            MOV         R7, #1
            SVC         0

            .end
