event_inherited();

if (global.highscore[0] < global.stored_score) {
	global.highscore[0] = global.stored_score;
	global.highscore[1] = global.current_wave_type;
}

reverb = noone;