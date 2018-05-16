//var ataque = instance_create(x, y, objAtaque);
//scr_teclas();

//Velocidade
len = spd;

//Atacando
if(atacando == false){
    xx = x + lengthdir_x(32, point_direction(x, y, mouse_x, mouse_y) );
    yy = y + lengthdir_y(32, point_direction(x, y, mouse_x, mouse_y) );
    
    
    var dano = instance_create(xx, yy, objDano);
    dano.criador = id;
    atacando = true;    
    instance_create(xx, yy, objEspada);

    //Pegando a direção
    dir = point_direction(x, y, dano.x, dano.y);
    
    
    //mudar sprite pra onde ele esta atacando
    scr_visao();
    
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
        default:
            sprite_index = sprHeroD;
    }
    
    image_index = 0;
}

//Velocidade H e V
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movendo 
phy_position_x += hspd / 3;
phy_position_y += vspd / 3;


