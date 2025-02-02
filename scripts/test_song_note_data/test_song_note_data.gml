drop_speed = 2; // 2px per frame, should take 80 frames to get to down 160 px where the guide note is

// Note lengths in ms
sn = 125; // Sixteenth note
en = 250; // Eighth note
qn = 500; // Quarter note
hn = 1000; // Half note
wn = 2000; // Whole note

// Held note lengths in pixels
sn_px = 15;
en_px = 30;
qn_px = 60;
hn_px = 120;
wn_px = 240;

up = NoteState.UP;
down = NoteState.DOWN;
left = NoteState.LEFT;
right = NoteState.RIGHT;

global.test_song_note_data = 
[
    // The first note should hit the collision line at 2000 ms (2 seconds)
	// 2000ms is when the song's beat starts
    {e: 0, s: 766.66666, d: down, l: 0}, // First note
	{e: 0, s: qn, d: up, l: 0},
	{e: 0, s: qn, d: left, l: 0},
	{e: 0, s: qn, d: right, l: 0},
	// half note tests
	{e: 0, s: qn, d: left, l: hn_px},
	{e: 0, s: hn, d: right, l: hn_px},
	// whole note test
	{e: 0, s: hn, d: up, l: wn_px},
	// eigth note tests
	{e: 0, s: wn, d: left, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: right, l: 0},
	{e: 0, s: en, d: down, l: 0},
	{e: 0, s: en, d: left, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: right, l: 0},
	{e: 0, s: en, d: down, l: 0},
	// long term test
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 0, s: en, d: up, l: 0},
	{e: 1, s: wn*2}
]