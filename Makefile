# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tebetta <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/13 17:10:45 by tebetta           #+#    #+#              #
#    Updated: 2019/10/24 20:07:06 by tebetta          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a

FLAGS=-Wall -Wextra -Werror

SRC=ft_atoi.c \
	ft_bzero.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_memccpy.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_strchr.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strcpy.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putnbr_fd.c \
	ft_putendl_fd.c \
	ft_strcat.c \
	ft_strrev.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_lstnew.c \

BONUS=	ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c

OBJ= $(SRC:.c=.o)

OBJ_BON= $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $^
	ranlib $(NAME)

# .o: .c
# 	gcc $(FLAGS) -I./ -o $@ -c $<

bonus: $(OBJ) $(OBJ_BON)
	ar rc $(NAME) $^
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

clean_b:
	rm -f $(OBJ_BON)

fclean: clean clean_b
	rm -f $(NAME)
	
re: fclean all

.PHONY: all bonus clean clean_b fclean re