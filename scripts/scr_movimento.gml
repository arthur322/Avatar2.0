///scr_movimento()
scr_teclas();

if(rolar) {
    estado = scr_rolando;
}


//Pegando a direção
dir = point_direction(0, 0, xdir, ydir);

//Pegando a distância
if(xdir == 0 and ydir == 0){
    len = 0;
}else{
    len = spd;
}

//Velocidade H e V
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movendo 
phy_position_x += hspd;
phy_position_y += vspd;

//Controles de sprites
if(xdir == 0 and ydir == 0)
    sprite_index = sprHeroParado;

if(hspd > 0){
    sprite_index = sprHeroHorizontal;
    image_xscale = 1;
}else if(hspd < 0){
    sprite_index = sprHeroHorizontal;
    image_xscale = -1;
}
if(vspd <> 0){
    sprite_index = sprHeroHorizontal;
}

