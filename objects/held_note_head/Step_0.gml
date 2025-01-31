/// @description Render falling head note
if(!being_held) {
	y += drop_speed;
	if(missed) {
		// Tell tail to disable and destroy us both when it reaches miss_line
		if(held_note_tail_ref != noone) {
			held_note_tail_ref.miss(id);
		}
		image_index = 3;
		current_falling_note_color = global.HELD_NOTE_MISS_COLOR;
	}
	// Your tail has just hit the miss line. Time to die.
	if(terminating) {
		instance_destroy();
	}
} else {
	
}




