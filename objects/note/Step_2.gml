/// @description Check if the note has been hit

if(num_hits > 0) {
	instance_destroy(id);
}

if(missed) {
	instance_destroy(id);
}