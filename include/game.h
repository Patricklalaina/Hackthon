#ifndef GAME_H
# define GAME_H

# include <stdio.h>
# include <stdlib.h>
# include "../minilibx-linux/mlx.h"

typedef struct s_pos
{
	int x[6];
	int y[6];
	int x1[6];
	int y1[6];
}	t_pos;

typedef struct s_game
{
	void	*mlx;
	void	*win;
	void	*img;
	void	*bg_img;
	int		win_width;
	int		win_height;
	int		img_width;
	int		img_height;
	t_pos	pos;
}	t_game;

void	init_image(t_game *data);

#endif // !DEBUG
