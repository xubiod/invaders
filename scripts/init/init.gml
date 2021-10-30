function init() {
	gml_pragma("global", "init()");
	gml_pragma("PNGCrush");
	
	randomize();
	
	global.custom_mapping = [ord("W"), ord("A"), ord("S"), ord("D"), ord("Q")];
	global.stored_score = -infinity;
	global.highscore = -infinity;
	
	#macro KEY_UP [keyboard_check(ord("W")), keyboard_check(vk_up), keyboard_check(ord("I")), keyboard_check(global.custom_mapping[0])]
	#macro KEY_LEFT [keyboard_check(ord("A")), keyboard_check(vk_left), keyboard_check(ord("J")), keyboard_check(global.custom_mapping[1])]
	#macro KEY_DOWN [keyboard_check(ord("S")), keyboard_check(vk_down), keyboard_check(ord("K")), keyboard_check(global.custom_mapping[2])]
	#macro KEY_RIGHT [keyboard_check(ord("D")), keyboard_check(vk_right), keyboard_check(ord("L")), keyboard_check(global.custom_mapping[3])]
	
	#macro KEY_THROW_DOWN [keyboard_check(ord("Q")), keyboard_check(vk_shift), keyboard_check(ord("U")), keyboard_check(global.custom_mapping[4])]
	#macro KEY_THROW_PRESS [keyboard_check_pressed(ord("Q")), keyboard_check_pressed(vk_shift), keyboard_check_pressed(ord("U")), keyboard_check_pressed(global.custom_mapping[4])]
	#macro KEY_THROW_RELEASE [keyboard_check_released(ord("Q")), keyboard_check_released(vk_shift), keyboard_check_released(ord("U")), keyboard_check_released(global.custom_mapping[4])]
	
	enum KeyMapping {
		WASD = 0, Arrows = 1, IJKL = 2, Custom = 3
	}
	
	#macro MAPPING_COUNT 4
	
	enum KeyAssignments {
		Up, Left, Down, Right, Throw
	}
	
	#macro TILE_WIDTH 16
	#macro TILE_HEIGHT 16
	
	global.wave =	[  1,   2,   2,   3,   3,   4,   5,   7,   7,  10,  10,  10,  10,  10,  15,  15,  15,  15,  15,  20];
	global.speeds = [300, 300, 275, 280, 270, 320, 300, 300, 265, 320, 300, 290, 270, 230, 280, 260, 245, 220, 200, 240];
	
	global.wave_agressive =	  [  2,   2,   4,   4,   4,   5,   7,   7,   7,  10,  10,  10,  15,  15,  15,  15,  20,  20,  20,  30];
	global.speeds_agressive = [250, 225, 275, 260, 240, 275, 300, 250, 200, 285, 260, 230, 270, 230, 210, 190, 250, 220, 190, 250];
	
	global.wave_last_stand =	[  5,   5,   7,   7,  10,  10,  15,  20,  25,  30];
	global.speeds_last_stand =	[400, 350, 400, 350, 375, 325, 350, 300, 275, 250];
	
	global.current_wave = 0;
	global.current_wave_type = 0;
	
	global.player_mapping = KeyMapping.WASD;
	global.camera_shake_strength = 1;
	
	global.ufos_downed = 0;
	global.music_enabled = true;
	
	#macro WAVE_LENGTH 3600
	// show_debug_overlay(true);
	#macro SCORE_FILENAME "hiscore"
	#macro MAIN_BACKGROUND_COLOR make_color_rgb(15, 0, 7)
	#macro MAIN_BACKGROUND_COLOR_BRIGHT make_color_rgb(60, 0, 28)
	
	global.started = false;
	global.quick_restart = false;
	global.tutorial = true;
	
	#macro LOAD_ZONE_BIAS 0.5
	#macro LOAD_ZONE_SPREAD 4
	
	#macro ROCK_THROW_RANGE 16
}
