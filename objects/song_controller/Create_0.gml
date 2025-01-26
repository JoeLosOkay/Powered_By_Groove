/// @description Set up the song controller.

// Layer Names
global.GUIDES_LAYER_DEPTH = 1;
global.NOTES_LAYER_DEPTH = 2;

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
	var left_guide_collision_line_0 = instance_create_depth(17, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_1 = instance_create_depth(17, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_2 = instance_create_depth(17, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_3 = instance_create_depth(17, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_4 = instance_create_depth(17, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
	var left_guide_collision_line_5 = instance_create_depth(17, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.LEFT
	  }
	);
}
{ // RIGHT GUIDE ARROW COLLISION LINES
	var right_guide_collision_line_0 = instance_create_depth(122, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_1 = instance_create_depth(122, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_2 = instance_create_depth(122, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_3 = instance_create_depth(122, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_4 = instance_create_depth(122, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
	var right_guide_collision_line_5 = instance_create_depth(122, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.RIGHT
	  }
	);
}
{ // UP GUIDE ARROW COLLISION LINES
	var up_guide_collision_line_0 = instance_create_depth(86, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_1 = instance_create_depth(86, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_2 = instance_create_depth(86, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_3 = instance_create_depth(86, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_4 = instance_create_depth(86, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
	var up_guide_collision_line_5 = instance_create_depth(86, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.UP
	  }
	);
}	
{ // DOWN GUIDE ARROW COLLISION LINES
	var down_guide_collision_line_0 = instance_create_depth(53, 145, global.GUIDES_LAYER_DEPTH, 
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_1 = instance_create_depth(53, 151, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_2 = instance_create_depth(53, 157, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_3 = instance_create_depth(53, 162, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_4 = instance_create_depth(53, 168, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
	var down_guide_collision_line_5 = instance_create_depth(53, 174, global.GUIDES_LAYER_DEPTH,
	  guide_note_collision_line,
	  {
		  note_direction: NoteState.DOWN
	  }
	);
}

// Set up timer
last_time = current_time;
interval = 2000;