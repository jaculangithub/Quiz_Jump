if (obj_game_controller.quiz_show ) {
    // Get camera so we can translate GUI→world coords
	
    var cam   = view_camera[0];
    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);

    // Convert window mouse coords to room coords
    var mx = window_mouse_get_x() + cam_x;
    var my = window_mouse_get_y() + cam_y;

    // Define the same button rectangles as in Draw
    var btn_w       = 120;
    var btn_h       = 40;
    var btn_spacing = 20;
    var cam_w = camera_get_view_width(cam);
    var total_w = btn_w * 3 + btn_spacing * 2;
    var btn_start_x = cam_x + (cam_w - total_w) * 0.5;
    var btn_y       = camera_get_view_y(cam) + // compute box_y+box_h+20 same as draw
                     (camera_get_view_height(cam) - 100) * 0.5 + 100 + 20;

    
	
}

