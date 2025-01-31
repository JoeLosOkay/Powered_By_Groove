/// @description Draw self and trail
image_index = animation_index;
draw_self();

// Important that the y value of this note is EXACTLY 'note_length' away from the head of the
// held note. Otherwise, notes don't align with the music.

/*
if(being_held) {
	animation_timer += 1;
	if(animation_timer >= animation_speed) {
		//animation_timer = 0;
		if (animation_index == 0) {
			//animation_index = 1;
			current_falling_note_color = falling_note_hit_color_1;
		} else if (animation_index == 1) {
			//animation_index = 2;
			current_falling_note_color = falling_note_hit_color_2;
		} else if (animation_index == 2) {
			//animation_index = 1;
			current_falling_note_color = falling_note_hit_color_1;
		}
	}
}
*/

/*
if(held_note_tail_ref != noone) {
	if(held_note_tail_ref.y + 16 >= y - 16) {
		show_debug_message("NO MORE TRAIL");
	} else {
		draw_set_color(current_falling_note_color);
		draw_rectangle(held_note_tail_ref.x - 1, held_note_tail_ref.y + 16, x + 1, y - 16, false);
	}
}
*/
for(var i = 0; i < note_length; i++) {
	draw_sprite_ext(sprite_index, 1, x, y-i, 1, 1, image_angle, c_white, 1);
}