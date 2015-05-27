NAME = a.out
LIBFT_ASM = ft_isalpha.s ft_isdigit.s

OBJ = $(LIBFT_ASM:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	# ar rc $(NAME) $(OBJ)
	# ranlib $(NAME)
	ld $(OBJ) -macosx_version_min 10.10 -lSystem

%.o: %.s
	nasm -f macho $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all NAME clean fclean re
