/// @description Figure out which note to mark as hit, and update that note

// A bit jank but, in theory, the timestamp of the note to destroy will ALWAYS
// be less than the current time, because it takes a certain amount of time to
// make it's way down to the guide_note. Obviously, if you set the drop_speed to
// something stupid then this breaks, but then a lot of stuff probably breaks as well. :/


var earliest_time = current_time;
var note_to_destroy = noone;

for (var i = 0; i < ds_list_size(collision_list); i++) {
	var ith_note_timestamp = ds_list_find_value(collision_list, i).note_timestamp;
	var ith_note_inst_id = ds_list_find_value(collision_list, i).note_inst_id;
	
	// Keep track of hits
	if(ds_map_exists(num_hits_map, ith_note_inst_id)) {
		ds_map_replace(num_hits_map, 
		               ith_note_inst_id, 
					   ds_map_find_value(num_hits_map, ith_note_inst_id) + 1
					  );
	} else {
		ds_map_set(num_hits_map, ith_note_inst_id, 1);
	}
	
	if(ith_note_timestamp < current_time) {
		earliest_time = ith_note_timestamp;
		note_to_destroy = ith_note_inst_id;
	}
}

// Only destroy the note that was generated the earliest.
// TODO: Perhaps instead destroy the note that has the most hits...
if(note_to_destroy != noone) {
	if(ds_map_exists(num_hits_map, note_to_destroy)) {
		note_to_destroy.hit(ds_map_find_value(num_hits_map, note_to_destroy));
	}
	else {
		show_debug_message("ERROR: Note to destroy wasn't hit?!");
	}
}

// Clean up!
ds_list_clear(collision_list);
ds_map_clear(num_hits_map);
