global.current_wave++;
var i;

var _wave_to = get_wave();

for (i = 0; i < _wave_to[min(global.current_wave - 1, array_length(_wave_to) - 1)]; i++) {
	instance_create_depth(lengthdir_x(irandom_range(1024, 2048), random(360)) + obj_man.x, lengthdir_y(irandom_range(1024, 2048), random(360)) + obj_man.y, depth, obj_enemy);
}

get_time_remaining = true;
alarm[0] = WAVE_LENGTH + (150 * (global.current_wave - 1));