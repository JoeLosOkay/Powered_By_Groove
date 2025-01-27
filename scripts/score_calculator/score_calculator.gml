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