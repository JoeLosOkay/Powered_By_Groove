/// @description Spawn Up Arrow

// Uncomment to test note dropping
/*
var is_powered = irandom(global.POWERED_NOTE_CHANCE) == 0;
var note_direction = NoteState.NONE;

if(is_powered) {
	note_direction = NoteState.P_UP;
}
else {
	note_direction = NoteState.UP;
}
var drop_speed = 2;

var new_arrow = instance_create_depth(86, 0, global.NOTES_LAYER_DEPTH, note, 
  {
	  note_direction: note_direction,
	  drop_speed: drop_speed
  }
);
*/