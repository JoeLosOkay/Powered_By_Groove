drop_speed = 4; // 40 frames to get to down 160 px

// Note lengths in ms
sn = 31.25; // Sixteenth note
en = 62.5; // Eighth note
qn = 125; // Quarter note
hn = 250; // Half note
wn = 500; // Whole note

up = NoteState.UP;
down = NoteState.DOWN;
left = NoteState.LEFT;
right = NoteState.RIGHT;

global.test_song_note_data = 
[
    // The first note should hit the collision line at 2000 ms (2 seconds)
	// 2000ms is when the song's beat starts
	
    {e: 0, s: 1960, d: down, l: 0}, // First note
	{e: 0, s: qn, d: up, l: 0},
	{e: 0, s: qn, d: left, l: 0},
	{e: 0, s: qn, d: right, l: 0},
	// half note tests
	{e: 0, s: qn, d: left, l: 0},
	{e: 0, s: hn, d: right, l: 0},
	// whole note test
	{e: 0, s: hn, d: up, l: wn},
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
]