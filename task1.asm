; Takes 3 characters and prints them in reverse

masm		;режим на работа за TASM: masm, за MASM няма нужда
model	small	;модел на паметта
.data		;сегмент за данни
.stack	256	;сегмент на стека
.code	;сегмент за кода
main:			;начало с входна точка main
	
	
	mov ah,01h	;prepare read char
	
	int 21h		;execute read character
	push ax		;push to stack
	int 21h		;execute read character
	push ax
	int 21h		;execute read character
	push ax

	mov ah,02h	;prepare print char

	pop dx		;pop ToS to dl
	int 21h
	pop dx
	int 21h
	pop dx
	int 21h

	mov	ax,4c00h	; exit

	int 21h

end	main		;край на програмата с входна точка main

