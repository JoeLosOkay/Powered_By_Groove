/// @description Play song
// Create Guide Notes
var currently_playing_song = instance_create_depth(17, 160, global.GUIDES_LAYER_DEPTH, playable_song, 
  {
	  song_file: test_beat_1,
	  note_data: []
  }
);