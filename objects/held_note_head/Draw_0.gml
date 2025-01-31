/// @description Draw self and trail
image_index = 0;
draw_self();

// Important that the y value of this note is EXACTLY 'note_length' away from the head of the
// held note. Otherwise, notes don't align with the music.

//draw_sprite_ext(sprite_index, image_index, x, y - note_length, 1, 1, image_angle, c_white, 1);

if(held_note_tail_ref != noone) {
	draw_set_color(falling_note_color);
    draw_rectangle(held_note_tail_ref.x - 16, held_note_tail_ref.y + 16, x + 15, y - 15, false);
}