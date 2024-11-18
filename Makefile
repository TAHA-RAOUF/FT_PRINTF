SOURCES = ft_putchar.c \
ft_putnbr.c \
ft_putstr.c \
ft_putnbr_u.c\
ft_printf.c\
ft_hexadecimal.c ft_pourcentage.c

NAME =  libftprintf.a


OBJECTS = ${SOURCES:.c=.o}


all : $(NAME)

$(NAME) : $(OBJECTS)
	ar rcs $(NAME)  $(OBJECTS)

%.o: %.c
	cc -Wall -Wextra -Werror -c $< -o $@

clean :
	rm -rf $(OBJECTS)
fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re bonus

