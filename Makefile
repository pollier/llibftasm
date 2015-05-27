NAME = libft.a
LIBFT_ASM = ft_isalpha.s ft_isdigit.s ft_isalnum.s main.s

OBJ = $(LIBFT_ASM:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	#ld $(OBJ) -macosx_version_min 10.10 -lSystem

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all NAME clean fclean re
