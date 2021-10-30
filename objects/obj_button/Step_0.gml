if (mouse_x > x && mouse_x < (x + width) && !global.started) {
	new_y = 40;
	mousein = min(mousein + 15, 90);
	
	if (on_click == "Delete") {
		obj_menuscore.shake = click_count > 5 ? 0 : click_count;
	}
} else {
	new_y = ystart;
	mousein = max(0, mousein - 15);
	click_count = 0;
	extra = og_extra;
}

y += (new_y - y) * 0.2;

switch (on_click) {
	case "Mapping": { extra = "Currently using " + mapping_to_string(global.player_mapping) + "!"; break; }
	case "QuickRestart": { extra = "Quick restart is " + (global.quick_restart ? "on" : "off") + "!\nCan be toggled in the game over transition!"; break; }
	case "MusicToggle": { extra = "Music is currently " + (global.music_enabled ? "on" : "off") + "!"; break;}
	default: { break; }
}