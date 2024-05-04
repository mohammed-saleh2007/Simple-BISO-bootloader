mov ah, 0x0e
mov al, 66
int 0x10

alpha:
	inc al
	inc al
	cmp al, 'Z' + 2
	je exit
	int 0x10
	jmp alpha 	

exit:
	jmp $
times 510-($-$$) db 00
db 0x55, 0xaa
