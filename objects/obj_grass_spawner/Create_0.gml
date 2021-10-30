var grass_layer = layer_create(99);
var grass_tilemap = layer_tilemap_create(grass_layer, 0, 0, ts_grass, ceil(room_width / TILE_WIDTH), ceil(room_height / TILE_HEIGHT));

var i;
var tile_count = 64;

for (i = 0; i < tile_count; i++) {
	var tile = irandom_range(1, 4);
	if (random(1) > 0.3) tile = tile_set_mirror(tile, true);
	tilemap_set_at_pixel(grass_tilemap, tile, random(room_width), random(room_height));
}

instance_destroy();