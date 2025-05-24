function submit_answer(){
	/// @function submit_answer()
	if (player_answer == quiz_questions[current_question].correct) {
	    correct_answer();
	} else {
	    wrong_answer();
	}
}