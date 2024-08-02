//Target
var Color;

if (Client.Target = id)
{
	Color = $9090dd;
}
else Color = c_white;


//Sprite
var DrawX, DrawY;

DrawX = floor(x);
DrawY = floor(y-Z);

SpriteSubimage = SpriteAnimate(Sprite, SpriteAnimation, SpriteSubimage);

draw_sprite_ext(Sprite, SpriteSubimage, DrawX, DrawY, SpriteDirection, 1, 0, Color, 1);

//SpriteHold
if (SpriteHold >= 0)
{
	var DrawHoldX, DrawHoldY, DrawHoldAnimation;
	
	DrawHoldAnimation = (SpriteAnimation == -3)*sin(pi*SpriteSubimage/sprite_get_number(Sprite));
	
	DrawHoldX = DrawX+SpriteDirection*(16-8*DrawHoldAnimation);
	DrawHoldY = DrawY-32-16*DrawHoldAnimation;
	
	SpriteHoldSubimage = SpriteAnimate(SpriteHold, SpriteHoldAnimation, SpriteSubimage);
	
	draw_sprite_ext(SpriteHold, SpriteHoldSubimage, DrawHoldX, DrawHoldY, SpriteDirection, 1, 0, Color, 1);
}

//Shadow
/*
if (Z > 0)
{
	draw_set_color(c_black);
	draw_set_alpha(0.1+0.2*(1-Z/MoveZ));
	draw_ellipse(x-16, y-8, x+16, y+8, false);
	draw_set_alpha(1);
}
*/

//Health
if (HealthShow > 0)
{
	draw_set_alpha(HealthShow);
	
	DrawBar(x-24, y+24, x+28, y+24, Health, HealthMax, c_red, 1);
	
	draw_set_alpha(1);
	
	HealthShow -= 0.01;
}