/// @description Set up the song controller.

random_set_seed(current_time); // Set the seed for the game

// TODO  Control objects should probably be created programmatically along 
//       with the global_stuff object for more control over initialization.

// TODO  I probably don't need to be using var for all of these instantiations...
//       It may cause problems in the future...

// TODO  Globals for all of the magic numbers in this horrendous create event.

// Create Guide Notes
var left_guide_arrow_inst = instance_create_depth(17, 160, global.GUIDES_LAYER_DEPTH, guide_note, 
  {
	  note_direction: NoteState.LEFT,
  }
);

var right_guide_arrow_inst = instance_create_depth(122, 160, global.GUIDES_LAYER_DEPTH, guide_note, 
  {
	  note_direction: NoteState.RIGHT,
  }
);

var down_guide_arrow_inst = instance_create_depth(53, 160, global.GUIDES_LAYER_DEPTH, guide_note, 
  {
	  note_direction: NoteState.DOWN,
  }
);

var up_guide_arrow_inst = instance_create_depth(86, 160, global.GUIDES_LAYER_DEPTH, guide_note, 
  {
	  note_direction: NoteState.UP,
  }
);

// Create guide note collision lines.
//
// Each guide note will use six collision lines to determine how accurately
// the player hits each note. 

{ // LEFT GUIDE ARROW COLLISION LINES
	var left_guide_collision_controller = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_0 = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	var left_guide_collision_line_1 = instance_create_depth(17, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	var left_guide_collision_line_2 = instance_create_depth(17, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	var left_guide_collision_line_3 = instance_create_depth(17, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	var left_guide_collision_line_4 = instance_create_depth(17, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
	var left_guide_collision_line_5 = instance_create_depth(17, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT,
		  parent_collision_controller: left_guide_collision_controller
	  }
	);
}
{ // RIGHT GUIDE ARROW COLLISION LINES
	var right_guide_collision_controller = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_0 = instance_create_depth(122, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	var right_guide_collision_line_1 = instance_create_depth(122, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	var right_guide_collision_line_2 = instance_create_depth(122, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	var right_guide_collision_line_3 = instance_create_depth(122, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	var right_guide_collision_line_4 = instance_create_depth(122, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
	var right_guide_collision_line_5 = instance_create_depth(122, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT,
		  parent_collision_controller: right_guide_collision_controller
	  }
	);
}
{ // UP GUIDE ARROW COLLISION LINES
	var up_guide_collision_controller = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_0 = instance_create_depth(86, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	var up_guide_collision_line_1 = instance_create_depth(86, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	var up_guide_collision_line_2 = instance_create_depth(86, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	var up_guide_collision_line_3 = instance_create_depth(86, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	var up_guide_collision_line_4 = instance_create_depth(86, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
	var up_guide_collision_line_5 = instance_create_depth(86, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP,
		  parent_collision_controller: up_guide_collision_controller
	  }
	);
}	
{ // DOWN GUIDE ARROW COLLISION LINES
	var down_guide_collision_controller = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_controller,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_0 = instance_create_depth(53, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	var down_guide_collision_line_1 = instance_create_depth(53, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	var down_guide_collision_line_2 = instance_create_depth(53, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	var down_guide_collision_line_3 = instance_create_depth(53, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	var down_guide_collision_line_4 = instance_create_depth(53, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
	var down_guide_collision_line_5 = instance_create_depth(53, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN,
		  parent_collision_controller: down_guide_collision_controller
	  }
	);
}
{ // MISSED NOTE COLLISION LINES
	var down_guide_missed_note = instance_create_depth(53, 205, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
		);
	var up_guide_missed_note = instance_create_depth(86, 205, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
	var right_guide_missed_note = instance_create_depth(122, 205, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
	var left_guide_missed_note = instance_create_depth(17, 205, global.GUIDES_LAYER_DEPTH, 
		  guide_note_collision_line,
		  {
			  miss_line: true
		  }
	);
}

// Set up timer
last_time = current_time;
interval = 500;