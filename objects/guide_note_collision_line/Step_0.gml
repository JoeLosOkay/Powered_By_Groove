/// @description Insert description here
// You can write your code in this editor

var falling_note = instance_place(x, y, note);
if (falling_note != noone && activated == true) {
	falling_note.hit();
}

