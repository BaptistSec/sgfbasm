.data

.code
main PROC
	
	mov dl,15
	mov dh,29
	call Gotoxy
	mov edx, OFFSET ground
	call WriteString

	call DrawPlayer

	gameLoop:
		call ReadChar
		mov inputChar,al
		in al, 0x60
		xor al, 1

		je exitGame
	jmp gameLoop

	call ReadChar

main ENDP

DrawPlayer PROC
	mov dl,xPos
	mov dh,yPos
END main