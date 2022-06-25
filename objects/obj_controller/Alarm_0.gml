if(global.speedModifier > 1.2){
	randomize();
	var count = irandom_range(1, 2);

	if(!global.gameOverp1){
		var ip1 = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
		ip1.sprite_index = choose(spr_cactus_small, spr_cactus_large, spr_pterodactyl);
		switch (ip1.sprite_index)
		{
			case spr_cactus_small:
			case spr_cactus_large:
				ip1.image_speed = 0;
		
				if (global.speedModifier > 1.5)
				{
					if (count == 2)
					{
						var j = instance_create_layer(room_width + 100 + sprite_get_width(ip1.sprite_index), room_height - 75, "Instances", obj_obstacle);
						j.sprite_index = choose(spr_cactus_small, spr_cactus_large);
						j.image_speed = 0;
					}
				}
			break;
	
			default:
			ip1.image_speed = 1;
			ip1.y = choose(room_height - 85, room_height - 145, room_height - 180);
		}	
	}

	if(!global.gameOverp2){
	
		var ip2 = instance_create_layer(room_width + 100, 401, "Instances_p2", obj_obstacle);
		ip2.sprite_index = choose(spr_cactus_small, spr_cactus_large, spr_pterodactyl);
		switch (ip2.sprite_index)
		{
			case spr_cactus_small:
			case spr_cactus_large:
				ip2.image_speed = 0;
		
				if (global.speedModifier > 1.5)
				{
					if (count == 2)
					{
						var j = instance_create_layer(room_width + 100 + sprite_get_width(ip2.sprite_index), 401, "Instances_p2", obj_obstacle);
						j.sprite_index = choose(spr_cactus_small, spr_cactus_large);
						j.image_speed = 0;
					}
				}
			break;
	
			default:
			ip2.image_speed = 1;
			ip2.y = choose(393, 315,280);
		}


	}


	if(!global.gameOverp3){
	
		var ip3 = instance_create_layer(room_width + 100, 168, "Instances_3", obj_obstacle);
		ip3.sprite_index = choose(spr_cactus_small, spr_cactus_large, spr_pterodactyl);
		switch (ip3.sprite_index)
		{
			case spr_cactus_small:
			case spr_cactus_large:
				ip3.image_speed = 0;
		
				if (global.speedModifier > 1.5)
				{
					if (count == 2)
					{
						var j = instance_create_layer(room_width + 100 + sprite_get_width(ip3.sprite_index), 168, "Instances_3", obj_obstacle);
						j.sprite_index = choose(spr_cactus_small, spr_cactus_large);
						j.image_speed = 0;
					}
				}
			break;
	
			default:
			ip3.image_speed = 1;
			ip3.y = choose(162,105,70);
		}
	}


	if (global.gameOver) exit;
}


alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
