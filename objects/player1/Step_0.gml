// Get input
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

moveDir = rightKey - leftKey;

// Apply gravity
yspd += grav;
if (yspd > termVel) yspd = termVel; // Limit falling speed

// Auto jump only if:
// 1. The player is falling or at peak of jump (yspd >= 0)
// 2. The bottom of the player is touching the top of the platform
if (yspd >= 0) {
    // Check for collision along the player's bottom edge
    var _left = bbox_left;      // Left edge of player's collision box
    var _right = bbox_right;    // Right edge of player's collision box
    var _bottom = bbox_bottom;  // Bottom edge of player's collision box
    
    // Check if there's a platform directly below the player's feet
    if (collision_line(_left, _bottom + 1, _right, _bottom + 1, Platform, true, true) || 
        collision_line(_left, _bottom + 1, _right, _bottom + 1, ground, true, true)) {
        yspd = jspd; // Jump speed (negative value moves up)
        
        // Increment the platform jump counter
        global.platforms_jumped += 1;
        
        // Change to jump sprite and reset animation
        sprite_index = spr_player_jump; // Assign the jump sprite
        image_index = 0; // Start the animation from the first frame
        image_speed = 1; // Set animation speed (1 = normal speed)
    }
}

// Move left & right automatically at walls
if ((x - sprite_width / 2) <= 0) {
    moveDir = 1; // Move right if touching left wall
} 
else if ((x + sprite_width / 2) >= room_width) {
    moveDir = -1; // Move left if touching right wall
}

xspd = moveDir * moveSpd; // Apply horizontal movement

// Update player position
x += xspd;
y += yspd;

// Stop jump animation if it reaches the last frame
if (sprite_index == spr_player_jump && image_index >= sprite_get_number(spr_player_jump) - 1) {
    image_speed = 0; // Stop the animation
    image_index = sprite_get_number(spr_player_jump) - 1; // Stay on the last frame
}

// In the player's Step Event:
if (place_meeting(x, y, obj_lava)) {
    // Handle player death or damage
    instance_destroy(); // Example: Destroy the player
}

