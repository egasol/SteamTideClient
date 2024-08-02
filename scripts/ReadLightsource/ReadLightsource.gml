function ReadLightsource() {
	var ID, Radius;

	ID = buffer_read(BufferRead, buffer_u16);

	Radius = buffer_read(BufferRead, buffer_u16);

	if (Radius > 0)
	{
		LightsourceID[? ID] = Radius;
	}
	else if (LightsourceID[? ID] != undefined)
	{
		ds_map_delete(LightsourceID, ID);
	}


}
