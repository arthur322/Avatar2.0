///scr_movimento()
scr_teclas();

if(rolar && len != 0 && stamina >= 10) {
    estado = scr_rolando;
    stamina -= 10;
    alarm[0] = room_speed / 3;
}

if(atacar){
    image_index = 0;
    estado = scr_atacando;
}


//Pegando a direção
dir = point_direction(0, 0, xdir, ydir);

//Pegando a distância
if(xdir == 0 and ydir == 0){
    len = 0;
    image_index = 0;
}else{
    len = spd;
    scr_visao();
}

//Velocidade H e V
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movendo 
phy_position_x += hspd;
phy_position_y += vspd;

//Controles de sprites
image_speed = sign(len) * 0.5;


switch(olhando){
    case DIREITA:
        sprite_index = sprHeroD;
        break;
    case BAIXO:
        sprite_index = sprHeroB;
        break;
    case ESQUERDA:
        sprite_index = sprHeroE;
        break;
    case CIMA:
        sprite_index = sprHeroC;
        break;
}
