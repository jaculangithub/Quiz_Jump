function start_quiz(){
	/// @function start_quiz()
	quiz_active = true;
	quiz_timer = 0;
	answer_submitted = false;
	player_answer = -1;

	// Select random question
	current_question = irandom(array_length(quiz_questions) - 1);

	// Pause game
	global.game_paused = true;

	// You can pause all objects EXCEPT ones with obj_pause_exempt as parent
	with (all) {
	    if (!object_is_ancestor(object_index, obj_pause_exempt)) {
	        if (variable_instance_exists(id, "xspd")) xspd = 0;
	        if (variable_instance_exists(id, "yspd")) yspd = 0;
	        if (variable_instance_exists(id, "speed")) speed = 0;
	    }
	}
}
