/// @description Render note and trail falling down
if(!terminating) {
	y += drop_speed;
}


for(var i = 0; i < note_length; i++) {
	draw_sprite(trail_sprite_index, 0, x, y+1);
}

