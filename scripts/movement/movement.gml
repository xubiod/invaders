function move_horizontal(mapping) {
	return array_get(KEY_RIGHT, mapping) - array_get(KEY_LEFT, mapping);
}
	
function move_vertical(mapping) {
	return array_get(KEY_DOWN, mapping) - array_get(KEY_UP, mapping);
}
	
function is_move_horizontal(mapping) {
	return abs(move_horizontal(mapping));
}
	
function is_move_vertical(mapping) {
	return abs(move_vertical(mapping));
}
	
function is_move_diagonal(mapping) {
	return sign(is_move_horizontal(mapping) + is_move_vertical(mapping));
}

function check_throw_status(mapping) {
	var _pressed = array_get(KEY_THROW_PRESS, mapping);
	var _down = array_get(KEY_THROW_DOWN, mapping);
	var _release = array_get(KEY_THROW_RELEASE, mapping);
	
	return [_pressed, _down, _release];
}