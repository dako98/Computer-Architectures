; Takes 3 characters and prints them in reverse

masm		;����� �� ������ �� TASM: masm, �� MASM ���� �����
model	small	;����� �� �������
.data		;������� �� �����
.stack	256	;������� �� �����
.code	;������� �� ����
main:			;������ � ������ ����� main
	
	
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

end	main		;���� �� ���������� � ������ ����� main

