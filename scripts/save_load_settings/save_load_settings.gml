function save_settings() {
	if (os_browser != browser_not_a_browser) {
		var settings = string(global.quick_restart) + string(global.music_enabled) + string(global.player_mapping);
		html5_localstorage_save("settings", settings);
		
		var i;
		for (i = 0; i < 4; i++)
			html5_localstorage_save("cstkkey" + string(i), string(global.custom_mapping[i]));
	}
}

function load_settings() {
	if (os_browser != browser_not_a_browser && html5_localstorage_exists()) {
		var settings;
		settings = html5_localstorage_load("settings", "000");
		
		global.quick_restart = real(string_char_at(settings, 1));
		global.music_enabled = real(string_char_at(settings, 2));
		global.player_mapping = real(string_char_at(settings, 3));
		
		var i;
		for (i = 0; i < 4; i++)
			global.custom_mapping[i] = real(html5_localstorage_load("cstkkey" + string(i), string(global.custom_mapping[i])));
	}
}