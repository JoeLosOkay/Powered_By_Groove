/// @description Spawn Right Arrow
var new_arrow = instance_create_layer(10, 10, Layers.NOTES, note);
new_arrow.powered = irandom(global.POWERED_NOTE_CHANCE) == 0;

if(new_arrow.powered) {
	new_arrow.direction = NoteState.P_RIGHT;
}
else {
	new_arrow.direction = NoteState.RIGHT;
}

new_arrow.drop_speed = 10;