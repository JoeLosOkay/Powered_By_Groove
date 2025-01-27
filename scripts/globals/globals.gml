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
global.GUIDES_LAYER_DEPTH = 1;
global.NOTES_LAYER_DEPTH = 2;
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