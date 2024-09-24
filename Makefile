# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aal-mokd <aal-mokd@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/18 18:14:53 by aal-mokd          #+#    #+#              #
#    Updated: 2024/09/11 16:05:48 by aal-mokd         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell

LIB = lib/ft_printf/libftprintf.a

GET_NEXT_LINE_SRCS = lib/get_next_line/get_next_line.c lib/get_next_line/get_next_line_utils.c 

SRCS  = srcs/main.c

BONUS_SRCS = 

OBJS = ${SRCS:.c=.o}
BONUS_OBJS = $(BONUS_SRCS:.c=.o)

CC					= gcc
RM					= rm -f
CFLAGS				= -Wall -Wextra -Werror
LDFLAGS = -lreadline

all: $(NAME) 

bonus: $(BONUS_OBJS) $(LIB)
	$(CC) $(CFLAGS) $(BONUS_OBJS) $(LIB) -o $(NAME) $(LDFLAGS)

$(NAME): $(OBJS) $(LIB)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME) $(LIB) $(LDFLAGS)

$(LIB):
			@make -C ./lib/ft_printf

src/%.o: src/%.c
	${CC} ${CFLAGS} -c $< -o $@

clean:	
		@make clean -C ./lib/ft_printf
		${RM} ${OBJS}
		${RM} $(BONUS_OBJS)

fclean: clean
		${RM} ${LIB}
		${RM} ${NAME}
		rm -rf checker

re: fclean all

.PHONY: all bonus clean fclean re
