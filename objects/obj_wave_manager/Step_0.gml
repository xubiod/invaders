if (instance_number(obj_enemy) == 0 && alarm[0] > 60 && get_time_remaining) {
	obj_score._score += floor(alarm[0] / 20) * 5;
	alarm[0] = 59;
}

if (!audio_is_playing(music) && global.ufos_downed > 0 && global.music_enabled && local_music_enabled) {
	music = audio_play_sound(mus_track, 0, true);
} else if (audio_is_playing(music)) {
	audio_sound_pitch(music, pitch);
	
	if (obj_man.hit) {
		local_music_enabled = false;
		audio_stop_sound(music);
	}
}