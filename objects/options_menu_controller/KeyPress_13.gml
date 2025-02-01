/// @description Go to selected option
switch(selected_option) {
	case 0: // Start game
	    show_debug_message("Show Resolutions");
		break;
	case 1:
	    show_debug_message("Show FX Volume");
		break;
	case 2:
		show_debug_message("Show Music Volume");
		break;
	case 3:
	    room_goto(Main_Menu);
}
