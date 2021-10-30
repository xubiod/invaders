_score = 0;
_display_score = 0;

frames = 0;
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

global.highscore = score_file(true);