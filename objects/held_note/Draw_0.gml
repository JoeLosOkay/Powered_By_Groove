/// @description Draw self and trail
draw_self();

for(var i = 0; i < note_length; i++) {
	// +4 for the size of the note border
	draw_sprite_ext(trail_sprite_index, 0, x, y-i-4, 1, 1, trail_sprite_angle, c_white, 1);
}

draw_sprite_ext(sprite_index, image_index, x, y - note_length, 1, 1, image_angle, c_white, 1);