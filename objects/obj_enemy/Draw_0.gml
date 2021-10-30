if (alarm[0] > -1) draw_self();

if (!surface_exists(telegraph_surf)) telegraph_surf = surface_create(36, 36);

surface_set_target(telegraph_surf);
	draw_clear_alpha(c_black, 0);
	draw_set_color(c_white);
	var i;
	for (i = 0; i < 1.01; i += 0.2) {
		draw_circle(16, 16, (15 + i), true);
		if (alarm[0] > -1) draw_circle(16, 16, (15 + i) * (1 - (alarm[0] / attack_cycle)), true);
	}
surface_reset_target();

draw_surface_ext(telegraph_surf, x - 16, y - 8, 1, 0.6, 0, c_white, 0.1 + (0.7 * (1 - (alarm[0] / attack_cycle))));

draw_sprite_ext(spr_ufo, 0, x, y - ufo_z, 1, 1, ufo_rot, ufo_color, 1);

if (struck > 0) {
	struck -= 1;
	draw_sprite_ext(spr_lightning, irandom_range(0, 1), x, y, 1, 1, 90, c_white, 1);
	draw_sprite_ext(spr_lightning, irandom_range(0, 1), x, y - 48, 1, 1, 90, c_white, 1);
}