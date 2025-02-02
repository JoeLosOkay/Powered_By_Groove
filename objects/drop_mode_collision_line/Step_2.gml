/// @description Check for collisions with notes

if(global.current_mode == Modes.DropMode) {
	instance_place_list(x, y, note, single_notes_list, false);
	var num_hit_singles = ds_list_size(single_notes_list);

	for(var i = 0; i < num_hit_singles; i++) {
		var falling_note = ds_list_find_value(single_notes_list, i);
		if(instance_exists(falling_note) && !falling_note.terminating) {
			// No idea why these are showing up as errors... Stupid-ass gamemaker
			for(var j = 0; j < ds_list_size(dancer_refs); j++) {
				if(instance_exists(ds_list_find_value(dancer_refs, j))) {
					ds_list_find_value(dancer_refs, j).do_move(falling_note.note_direction);
				}
			}
			falling_note.hit(irandom_range(1, 6)); // TODO. Allow this range to be upgraded
			if(parent_guide_note != noone) {
				parent_guide_note.auto_activate();
			}
		}
	}
	
	ds_list_clear(single_notes_list);
}
