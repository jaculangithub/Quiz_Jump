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
    if (collision_line(_left, _bottom + 1, _right, _bottom + 1, Platform, true, true)) {
        yspd = jspd; // Jump speed (negative value moves up)
    }
}

// Move left & right automatically at walls
if (x <= 0) {
    moveDir = 1; // Move right if touching left wall
} 
else if (x >= room_width - sprite_width) {
    moveDir = -1; // Move left if touching right wall
}

xspd = moveDir * moveSpd; // Apply horizontal movement

// Update player position
x += xspd;
y += yspd;