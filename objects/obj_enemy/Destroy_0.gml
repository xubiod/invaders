repeat (irandom_range(2, 4)) {
	with (instance_create_depth(x, y, depth, obj_rock)) {
		frames = 590 + irandom_range(-30, 30);
	}
}

repeat (irandom_range(3, 6)) {
	with (instance_create_depth(x, y, depth, obj_rock)) {
		frames = irandom_range(-120, -30);
	}
}

obj_score._score += 100 * global.current_wave;

var snd = audio_play_sound_at(snd_explosion, -x, -y, 0, 128, 2048, 1, false, 1);
audio_sound_pitch(snd, random_range(0.8, 1.2));

obj_camera.shake += 9 * global.camera_shake_strength;
global.ufos_downed++;

surface_free(telegraph_surf);