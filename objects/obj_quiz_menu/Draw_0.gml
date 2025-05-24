// obj_pause_menu – Draw GUI
if (global.timer == 500 && !global.question_answered){
    // Get camera/viewport position (Camera 0)
    var cam = view_camera[0];
    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);
    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);

    // Semi-transparent full-screen cover
    draw_set_alpha(0.5);
    draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);
    draw_set_alpha(1);

    // Menu box dimensions (smaller height since we're moving content up)
    var box_w = 400;
    var box_h = 300;  // Reduced height
    var box_x = cam_x + (cam_w - box_w) / 2;
    var box_y = cam_y + 50;  // Positioned higher up (reduced from cam_h/2)
    
    // Set text properties
    draw_set_font(fnt_menu);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    // Calculate positions - all elements moved up
    var question_x = cam_x + cam_w / 2;
    var options_x = box_x + 50;
    var question_y = box_y + 20;  // Reduced from 40
    var option_spacing = 50;  // Slightly reduced spacing
    var first_option_y = question_y + 60;  // Reduced from 80
    
    // Draw question (centered but higher up)
    draw_set_halign(fa_center);
    draw_text(question_x, question_y, "What is the sum");
    draw_text(question_x, question_y + 60, "70 + 73?");  // Reduced spacing between question lines
    draw_set_halign(fa_left);
    
    // Draw options (all left-aligned and moved up)
    draw_text(options_x, first_option_y + option_spacing * 2 , "A. 143");
    draw_text(options_x, first_option_y + option_spacing * 3, "B. 3");
    draw_text(options_x, first_option_y + option_spacing * 4, "C. 100");
    draw_text(options_x, first_option_y + option_spacing * 5, "D. 140");
	
	draw_set_halign(fa_center);
	
	if (keyboard_check_pressed(ord("1") || keyboard_check(vk_numpad1))) {
		global.last_key_pressed = 1;
		global.question_answered = true;
		//obj_game_controller.paused = false;
		obj_game_controller.quiz_show = false;
		show_debug_message("Quiz_show")
		show_debug_message("Unpaused")
		
	}
	else if (keyboard_check_pressed(ord("2") || keyboard_check(vk_numpad2))) {
	    global.last_key_pressed = 2;
		global.question_answered = true;
		//obj_game_controller.paused = false;
		obj_game_controller.quiz_show = false;
			show_debug_message("Quiz_show")
		show_debug_message("Unpaused")
	}
	else if (keyboard_check_pressed(ord("3") || keyboard_check(vk_numpad3))) {
	    global.last_key_pressed = 3;
		global.question_answered = true;
		//obj_game_controller.paused = false;
		obj_game_controller.quiz_show = false;
			show_debug_message("Quiz_show")
		show_debug_message("Unpaused")
	}
	else if (keyboard_check_pressed(ord("4") || keyboard_check(vk_numpad4))) {
	    global.last_key_pressed = 4;
		global.question_answered = true;
		//obj_game_controller.paused = false;
		obj_game_controller.quiz_show = false;
		show_debug_message("Quiz_show")
		show_debug_message("Unpaused")
	}
	
}