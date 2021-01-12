;	int             ft_strcmp(const char *s1, const char *s2);

global ft_strcmp
section .text

ft_strcmp :
push RBX
mov RBX, 0
cmp RDI, 0 ;
je error 
cmp RSI, 0 ;
je error 

cmp :
mov RCX, 0
mov RDX, 0
mov cl, [RDI + RBX] ;	
mov dl, [RSI + RBX] ;
cmp cl, 0
je exit
cmp dl, 0
je exit ;
cmp cl, dl
jne exit ;
inc RBX
jmp cmp

error :
mov RAX, 0 ;
pop RBX
ret

exit :
sub RCX, RDX
mov RAX, RCX 
pop rbx
ret
