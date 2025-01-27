/// @description Fade the message out
alpha_value -= 1 / fade_duration;
cur_x -= .5;

if (alpha_value <= 0) {
	instance_destroy(id);
}