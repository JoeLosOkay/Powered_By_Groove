/// @description Check for hits
if(num_hits > 0) {
	terminating = true;
	switch(note_direction) {
		case NoteState.UP:
		  sprite_index = up_arrow_hit;
		  break;
		case NoteState.DOWN:
		  sprite_index = down_arrow_hit;
		  break;
		case NoteState.LEFT:
		  sprite_index = left_arrow_hit;
		  break;
	    case NoteState.RIGHT:
		  sprite_index = right_arrow_hit;
		  break;
		case NoteState.P_UP:
		  sprite_index = powered_arrow_hit;
		  break;
	    case NoteState.P_DOWN:
		  sprite_index = powered_arrow_hit;
		  break;
		case NoteState.P_LEFT:
		  sprite_index = powered_arrow_hit;
		  break;
		case NoteState.P_RIGHT:
		  sprite_index = powered_arrow_hit;
		  break;
		default:
		  show_debug_message("ERROR: NoteState not set for held_note");
		  break;
	}
}

if(missed) {
	terminating = true;
	instance_destroy();
}