/// @description Update delta_multipliers for all objects

global.ACTUAL_DELTA = delta_time / 1000;
global.DELTA_MULTIPLIER = global.ACTUAL_DELTA / global.TARGET_DELTA;
//show_debug_message(string_format(global.ACTUAL_DELTA, 0, 10) + " : " + string_format(global.DELTA_MULTIPLIER, 0, 10));
