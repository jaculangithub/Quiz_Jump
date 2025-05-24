function correct_answer(){

	/// @function correct_answer()
	answer_submitted = true;
	// Unpause game
	global.game_paused = false;
	instance_activate_all();
	quiz_active = false;
	quiz_timer = 0;
	next_quiz_at = quiz_timer + quiz_interval;
	show_notification = false;

}