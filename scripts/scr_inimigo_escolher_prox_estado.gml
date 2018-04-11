///scr_inimigo_escolher_prox_estado()

if(alarm[0] <= 0){
    estado = choose(scr_inimigo_andando, scr_inimigo_parado);
    alarm[0] = room_speed * irandom_range(2, 4);
    targetx = random(room_width);
    targety = random(room_height);
}
