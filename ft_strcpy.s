;	char	ft_*strcpy(char *dest, const char *src);
;				RDI		RSI	
global ft_strcpy

section .text

ft_strcpy :
push RBX
mov RBX, 0 ; will be needed for dest['\0]
cmp RSI, 0 ; if src has no \0, return err
je error

cpy :
cmp BYTE [RSI + RBX], 0
mov dl, [RSI + RBX] ; cp RSI[RBX] to dl (8 byt counter register)
mov [RDI + RBX], dl ; cp dl to RDI[RBX]
je exit
inc RBX
jmp cpy

error :
mov RAX, 0
pop RBX ;	prevents SEGV if NULL
mov RAX, RBX 
ret

exit :
mov RAX, 0 ;	search for RAX '\0'
pop RBX
mov RAX, RDI ; once copy is done, mov dest into RAX  
ret
