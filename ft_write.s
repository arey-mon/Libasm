;	ssize_t ft_write(int fd, const void *buf, size_t count)
;			 RDI		RSI		RDX

; idea is to mov RSI IN RDI

global ft_write
extern __errno_location
section .text

ft_write :
mov RAX, 1
syscall
jl exit
;error
;jmp exit

;error :
;mov RAX, -1
;ret

exit :
neg RAX
mov R8, RAX
call __errno_location
mov qword [RAX], R8
ret
