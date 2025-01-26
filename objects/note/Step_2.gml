/// @description Check if the note has been hit

if(num_hits > 0) {
	show_debug_message("Ow, I've been hit " + string(num_hits) + " times!");
	instance_destroy(id);
}

if(missed) {
	show_debug_message("Phew, I was missed");
	instance_destroy(id);
}