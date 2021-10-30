if (frames > 150) {
	var _alpha = min(frames - 150, 30) / 30;
	draw_set_alpha(_alpha);
	draw_set_color(c_black);
	
	draw_rectangle(0, 0, gui_width, gui_height, false);
}