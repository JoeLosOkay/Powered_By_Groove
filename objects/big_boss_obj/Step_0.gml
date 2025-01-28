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