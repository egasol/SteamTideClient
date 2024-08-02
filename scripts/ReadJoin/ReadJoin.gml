function ReadJoin() {
	SocketClient = buffer_read(BufferRead, buffer_u8);

	//World
	WorldWidth = buffer_read(BufferRead, buffer_u32);
	WorldHeight = buffer_read(BufferRead, buffer_u32);
	WorldTilemap = 0;

	//Sprites
	SpritesURL = buffer_read(BufferRead, buffer_string);
	SpritesTotal = buffer_read(BufferRead, buffer_u8)

	var ID, Name, Number, OriginX, OriginY, URL;

	repeat (SpritesTotal)
	{
		ID = buffer_read(BufferRead, buffer_u8);
		Name = buffer_read(BufferRead, buffer_string);
		Number = buffer_read(BufferRead, buffer_u8);
	
		OriginX = buffer_read(BufferRead, buffer_u16);
		OriginY = buffer_read(BufferRead, buffer_u16);
	
		URL = SpritesURL+Name+".png";
	
		Sprites[? ID] = SpriteLoad(ID, URL, Number, OriginX, OriginY);
	}


}
