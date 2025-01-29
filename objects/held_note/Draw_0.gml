/// @description Draw self and trail
draw_self();

for(var i = 0; i < note_length; i++) {
	draw_sprite(trail_sprite_index, 0, x, y-i-4); // +4 for the size of the note border
}

draw_sprite(sprite_index, 0, x, y - note_length);