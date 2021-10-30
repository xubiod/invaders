function get_wave() {
	switch (global.current_wave_type) {
		case 0: { return global.wave; }
		case 1: { return global.wave_agressive; }
		case 2: { return global.wave_last_stand; }
	}
}

function get_wave_speeds() {
	switch (global.current_wave_type) {
		case 0: { return global.speeds; }
		case 1: { return global.speeds_agressive; }
		case 2: { return global.speeds_last_stand; }
	}
}

function type_as_string(_type = global.current_wave_type) {
	switch (_type) {
		case 0: { return "Vanilla"; }
		case 1: { return "Aggressive"; }
		case 2: { return "Last Stand"; }
	}
}