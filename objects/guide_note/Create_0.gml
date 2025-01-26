/// @description Set up guide note

show_debug_message("Spawning guide note: " + string(note_direction));
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
