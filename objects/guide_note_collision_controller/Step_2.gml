/// @description Figure out which note to mark as hit, and update that note

// A bit jank but, in theory, the timestamp of the note to destroy will ALWAYS
// be less than the current time, because it takes a certain amount of time to
// make it's way down to the guide_note. Obviously, if you set the drop_speed to
// something stupid then this breaks, but then a lot of stuff probably breaks. :/
var earliest_time = current_time;
var note_to_destroy = noone;
for (var i = 0; i < ds_list_size(collision_list); i++) {
	var ith_note_timestamp = ds_list_find_value(collision_list, i).note_timestamp;
	var ith_note_inst_id = ds_list_find_value(collision_list, i).note_inst_id;
	
	if(ith_note_timestamp < current_time) {
		earliest_time = ith_note_timestamp;
		note_to_destroy = ith_note_inst_id;
	}
}


// Only destroy the note that was generated the earliest.
if(note_to_destroy != noone) {
	note_to_destroy.hit();
}

ds_list_clear(collision_list);
