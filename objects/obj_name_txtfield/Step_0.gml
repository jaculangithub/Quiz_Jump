// Detect mouse click for focusing the text field
if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x > x && mouse_x < x + width &&
        mouse_y > y && mouse_y < y + height) {
        is_active = true;
    } else {
        is_active = false;
    }
}

// Capture keyboard input if the field is active
if (is_active) {
    var key = keyboard_string; // GameMaker's built-in string for text input
    if (string_length(key) <= max_length) {
        text_input = key;
    }
}
