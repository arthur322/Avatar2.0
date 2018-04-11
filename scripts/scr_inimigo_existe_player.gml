///scr_inimigo_existe_player()

if(instance_exists(objHero)){
    var dis = point_distance(x, y, objHero.x, objHero.y);
    if (dis < alcance) {
        estado = scr_inimigo_atacar;
        targetx = objHero.x;
        targety = objHero.y;
    } else {
        scr_inimigo_escolher_prox_estado();
    }
} else {
    scr_inimigo_escolher_prox_estado();
}
