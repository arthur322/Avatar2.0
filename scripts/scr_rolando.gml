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
