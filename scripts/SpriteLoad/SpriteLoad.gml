///SpriteLoad(SpriteURL, SpriteNumber, SpriteOriginX, SpriteOriginY);
function SpriteLoad(argument0, argument1, argument2, argument3, argument4) {

	var SpriteID, SpriteURL, SpriteNumber, SpriteOriginX, SpriteOriginY;

	SpriteID = argument0;
	SpriteURL = argument1;
	SpriteNumber = argument2;
	SpriteOriginX = argument3;
	SpriteOriginY = argument4;

	var Sprite;

	if (is_undefined(Sprites[? SpriteURL]))
	{
		Sprite = sprite_add(SpriteURL, SpriteNumber, false, true, SpriteOriginX, SpriteOriginY);
	
		Sprites[? SpriteID] = Sprite;
	}
	else
	{
		Sprite = Sprites[? SpriteID];
	}

	return Sprite;


}
