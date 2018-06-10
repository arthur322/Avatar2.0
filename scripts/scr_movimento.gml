///scr_movimento()
//scr_teclas();

if(obj_controle.rolar && len != 0 && stamina >= 10) {
    estado = scr_rolando;
    stamina -= 10;
    alarm[0] = room_speed / 3;
}else if(distance_to_object(objPlaca) < 16 && obj_controle.rolar){
    with(objPlaca){
        if(!instance_exists(objDialogo)){
            dialog = instance_create(self.x + xoffset, self.y + yoffset, objDialogo);
            dialog.text = text;
        } else {
            dialog.text_page++;
            dialog.text_count = 0;
            if(dialog.text_page > array_length_1d(dialog.text) - 1){
                with(dialog){
                    instance_destroy();
                }
            }
        }
    }
}

if(obj_controle.atacar){
    image_index = 0;
    estado = scr_atacando;
}




//Pegando a direção
dir = point_direction(0, 0, obj_controle.xdir, obj_controle.ydir);

//Pegando a distância
if(obj_controle.xdir == 0 and obj_controle.ydir == 0){
    len = 0;
    image_index = 1;
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
image_speed = sign(len) * 0.2;


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
