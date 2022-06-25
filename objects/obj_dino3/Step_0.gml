if (global.gameOver) exit;
if(global.gameOverp3) exit;
jumpKey = keyboard_check_pressed(vk_space);
jumpKeyAlt =  gamepad_button_check(2,gp_padu);
duckKey = keyboard_check(vk_alt);
duckKeyAlt =  gamepad_button_check(2,gp_padd);

ducking = duckKey || duckKeyAlt;
jumping = jumpKey || jumpKeyAlt;

if (place_meeting(x, y + 1, obj_block))
{
	// we're touching the ground
	vspd = 0;
	jumping = false;
	falling = false;
    ducking = duckKey || duckKeyAlt;
		
	// if the player wants to jump
	if (jumpKey || jumpKeyAlt && !duckKey && !duckKeyAlt)
	{
		audio_play_sound(snd_jump, 100, false);
		jumping = true;
		vspd = -jspd;
	}
}
else
{
	if (ducking)
	{
		vspd += grav * 4;	
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd) == 1)
			falling = true;
	}
}

falling = jumping && vspd > 0;
jumping = jumping && vspd < 0
	
if (place_meeting(x, y + vspd, obj_block))
{
	while (!place_meeting(x, y+sign(vspd), obj_block))
	{
		y += sign(vspd);	
	}
	
	vspd = 0;
}

y += vspd;

if (jumping || falling)
	sprite_index = global.bday ? spr_dino_stand_bday3 : spr_dino_stand3;

if (ducking)
{
	sprite_index = global.bday ? spr_dino_duck_bday3 : spr_dino_duck3;
	image_speed = 2;
}

if (!jumping && !falling && !ducking)
{
	sprite_index = global.bday ? spr_dino_run_bday3 : spr_dino_run3;
	image_speed = 2;
}

if(global.resetp3){
	sprite_index = spr_dino_run_bday3_reset
}
