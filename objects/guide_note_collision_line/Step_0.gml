/// @description Insert description here
// You can write your code in this editor

var falling_note = instance_place(x, y, note);

if(falling_note != noone) {
	if( miss_line ) { // Note was missed :(
		falling_note.miss();
	}
	if ( activated == true) { // Note was hit :)
		falling_note.hit();
	}
}


