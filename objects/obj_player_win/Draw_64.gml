/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(0, 0, 0));
draw_set_font(fnt_winner);

if((global.scorep1 > global.scorep2) and (global.scorep1 > global.scorep3)){
	draw_text(420, 30,  "Jogador Azul venceu!");
} else if ((global.scorep2> global.scorep1) and (global.scorep2 > global.scorep3)){
	draw_text(400, 30,  "Jogador Vermelho venceu!");
} else {
	draw_text(420, 30,  "Jogador Verde venceu!");
}