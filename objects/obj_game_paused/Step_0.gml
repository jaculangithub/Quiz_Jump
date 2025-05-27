if(visible){
	
	var camX = camera_get_view_x(view_camera[0]); // Camera's X position
    var camY = camera_get_view_y(view_camera[0]); // Camera's Y position
    var camWidth = camera_get_view_width(view_camera[0]); // Camera's width
    var camHeight = camera_get_view_height(view_camera[0]); // Camera's height
	
	// Set the lava's position to the bottom of the viewport
    x = camX + camWidth / 2; // Center horizontally
	y = camY + camHeight - 800; // Align to the bottom
	
	obj_home_btn.visible = true;
	obj_musicVol_icon.visible = true;
	obj_soundVol_icon.visible = true;
	obj_play_icon.visible = true;
	obj_restart_btn.visible = true;
	obj_musicVol_adjuster.visible = true;
	obj_soundVol_adjuster.visible = true;
	
	
}else {
	
	obj_home_btn.visible = false;
	obj_musicVol_icon.visible = false;
	obj_soundVol_icon.visible = false;
	obj_play_icon.visible = false;
	obj_restart_btn.visible = false;
	obj_musicVol_adjuster.visible = false;
	obj_soundVol_adjuster.visible = false;
	
}