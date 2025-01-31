/// @description Render falling head note
if(!being_held) {
	y += drop_speed;
	if(missed) {
		image_index = 3;
		falling_note_color = global.HELD_NOTE_MISS_COLOR;
		trail_length -= drop_speed;
		if(trail_length <= 0) {
			// Note has been missed and trail is gone. Destroy self
			instance_destroy();
		}
	}
} else {
	if(trail_length > 0) {
		trail_length -= drop_speed;
		hold_duration += drop_speed;
	}
}




