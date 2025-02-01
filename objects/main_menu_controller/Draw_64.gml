/// @description Draw menu options
var menu_x = room_width / 2;
var menu_y = room_height / 5 + 20;
var spacing = 40;

draw_set_halign(fa_center);
draw_set_font(main_menu_font);


for(var i = 0; i < array_length(global.MAIN_MENU_OPTIONS); i++) {
	if (i == selected_option) {
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_black);
	}
	draw_text(menu_x, menu_y + (i * spacing), global.MAIN_MENU_OPTIONS[i]);
}
