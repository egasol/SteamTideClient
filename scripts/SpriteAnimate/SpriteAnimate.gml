///SpriteGetSubimage()
function SpriteAnimate(argument0, argument1, argument2) {

	var Sprite, SpriteAnimation, SpriteSubimage;

	Sprite = argument0;
	SpriteAnimation = argument1;
	SpriteSubimage = argument2;

	if (SpriteAnimation >= 0)
	{
		SpriteSubimage = SpriteAnimation;
	}
	else if (SpriteAnimation = -1)
	{
		SpriteSubimage += 0.1;
	}
	else if (SpriteAnimation = -2)
	{
		if (MoveX > x) SpriteDirection = 1;
		if (MoveX < x) SpriteDirection = -1;
	
		if (point_distance(x, y, MoveX, MoveY) > 0)
		{
			SpriteSubimage += 0.1;
		
			if (round(SpriteSubimage) >= sprite_get_number(Sprite)) SpriteSubimage = 0; //Reset Subimage
		}
		else //SpriteSubimage = 0;
		{
			if (round(SpriteSubimage) > 0)
			{
				if (round(SpriteSubimage) < sprite_get_number(Sprite))
				{
					if (round(SpriteSubimage) < sprite_get_number(Sprite)/2)
						SpriteSubimage -= 0.1;
					else
						SpriteSubimage += 0.1;
				}
				else SpriteSubimage = 0;
			}
		}
	}
	else if (SpriteAnimation = -3)
	{
		if (SpriteSubimage < sprite_get_number(Sprite)-1)
		{
			SpriteSubimage += 0.1;
		}
	}

	return SpriteSubimage;


}
