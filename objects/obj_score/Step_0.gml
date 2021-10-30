if (_score > _display_score) {
	_display_score = min(_display_score + 5, _score);
	if (frames % 3 == 0) audio_play_sound(snd_tick, 0, false);
}
frames++;