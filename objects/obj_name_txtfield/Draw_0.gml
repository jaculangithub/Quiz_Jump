// Draw background
draw_set_color(background_color);
draw_rectangle(x, y, x + width, y + height, false);

// Draw border
draw_set_color(border_color);
draw_rectangle(x, y, x + width, y + height, true);

// Draw text
draw_set_color(text_color);
draw_text(x + x_pad, y + y_pad, text_input);

// Draw cursor if active
if (is_active) {
    var text_width = string_width(text_input);
    draw_line(x + x_pad + text_width, y + y_pad, x + x_pad + text_width, y + height - y_pad);
}
