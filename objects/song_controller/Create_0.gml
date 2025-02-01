/// @description Set up the song controller.

random_set_seed(current_time); // Set the seed for the game
dance_mode_pane = noone;
current_song_data = [];
current_song_note = 0;
song_timer_ms = 0;
current_song_speed = 0;

{ // Create Guide Notes
	left_guide_arrow_inst = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y, global.GUIDES_LAYER_DEPTH, guide_note, 
	  {
		  note_direction: NoteState.LEFT,
	  }
	);

	right_guide_arrow_inst = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y, global.GUIDES_LAYER_DEPTH, guide_note, 
	  {
		  note_direction: NoteState.RIGHT,
	  }
	);

	down_guide_arrow_inst = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y, global.GUIDES_LAYER_DEPTH, guide_note, 
	  {
		  note_direction: NoteState.DOWN,
	  }
	);

	up_guide_arrow_inst = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y, global.GUIDES_LAYER_DEPTH, guide_note, 
	  {
		  note_direction: NoteState.UP,
	  }
	);
}

// Create guide note collision lines.
//
// Each guide note will use six collision lines to determine how accurately
// the player hits each note. The guide note collision controller helps to
// determine which note should be hit when there are multiple overlapping.
{ // LEFT GUIDE ARROW COLLISION LINES
	left_guide_collision_controller = instance_create_depth(0, 0, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	left_guide_collision_line_0 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_1_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	left_guide_collision_line_1 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_2_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	left_guide_collision_line_2 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_3_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	left_guide_collision_line_3 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_4_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	left_guide_collision_line_4 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_5_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	left_guide_collision_line_5 = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.COLLISION_6_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
}
{ // RIGHT GUIDE ARROW COLLISION LINES
	right_guide_collision_controller = instance_create_depth(0, 0, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	right_guide_collision_line_0 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_1_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	right_guide_collision_line_1 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_2_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	right_guide_collision_line_2 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_3_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	right_guide_collision_line_3 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_4_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	right_guide_collision_line_4 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_5_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	right_guide_collision_line_5 = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.COLLISION_6_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
}
{ // UP GUIDE ARROW COLLISION LINES
	up_guide_collision_controller = instance_create_depth(0, 0, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.UP
	  }
	);
	up_guide_collision_line_0 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_1_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	up_guide_collision_line_1 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_2_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	up_guide_collision_line_2 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_3_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	up_guide_collision_line_3 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_4_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	up_guide_collision_line_4 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_5_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	up_guide_collision_line_5 = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.COLLISION_6_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
}	
{ // DOWN GUIDE ARROW COLLISION LINES
	down_guide_collision_controller = instance_create_depth(0, 0, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	down_guide_collision_line_0 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_1_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	down_guide_collision_line_1 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_2_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	down_guide_collision_line_2 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_3_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	down_guide_collision_line_3 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_4_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	down_guide_collision_line_4 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_5_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	down_guide_collision_line_5 = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.COLLISION_6_LOCATION_Y, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
}
{ // MISSED NOTE COLLISION LINES
	down_guide_missed_note = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.MISS_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
		);
	up_guide_missed_note = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.MISS_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
	right_guide_missed_note = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.MISS_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
	left_guide_missed_note = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.MISS_LOCATION_Y, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
}

// Set up timer
last_time = delta_time;
interval = 1000;

function play_song(song_file, song_data, song_speed) {
	// Set up dance mode
	dance_mode_pane = instance_create_depth(
		global.DANCE_MODE_PANE_X, 
		global.DANCE_MODE_PANE_Y, 
		global.GUIDES_LAYER_DEPTH, 
		dance_mode_grid
	);
	
	// Play song
	audio_play_sound(song_file, 1, false);
	current_song_data = song_data;
	song_timer_ms = 0;
	current_song_speed = song_speed;
}

function end_song() {
	if(dance_mode_pane != noone) {
		instance_destroy(dance_mode_pane);
		song_timer_ms = 0;
		current_song_speed = 0;
		current_song_data = [];
	}
}