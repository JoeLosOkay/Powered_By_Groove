/// @description Go to selected option
switch(selected_option) {
	case 0: // Start game
	    room_goto(Main_Room);
		break;
	case 1:
	    room_goto(Options);
		break;
	case 2:
		game_end();
		break;
}
