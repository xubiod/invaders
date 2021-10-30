frames = 0;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

bar_height = 0;
max_bar_height = gui_height / 2;

curve_channel = animcurve_get_channel(anicurv_close, 0);
animation_speed = 60;
curve_eval = 0;

played_count = 0;
sound = noone;
max_sounds = 3;

surf = surface_create(sprite_width, sprite_height);
redraw = true;
decal_color = merge_color(c_maroon, c_red, random(1));
_background_color = merge_color(c_black, c_maroon, 0.5);

fadeout = 180;

alarm[0] = animation_speed;
alarm[1] = fadeout;