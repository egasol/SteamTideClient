//var ScreenW = display_get_gui_width(), ScreenH = display_get_gui_height();

//Packet data
/*
draw_set_color(c_black);
draw_text(0, 0, "Packets Recieved: "+string(Packets));
*/

//draw_text(0, 32, ds_map_size(LightsourceID));

//Loading Screen
if (SpritesLoaded != SpritesTotal)
{	
	DrawBar(128, 360, 896, 408, SpritesLoaded, SpritesTotal, c_teal, 2);
}

if (room == rGame)
{
	DrawLighting();
	
	var Self = EntityID[? SocketClient]

	if (Self != undefined)
	{
		//-------------------------Player Related--------------------------//
		DrawBar(32, WindowH-128, 192, WindowH-112, Self.Health, Self.HealthMax, c_red, 2);
		DrawBar(32, WindowH-96, 192, WindowH-80, Self.Mana, Self.ManaMax, c_green, 2);
		
		if (Self.Mana < Self.ManaMax) Self.Mana += 0.01;
		
		if (ScreenDarkness > 0) ScreenDarkness -= 0.01;
	}
	else
	{
		//---------------------------Death Screen--------------------------//
		if (ScreenDarkness < 0.5) ScreenDarkness += 0.01;
	
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_text(WindowW/2, WindowH/2, "You have died!\nPress space to respawn");
	
		if keyboard_check_pressed(vk_space)
		{
			SendMessage("/respawn");
		}
	}
	
	if (ScreenDarkness > 0)
	{
		draw_set_color(c_black);
		draw_set_alpha(ScreenDarkness);
		draw_rectangle(0, 0, WindowW, WindowH, false);
	}
	
	DrawChat();
}