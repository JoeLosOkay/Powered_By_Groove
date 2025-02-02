/// @description Insert description here
// You can write your code in this editor
animation_timer = 0;
holding_direction = false;

sprite_index = character_sprite;
image_speed = 0;
image_index = 0;

function do_move(note_direction) {
	animation_timer = animation_length;
	switch(note_direction) {
		case NoteState.LEFT:
			image_index = 1;
			break;
		case NoteState.RIGHT:
			image_index = 2;
			break;
		case NoteState.UP:
			image_index = 3;
			break;
		case NoteState.DOWN:
			image_index = 4;
			break;
		case NoteState.P_LEFT:
			image_index = 1;
			break;
		case NoteState.P_RIGHT:
			image_index = 2;
			break;
		case NoteState.P_UP:
			image_index = 3;
			break;
		case NoteState.P_DOWN:
			image_index = 4;
			break;
		default:
			show_debug_message("ERROR: Invalid direction given to dance sprite");
			break;
	}
}
