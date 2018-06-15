///scr_inimigo_axis

//escolhe uma direçao para o iniigo andar
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

phy_position_x += hspd;
phy_position_y += vspd;

draw_self();
image_xscale = sign(hspd);
