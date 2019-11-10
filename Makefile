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

RED =		\033[0;31m
BRED =		\033[1;31m
GREEN =		\033[0;32m
BGREE =		\033[1;32m
YELLOW =	\033[0;33m
BLUE =		\033[0;34m
PINK =		\033[0;35m
CYAN =		\033[0;36m
RESET =		\033[0m
WHITE =		\033[1m

NAME      = libft.a

CC        = gcc

C_FLAGS   = -Wall -Wextra -Werror

HEADER    = libft.h

FILES=ft_atoi.c \
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
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \

OBJ = $(patsubst %.c, %.o, $(notdir $(FILES)))

NB = $(words $(FILES))

I = 0
J = 0

all: $(NAME)

$(NAME): $(OBJ)
	@printf "$(GREEN)[ 100%% ]   Compiling   $(BGREE)%-16s$(RESET) %10s\n\n$(RESET)" $(NAME) "done ---"
	@echo "$(BLUE)-------------- [ $(CYAN)EVERYTHING IS OK$(BLUE) ] --------------$(RESET)"
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.c
	@if [ "$(J)" -eq "0" ]; then printf "%-10s $(WHITE)%-15s$(RESET) %23s\n" "Compiling" $(NAME) "***"; $(eval J = 1) fi
	@$(eval PERCENT = $(shell echo $$(($(I) * 100 / $(NB)))))
	@gcc -c $< -o $@ $(C_FLAGS)
	@printf "$(YELLOW)[ %3d%% ]   %s   %-15s\r$(RESET)" $(PERCENT) $(NAME) $(<F)
	@$(eval I = $(shell echo $$(($(I) + 1))))

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re