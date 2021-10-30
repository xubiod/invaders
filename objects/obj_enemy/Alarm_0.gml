attack_cycle += irandom_range(-5, 15);
attack_cycle = max(5, attack_cycle);

var snd = audio_play_sound_at(snd_ufo_shoot, -x, -y, 0, 128, 2048, 1, false, 1);
audio_sound_pitch(snd, random_range(0.8, 1.2));

var angle = random(360);
var angle_to_shoot = ceil(360 / bolts);

var i;
for (i = 0; i < bolts; i++) {
	with (instance_create_depth(x, y, depth, obj_lightning)) {
		direction = (angle + (i * angle_to_shoot)) % 360;
		image_angle = direction;
		speed = 2 + random_range(-1.0, 1.0);
	}
}

repeat (floor(random_range(0.7, 2.1))) {
	instance_create_depth(x, y, depth, obj_rock);
}

alarm[0] = attack_cycle;
struck = 10;
obj_camera.shake += 4 * global.camera_shake_strength;