// Set target delta time and whatnot
// All units in milliseconds

// We want the difference between each frame to be EXACTLY 1/60th of a second or 16.66 milliseconds
global.TARGET_DELTA = 16.666666666666;

// The actual delta is what the difference between frames REALLY is. Due to hardware or software
// weirdness, this value can fluctuate. In a rythm game, it's CRUCIAL to make sure that all animating
// elements match up to the song as closely as possible, so we use this value to see what speed things
// are actually occuring at. 
global.ACTUAL_DELTA = delta_time / 1000;

// Once we have the speed (in ms) that our game is running at, we can create a multiplier that we can
// use to ensure that all of our elements speed up when the game is running slow, or slow down when
// the game is running fast
global.DELTA_MULTIPLIER = global.ACTUAL_DELTA / global.TARGET_DELTA;

// Also when comparing these floats, use an epsilon to avoid missing small differences or false negatives
#macro EPSILON 0.00001