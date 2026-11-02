bits 16
org 0x7C00

start:
	mov ax, cs
	mov ds, ax

	; --- ;
	
	mov si, present_string
	call print_string
	
  	mov si, data_string
  	call print_string

	jmp $

print_string:
	mov ah, 0Eh

print_char:
	lodsb
	
	cmp al, 0
	je done
	
	int 10h
	
	jmp print_char

done:
	ret
	
CR equ 0x0D
LF equ 0x0A
present_string db CR, LF, 'Welcome NIZ00LAX we hope this will be a nice session for you!', CR, LF, CR, LF, 0
data_string db 'KnightOS is an Open Source OS based on Unix Operative System, only created for NIZ00LAX.', 0

times 510-($-$$) db 0 
dw 0xAA55
