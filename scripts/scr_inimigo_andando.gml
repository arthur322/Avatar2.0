///scr_inimigo_andando()
scr_inimigo_existe_player();

//impede que ele fique laggando se ele já estiver no lugar e tentar ir mesmo assim
if(point_distance(x, y, targetx, targety) > spd){
    var dir = point_direction(x, y, targetx, targety);
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    
    phy_position_x += hspd;
    phy_position_y += vspd;

    draw_self();
    
    image_xscale = sign(hspd);
}
