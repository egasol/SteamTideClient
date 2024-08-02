function ReadCreate() {
	var ID, X, Y, MoveX, MoveY, MoveZ, MoveSpeed, SpriteHold, SpriteHoldAnimation, Sprite, SpriteAnimation, Light;

	ID = buffer_read(BufferRead, buffer_u16);

	X = buffer_read(BufferRead, buffer_u32);
	Y = buffer_read(BufferRead, buffer_u32);

	MoveX = buffer_read(BufferRead, buffer_u32);
	MoveY = buffer_read(BufferRead, buffer_u32);
	MoveZ = buffer_read(BufferRead, buffer_u8);
	MoveSpeed = buffer_read(BufferRead, buffer_f32);

	Sprite = buffer_read(BufferRead, buffer_s8);
	SpriteAnimation = buffer_read(BufferRead, buffer_s8);

	SpriteHold = buffer_read(BufferRead, buffer_s8);
	SpriteHoldAnimation = buffer_read(BufferRead, buffer_s8);

	Light = buffer_read(BufferRead, buffer_u16);

	var oEntity = instance_create_depth(X, Y, -Y, Entity);

	oEntity.ID = ID;

	oEntity.MovePreviousX = X;
	oEntity.MovePreviousY = Y;
	oEntity.MoveX = MoveX;
	oEntity.MoveY = MoveY;
	oEntity.MoveZ = MoveZ;
	oEntity.MoveSpeed = MoveSpeed;

	oEntity.Sprite = Sprites[? Sprite];
	oEntity.SpriteAnimation = SpriteAnimation;

	oEntity.SpriteHold = Sprites[? SpriteHold];
	oEntity.SpriteHoldAnimation = SpriteHoldAnimation;

	if (Light > 0)
	{
		LightsourceID[? ID] = Light;
	}
	else if (LightsourceID[? ID] != undefined)
	{
		ds_map_delete(LightsourceID, ID);
	}

	EntityID[? ID] = oEntity;

	if (ID == SocketClient)
	{
		oEntity.HealthMax = 1;
		oEntity.Health = oEntity.HealthMax;
	
		oEntity.ManaMax = 1;
		oEntity.Mana = oEntity.ManaMax;
	
		var Camera = camera_create_view(0, 0, WindowW, WindowH, 0, oEntity, -1, -1, WindowW/2, WindowH/2);
	
		view_set_camera(0, Camera);
	
		//show_debug_message("camera view: "+string(Camera));
	}


}
