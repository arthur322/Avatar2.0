//var ataque = instance_create(x, y, objAtaque);
scr_teclas();

//Pegando a direção
dir = point_direction(0, 0, xdir, ydir);

//Pegando a distância
if(xdir == 0 and ydir == 0){
    len = 0;
    image_index = 0;
}else{
    len = spd;
    //scr_visao();
}

//Velocidade H e V
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movendo 
phy_position_x += hspd / 3;
phy_position_y += vspd / 3;


//Atacando
if(atacando == false){
    xx = x + lengthdir_x(32, point_direction(x, y, mouse_x, mouse_y) );
    yy = y + lengthdir_y(32, point_direction(x, y, mouse_x, mouse_y) );
    

    var dano = instance_create(xx, yy, objDano);
    dano.criador = id;
    atacando = true;    
    instance_create(xx,yy, objEspada);

}
