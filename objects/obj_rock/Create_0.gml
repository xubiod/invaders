image_index = irandom(image_number - 1);

xspd = random_range(-2, 2);
yspd = random_range(-2, 2);
z = 0;
zspd = random_range(1, 2);

_friction = 0.99;

real_x = x;
real_y = y;

frames = -irandom(15);
_persistent = false;
_displ = false;