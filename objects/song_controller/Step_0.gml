/// @description Keep track of time and spawn notes

song_timer_ms += global.ACTUAL_DELTA;
//show_debug_message(string(song_timer_ms) + " " + string(global.ACTUAL_DELTA / 1000) + " " + string(global.ACTUAL_DELTA));

// Check the nth note in the song.
if(array_length(current_song_data) != 0 && current_song_note < array_length(current_song_data)) {
	var note_data = current_song_data[current_song_note];
	
	// The song has ended
	if(note_data.e == 1) {
		end_song();
	} else {
		// spawn note
		if(song_timer_ms >= note_data.s) {
			// single note
			if(note_data.l == 0) {
				spawn_note(note_data.d, direction_to_x(note_data.d), current_song_speed);
			}
			// held note
			else if(note_data.l > 0) {
				spawn_held_note(note_data.d, direction_to_x(note_data.d), current_song_speed, note_data.l);
			} 
			// uh oh
			else {
				show_debug_message("ERROR: Cannot spawn held note with NEGATIVE note length!");
			}
			
			song_timer_ms -= note_data.s;
			current_song_note += 1;
		}
	}
}


/* OLD STEP EVENT FOR TESTING NOTE COLLISIONS!!! */
// Spawn a random note every 2 seconds
/* 
if(current_time - last_time >= interval) {
	var note_direction = irandom_range(1, 4);
	var note_spawn_location_x = 0;
	var spawn_a_held_note = irandom(1);
	var random_note_length = irandom_range(32, 80);
	
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

	if(irandom(2) == 0) { // TODO, make this less common
		note_direction += 4; // Power up the note
	}
	var drop_speed = 2;
	
	// Test dropping singles
	if(spawn_a_held_note = 1) {
		var new_arrow = instance_create_depth(note_spawn_location_x, 0, global.NOTES_LAYER_DEPTH, note, 
		{
			note_direction: note_direction,
			drop_speed: drop_speed
		});
	} else {
		spawn_held_note(note_spawn_location_x, random_note_length, note_direction, drop_speed);
	}

	
	
	
	last_time = current_time;
}
*/