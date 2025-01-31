/// @description Check if the held note has been hit
if(terminating) {
	// Note has been released. Destroy self
	show_debug_message("IMAGE INDEX IS: " + string(image_index));
	if(image_index >= image_number -1 ) {
		show_debug_message("AAAAAAA");
		instance_destroy();
	}
}