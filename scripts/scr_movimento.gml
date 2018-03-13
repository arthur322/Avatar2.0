///scr_movimento()
scr_teclas();

//Pegando a direção
var xdir = (direita - esquerda);
var ydir = (baixo - cima);

//Velocidade H e V
hspd = xdir * spd;
vspd = ydir * spd;

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

