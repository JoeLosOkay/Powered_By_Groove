/// @description Guide arrow activated

if(note_direction == NoteState.UP && global.current_mode == Modes.DanceMode) {
	sprite_index = activated_guide_up;
	image_angle = 0;
}
