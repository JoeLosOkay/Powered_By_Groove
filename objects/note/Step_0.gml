/// @description Track movement and collisions with guide arrows
if(!terminating) {
	y += drop_speed;
}
else {
	if(image_index >= image_number - 1) {
		instance_destroy();
	}
}

