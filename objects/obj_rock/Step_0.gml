xspd *= _friction;
yspd *= _friction;

real_x += xspd;
real_y += yspd;
z += zspd;

zspd -= 0.15;

z = max(z, 0);
if (z == 0) {
	_friction = 0.2;
}

x = real_x;
y = real_y - z;

if (!_persistent) frames++;

_displ = global.tutorial;