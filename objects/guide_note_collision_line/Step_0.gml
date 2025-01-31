/// @description Check for hits

/* CHECK SINGLE NOTES */

instance_place_list(x, y, note, single_notes_list, false);
var num_hit_singles = ds_list_size(single_notes_list);

for(var i = 0; i < num_hit_singles; i++) {
	var falling_note = ds_list_find_value(single_notes_list, i);
	if(falling_note != noone) {
		if ( miss_line ) { // Note was missed :(
			falling_note.miss();
		}
		if ( single_press_activated == true ) {
			if(parent_collision_controller != noone && !falling_note.terminating) {
				parent_collision_controller.register_collision({
					note_timestamp: falling_note.note_timestamp,
					note_inst_id: falling_note
				});
			}
		}
	}
}

// Clean up and reset
single_press_activated = false;
ds_list_clear(single_notes_list);


/* CHECK HELD NOTE RELEASES */
// NOTE: This should happen before the held note checks because we set held_press_activated
//       to false at the end of the end step

if(!held_press_activated) {
	if(currently_held_note_ref != noone) {
		show_debug_message("Released held note");
		// Check if player has hit tail or not. Act accordingly
		// var currently_held_note_tail = instance_place(x, y, held_note_tail);
	}
}


/* CHECK HELD NOTES */
// NOTE: There should only ever be one held note being hit per guide at a time. 
//       It makes no sense to have multiple held notes on top of each other because
//       it'd be very confusing

// Check if a held_note is overlapping the guide line
var overlapping_held_note_head = instance_place(x, y, held_note_head);
if(overlapping_held_note_head != noone) {
	
	// Held note was missed :(
	if (miss_line) {
		overlapping_held_note_head.miss();
	}
	
	if(held_press_activated) {
		currently_held_note_ref = overlapping_held_note_head;
		currently_held_note_ref.hold();
	}
}

var overlapping_held_note_tail = instance_place(x, y, held_note_tail);
if(overlapping_held_note_tail != noone) {
	
	// If this is the miss line tell tail to destroy itself along with it's head
	if(miss_line) {
		instance_destroy(overlapping_held_note_tail);
	}
	
}

// Deactivate press and test if player is still holding down note
held_press_activated = false;
