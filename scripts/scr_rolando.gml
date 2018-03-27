//Direção e velocidade
len = spd * 2;

//Velocidade H e V
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movendo 
phy_position_x += hspd;
phy_position_y += vspd;

/*
//Efeito
var efeito = instance_create(x, y, objEfeito);
efeito.sprite_index = sprite_index;
efeito.image_index = image_index;
efeito.image_xscale = image_xscale;*/

sprite_index = sprRolando;
image_speed = 1.4;

if(image_index >= 16){
    estado = scr_movimento;
    image_speed = 0.2;
}
