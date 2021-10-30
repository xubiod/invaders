var i;

for (i = 0; i < ds_list_size(trail_data); i += trail_render_every) {
	draw_sprite_ext(
		trail_data[| i][0], trail_data[| i][1],
		trail_data[| i][2], trail_data[| i][3],
		trail_data[| i][4], trail_data[| i][5],
		trail_data[| i][6], trail_data[| i][7], 0.4 * (i / ds_list_size(trail_data)));
}

draw_self();

var near_enemy = instance_nearest(x, y, obj_enemy);

var mid_x = (bbox_left + bbox_right) / 2;
var mid_y = (bbox_top + bbox_bottom) / 2;

if (!hit && near_enemy != noone && point_distance(mid_x, mid_y, near_enemy.x, near_enemy.y) > 64) {
	var angle = point_direction(mid_x, mid_y, near_enemy.x, near_enemy.y);
	var dst = point_distance(mid_x, mid_y, near_enemy.x, near_enemy.y);
	
	draw_set_alpha(min((dst - 64) / 64, 1));
	draw_set_color(c_white);
	
	var _p1x = mid_x + lengthdir_x(32, angle);
	var _p1y = mid_y + lengthdir_y(32, angle);
	
	var _pbx = mid_x + lengthdir_x(20, angle);
	var _pby = mid_y + lengthdir_y(20, angle);
	
	var _p2x = _pbx + lengthdir_x(2, angle - 90);
	var _p2y = _pby + lengthdir_y(2, angle - 90);
	
	var _p3x = _pbx + lengthdir_x(2, angle + 90);
	var _p3y = _pby + lengthdir_y(2, angle + 90);
	
	// draw_arrow(mid_x + lengthdir_x(20, angle), mid_y + lengthdir_y(20, angle), mid_x + lengthdir_x(32, angle), mid_y + lengthdir_y(32, angle), 18);
	draw_triangle(_p1x, _p1y, _p2x, _p2y, _p3x, _p3y, true);
	
	draw_set_alpha(draw_get_alpha() / 2);
	draw_triangle(_p1x, _p1y, _p2x, _p2y, _p3x, _p3y, false);
	
	draw_set_alpha(1);
}