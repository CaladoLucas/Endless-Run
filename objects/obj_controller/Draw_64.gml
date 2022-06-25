draw_set_color(make_color_rgb(0, 0, 0));
draw_set_font(fnt_principal);
//draw_text(room_width/2, room_height/2, string(global.speedModifier));
draw_text(room_width - 100, 15,  string(global.scorep3));
draw_text(room_width - 100, 190, string(global.scorep2));
draw_text(room_width - 100, 420, string(global.scorep1));
draw_text(room_width - 150, 15,  string(global.scoreCakep3));
draw_text(room_width - 150, 190, string(global.scoreCakep2));
draw_text(room_width - 150, 420, string(global.scoreCakep1));


draw_sprite(spr_cake,0, room_width - 200, 50);
draw_sprite(spr_cake,0, room_width - 200, 220);
draw_sprite(spr_cake,0, room_width - 200, 450);

if(global.speedModifier < 1.0800 and global.gameOver != true){
	draw_sprite(spr_instrucoes,0,room_width/2, room_height/2)
}

if (global.gameOver)
	draw_sprite(spr_game_over, 0, room_width/2, room_height/2);