;	ssize_t ft_write(int fd, const void *buf, size_t count)
;			 RDI		RSI		RDX

global ft_write
extern __errno_location
section .text

ft_write :
mov RAX, 1
syscall
cmp RAX, 0
jl error	; if RAX < 0
ret

error :
neg RAX		; errno values are positive
mov R8, RAX
call __errno_location
mov qword [RAX], R8
mov RAX, -1
ret
