function spawn_note(note_direction, location_x, drop_speed) {
	show_debug_message("Spawning note with direction " + string(note_direction));
	new_note = instance_create_depth(location_x, 0, global.GUIDES_LAYER_DEPTH, note,
	{
		note_direction: note_direction,
		drop_speed: drop_speed
	});
}