speed = -20 * global.speedModifier;

if (global.gameOver) exit;

if (x < 0)
{
	randomize();
	var n = irandom(10);

	if (n == 0)
	{
		image_index = choose(1, 2);
	}
	else
	{
		image_index = choose(0, 3);
	}
	
	move_wrap(true, false, sprite_get_width(sprite_index));
}
