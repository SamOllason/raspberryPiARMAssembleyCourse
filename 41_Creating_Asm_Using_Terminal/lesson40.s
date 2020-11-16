global _start // export label that contains the asm routine

_start: // must use a colon here when using GCC

	MOV R0, 75
	MOV R7, 1
	SWI 0 // 'software interrupt' 
