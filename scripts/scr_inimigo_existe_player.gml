///scr_inimigo_existe_player()

if(instance_exists(objHero)){
    var dis = point_distance(x, y, objHero.x, objHero.y);
    if (dis < alcance) {
        estado = scr_inimigo_atacar;
        
        var dir = point_direction(x, y, objHero.x, objHero.y);
        xaxis = lengthdir_x(1,dir);
        yaxis = lengthdir_y(1,dir);
    } else {
        scr_inimigo_escolher_prox_estado();
        image_blend = c_white;
    }
} else {
    scr_inimigo_escolher_prox_estado();
    image_blend = c_white;
}
