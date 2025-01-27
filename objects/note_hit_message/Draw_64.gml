/// @description Decrease the alpha each step

draw_set_alpha(alpha_value);
draw_sprite(message_sprite, 0, cur_x, cur_y);

draw_set_alpha(1); // Reset the draw value so other UI elements aren't affected
