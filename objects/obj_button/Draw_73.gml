draw_set_font(font_main);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(mousein > 1 ? 1 : 0.5);

draw_text_transformed(x + width / 2, y + 10, text, mousein == 90 ? 2 : 1, mousein == 90 ? 2 : 1, 270 + min(mousein, 90));

if (mousein > 70) {
	draw_set_alpha(0.5);
	draw_set_valign(fa_top);
	draw_text_transformed(x + width / 2, y + 22, extra, mousein == 90 ? 1 : 0.5, mousein == 90 ? 1 : 0.5, 270 + min(mousein, 90));
}