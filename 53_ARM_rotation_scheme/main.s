
		.global _start

_start:
	MOV R0, #1
 	
	// barrel shifting example:	
	// we want to move the immediate value (1) that is in R0	
	// into R1, but before it is moved in we want to shift the value
	// by 1 to the right (which will effectively multiple it by 2, since
	// the processor on a Rasperry Pi is little-endian)
	MOV R1, R0, LSL #1

	MOV R7, #1 // terminate the program
	SWI 0 // hand control back to system

	 

