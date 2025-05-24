/// obj_pause_menu – Draw GUI
if (obj_game_controller.paused) {
    // Get camera/viewport position (Camera 0)
    var cam = view_camera[0];
    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);
    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);

    // Semi-transparent full-screen cover (over the viewport)
    draw_set_alpha(0.5);
    draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);
    draw_set_alpha(1);

    // Menu box (centered in the viewport)
    var box_w = 200;
    var box_h = 100;
    var box_x = cam_x + (cam_w - box_w) / 2;  // Center horizontally in view
    var box_y = cam_y + (cam_h - box_h) / 2;  // Center vertically in view
    
	
    // Menu text (also centered in viewport)
    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle); // Optional: Vertically center text
    draw_text(cam_x + cam_w / 2, box_y + 30, "Game Paused");
    draw_text(cam_x + cam_w / 2, box_y + 90, "Press ESC to Resume");
}