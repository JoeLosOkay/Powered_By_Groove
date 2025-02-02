if(global.current_mode == Modes.DropMode && animation_timer >= 0) {
	if(animation_timer == 0) {
		image_index = 0;
	}
}

draw_self();