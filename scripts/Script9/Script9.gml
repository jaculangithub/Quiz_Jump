function draw_button(x, y, w, h, text, hover) {
    draw_set_color(hover ? c_blue : c_dkgray);
    draw_rectangle(x, y, x + w, y + h, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x + w/2, y + h/2, text);
}