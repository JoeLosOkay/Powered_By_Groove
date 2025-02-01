/// @description Track movement and collisions with guide arrows
if(!terminating) {
	y += drop_speed * global.DELTA_MULTIPLIER;
}
else {
	if(image_index >= image_number - 1) {
		instance_destroy();
	}
}

