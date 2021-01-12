; size_t	ft_strlen(const char *s);

global ft_strlen
section .text

ft_strlen :
mov RAX, 0
je exit ;	case of  NULL
; we could also use cmp RDI, 0 ; je exit

count : 
cmp BYTE [RDI + RAX], 0
je exit
inc RAX ;
jmp count

exit : 
ret


