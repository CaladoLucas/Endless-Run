if (global.gameOver) exit;
if(global.gameOverp2) exit;

if (other.object_index == obj_cake)
{
	global.bday = true;
	global.scoreCakep2++;
	with (other)
	{
		instance_destroy();
	}
	audio_play_sound(snd_cake, 100, false);
	
	return;
}

if(global.resetp2) exit;
// otherwise a death object
if (!audio_is_playing(snd_game_over) && !global.gameOver)
{
	global.livesp2--;
	global.resetp2 = true;
	alarm[0] = room_speed*2;
	if(global.livesp2==0){
		audio_play_sound(snd_game_over, 100, false);
		global.gameOverp2 = true;
		if (global.bday)
		{
			sprite_index = spr_dino_dead_bday2;
		}
		else
		{
			sprite_index = spr_dino_dead2;
		}


		//with (obj_obstacle)
		//{
		//	speed = 0;
		//	image_speed = 0;	
		//}

	}
}

