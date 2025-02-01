// Spawns a held note
function spawn_held_note(note_direction, location_x, drop_speed, note_length) {
	show_debug_message("Spawning note with direction " + string(note_direction));
	new_held_note = instance_create_depth(location_x, 0, global.GUIDES_LAYER_DEPTH, held_note,
	{
		note_direction: note_direction,
		drop_speed: drop_speed,
		note_length: note_length
	});
}