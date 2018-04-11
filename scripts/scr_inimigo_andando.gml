///scr_inimigo_andando()
scr_inimigo_existe_player();
phy_position_x += sign(targetx - x) * spd;
phy_position_y += sign(targety - y) * spd;
draw_self();
