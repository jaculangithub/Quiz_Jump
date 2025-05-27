if(visible){
	// Position the lava at the bottom of the viewport/camera
    var camX = camera_get_view_x(view_camera[0]); // Camera's X position
    var camY = camera_get_view_y(view_camera[0]); // Camera's Y position
    var camWidth = camera_get_view_width(view_camera[0]); // Camera's width
    var camHeight = camera_get_view_height(view_camera[0]); // Camera's height
	
	x = camX + camWidth / 2;
	y = camY + (camHeight / 2) - 50;

}