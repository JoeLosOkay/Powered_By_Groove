/// @description Set up the song controller.

random_set_seed(current_time); // Set the seed for the game
dance_mode_pane = noone;
current_song_data = [];
current_song_note = 0;
song_timer_ms = 0;
current_song_speed = 0;

{ // Create characters
	big_boss = instance_create_depth(global.DANCE_MODE_PANE_X, global.DANCE_MODE_PANE_Y, global.NOTES_LAYER_DEPTH, dancing_character_obj,
	{
		character_sprite: big_boss_dance_frames
	});
	big_boss_drop_mode_inst = instance_create_depth(global.DANCE_MODE_PANE_X, global.DANCE_MODE_PANE_Y - 1, global.NOTES_LAYER_DEPTH, big_boss_drop_mode_obj);
	lenny = instance_create_depth(global.DANCE_MODE_PANE_X+64, global.DANCE_MODE_PANE_Y, global.NOTES_LAYER_DEPTH, dancing_character_obj,
	{
		character_sprite: lenny_dance_frames
	});
	steven = instance_create_depth(global.DANCE_MODE_PANE_X, global.DANCE_MODE_PANE_Y+64, global.NOTES_LAYER_DEPTH, dancing_character_obj,
	{
		character_sprite: steven_dance_frames
	});
	dog = instance_create_depth(global.DANCE_MODE_PANE_X+64, global.DANCE_MODE_PANE_Y+64, global.NOTES_LAYER_DEPTH, dancing_character_obj,
	{
		character_sprite: just_a_dog_dance_frames
	});
	
	// TODO. This is only for initial 
	big_boss.visible = global.current_mode == Modes.DanceMode;
	big_boss_drop_mode_inst.visible = global.current_mode == Modes.DropMode;
	lenny.visible = global.lenny_unlocked
	steven.visible = global.steven_unlocked;
	dog.visible = global.dog_unlocked;
	
	// Pass these references to the drop note collision lines so it can inform dancers when
	// to perform a move
	dancers = ds_list_create();
	ds_list_insert(dancers, 0, big_boss);
	ds_list_insert(dancers, 1, lenny);
	ds_list_insert(dancers, 2, steven);
	ds_list_insert(dancers, 3, dog);
}

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
	
{ // Create Panes
	dance_mode_pane = instance_create_depth(
		global.DANCE_MODE_PANE_X, 
		global.DANCE_MODE_PANE_Y, 
		global.GUIDES_LAYER_DEPTH, 
		dance_mode_grid
	);
	spawn_guide_arrow_box();
}

{ // Create Drop Mode collision lines. These lines will keep track of notes hit in drop mode
	left_guide_drop_mode_collision_line = instance_create_depth(global.LEFT_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y + 16, global.GUIDES_LAYER_DEPTH, drop_mode_collision_line,
	{
		parent_guide_note: left_guide_arrow_inst,
		dancer_refs: dancers
	});
	right_guide_drop_mode_collision_line = instance_create_depth(global.RIGHT_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y + 16, global.GUIDES_LAYER_DEPTH, drop_mode_collision_line,
	{
		parent_guide_note: right_guide_arrow_inst,
		dancer_refs: dancers
	});
	up_guide_drop_mode_collision_line = instance_create_depth(global.UP_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y + 16, global.GUIDES_LAYER_DEPTH, drop_mode_collision_line,
	{
		parent_guide_note: up_guide_arrow_inst,
		dancer_refs: dancers
	});
	down_guide_drop_mode_collision_line = instance_create_depth(global.DOWN_NOTE_SPAWN_LOCATION_X, global.GUIDE_NOTE_SPAWN_LOCATION_Y + 16, global.GUIDES_LAYER_DEPTH, drop_mode_collision_line,
	{
		parent_guide_note: down_guide_arrow_inst,
		dancer_refs: dancers
	});
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
	global.current_mode = Modes.DanceMode;
	big_boss.visible = true;
	
	// Play song
	audio_play_sound(song_file, 1, false);
	current_song_data = song_data;
	song_timer_ms = 0;
	current_song_speed = song_speed;
}

function end_song() {
	global.current_mode = Modes.DropMode;
	big_boss.visible = false;
}