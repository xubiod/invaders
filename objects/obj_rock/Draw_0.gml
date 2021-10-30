draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 0.5);
draw_sprite_ext(sprite_index, image_index, x, real_y, 1.2, 0.5, 0, image_blend, image_alpha * 0.2);

if (frames > 300) {
	image_alpha = (frames % 15) > 7;
}

var nearest = instance_nearest(real_x, real_y, obj_man);

if (_displ && point_distance(real_x, real_y, nearest.x, nearest.y) < ROCK_THROW_RANGE - 4) {
	var str = "hold n' let go\n" + throwkey_to_str(global.player_mapping);
	
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(x - 24, y - 16, x + 24, y - 24, false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_set_halign(fa_center);
	draw_text(x, y - 16, str);
}

if (frames > 650 && z == 0 && !place_meeting(x, y, obj_man)) instance_destroy();