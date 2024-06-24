NAME = game

SRC = $(wildcard ./src/*.c)

CFLAGS = #-Wall -Werror -Wextra

CC = cc

OBJ = $(SRC:.c=.o)

.c.o:
	@$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	@echo "🔴 \033[40m\033[32mCompiling project ...\033[0m✅"
	@$(CC) $(CFLAGS) $(OBJ) -o $(NAME) -L./minilibx-linux/ -lmlx_Linux -lX11 -lXext

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all re clean fclean
