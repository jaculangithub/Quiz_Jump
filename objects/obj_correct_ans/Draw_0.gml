// obj_pause_menu – Draw GUI
if (global.timer == 500 && global.last_key_pressed == 1 && obj_game_controller.correct_ans) {
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
    
	draw_text(question_x, question_y, "Correct Answer");
	
}
	