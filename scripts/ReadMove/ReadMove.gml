function ReadMove() {
	var ID, MoveX, MoveY, MoveZ, MoveSpeed;

	ID = buffer_read(BufferRead, buffer_u16);

	MoveX = buffer_read(BufferRead, buffer_s32);
	MoveY = buffer_read(BufferRead, buffer_s32);
	MoveZ = buffer_read(BufferRead, buffer_u8);
	MoveSpeed = buffer_read(BufferRead, buffer_f32);

	var oEntity = EntityID[? ID];

	if (oEntity != undefined)
	{
		oEntity.MovePreviousX = oEntity.x;
		oEntity.MovePreviousY = oEntity.y;
		oEntity.MoveX = MoveX;
		oEntity.MoveY = MoveY;
		oEntity.MoveZ = MoveZ;
		oEntity.MoveSpeed = MoveSpeed;
	}


}
