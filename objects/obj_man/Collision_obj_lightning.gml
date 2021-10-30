var length = 18; // 24

var _start_x = other.x + lengthdir_x(other.image_xscale * -length, other.image_angle);
var _start_y = other.y + lengthdir_y(other.image_xscale * -length, other.image_angle);

var _end_x = other.x + lengthdir_x(other.image_xscale * length, other.image_angle);
var _end_y = other.y + lengthdir_y(other.image_xscale * length, other.image_angle);

if (!hit && collision_line(_start_x, _start_y, _end_x, _end_y, other, true, false) != noone) {
	hit_snd = audio_play_sound(snd_player_hit, 2, false);

	hit = true;

	xspd = random_range(-1.5, 1.5);
	yspd = random_range(-2, -1);
	
	obj_camera.shake = 2 * global.camera_shake_strength;
}