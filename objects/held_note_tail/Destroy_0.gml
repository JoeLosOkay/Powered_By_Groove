/// @description destroy tail note
show_debug_message("tail is being destroyed");

// Tell my head to destroy too
if(head_note_ref != noone) {
	show_debug_message("killing my head");
	head_note_ref.terminate()
}
