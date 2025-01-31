// Spawns a held note
function spawn_held_note(location_x, note_length, note_direction, drop_speed) {
	new_arrow_tail = instance_create_depth(location_x, 0-note_length, global.GUIDES_LAYER_DEPTH, held_note_tail,
	{
		note_direction: note_direction,
		drop_speed: drop_speed,
	});
	new_arrow_head = instance_create_depth(location_x, 0, global.GUIDES_LAYER_DEPTH, held_note_head,
	{
		note_direction: note_direction,
		drop_speed: drop_speed,
		held_note_tail_ref: new_arrow_tail,
		note_length: note_length
	});
}