var input_cache = [move_horizontal(mapping), move_vertical(mapping), is_move_diagonal(mapping), check_throw_status(mapping)];
var _current_speed_reduction = input_cache[2] ? diagonal_speed_reduction : speed_reduction;

if (hit) {
	sprite_index = spr_shock;
	image_speed = 1;
	image_blend = c_white;
	x += xspd;
	y += yspd;
	yspd += 0.05;
	hit_frames++;
	
	if (hit_frames > 90 && !instance_exists(obj_transition_gameover)) {
		global.stored_score = obj_score._score;
		instance_create_depth(0, 0, depth, obj_transition_gameover);
	}
	
	ds_list_add(trail_data, [sprite_index, image_index, x, y, image_xscale * random_range(1.0, 1.7), image_yscale * random_range(1.0, 1.7), image_angle, image_blend]);
	
	if (ds_list_size(trail_data) > trail_length) {
		ds_list_delete(trail_data, 0);
	}
	
	global.tutorial = false;
	exit;
}

var _throw = min(throw_frames / 12, 7);
var rock = instance_nearest(x, y, obj_rock);

if (input_cache[3][0]) {
	image_index = 0;
	image_speed = 0;
	throw_done = false;
} else if (input_cache[3][2]) {
	if (rock != noone && point_distance(x, y, rock.x, rock.y) < ROCK_THROW_RANGE) {
		rock.zspd = _throw;
		rock.image_blend = c_white;
		global.tutorial = false;
	}
	
	image_speed = 1;
	throw_frames = 0;
	image_blend = c_white;
}

if (input_cache[3][1]) {
	sprite_index = spr_man_throw;
	_current_speed_reduction = 4096;
	throw_frames++;
	
	image_blend = merge_color(c_white, c_red, _throw / 14);
	if (rock != noone && point_distance(x, y, rock.x, rock.y) < ROCK_THROW_RANGE) rock.image_blend = c_yellow;
}

xspd += input_cache[0] / _current_speed_reduction;
yspd += input_cache[1] / _current_speed_reduction;

x += xspd;
y += yspd;

xspd *= _friction;
yspd *= _friction;

if ((abs(xspd) + abs(yspd)) > run_animation_threshold && throw_done) {
	sprite_index = spr_man_run;
	if (frames % 15 == 0) audio_sound_pitch(audio_play_sound(snd_step, 0, false), random_range(0.6, 1.4));
	
	ds_list_add(trail_data, [sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend]);
	if (ds_list_size(trail_data) > trail_length) {
		ds_list_delete(trail_data, 0);
	}
} else {
	if (throw_done) sprite_index = spr_man_idle;
	if (ds_list_size(trail_data) > 0) ds_list_delete(trail_data, 0);
}

if (input_cache[0] != 0) image_xscale = input_cache[0];

if (audio_is_playing(hit_snd)) {
	audio_sound_pitch(hit_snd, hit_pitch);
	hit_pitch = max(0.3, hit_pitch - 0.1);
}

audio_listener_position(-x, -y, 0);

frames++;