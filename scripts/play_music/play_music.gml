function play_music(){
	/// @function play_music()
	// Stop previous music if playing
	if (music_handle != noone) {
	    audio_stop_sound(music_handle);
	}

	// Play new track with looping
	music_handle = audio_play_sound(bg_tracks[current_track], global.music_volume, true);

	// Set volume (in case it was changed)
	if (music_handle != noone) {
	    audio_sound_gain(music_handle, global.music_volume, false);
	}
}