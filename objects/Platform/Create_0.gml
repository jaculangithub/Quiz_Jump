//x = irandom_range(2, room_width - 50);
//y = irandom_range(0, room_height - 50);

// Randomize the X position within the room's width
x = irandom(room_width);

// Optional: Ensure the instance stays within the room's bounds
x = clamp(x, 0, room_width - sprite_width);

randomize();