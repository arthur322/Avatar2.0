///scr_inimigo_atacar()
scr_inimigo_existe_player();

var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

phy_position_x += hspd;
phy_position_y += vspd;

image_xscale = sign(hspd);

image_blend = c_red;
