/// @description Insert description here
image_speed = 0;
animation_direction = "stopped";
num_frames = sprite_get_number(sprite_index);

// Control Crazy Mode
CRAZY_MODE_SPEED = 500; // How many miliseconds to activate crazy mode
CRAZY_MODE_NUM_HITS = 9; // How many hits to achieve crazy mode
current_crazy_mode_hits = 0;
current_crazy_mode_time = current_time;

