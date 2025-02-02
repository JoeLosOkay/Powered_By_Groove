/// @description Guide arrow activated

if(note_direction == NoteState.DOWN && global.current_mode == Modes.DanceMode) {
	sprite_index = activated_guide_down;
	image_angle = 0;
}
