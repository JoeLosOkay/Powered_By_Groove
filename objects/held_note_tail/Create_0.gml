/// @description Initialize held note tail
note_timestamp = current_time; // timestamps might not work with held notes...
head_note_ref = noone;
being_held = true;

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
	  image_index = 180;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = powered_arrow_single;
	  image_index = 0;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}


// Function that the collision line can call to let the note know it's been hit
function hold(hits) {
	being_held = true;
	if(!terminating) { // Only run this function and count hits once
		if (image_index == 0) {
			image_index = 1;
		} else if (image_index == 1) {
			image_index = 2;
		} else if (image_index == 2) {
			image_index = 1;
		}
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