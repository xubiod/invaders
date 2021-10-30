var _amount = max(ceil(image_xscale * image_yscale) * LOAD_ZONE_BIAS * extra_bias, 1);
var i;
randomize();

for (i = 0; i < _amount; i++) {
	var _x = random_range(bbox_left, bbox_right) + random_range(-LOAD_ZONE_SPREAD, LOAD_ZONE_SPREAD);
	var _y = random_range(bbox_top, bbox_bottom) + random_range(-LOAD_ZONE_SPREAD, LOAD_ZONE_SPREAD);
	
	with (instance_create_depth(_x, _y, depth, obj_rock)) {
		xspd = 0;
		yspd = 0;
		zspd = 0;
		_persistent = true;
	}
}

instance_destroy();