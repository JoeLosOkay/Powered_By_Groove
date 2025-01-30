/// @description Initialize held note tail
note_timestamp = current_time; // timestamps might not work with held notes...
falling_note_color = #FFFFFF;

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = held_up_arrow_tail;
	  falling_note_color = global.UP_NOTE_FALLING_COLOR;
	  break;
	case NoteState.DOWN:
	  sprite_index = held_down_arrow_tail;
	  falling_note_color = global.DOWN_NOTE_FALLING_COLOR;
	  break;
	case NoteState.LEFT:
	  sprite_index = held_left_arrow_tail;
	  falling_note_color = global.LEFT_NOTE_FALLING_COLOR;
	  break;
    case NoteState.RIGHT:
	  sprite_index = held_right_arrow_tail;
	  falling_note_color = global.RIGHT_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_UP:
	  sprite_index = held_powered_up_arrow_tail;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = held_powered_down_arrow_tail;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = held_powered_left_arrow_tail;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = held_powered_right_arrow_tail;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
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