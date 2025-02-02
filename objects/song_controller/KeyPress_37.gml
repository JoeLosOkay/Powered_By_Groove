/// @description Drop left note

if(global.current_mode == Modes.DropMode) {
	var is_powered = irandom_range(1, global.POWERED_NOTE_CHANCE) == 1;
	
	var note_direction = NoteState.NONE;
	if(is_powered) {
		note_direction = NoteState.P_LEFT;
	}
	else {
		note_direction = NoteState.LEFT;
	}

	// Only spawn singles when in drop mode
	spawn_note(note_direction, direction_to_x(note_direction), global.drop_mode_drop_speed);
}