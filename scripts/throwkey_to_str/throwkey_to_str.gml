function throwkey_to_str(mapping) {
	switch (mapping) {
		case KeyMapping.WASD: return "Q";
		case KeyMapping.Arrows: return "Shift";
		case KeyMapping.IJKL: return "U";
		case KeyMapping.Custom: {
			return chr(global.custom_mapping[4]);
		}
		default: return "Undefined";
	}
}