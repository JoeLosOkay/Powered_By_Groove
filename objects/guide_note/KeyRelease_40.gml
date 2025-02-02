/// @description Deactivate guide note

if(note_direction == NoteState.DOWN && global.current_mode == Modes.DanceMode) {
	sprite_index = guide_arrow;
	image_angle = 270;
}
