/// @description Define globals
enum NoteState {
	UP, // Normal notes
	DOWN,
	LEFT,
	RIGHT,
	P_UP, // Powered notes
	P_DOWN,
	P_LEFT,
	P_RIGHT,
	NONE // Should be immediately overwritten. 
}

enum Layers {
	NOTES
}

// The chance that a powered note appears. 1/X, where 'X' is the chance.
global.POWERED_NOTE_CHANCE = 10;