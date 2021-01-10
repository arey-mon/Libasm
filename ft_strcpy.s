; ----------------------------------------------------------------------------------------
;       char  *ft_strcpy(char *dest, const char *src);
; ----------------------------------------------------------------------------------------

global ft_strcpy ;		declaring function
section .text

ft_strcpy : 
push rbx ;			setting registrer to add values to
mov rbx, 0 ;			
cmp rsi, 0 ;			check for src '\0'
je  error

copy :
cmp BYTE [RSI + RBX], 0 ;	is RSI[RBX] == '\0'
mov cl, [RSI + RBX];		copy 8bits of RSI[RBX] to cl
mov [RDI + RBX], cl ;		copy cl in dest RDI[RBX]
je exit	; 			exit if string = 0
inc RBX ;			increase RAX
jmp copy ;			looping function

error :
mov RAX, 0 ;
pop RBX ;			prevent SEGV if NULL
ret

exit : 
mov RAX, 0 ;			RAX stocks data
mov RAX, RDI ;			mov RDI at RAX[0]
pop RBX ;
ret
