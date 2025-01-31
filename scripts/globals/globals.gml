/* GLOBAL VARIABLES */
/// @description Define globals
enum NoteState {
	NONE, // Should be immediately overwritten. 
	UP, // Normal notes
	DOWN,
	LEFT,
	RIGHT,
	P_UP, // Powered notes
	P_DOWN,
	P_LEFT,
	P_RIGHT,
}

// Layer Names
global.GUIDES_LAYER_DEPTH = 2;
global.NOTES_LAYER_DEPTH = 1;
global.UI_LAYER_DEPTH = 3;

// The chance that a powered note appears. 1/X, where 'X' is the chance.
global.POWERED_NOTE_CHANCE = 10;

// Base point values for SINGLE notes hit. These correspond to the number of
// collision lines hit within the guide_note.
global.BASE_ONE_COLLISION_POINTS = 1;
global.BASE_TWO_COLLISION_POINTS = 1;
global.BASE_THREE_COLLISION_POINTS = 2;
global.BASE_FOUR_COLLISION_POINTS = 3;
global.BASE_FIVE_COLLISION_POINTS = 3;
global.BASE_SIX_COLLISION_POINTS = 5;

// Power and multipler values
global.total_power = 0;
global.current_multiplier = 1;

function get_total_power() {
    return global.total_power;
}

function add_to_total_power(increment) {
	global.total_power += increment;
}

// Held note colors. Needed for rendering trail.
global.HELD_NOTE_MISS_COLOR = #b6b6b6;

global.DOWN_NOTE_FALLING_COLOR = #7c0082;
global.DOWN_NOTE_HOLDING_COLOR_1 = #f400ff;
global.DOWN_NOTE_HOLDING_COLOR_2 = #fa94ff;

global.LEFT_NOTE_FALLING_COLOR = #0b7d00;
global.LEFT_NOTE_HOLDING_COLOR_1 = #16FF00;
global.LEFT_NOTE_HOLDING_COLOR_2 = #85ff7a;

global.RIGHT_NOTE_FALLING_COLOR = #9c0000;
global.RIGHT_NOTE_HOLDING_COLOR_1 = #ff0000;
global.RIGHT_NOTE_HOLDING_COLOR_2 = #ff7373;

global.UP_NOTE_FALLING_COLOR = #000a79;
global.UP_NOTE_HOLDING_COLOR_1 = #0016ff;
global.UP_NOTE_HOLDING_COLOR_2 = #6471ff;

global.POWERED_NOTE_FALLING_COLOR = #938d00;
global.POWERED_NOTE_HOLDING_COLOR_1 = #fff400;
global.POWERED_NOTE_HOLDING_COLOR_2 = #fffb9f;

// Held note trail y_start_point arrays.
// The start points of trails going from x=0 to x=31
global.DOWN_ARROW_TRAIL_Y_START_POINTS = 
[0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,
 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 0];
global.UP_ARROW_TRAIL_Y_START_POINTS =
[29, 27, 25, 23, 21, 19, 17, 15, 13, 11, 9, 7, 5, 3, 1, 0,
 0, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29];
global.RIGHT_ARROW_TRAIL_Y_START_POINTS = 
[0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15];
global.LEFT_ARROW_TRAIL_Y_START_POINTS =
[15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, 0];

