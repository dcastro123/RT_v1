# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcastro- <dcastro-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/21 17:49:07 by dcastro-          #+#    #+#              #
#    Updated: 2017/11/25 17:28:11 by dcastro-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = RTv1

CC = gcc -Wall -Werror -Wextra

SRCS = srcs/main.c srcs/hooks.c srcs/init.c srcs/ray.c srcs/draw.c

OBJ = $(SRCS:.c=.o)

INC = -L libft/ -lft -L ./resources -lmlx -framework OpenGL -framework AppKit

all: $(NAME)

$(NAME): $(OBJ)
	make -C resources
	make -C libft
	$(CC) $(INC) $(OBJ) -o $(NAME)

clean:
	make -C libft/ clean
	/bin/rm -rf $(OBJ)

fclean: clean
	make -C libft/ fclean
	/bin/rm -rf $(NAME)

re: fclean all
