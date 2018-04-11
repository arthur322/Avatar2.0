//var ataque = instance_create(x, y, objAtaque);
//ataque.image_xscale = image_xscale;
if(atacando == false){
    xx = lengthdir_x(5, mouse_x);
    yy = lengthdir_y(5, mouse_y);
    

    var dano = instance_create(xx, yy, objDano);
    dano.criador = id;
    atacando = true;    
    //instance_create(x,y, objEspada);

}
