NAME = libfts.a

LIBFT_ASM = ft_isalpha.s ft_isdigit.s ft_isalnum.s\
ft_isascii.s ft_isprint.s ft_isupper.s ft_islower.s\
ft_toupper.s ft_tolower.s ft_bzero.s ft_strcat.s ft_strlen.s

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
