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


// The chance that a powered note appears. 1/X, where 'X' is the chance.
global.POWERED_NOTE_CHANCE = 10;

