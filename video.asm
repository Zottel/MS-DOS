; COM file
; compile with: nasm test.asm -fbin -o test.com
bits 16
org  0x100

section .text

	start:
		; Bios set video mode
		; see http://www.ctyme.com/intr/rb-0069.htm
		mov ah, 0
		mov al, 0x54
		int 0x10
		
		; DOS exit program
		; see http://www.ctyme.com/intr/rb-2974.htm
		mov al, 0 ; return 0
		mov ah, 0x4C
		int 21h

section .data 
	; Data

section .bss 
	; Uninitialized data
