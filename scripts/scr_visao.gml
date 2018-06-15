///scr_visao(dir)
var dir = argument0;
if(estado != scr_atacando){
    olhando = round(dir / 90);
}
else{ //caso ele esteja atacando, ele mira para a direção do mouse
    olhando = round(point_direction(x,y,mouse_x, mouse_y) / 90);
}
