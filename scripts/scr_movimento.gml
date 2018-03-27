///scr_movimento()
scr_teclas();

if(rolar && len != 0) {
    estado = scr_rolando;
}

if(atacar){
    estado = scr_atacando;
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
image_speed = sign(len) * 1;
if(vspd == 0 and hspd == 0){
    image_index = 0;
}

if(hspd > 0){
    sprite_index = sprHeroD;
    image_speed = .2;
}else if(hspd < 0){
    sprite_index = sprHeroE;
    image_speed = .2;
}
if(vspd > 0){
    sprite_index = sprHeroB;
    image_speed = .2;
}else if(vspd < 0){
    sprite_index = sprHeroC;
    image_speed = .2;
}

