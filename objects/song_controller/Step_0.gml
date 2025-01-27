/// @description Keep track of time and spawn notes

// Spawn a random note every 2 seconds
if(current_time - last_time >= interval) {
	var note_direction = irandom_range(1, 4);
	var note_spawn_location_x = 0;
	
	switch(note_direction) {
		case NoteState.LEFT:
		  note_spawn_location_x = 17;
		  break;
		case NoteState.DOWN:
		  note_spawn_location_x = 53;
		  break;
		case NoteState.UP:
		  note_spawn_location_x = 86;
		  break;
		case NoteState.RIGHT:
		  note_spawn_location_x = 122;
		  break;
		default:
		  show_debug_message("ERROR: Note direction broke!");
		  break;
	}
	
	if(irandom(9) == 0) {
		note_direction += 4; // Power up the note
	}
	var drop_speed = 2;
	
	var new_arrow = instance_create_depth(note_spawn_location_x, 0, global.NOTES_LAYER_DEPTH, note, 
      {
	    note_direction: note_direction,
	    drop_speed: drop_speed
      }
    );
	
	last_time = current_time;
}