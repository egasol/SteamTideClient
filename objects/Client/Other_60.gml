if (ds_map_find_value(async_load, "status") >= 0)
{
	SpritesLoaded++;
	  
	if (SpritesLoaded == SpritesTotal)
	{
		buffer_seek(BufferWrite, buffer_seek_start, 0);
	
		buffer_write(BufferWrite, buffer_string, "Join");
	
		network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));
		
		if (!room_exists(rGame)) rGame = room_add();
		
		room_set_width(rGame, WorldWidth);
		room_set_height(rGame, WorldHeight);
		room_set_view_enabled(rGame, true);
		room_set_viewport(rGame, 0, true, 0, 0, WindowW, WindowH);
			
		room_goto(rGame);
	}
}