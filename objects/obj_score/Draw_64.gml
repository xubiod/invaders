draw_set_alpha(0.2);

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(font_main);
draw_set_color(c_white);

draw_text_transformed(8, display_get_gui_height(), _display_score, 2, 2, 0);
draw_set_halign(fa_right);

draw_text_transformed(display_get_gui_width() - 4, display_get_gui_height(), "wave " + string(global.current_wave) + "\nnext: " + string(obj_wave_manager.alarm[0] / 60) + " spd. bonus: " + string(floor(obj_wave_manager.alarm[0] / 20) * 5), 1, 1, 0);

draw_set_color(merge_color(c_red, c_white, obj_wave_manager.alarm[0] / WAVE_LENGTH));
draw_rectangle(floor(((obj_wave_manager.alarm[0] / WAVE_LENGTH) * display_get_gui_width()) / 2) * 2, display_get_gui_height(), display_get_gui_width(), display_get_gui_height() - 3, false);
draw_set_color(c_white);

draw_set_alpha(1);