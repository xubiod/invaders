draw_self();
draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, 1.2 * image_xscale, 1.2 * image_yscale, image_angle, c_white, 0.5);

image_xscale -= 0.005;
image_yscale -= 0.005;

if (image_xscale < 0.2) instance_destroy();