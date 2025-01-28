/// @description Insert description here
// You can write your code in this editor

var falling_notes_list = ds_list_create();
// Get a list of all the notes that this 
instance_place_list(x, y, note, falling_notes_list, false);
var size = ds_list_size(falling_notes_list);

for(var i = 0; i < size; i++) {
	var falling_note = ds_list_find_value(falling_notes_list, i);
	if(falling_note != noone) {
		if ( miss_line ) { // Note was missed :(
			falling_note.miss();
		}
		if ( activated == true ) {
			if(parent_collision_controller != noone && !falling_note.terminating) {
				parent_collision_controller.register_collision({
					note_timestamp: falling_note.note_timestamp,
					note_inst_id: falling_note
				});
			}
		}
	}
}

activated = false;
ds_list_destroy(falling_notes_list);



/*
var falling_note = instance_place(x, y, note);

if(falling_note != noone) {
	if( miss_line ) { // Note was missed :(
		falling_note.miss();
	}
	if ( activated == true ) { // Note was hit :)
		falling_note.hit();
	}
}
*/
