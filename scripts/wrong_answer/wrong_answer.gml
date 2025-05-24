function wrong_answer() {
	/// @function wrong_answer()
	answer_submitted = true;

	// Unpause game
	global.game_paused = false;

	// Reset quiz state
	quiz_active = false;
	quiz_timer = 0;
	next_quiz_at = quiz_timer + quiz_interval;
	show_notification = false;

	// Increase lava speed
	with (obj_lava) {
	    lava_speed *= 1.5;
	}
}
