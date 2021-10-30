if (mouse_x > x && mouse_x < (x + width) && !global.started) {
	audio_play_sound(snd_tick, 0, false);
	
	switch (on_click) {
		case "Start": {
			global.current_wave = 0;
			global.current_wave_type = 0;
			global.started = true;
			
			instance_create_depth(0, 0, depth, obj_transition_start);
			break;
		}
		case "Aggressive": {
			global.current_wave = 0;
			global.current_wave_type = 1;
			global.started = true;
			
			instance_create_depth(0, 0, depth, obj_transition_start);
			break;
		}
		case "LastStand": {
			global.current_wave = 0;
			global.current_wave_type = 2;
			global.started = true;
			
			instance_create_depth(0, 0, depth, obj_transition_start);
			break;
		}
		case "QuickRestart": {
			global.quick_restart ^= true;
			save_settings();
			
			break;
		}
		case "MusicToggle" : {
			global.music_enabled ^= true;
			save_settings();
			
			break;
		}
		case "Mapping": {
			global.player_mapping = (global.player_mapping + 1) % MAPPING_COUNT;
			extra = "Now using " + mapping_to_string(global.player_mapping) + "!";
			save_settings();
			
			break;
		}
		case "SetKeys": {
			instance_create_depth(0, 0, depth, obj_assigncustom);
			
			break;
		}
		case "Delete": {
			click_count++;
			
			if (click_count < 6) extra = string(6 - click_count) + " more clicks to reset!\n" + reset_high_extra[click_count];
			if (click_count == 6) {
				extra = "Highscore's gone!";
				if (file_exists(SCORE_FILENAME) && os_browser == browser_not_a_browser) file_delete(SCORE_FILENAME);
				if (os_browser != browser_not_a_browser) { html5_localstorage_save("score", "0"); html5_localstorage_save("type", "0");}
				obj_menuscore._score = 0;
				obj_menuscore._display_score = 0;
				obj_menuscore._type = type_as_string(0);
				with (obj_menuscore) {
					audio_play_sound(snd_explosion, 0, false);
					
					repeat (irandom_range(14, 21)) {
						instance_create_depth(x + random_range(-3, 3), y + random_range(-3, 3), depth, obj_rock_special);
					}
				}
			}
			break;
		}
	}
}