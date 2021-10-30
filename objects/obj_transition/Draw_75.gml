curve_eval = animcurve_channel_evaluate(curve_channel, min(frames / animation_speed, 1))
bar_height = max_bar_height * curve_eval;

if (curve_eval > 0.92 && !audio_is_playing(sound) && played_count < max_sounds) {
	sound = audio_play_sound(snd_shutter_close, 0, false);
	audio_sound_gain(sound, 1 - (played_count / max_sounds), 0);
	played_count++;
}

draw_set_color(_background_color);
draw_set_alpha(1);

draw_rectangle(0, 0, gui_width, bar_height, false);
draw_rectangle(0, gui_height, gui_width, gui_height - bar_height, false);

draw_surface_part(surf, 0, 0, sprite_width, sprite_height / 2, (gui_width / 2) - (sprite_width / 2), (bar_height - (sprite_height / 2)));
draw_surface_part(surf, 0, sprite_height / 2, sprite_width, sprite_height / 2, (gui_width / 2) - (sprite_width / 2), gui_height - bar_height);

frames++;