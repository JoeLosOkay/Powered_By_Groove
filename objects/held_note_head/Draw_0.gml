/// @description Draw self and trail
image_index = 0;
draw_self();

// Important that the y value of this note is EXACTLY 'note_length' away from the head of the
// held note. Otherwise, notes don't align with the music.

//draw_sprite_ext(sprite_index, image_index, x, y - note_length, 1, 1, image_angle, c_white, 1);