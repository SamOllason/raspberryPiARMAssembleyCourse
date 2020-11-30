
    .global main

main:
    MOV R0, #1 // this is '0x1' in hex format!
    MOV R1, #2

    ADD R2, R0, R1 // R2 = R0 + R1

    MOV R7, #1 // terminate the program
    SWI 0 // hand control back off to the system
