//if (obj_game_controller.paused && mouse_check_button_pressed(mb_left)) {
//    // Get camera so we can translate GUI→world coords
//    var cam   = view_camera[0];
//    var cam_x = camera_get_view_x(cam);
//    var cam_y = camera_get_view_y(cam);

//    // Convert window mouse coords to room coords
//    var mx = window_mouse_get_x() + cam_x;
//    var my = window_mouse_get_y() + cam_y;

//    // Define the same button rectangles as in Draw
//    var btn_w       = 120;
//    var btn_h       = 40;
//    var btn_spacing = 20;
//    var cam_w = camera_get_view_width(cam);
//    var total_w = btn_w * 3 + btn_spacing * 2;
//    var btn_start_x = cam_x + (cam_w - total_w) * 0.5;
//    var btn_y       = camera_get_view_y(cam) + // compute box_y+box_h+20 same as draw
//                     (camera_get_view_height(cam) - 100) * 0.5 + 100 + 20;

//    // Home?
//    if (mx > btn_start_x && mx < btn_start_x + btn_w
//     && my > btn_y       && my < btn_y + btn_h) {
//        // go back to main menu room (replace with your room name)
//        room_goto(rm_main_menu);
//    }
//    // Continue?
//    var x2 = btn_start_x + btn_w + btn_spacing;
//    if (mx > x2 && mx < x2 + btn_w
//     && my > btn_y && my < btn_y + btn_h) {
//        // simply unpause
//        obj_game_controller.paused = false;
//    }
//    // Restart?
//    var x3 = x2 + btn_w + btn_spacing;
//    if (mx > x3 && mx < x3 + btn_w
//     && my > btn_y && my < btn_y + btn_h) {
//        // restart the current room
//        room_restart();
//    }
//}

