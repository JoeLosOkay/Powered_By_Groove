// Spawns track message for single notes based on number of hits
function spawn_track_message (num_hits) {
	var message_sprite;
	switch(num_hits) {
		case 0:
		  message_sprite = miss_message;
		  break;
		case 1:
		  message_sprite = meh_message;
		  break;
		case 2:
		  message_sprite = meh_message;
		  break;
		case 3:
		  message_sprite = good_message;
		  break;
		case 4:
		  message_sprite = cool_message;
		  break;
		case 5:
		  message_sprite = wow_message;
		  break;
		case 6:
		  message_sprite = perfect_message;
		  break;
		default:
		  show_debug_message("ERROR: unknown hit value sent to spawn_track_message");
		  break;
	}
	
	var spawn_x = irandom_range(1, 90);
	var spawn_y = irandom_range(60, 90);
	instance_create_depth(17, 160, global.UI_LAYER_DEPTH, note_hit_message, 
        {
	        message_sprite: message_sprite,
			spawn_x: spawn_x,
			spawn_y: spawn_y
        }
    );
}

// Spawns a track message for held notes based on a scoring system
function spawn_track_message_held(held_ratio) {
	var message_sprite;
	show_debug_message("Held Ratio: " + string(held_ratio));
	
	if(held_ratio <= 0 + EPSILON) {
		message_sprite = miss_message;
	} else if(held_ratio > 0 - EPSILON && held_ratio <= 0.5 + EPSILON) {
		message_sprite = meh_message;
	} else if (held_ratio > 0.5 - EPSILON && held_ratio <= 0.7 + EPSILON) {
		message_sprite = good_message;
	} else if (held_ratio > 0.7 - EPSILON && held_ratio <= 0.9 + EPSILON) {
		message_sprite = cool_message;
	} else if (held_ratio > 0.9 - EPSILON && held_ratio <= 0.99 + EPSILON) {
		message_sprite = wow_message;
	} else if (held_ratio >= 1 - EPSILON) {
		message_sprite = perfect_message;
	} else {
		message_sprite = cool_message; // If you manage to get past these epsilons I'll through you a bone :)
		show_debug_message("LUCKY");
	}
	
	var spawn_x = irandom_range(1, 90);
	var spawn_y = irandom_range(60, 90);
	instance_create_depth(17, 160, global.UI_LAYER_DEPTH, note_hit_message, 
        {
	        message_sprite: message_sprite,
			spawn_x: spawn_x,
			spawn_y: spawn_y
        }
    );
}