function ReadSprite() {
	var ID, Sprite, SpriteAnimation, SpriteHold, SpriteHoldAnimation;

	ID = buffer_read(BufferRead, buffer_u16);

	Sprite = buffer_read(BufferRead, buffer_s8);
	SpriteAnimation = buffer_read(BufferRead, buffer_s8);

	SpriteHold = buffer_read(BufferRead, buffer_s8);
	SpriteHoldAnimation = buffer_read(BufferRead, buffer_s8);

	var oEntity = EntityID[? ID];

	if (oEntity != undefined)
	{
		oEntity.Sprite = Sprites[? Sprite];
		oEntity.SpriteAnimation = SpriteAnimation;
	
		if (SpriteAnimation < 0) oEntity.SpriteSubimage = 0;

		oEntity.SpriteHold = Sprites[? SpriteHold];
		oEntity.SpriteHoldAnimation = SpriteHoldAnimation;
	}


}
