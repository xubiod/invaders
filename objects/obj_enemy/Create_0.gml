var _speeds_use = get_wave_speeds();

attack_cycle = _speeds_use[min(global.current_wave - 1, array_length(_speeds_use) - 1)] + irandom_range(-20, 20);
alarm[0] = attack_cycle;

telegraph_surf = surface_create(36, 36);

_slow_speed = random_range(0.1, 0.4)
_speed = _slow_speed;

ufo_z = irandom_range(64, 72);
ufo_zspd = 0;
ufo_rot = 0;
ufo_color = c_white;
struck = 0;

xspd = 0;
yspd = 0;

ufo_width = sprite_get_width(spr_ufo);
ufo_height = sprite_get_height(spr_ufo);

rock_hit = noone;
is_hit = false;

wander_angle = random(360);
frames = irandom(120);

target_x = 0;
target_y = 0;

bolts = 4;
bolts += (random(650) < 3) ? 2 : 0;