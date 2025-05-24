// Room Start Event
if (current_track != noone) {
    audio_stop_sound(current_track);
}

// Determine which track to play based on room
if (room == lvl1Room) {
    current_track = gameplay_music;
} else {
    current_track = home_music;
}

// Always play the track (even if returning to lvl1Room)
audio_play_sound(current_track, 0.7, true);