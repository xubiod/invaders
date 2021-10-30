function mapping_to_string(mapping) {
	switch (mapping) {
		case KeyMapping.WASD: return "WASD (Q is throw)";
		case KeyMapping.Arrows: return "Arrows (Shift is throw)";
		case KeyMapping.IJKL: return "IJKL (U is throw)";
		case KeyMapping.Custom: {
			return "Custom (" + chr(global.custom_mapping[0]) + 
								chr(global.custom_mapping[1]) + 
								chr(global.custom_mapping[2]) + 
								chr(global.custom_mapping[3]) + 
								", " + chr(global.custom_mapping[4]) + 
								" is throw)!\nPlease note that the method to\nshow you the keys isn't entirely perfect";
		}
		default: return "Undefined";
	}
}