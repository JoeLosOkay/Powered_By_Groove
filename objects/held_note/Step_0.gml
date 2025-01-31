/// @description Render falling head note
if(hold_duration == 0) {
	y += drop_speed;
	if(missed) {
		image_index = 3;
		falling_note_color = global.HELD_NOTE_MISS_COLOR;
		//instance_destroy();
	}
} else {
	if(terminating) {
		// Check if hit or missed and perform appropriate animation
		instance_destroy();
	}
}




