var near_player = instance_nearest(focus_x, focus_y, obj_man);
// var near_enemy = instance_nearest(focus_x, focus_y, obj_enemy);

if (near_player != noone && !near_player.hit) {
	focus_x = near_player.x;
	focus_y = near_player.y;
}

x = focus_x - (camera_width / 2);
y = focus_y - (camera_height / 2);

x = clamp(x, 0, room_width - camera_width) + random_range(-shake, shake);
y = clamp(y, 0, room_height - camera_height) + random_range(-shake, shake);

camera_set_view_pos(view_camera[0], x, y);

shake = max(0, shake - 1);