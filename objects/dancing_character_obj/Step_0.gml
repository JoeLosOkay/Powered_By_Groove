if(global.current_mode == Modes.DanceMode && holding_direction == false) {
	image_index = 0;
}

if(animation_timer > 0) {
	animation_timer -= 1;
}
holding_direction = false;
