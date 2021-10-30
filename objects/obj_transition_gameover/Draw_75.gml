// Inherit the parent event
event_inherited();

draw_set_color(decal_color);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text(4, bar_height - 4, "Final Score: " + string(global.stored_score));

draw_set_halign(fa_right);
draw_text(gui_width - 4, bar_height - 4, "Quick restart: " + (global.quick_restart ? "Yes" : "No") + "\nTap throw to toggle");

draw_set_valign(fa_top);

draw_text(gui_width - 4, gui_height - bar_height + 4, "High Score: " + string(global.highscore[0]) + "\n" + string(type_as_string(global.highscore[1])));

event_user(0);