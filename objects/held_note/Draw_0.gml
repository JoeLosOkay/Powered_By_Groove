/// @description Draw self and trail
image_index = 0;
draw_self();

// Important that the y value of this note is EXACTLY 'note_length' away from the head of the
// held note. Otherwise, notes don't align with the music.

draw_set_color(falling_note_color);
for(var i = 0; i < array_length(trail_start_points); i++) {
	draw_line(x-16+i, y-16+trail_start_points[i], x-16+i, y-16+trail_start_points[i]-note_length);
}