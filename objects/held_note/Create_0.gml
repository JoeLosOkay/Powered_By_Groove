/// @description Initialize held note head
note_timestamp = current_time; // timestamps might not work with held notes...
falling_note_color = #FFFFFF;
terminating = false;
being_held = false;
hold_duration = 0;
missed = false;
trail_start_points = [];
trail_length = note_length;
falling_note_holding_color1 = #FFFFFF;
falling_note_holding_color2 = #FFFFFF;
current_animation_time = 0;
hold_trail_animation_index = 1;

switch(note_direction) {
	case NoteState.UP:
	  sprite_index = up_arrow_single;
	  falling_note_color = global.UP_NOTE_FALLING_COLOR;
	  trail_start_points = global.UP_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.UP_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.UP_NOTE_HOLDING_COLOR_2;
	  break;
	case NoteState.DOWN:
	  sprite_index = down_arrow_single;
	  falling_note_color = global.DOWN_NOTE_FALLING_COLOR;
	  trail_start_points = global.DOWN_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.DOWN_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.DOWN_NOTE_HOLDING_COLOR_2;
	  break;
	case NoteState.LEFT:
	  sprite_index = left_arrow_single;
	  falling_note_color = global.LEFT_NOTE_FALLING_COLOR;
	  trail_start_points = global.LEFT_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.LEFT_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.LEFT_NOTE_HOLDING_COLOR_2;
	  break;
    case NoteState.RIGHT:
	  sprite_index = right_arrow_single;
	  falling_note_color = global.RIGHT_NOTE_FALLING_COLOR;
	  trail_start_points = global.RIGHT_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.RIGHT_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.RIGHT_NOTE_HOLDING_COLOR_2;
	  break;
	case NoteState.P_UP:
	  sprite_index = powered_arrow_single;
	  image_angle = 90;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  trail_start_points = global.UP_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.POWERED_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.POWERED_NOTE_HOLDING_COLOR_2;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = powered_arrow_single;
	  image_angle = 270;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  trail_start_points = global.DOWN_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.POWERED_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.POWERED_NOTE_HOLDING_COLOR_2;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = powered_arrow_single;
	  image_angle = 180;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  trail_start_points = global.LEFT_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.POWERED_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.POWERED_NOTE_HOLDING_COLOR_2;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = powered_arrow_single;
	  image_angle = 0;
	  falling_note_color = global.POWERED_NOTE_FALLING_COLOR;
	  trail_start_points = global.RIGHT_ARROW_TRAIL_Y_START_POINTS;
	  falling_note_holding_color1 = global.POWERED_NOTE_HOLDING_COLOR_1;
	  falling_note_holding_color2 = global.POWERED_NOTE_HOLDING_COLOR_2;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the collision line can call to let the note know it's been hit
function hold() {
	if(!terminating) { // Only run this function and count hits once
		being_held = true;
	}
}

function release() {
	if(!terminating) {
		terminating = true;
		falling_note_color = global.HELD_NOTE_MISS_COLOR;
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
			  image_angle = 90;
			  break;
		    case NoteState.P_DOWN:
			  sprite_index = powered_arrow_hit;
			  image_angle = 270;
			  break;
			case NoteState.P_LEFT:
			  sprite_index = powered_arrow_hit;
			  image_angle = 180;
			  break;
			case NoteState.P_RIGHT:
			  sprite_index = powered_arrow_hit;
			  break;
			default:
			  show_debug_message("ERROR: NoteState not set for held_note");
			  break;
		}
		show_debug_message("RESETING IMAGE INDEX");
		image_index = 0;
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
				image_angle = 180;
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
				image_angle = 180;
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
