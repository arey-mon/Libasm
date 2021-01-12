;	char	*ft_strdup(const char *s);

global ft_strdup ;		declaring function
extern ft_strcpy ;
extern ft_strlen ;
extern malloc ;

section .text

ft_strdup :
; if you push R8 you are pushing absolutely NO chracters into the stack 
push RDI ;	 R8 will be on top of the stack
call ft_strlen ; RAX will stock length
add RAX, 1;	 RAX = (len + 1)
mov RDI, RAX	;get len in R8
call malloc	;malloc str returns in RAX
pop R8 ;
;at this point :
;RDI & RAX contains malloc string of correct length
; R8 contains *str (RDI)
; for strcpy we want RDI || RAX to be 1st arg (RDI) and RDI to be 2d arg (RSI)
mov RDI, RAX
mov RSI, R8
call ft_strcpy 
ret
