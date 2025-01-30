/// @description Initialize held note head
note_timestamp = current_time; // timestamps might not work with held notes...

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = held_up_arrow_head;
	  break;
	case NoteState.DOWN:
	  sprite_index = held_down_arrow_head;
	  break;
	case NoteState.LEFT:
	  sprite_index = held_left_arrow_head;
	  break;
    case NoteState.RIGHT:
	  sprite_index = held_right_arrow_head;
	  break;
	case NoteState.P_UP:
	  sprite_index = held_powered_up_arrow_head;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = held_powered_down_arrow_head;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = held_powered_left_arrow_head;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = held_powered_right_arrow_head;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the collision line can call to let the note know it's been hit
function hit(hits) {
	show_debug_message(string(id) + " HIHIHIHIT");
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