xspd = 0;
yspd = 0;

_friction = 0.7;
speed_reduction = 1.7;
diagonal_speed_reduction = 2.4;

run_animation_threshold = 0.3;

trail_data = ds_list_create();
trail_length = 32;
trail_render_every = 4;

mapping = global.player_mapping;
throw_frames = 0;
throw_done = true;

hit = false;
hit_frames = 0;

hit_snd = noone;
hit_pitch = 1;

frames = 0;