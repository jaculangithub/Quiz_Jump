
if(visible){
	// Position the lava at the bottom of the viewport/camera
    var camX = camera_get_view_x(view_camera[0]); // Camera's X position
    var camY = camera_get_view_y(view_camera[0]); // Camera's Y position
    var camWidth = camera_get_view_width(view_camera[0]); // Camera's width
    var camHeight = camera_get_view_height(view_camera[0]); // Camera's height
	
	// Set the lava's position to the bottom of the viewport
    //x = camX + camWidth / 2; // Center horizontally
	//y = camY + camHeight - 800; // Align to the bottom
	
	// x = camX + 150;
	y = camY + 200;
	
	obj_ansN1_1.visible = true;
	
}