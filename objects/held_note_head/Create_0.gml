/// @description Initialize held note head
note_timestamp = current_time; // timestamps might not work with held notes...
falling_note_color = #FFFFFF;
terminating = false;
hold_duration = 0;
missed = false;

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = held_up_arrow_head;
	  falling_note_color = global.UP_NOTE_FALLING_COLOR;
	  break;
	case NoteState.DOWN:
	  sprite_index = held_down_arrow_head;
	  falling_note_color = global.DOWN_NOTE_FALLING_COLOR;
	  break;
	case NoteState.LEFT:
	  sprite_index = held_left_arrow_head;
	  falling_note_color = global.LEFT_NOTE_FALLING_COLOR;
	  break;
    case NoteState.RIGHT:
	  sprite_index = held_right_arrow_head;
	  falling_note_color = global.RIGHT_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_UP:
	  sprite_index = held_powered_up_arrow_head;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = held_powered_down_arrow_head;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = held_powered_left_arrow_head;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = held_powered_right_arrow_head;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the collision line can call to let the note know it's been hit
function hit() {
	if(!terminating) { // Only run this function and count hits once
		hold_duration += 1;
		if (image_index == 0) {
			image_index = 1;
		} else if (image_index == 1) {
			image_index = 2;
		} else if (image_index == 2) {
			image_index = 1;
		}
		if(held_note_tail_ref != noone) {
		  held_note_tail_ref.holding();
		}
	}
}

function released() {
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

// Function that missed_note_collision_line can call to let the note know it was missed
function miss() {
	// Only run this code once
	if(!missed) {
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
				image_angle = 90
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
	}
}

function terminate() {
	held_note_tail_ref = noone;
	terminating = true;
}
