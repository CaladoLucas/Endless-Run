global.speedModifier += 0.0005;
score += 1 * global.speedModifier;

//if(keyboard_check_pressed(ord("L"))){
//	global.gameOverp1 = true;
//	global.gameOverp2 = true;
//	global.gameOverp2 = true;
//	global.gameOver = true;
//}

if(!global.gameOverp1){
	global.scorep1 = score;
}

if(!global.gameOverp2){
	global.scorep2 = score;
}

if(!global.gameOverp3){
	global.scorep3 = score;
}

if(global.gameOverp1 and global.gameOverp2 and global.gameOverp3){
	global.gameOver = true;
	global.speedModifier = 0;

	image_speed = 0;
	grav = 0;
	if (!instance_exists(obj_replay))
		instance_create_layer(room_width/2-100, room_height/2 + 100, "Instances", obj_replay);
		instance_create_layer(room_width/2+100, room_height/2 + 100, "Instances", obj_exit);

}

if(global.gameOver == true){
	room_goto(rm_winner);	
}
