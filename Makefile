NAME = libasm.a

ASM = nasm
AFLAGS = -felf64

SRC =	ft_strlen.s \
	ft_strcpy.s \
	ft_strcmp.s \
	ft_strdup.s \
	ft_read.s \
	ft_write.s

OBJ =	$(SRC:.s=.o)

%.o: %.s
	$(ASM) $(AFLAGS) $< -o $@

all: $(NAME)

$(NAME): $(OBJ) $(LIB)
	ar rcs $(NAME) $(OBJ)
clean:
	rm -f $(OBJ)
	
fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
