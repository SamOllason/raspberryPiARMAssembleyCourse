# Programming in assembley language on Raspberry Pi
Notes and homework from [ARM Raspberry Pi Assembly Language From Ground Up](https://www.udemy.com/course/arm-raspberry-pi-assembly-programming-from-ground-uptm/) Udemy course.

# Why am I doing this
We are extremely fortunate at Seccl to have a company Udemy account and we are actively encorugared to spent part of out working week learning new things. I've always found compilers, assembly code and generally 'whats goes on under the surface' really interesting. 

Why ARM in particular? Because the RISC instruction used by ARM processors set is a bit less fiddly than CISC and also so many devices use ARM processors (mobile phones, electric toothbrushes, MRI machines.....) so understanding the how it works is literally understanding how the modern world works!


# My notes

## Using the terminal to create and run a program

* Assembling - takes assembley code (lesson42.s) and convert into a file containing object code (lesson 42.0)
* Linking - combines multiple object files into an executable file (lesson42)

`vim lesson42.s`

(use vim)

`as -o lesson42.o lesson42.s` assemble lesson42.s and store result in file called lesson42.o

`ld lesson42.o -o lesson42` link lesson42.o and store in an executable called lesson42

`./lesson42` execute!


`as -g -o lesson42.o lesson42.s` assemble and allow debugging

`ld lesson42.o -o lesson42` link (as normal)

`gbd lesson42` run the executable with debugger

`l` show original assembly code
`b 8` set breakpoint at line 8
`r` run until breakpoint
`disas` show disassembled view, which maps the assembly code to the corresponding machine code
`x 0x2000` show the value at a particular memory address
`q` quit debugging
