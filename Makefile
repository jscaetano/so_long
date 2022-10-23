# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joacaeta <joacaeta@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/20 17:48:32 by joacaeta          #+#    #+#              #
#    Updated: 2022/10/23 04:26:28 by joacaeta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC := gcc
FLAGS := -Wall -Wextra -Werror -g #-fsanitize=address
LIBRARIES := -Llibft -lft
INCLUDE_DIRS := libft \
				src \
				inc \
				mlx_linux \
				.
INCLUDES := $(addprefix -I, $(INCLUDE_DIRS))
NAME := so_long
SRCS := $(wildcard src/*.c)
OBJS := $(SRCS:.c=.o) $(MAIN:.c=.o)

MLX_LIB_DIR = mlx_linux/
MLX_INCLUDE = -Imlx_linux
MLX_FLAGS = -L$(MLX_LIB_DIR) -lmlx_Linux -L/usr/lib -lXext -lX11 -lm -lz

all: libft $(NAME)

libft:
	make -C libft/

%.o : %.c
	$(CC) $(FLAGS) $(MLX_INCLUDE) -c $^ -o $@ $(INCLUDES)

$(NAME) : $(OBJS)
	$(CC) $(FLAGS) $^ $(MLX_FLAGS) $(LIBRARIES) -o $@ $(INCLUDES)

clean:
	rm -f $(OBJS)
	$(MAKE) -C libft/ clean

fclean: clean
	rm -f $(NAME)
	$(MAKE) -C libft/ fclean

re: fclean all

r:
	make && make clean && clear && ./so_long maps/map.ber

r2:
	make && make clean && clear && ./so_long maps/bigmap.ber

.PHONY: libft minilibx all bonus clean fclean re bonus
