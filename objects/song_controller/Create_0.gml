/// @description Set up the song controller.

// Layer Names
global.GUIDES_LAYER_DEPTH = 1;
global.NOTES_LAYER_DEPTH = 2;

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