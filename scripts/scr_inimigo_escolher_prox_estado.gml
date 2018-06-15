///scr_inimigo_escolher_prox_estado()

if(alarm[0] <= 0){
    estado = choose(scr_inimigo_andando, scr_inimigo_parado);
    alarm[0] = room_speed * irandom_range(2, 4);
    if(estado == scr_inimigo_andando){
        xaxis = random_range(-1,1);
        yaxis = random_range(-1,1);
    }
}
