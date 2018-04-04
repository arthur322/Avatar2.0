//var ataque = instance_create(x, y, objAtaque);
//ataque.image_xscale = image_xscale;
if(atacando == false){

    

    var dano = instance_create(x, y, objDano);
    dano.criador = id;
    atacando = true;    
    //instance_create(x,y, objEspada);

}
