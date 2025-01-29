/// @description Initialize held note
note_timestamp = current_time;
trail_sprite_index = noone;
trail_sprite_angle = 0;

	//layer = global.NOTES_LAYER_DEPTH;

show_debug_message("NOTE DIRECTION IS: " + string(note_direction));
switch(note_direction) {
	case NoteState.UP:
	  sprite_index = up_arrow;
	  trail_sprite_index = up_arrow_hold_effects;
	  trail_sprite_angle = 0;
	  break;
	case NoteState.DOWN:
	  sprite_index = down_arrow;
	  trail_sprite_index = down_arrow_hold_effects;
	  trail_sprite_angle = 0;
	  break;
	case NoteState.LEFT:
	  sprite_index = left_arrow;
	  trail_sprite_index = left_arrow_hold_effects;
	  trail_sprite_angle = 0;
	  break;
    case NoteState.RIGHT:
	  sprite_index = right_arrow;
	  trail_sprite_index = right_arrow_hold_effects;
	  trail_sprite_angle = 0;
	  break;
	case NoteState.P_UP:
	  sprite_index = powered_arrow;
	  image_angle = 270;
	  trail_sprite_index = powered_up_down_arrow_hold_effects;
	  trail_sprite_angle = 0;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = powered_arrow;
	  image_angle = 90;
	  trail_sprite_index = powered_up_down_arrow_hold_effects;
	  trail_sprite_angle = 180;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = powered_arrow;
	  image_angle = 180;
	  trail_sprite_index = powered_right_left_arrow_hold_effects;
	  trail_sprite_angle = 180;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = powered_arrow;
	  image_angle = 0;
	  trail_sprite_index = powered_right_left_arrow_hold_effects;
	  trail_sprite_angle = 0;
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