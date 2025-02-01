/// @description Draw menu options
var menu_x = room_width / 2 - 90;
var menu_y = room_height - 180 + 20;
var spacing = 40;

draw_set_halign(fa_center);
draw_set_font(main_menu_font);

for(var i = 0; i < array_length(global.OPTIONS_MENU_OPTIONS); i++) {
	if (i == selected_option) {
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_black);
	}
	draw_text(menu_x, menu_y + (i * spacing), global.OPTIONS_MENU_OPTIONS[i]);
	
	// Render option values
	if(i == 0) {
		draw_text(menu_x + 150, menu_y + (i * spacing), 
		"< " + global.OPTIONS_MENU_RESOLUTION_OPTIONS[selected_resolution_option] + " >");
	}
	if(i == 1) {
		draw_text(menu_x + 150, menu_y + (i * spacing), 
		"< " + string(global.OPTIONS_MENU_VOLUME_OPTIONS[selected_fx_volume]) + " >");
	}
	if(i == 2) {
		draw_text(menu_x + 150, menu_y + (i * spacing), 
		"< " + string(global.OPTIONS_MENU_VOLUME_OPTIONS[selected_music_volume]) + " >");
	}
}
