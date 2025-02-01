/// @description increase selected option

switch(selected_option) {
	case 0: // resolution
	    selected_resolution_option = (selected_resolution_option - 1 + array_length(global.OPTIONS_MENU_RESOLUTION_OPTIONS)) mod array_length(global.OPTIONS_MENU_RESOLUTION_OPTIONS);
		global.resolution_index = selected_resolution_option;
		break;
	case 1: // resolution
	    selected_fx_volume = (selected_fx_volume - 1 + array_length(global.OPTIONS_MENU_VOLUME_OPTIONS)) mod array_length(global.OPTIONS_MENU_VOLUME_OPTIONS);
		global.fx_volume_index = selected_fx_volume;
		break;
	case 2: // resolution
	    selected_music_volume = (selected_music_volume - 1 + array_length(global.OPTIONS_MENU_VOLUME_OPTIONS)) mod array_length(global.OPTIONS_MENU_VOLUME_OPTIONS);
		global.music_volume_index = selected_music_volume;
		break;
}
