/// @description Set up guide note
activated_animation_counter = 0;
auto_activated = false;

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
	default:
	  show_debug_message("ERROR: NoteState not set for guide note");
	  break;
}

function auto_activate() {
	if(!auto_activated) {
		auto_activated = true;
		activated_animation_counter = auto_activate_duration;
		switch(note_direction) {
			case NoteState.UP:
			  sprite_index = activated_guide_up;
			  image_angle = 0;
			  break;
		    case NoteState.DOWN:
			  sprite_index = activated_guide_down;
			  image_angle = 0;
			  break;
			case NoteState.LEFT:
			  sprite_index = activated_guide_left;
			  image_angle = 0;
			  break;
			case NoteState.RIGHT:
			  sprite_index = activated_guide_right;
			  image_angle = 0;
			  break;
			default:
			  show_debug_message("ERROR: NoteState not set for guide note");
			  break;
		}
	}
}