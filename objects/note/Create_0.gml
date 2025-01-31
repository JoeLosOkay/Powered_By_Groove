/// @description Initialize note
note_timestamp = current_time;

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = up_arrow_single;
	  break;
	case NoteState.DOWN:
	  sprite_index = down_arrow_single;
	  break;
	case NoteState.LEFT:
	  sprite_index = left_arrow_single;
	  break;
    case NoteState.RIGHT:
	  sprite_index = right_arrow_single;
	  break;
	case NoteState.P_UP:
	  sprite_index = powered_arrow_single;
	  image_angle = 90;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = powered_arrow_single;
	  image_angle = 270;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = powered_arrow_single;
	  image_angle = 180;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = powered_arrow_single;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the collision line can call to let the note know it's been hit
function hit(hits) {
	if(!terminating) { // Only run this function and count hits once
		num_hits = hits;
	}
	
}

// Function that missed_note_collision_line can call to let the note know it was missed
function miss() {
	missed = true;
}

// Switch to true when the note has been hit to trigger hit animation and terminate
terminating = false;