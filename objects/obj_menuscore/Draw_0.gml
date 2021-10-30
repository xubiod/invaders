draw_set_alpha(0.5);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_text_transformed(x + random_range(-shake, shake), y + random_range(-shake, shake), _display_score, 2, 2, 0);
draw_text_transformed(x + random_range(-shake, shake), y + 16 + random_range(-shake, shake), _type, 1, 1, 0);

if (_score > _display_score) {
	_display_score = min(_display_score + step, _score);
	if (frames % 3 == 0) audio_play_sound(snd_tick, 0, false);
}
frames++;
shake = max(0, shake - 1);