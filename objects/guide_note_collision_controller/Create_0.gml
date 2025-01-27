/// @description Create 

// This object controls the order of notes being hit when the
// guide note has been activated. It is NOT used for missed note
// collisions.
collision_list = ds_list_create();

function register_collision(collision_info) {
	ds_list_add(collision_list, collision_info);
}