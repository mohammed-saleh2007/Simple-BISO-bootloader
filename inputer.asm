[org 0x7c00]

mov ah, 0x0e
mov bx, greating

print:
	mov al, [bx]
	cmp al, 0
	je end
	int 0x10
	inc bx
	jmp print

end:


output:
	mov ah, 0x0e
	int 0x10

input:
	mov ah, 0
	int 0x16
	
	jmp output 

jmp $

greating:
	db "Hey Bro! Hello, World! I want you to type and you will see what you type!", 0


times 510-($-$$) db 0
db 0x55, 0xaa

