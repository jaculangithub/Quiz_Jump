// Draw filled rectangle with outline around selected character
var target = noone;

// Get the instance to follow
if (charSelected == 1) {
    target = instance_find(obj_girl, 0); // First girl instance
}
else if (charSelected == 2) {
    target = instance_find(obj_boy_player, 0); // First boy instance
}

if (target != noone && instance_exists(target)) {
    var sprt = target.sprite_index;
    var x1 = target.x - sprite_get_xoffset(sprt);
    var y1 = target.y - sprite_get_yoffset(sprt);
    var x2 = x1 + sprite_get_width(sprt);
    var y2 = y1 + sprite_get_height(sprt);

    // Adjust padding (now -20/+20 for a larger box)
    var padding = 20;
    var fillX1 = x1 - padding;
    var fillY1 = y1 - padding;
    var fillX2 = x2 + padding;
    var fillY2 = y2 + padding;

    // 1. Draw the filled rectangle (semi-transparent)
    draw_set_color(c_red);
    draw_set_alpha(0.3); // Lower alpha for a subtle fill
    draw_rectangle(fillX1, fillY1, fillX2, fillY2, false); // false = filled

    // 2. Draw the outline (fully opaque)
    draw_set_alpha(1); // Reset alpha to solid
    draw_rectangle(fillX1, fillY1, fillX2, fillY2, true); // true = outline only
}