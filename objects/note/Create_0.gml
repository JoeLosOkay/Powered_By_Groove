/// @description Initialize note
switch(note_direction) {
	case NoteState.UP:
	  sprite_index = up_arrow;
	  break;
	case NoteState.DOWN:
	  sprite_index = down_arrow;
	  break;
	case NoteState.LEFT:
	  sprite_index = left_arrow;
	  break;
    case NoteState.RIGHT:
	  sprite_index = right_arrow;
	  break;
	case NoteState.P_UP:
	  sprite_index = powered_arrow;
	  image_angle = 90;
	  break;
    case NoteState.P_DOWN:
	  sprite_index = powered_arrow;
	  image_angle = 270;
	  break;
	case NoteState.P_LEFT:
	  sprite_index = powered_arrow;
	  image_angle = 180;
	  break;
	case NoteState.P_RIGHT:
	  sprite_index = powered_arrow;
	  break;
	default:
	  show_debug_message("ERROR: NoteState not set for note");
	  break;
}

// Function that the collision line can call to let the note know it's been hit
function hit() {
	num_hits++;
}