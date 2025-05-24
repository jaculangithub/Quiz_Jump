/// obj_game_controller – Step
// Toggle pause when the player hits ESC
if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;
}

if (global.timer < 500 && !paused) {
	global.timer++;
	show_debug_message(global.timer);
} else if (global.timer == 500) {
	
	quiz_show = true;
	
}

//if( !(global.last_key_pressed < 0) && 
//	 (global.last_key_pressed < 5) &&
//	  global.question_answered){
		
//}




if (quiz_show) {
    if (keyboard_check_pressed(vk_numpad1)) {
        // Player pressed 1 (top row or numpad)
        show_debug_message(1)
		show_debug_message("Correct Answer!")
    }
    else if ( keyboard_check_pressed(vk_numpad2)) {
        // Player pressed 2
        selected_answer = 2;
		 show_debug_message(2)
    }
    else if (keyboard_check_pressed(vk_numpad3)) {
        // Player pressed 3
        selected_answer = 3;
		show_debug_message(3)
    }
    else if ( keyboard_check_pressed(vk_numpad4)) {
        // Player pressed 4
        selected_answer = 4;
		show_debug_message(4)
    }
}
	
	
