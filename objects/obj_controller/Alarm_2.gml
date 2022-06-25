
if(global.gameOver) exit;

if(!global.gameOverp1){
	instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_cake);
}
if(!global.gameOverp2){
	instance_create_layer(room_width + 100, 401, "Instances_p2", obj_cake);

}
if(!global.gameOverp3){
	instance_create_layer(room_width + 100, 168, "Instances_3", obj_cake);

}


alarm[2] = room_speed * choose(1,2,3);
