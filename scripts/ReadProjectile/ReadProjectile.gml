function ReadProjectile() {
	var X, Y, Sprite, Target;

	X = buffer_read(BufferRead, buffer_u32);
	Y = buffer_read(BufferRead, buffer_u32);

	Sprite = buffer_read(BufferRead, buffer_s8);

	Target = buffer_read(BufferRead, buffer_u16);

	var oTarget = EntityID[? Target];

	if (oTarget != undefined)
	{
		var oProjectile = instance_create_depth(X, Y, -room_height, Projectile)
	
		oProjectile.Sprite = Sprites[? Sprite];
		oProjectile.Target = oTarget;
	}


}
