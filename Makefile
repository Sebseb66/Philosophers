# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sfroidev <sfroidev@student.42perpignan.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/27 17:11:47 by jdecorte          #+#    #+#              #
#    Updated: 2023/11/01 15:36:49 by sfroidev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo

CFLAGS = -Wall -Wextra -Werror -pthread
MAKEFLAGS = --silent

RM = rm -rf

SRCS = 	src/main.c\
		src/init.c\
		src/philo.c\
		src/utils.c\
		src/utils_2.c

$(NAME) :
	gcc $(CFLAGS) $(SRCS) -o $(NAME)
	@echo "\033[34mCompile philo ...\033[0m"
	@echo "\033[32mCompilation OK\033[0m"

all : $(NAME)
	

fclean : clean
	$(RM) $(NAME)
	@echo "\033[31mEnlève philo ...\033[0m"

clean :
	$(RM) $(NAME)
	@echo "\033[31mEnlève les fichiers .o ...\033[0m"

re : fclean all


