///scr_inimigo_atacar()
scr_inimigo_existe_player();
phy_position_x += sign(targetx - x) * spd;
phy_position_y += sign(targety - y) * spd;

image_blend = c_red;
