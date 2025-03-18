// Check if the player has jumped on 3 platforms
if (global.platforms_jumped >= 3) {
    // Make the lava visible
    visible = true;
    
    // Position the lava at the bottom of the viewport/camera
    var camX = camera_get_view_x(view_camera[0]); // Camera's X position
    var camY = camera_get_view_y(view_camera[0]); // Camera's Y position
    var camWidth = camera_get_view_width(view_camera[0]); // Camera's width
    var camHeight = camera_get_view_height(view_camera[0]); // Camera's height
    
    // Set the lava's position to the bottom of the viewport
    x = camX + camWidth / 2; // Center horizontally
    y = camY + camHeight - sprite_height / 2; // Align to the bottom
    
    // Optional: Make the lava rise over time
 //   y -= lava_speed;
}