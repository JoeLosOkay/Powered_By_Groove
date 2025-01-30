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

// Base point values for notes hit. These correspond to the number of
// collision lines hit.
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