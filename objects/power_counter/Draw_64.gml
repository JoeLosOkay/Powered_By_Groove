/// @description Draw current score
draw_set_color(c_yellow);
draw_rectangle(x+1, y+1, x+ (get_total_power() / ((global.total_power_to_win)/180)), y+8, false);

draw_set_color(c_black);
draw_set_font(power_counter_font);
draw_text(150, 169, get_total_power());