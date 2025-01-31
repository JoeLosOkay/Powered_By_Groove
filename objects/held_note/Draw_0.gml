/// @description Draw self and trail

draw_self();

// Important that the y value of this note is EXACTLY 'note_length' away from the head of the
// held note. Otherwise, notes don't align with the music.

// Animate being hit
if(being_held) {
	if(current_animation_time >= animation_speed) {
		if(hold_trail_animation_index = 1) {
			falling_note_color = falling_note_holding_color2;
			hold_trail_animation_index = 2;
		}
		else if(hold_trail_animation_index = 2) {
			falling_note_color = falling_note_holding_color1;
			hold_trail_animation_index = 1;
		}
		current_animation_time = 0;
	} else {
		current_animation_time += 1;
	}
}

draw_set_color(falling_note_color);
for(var i = 0; i < array_length(trail_start_points); i++) {
	draw_line(x-16+i, y-16+trail_start_points[i], x-16+i, y-16+trail_start_points[i]-trail_length);
}

//image_index += 1;
