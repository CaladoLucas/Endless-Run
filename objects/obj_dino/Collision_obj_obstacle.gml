
if (global.gameOver) exit;
if(global.gameOverp1) exit;

if (other.object_index == obj_cake)
{
	global.bday = true;
	global.scoreCakep1++;
	with (other)
	{
		instance_destroy();
	}
	audio_play_sound(snd_cake, 100, false);
	
	return;
}

if(global.resetp1) exit;

// otherwise a death object
if (!audio_is_playing(snd_game_over) && !global.gameOver)
{
	global.livesp1--;
	global.resetp1 = true;
	alarm[0] = room_speed*2;
	if(global.livesp1==0){
		audio_play_sound(snd_game_over, 100, false);
		global.gameOverp1 = true;
		if (global.bday)
		{
			sprite_index = spr_dino_dead_bday;
		}
		else
		{
			sprite_index = spr_dino_dead;
		}


	
		//with (obj_obstacle)
		//{
		//	speed = 0;
		//	image_speed = 0;	
		//}

	}
	exit;
}

	
