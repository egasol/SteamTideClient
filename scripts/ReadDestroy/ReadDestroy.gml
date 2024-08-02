function ReadDestroy() {
	var ID;

	ID = buffer_read(BufferRead, buffer_u16);

	if (LightsourceID[? ID] != undefined)
	{
		ds_map_delete(LightsourceID, ID);
	}

	var oEntity = EntityID[? ID];

	if (oEntity != undefined)
	{
		ds_map_delete(EntityID, ID);

		instance_destroy(oEntity);
	}


}
