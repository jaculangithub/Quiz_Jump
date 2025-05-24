// Check for collision with the player
if (place_meeting(x, y, player1)) {
    // Increase the total coins collected
    global.coins_collected += 1;
	audio_play_sound(snd_coin, 0, false)

    // Play a sound effect (optional)
//    audio_play_sound(snd_coin, 1, false);

    // Destroy the coin instance
    instance_destroy();
}