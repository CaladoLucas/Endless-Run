if (global.gameOver) exit;
if(global.gameOverp3) exit;

if (other.object_index == obj_cake)
{
	global.bday = true;
	global.scoreCakep3++;
	with (other)
	{
		instance_destroy();
	}
	audio_play_sound(snd_cake, 100, false);
	
	return;
}
if(global.resetp3) exit;

// otherwise a death object
if (!audio_is_playing(snd_game_over) && !global.gameOver)
{
	global.livesp3--;
	global.resetp3 = true;
	alarm[0] = room_speed*2;
	if(global.livesp3 == 0){
		audio_play_sound(snd_game_over, 100, false);
		global.gameOverp3 = true;
		if (global.bday)
		{
			sprite_index = spr_dino_dead_bday3;
		}
		else
		{
			sprite_index = spr_dino_dead3;
		}


	
		//with (obj_obstacle)
		//{
		//	speed = 0;
		//	image_speed = 0;	
		//}

	}
	exit;
}


	
