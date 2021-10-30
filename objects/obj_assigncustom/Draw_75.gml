draw_set_alpha(0.75);
draw_set_color(c_black);
draw_rectangle(0, display_get_gui_height() / 4, display_get_gui_width(), (display_get_gui_height() * 3) / 4, false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_transformed(display_get_gui_width() / 2, (display_get_gui_height() / 2) - 16, "Press what key you want to be:", 1, 1, 0);
draw_text_transformed(display_get_gui_width() / 2, (display_get_gui_height() / 2) + 16, key_types[current_key], 2, 2, 0);