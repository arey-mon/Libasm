;	int             ft_strcmp(const char *s1, const char *s2);

global ft_strcmp
section .text

ft_strcmp :
push RBX
;mov RAX, 0
cmp RDI, 0 ;
je error 
cmp RSI, 0 ;
je error 

cmp :
;mov RCX, 0
;mov RDX, 0
;mov al, 0
;je exit
;mov bl, 0
;je exit
mov al, [RDI + RBX] ;	
mov bl, [RSI + RBX] ;
cmp al, bl
je exit ;
cmp bl, 0
je exit
cmp al, 0
je exit ;
inc RBX
jmp cmp

error :
mov RAX, 0 ;
mov al, 0  ;
mov bl, 0  ;
pop RBX
ret

exit :
;sub RCX, RDX
;mov RAX, RCX 
pop rbx
ret
