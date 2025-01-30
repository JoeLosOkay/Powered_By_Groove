/// @description Draw tail

image_index = 0;
draw_self();

if(head_note_ref != noone) {
	draw_set_color(falling_note_color);
    draw_rectangle(x - 16, y + 16, head_note_ref.x + 15, head_note_ref.y - 15, false);
}
