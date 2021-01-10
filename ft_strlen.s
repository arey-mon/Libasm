; ----------------------------------------------------------------------------------------
;       size_t  ft_strlen(const char *s);
; ----------------------------------------------------------------------------------------

global ft_strlen ;		declaring function
section .text

ft_strlen : 
mov rax, 0 ;
;cmp rdi, 0 ;
je exit ;

count :
cmp BYTE [RDI + RAX], 0 ;	cmp actual char and '\0'
je exit ;
inc rax ; 			
jmp count

exit : 
ret
