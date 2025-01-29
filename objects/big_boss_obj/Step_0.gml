/// @description Play animation
if(animation_direction == "forward") {
	image_speed = 1;
	if(image_index >= (num_frames - 1)) {
		image_index = num_frames - 1;
		image_speed = 0;
		animation_direction = "stopped";
	}
}

if(animation_direction == "reverse") {
	image_speed = -1;
	if(image_index <= 0) {
		image_index = 0;
		image_speed = 0;
		animation_direction = "stopped";
	}
}

if(current_crazy_mode_hits >= CRAZY_MODE_NUM_HITS) {
	sprite_index = big_boss_charged;
}
if(current_time - current_crazy_mode_time >= CRAZY_MODE_SPEED) {
	if(current_crazy_mode_hits < CRAZY_MODE_NUM_HITS) {
		sprite_index = big_boss;
	}
	
	current_crazy_mode_time = current_time;
	current_crazy_mode_hits = 0;
}
