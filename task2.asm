; Reads 1 character and determines if it's a number, a letter or other symbol

masm		;режим на работа за TASM: masm, за MASM няма нужда
model	small	;модел на паметта
.data		;сегмент за данни
.stack	256	;сегмент на стека
.code	;сегмент за кода
main:			;начало с входна точка main
	
	
	mov ah,01h	;prepare read char
	
	int 21h		;execute read character
	
	mov ah,02h	;prepare print char

cmp al,'a'
jge checkSmall

cmp al,'A'
jge checkBig

cmp al,'0'
jge checkNumber

jmp isOther

checkSmall:
cmp al,'z'
jle isLetter
jmp isOther

checkNumber:
cmp al,'9'
jle isNumber
jmp isOther

checkBig:
cmp al,'Z'
jle isLetter
jmp isOther



isOther:    
mov dl,'3'
jmp print

isNumber:   
mov dl,'2'
jmp print

isLetter:   
mov dl,'1'
jmp print

print:

    mov ah,02h
    int 21h

	mov	ax,4c00h	; exit

	int 21h

end	main		;край на програмата с входна точка main

