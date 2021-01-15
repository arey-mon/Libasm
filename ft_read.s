; ssize_t       ft_read(int fd, void *buf, size_t count);
;			RDI	    RSI

global ft_read
extern __errno_location

section .text

ft_read :
mov rax, 0
syscall
cmp RAX, 0
jl error
ret

error : 
call __errno_location
mov RAX, -1
ret
