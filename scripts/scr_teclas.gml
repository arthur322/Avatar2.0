///scr_teclas()
esquerda = keyboard_check(vk_left) or keyboard_check(ord('A'));
direita = keyboard_check(vk_right) or keyboard_check(ord('D'));
cima = keyboard_check(vk_up) or keyboard_check(ord('W'));
baixo = keyboard_check(vk_down) or keyboard_check(ord('S'));
rolar = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord('Y'));
atacar = keyboard_check_pressed(ord('X')) or mouse_check_button_pressed(mb_left);

//Pegando o eixo
xdir = (direita - esquerda);
ydir = (baixo - cima);

//Conectando a manete
if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, .35);
    xdir = gamepad_axis_value(0, gp_axislh);
    ydir = gamepad_axis_value(0, gp_axislv);
    rolar = gamepad_button_check_pressed(0, gp_face1);
}
