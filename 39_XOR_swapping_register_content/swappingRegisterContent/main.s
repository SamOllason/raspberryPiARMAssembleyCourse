
            .global main

main:
            LDR     R0,= 0xBABAFACE
            LDR     R1,= 0xDEADBEEF

            // want to swap contents of registers using 'Exclusive OR' operator

            // 1st argument is destination
            // 2nd arg is first operand
            // 3rd arg is (optional) second operator
            // EOR takes exlusive OR of both
            //
            EOR     R0, R0, R1
            EOR     R1, R0, R1
            EOR     R0, R0, R1

            // terminate the program
            MOV R7,#1
            SVC 0
