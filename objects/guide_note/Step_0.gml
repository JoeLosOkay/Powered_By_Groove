/// @description Deactivate guide arrow after remote activation

if(auto_activated) {
	if(activated_animation_counter > 0) {
		activated_animation_counter -= 1;
	} else {
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
			default:
			  show_debug_message("ERROR: NoteState not set for guide note");
			  break;
		}
		auto_activated = false;
	}
}
