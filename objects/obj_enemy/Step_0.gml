image_yscale = 0.6;
image_alpha = 0.2 + (0.25 * (sin(current_time / 50) + 1));

var _nearest = instance_nearest(x, y, obj_man);

var angle = point_direction(x, y, target_x, target_y);

if (is_hit) {
	ufo_zspd -= 0.2;
	ufo_rot += 37;
	alarm[0] = -1;
	
	x += xspd;
	y += yspd;
	
	ufo_color = merge_color(ufo_color, c_red, 0.04);
	
	if (ufo_z < 0) instance_destroy();
} else if (_nearest == noone || _nearest.hit) {
	x += lengthdir_x(_slow_speed, wander_angle);
	y += lengthdir_y(_slow_speed, wander_angle);
	
	wander_angle += random_range(-10, 10);
	alarm[0] = -1;
} else {
	target_x = _nearest.x;
	target_y = _nearest.y;
	
	x += lengthdir_x(_speed, angle);
	y += lengthdir_y(_speed, angle);
}

ufo_z += ufo_zspd;

_speed = max((point_distance(x, y, target_x, target_y) - 128) / 70, _slow_speed);

rock_hit = collision_rectangle(
	x - (ufo_width / 2), y - ufo_z - ufo_height,
	x + (ufo_width / 2), y - ufo_z,
	obj_rock, false, true
);

if (rock_hit != noone) {
	var rock_hit_z = rock_hit.z;
	if (rock_hit_z > ufo_z - 1) {
		instance_destroy(rock_hit);
		is_hit = true;
		ufo_zspd = 1;
		xspd = random_range(-0.7, 0.7);
		yspd = random_range(-0.7, 0.7);
		
		obj_score._score += 5 * global.current_wave;
	
		audio_play_sound(snd_ufo_hit, 1, false);
	}
}

frames++;