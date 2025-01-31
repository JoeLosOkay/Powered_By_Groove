// All score calculation functions will be stored here

function score_calculator(num_hits) {
	var power_points = 0;
	
    switch(num_hits) {
		case 0: // miss
		  spawn_track_message(num_hits);
		  return;
		case 1:
		  power_points = global.BASE_ONE_COLLISION_POINTS * global.current_multiplier;
		  break;
		case 2:
		  power_points = global.BASE_TWO_COLLISION_POINTS * global.current_multiplier;
		  break;
		case 3:
		  power_points = global.BASE_THREE_COLLISION_POINTS * global.current_multiplier;
		  break;
		case 4:
		  power_points = global.BASE_FOUR_COLLISION_POINTS * global.current_multiplier;
		  break;
		case 5:
		  power_points = global.BASE_FIVE_COLLISION_POINTS * global.current_multiplier;
		  break;
		case 6:
		  power_points = global.BASE_SIX_COLLISION_POINTS * global.current_multiplier;
		  break;
		default:
		  show_debug_message("ERROR: Unknown hit value sent to power_controller");
		  break;
	}
	
	spawn_track_message(num_hits);
	add_to_total_power(power_points);
}

// note_length is the length of the held note. 
// note_hit_length is how long the note was actually held for.
function held_note_score_calculator(note_length, note_hit_length) {
	var hit_ratio = note_hit_length / note_length;
	var power_points = note_length * hit_ratio * global.current_multiplier;
	
	spawn_track_message_held(hit_ratio);
	add_to_total_power(power_points);
}