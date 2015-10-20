NAME = libfts.a

LIBFT_ASM = \
ft_cat.s\
ft_bzero.s\
ft_isalnum.s\
ft_isalpha.s\
ft_isascii.s\
ft_isdigit.s\
ft_islower.s\
ft_isprint.s\
ft_isupper.s\
ft_memalloc.s\
ft_memcpy.s\
ft_memset.s\
ft_puts.s\
ft_puts_fd.s\
ft_strcat.s\
ft_strchr.s\
ft_strcpy.s\
ft_strdup.s\
ft_strlen.s\
ft_strncpy.s\
ft_strndup.s\
ft_strnew.s\
ft_strnlen.s\
ft_tolower.s\
ft_toupper.s


OBJ = $(LIBFT_ASM:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
%.o: %.s
	nasm -g -f macho64 $<

clean:
	rm -f $(OBJ)

test: all
	gcc libfts.a main.c -o test
	./test

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all NAME clean fclean re
