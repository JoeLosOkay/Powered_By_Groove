/// @description Create 

// This object controls the order of notes being hit when the
// guide note has been activated. It is NOT used for missed note
// collisions.
// TODO: This doesn't need to be two objects. Lazy lazy :)
collision_list = ds_list_create();
num_hits_map = ds_map_create();

function register_collision(collision_info) {
	ds_list_add(collision_list, collision_info);
}