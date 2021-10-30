if (!surface_exists(surf)) {
	surf = surface_create(sprite_width, sprite_height);
	redraw = true;
}

if (redraw) {
	redraw = false;
	surface_set_target(surf);
	
	var angle = random_range(-5, 5);
	
	draw_sprite_ext(sprite_index, irandom(image_number - 1), sprite_width / 2, sprite_height / 2, 1, 1, angle, decal_color, 1);
	
	surface_reset_target();
}

exit;