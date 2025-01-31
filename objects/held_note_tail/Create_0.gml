/// @description Initialize held note tail
note_timestamp = current_time; // timestamps might not work with held notes...
head_note_ref = noone;

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = held_up_arrow_tail;
	  break;
	case NoteState.DOWN:
	  sprite_index = held_down_arrow_tail;
	  break;
	case NoteState.LEFT:
	  sprite_index = held_left_arrow_tail;
	  break;
    case NoteState.RIGHT:
	  sprite_index = held_right_arrow_tail;
	  break;
	case NoteState.P_UP:
	  sprite_index = held_powered_up_arrow_tail;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = held_powered_down_arrow_tail;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = held_powered_left_arrow_tail;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = held_powered_right_arrow_tail;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the head can call to let the tail know it's being held
function holding() {
	being_held = true;
}

// Function that the collision line can call to let the note know it's been hit
function hit(hits) {
	if(!terminating) { // Only run this function and count hits once
		num_hits = hits;
	}
	
}

// Function that the held_note head can call to let me know that the player missed this note.
// Disable this note and destroy when you reach the miss line
function miss(head_ref) {
	missed = true;
	sprite_index = guide_arrow;
	switch(note_direction) {
		case NoteState.UP:
			image_angle = 90;
			break;
		case NoteState.DOWN:
			image_angle = 270;
			break;
		case NoteState.LEFT:
			image_angle = 180
			break;
		case NoteState.RIGHT:
			image_angle = 0;
			break;
		case NoteState.P_UP:
			image_angle = 90;
			break;
		case NoteState.P_DOWN:
			image_angle = 270;
			break;
		case NoteState.P_LEFT:
			image_angle = 180
			break;
		case NoteState.P_RIGHT:
			image_angle = 0;
			break;
		default:
			show_debug_message("ERROR: NoteState not set for held_note");
			break;
	}
	head_note_ref = head_ref;
}

// Switch to true when the note has been hit to trigger hit animation and terminate
terminating = false;