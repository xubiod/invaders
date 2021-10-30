draw_set_alpha(1);
draw_rectangle_color(x, y, x + width, y + 64, color1, color1, color2, color2, false);
draw_rectangle_color(x, y + 64, x + width, room_height, color2, color2, color2, color2, false);

var i;

for (i = 0; i < 3; i += 2) {
	draw_rectangle_color(x + i, y + i, x + width - i, room_height, color2, color2, color2, color2, true);
}