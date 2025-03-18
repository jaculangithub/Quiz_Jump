// Draw GUI Event
// Draw the coin icon in the top-left corner of the screen
draw_sprite(spr_coins, 0, 40, 40); // Draw the coin icon at (10, 10) on the screen

// Draw the total coins collected next to the icon
draw_set_color(c_white); // Set text color
draw_set_font(fnt_coin_counter); // Set font
draw_set_color(c_black);
draw_set_halign(fa_left); // Align text to the left
draw_text(80, 25, string(global.coins_collected)); // Draw the number of coins