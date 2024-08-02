function ReadMap() {
	//Select Layer
	var WorldLayer = layer_get_id("Map");

	if (WorldLayer == -1) WorldLayer = layer_create(0, "Map");

	//Select Tilemap
	if !layer_tilemap_exists(WorldLayer, WorldTilemap)
	{
		var W = floor(WorldWidth/48), H = floor(WorldHeight/48);
	
		WorldTilemap = layer_tilemap_create(WorldLayer, 0, 0, TilesetMap, W, H);
	
		tilemap_clear(WorldTilemap, 1);
	}

	//Add Tiles
	var X, Y, W, H, Cell;

	X = buffer_read(BufferRead, buffer_u32);
	Y = buffer_read(BufferRead, buffer_u32);

	W = buffer_read(BufferRead, buffer_u32);
	H = buffer_read(BufferRead, buffer_u32);

	for (var j = Y; j < Y+H; j++)
	{
		for (var i = Y; i < X+W; i++)
		{
			Cell = buffer_read(BufferRead, buffer_bool);
		
			if (Cell == 1) MapSetLand(WorldTilemap, i, j);
		}
	}


}
