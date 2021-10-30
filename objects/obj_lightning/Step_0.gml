exit;

var cam_x = camera_get_view_x(view_camera[0]) - 48;
var cam_y = camera_get_view_y(view_camera[0]) - 48;

if (x > (cam_x + cam_width) || x < (cam_x)) || (y > (cam_y + cam_height) || y < (cam_y)) visible = false;
else visible = true;