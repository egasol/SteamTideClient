IP = "127.0.0.1";
Port = 6510;

var FileName, File;

FileName = "ip.txt";

if file_exists(FileName)
{
	File = file_text_open_read(FileName);
	
	IP = file_text_read_string(File);
	
	file_text_close(File);
}

globalvar BufferWrite, EntityID, LightsourceID, Sprites;
	
BufferWrite = buffer_create(2048, buffer_grow, 1);
	
Scripts = ds_map_create();
	
Scripts[? "Join"] = ReadJoin;
Scripts[? "Create"] = ReadCreate;
Scripts[? "Move"] = ReadMove;
Scripts[? "Destroy"] = ReadDestroy;
Scripts[? "Sprite"] = ReadSprite;
Scripts[? "Message"] = ReadMessage;
Scripts[? "Projectile"] = ReadProjectile;
Scripts[? "Effect"] = ReadEffect;
Scripts[? "Map"] = ReadMap;
Scripts[? "Status"] = ReadStatus;
Scripts[? "Darkness"] = ReadDarkness;
Scripts[? "Lightsource"] = ReadLightsource;
	
EntityID = ds_map_create();
LightsourceID = ds_map_create();
Sprites = ds_map_create();
	
SpritesTotal = 0;
SpritesLoaded = 0;

Packets = 0;

network_set_config(network_config_connect_timeout, 2000);

//Try connect to official ip

SocketServer = network_create_socket(network_socket_tcp);

if (network_connect(SocketServer, IP, Port) != -1)
{
	show_debug_message("connected: "+IP);
}
else
{
	//Try connect to local ip
	
	network_destroy(SocketServer);
	
	SocketServer = network_create_socket(network_socket_tcp);
	
	if (network_connect(SocketServer, "127.0.0.1", Port) != -1)
	{
		show_debug_message("connected: local");
	}
	else
	{
		show_message("Unable to connect");
	
		game_end();
	}
}
//window_set_caption("Client");

WindowW = 1024;
WindowH = 768;

rGame = -1;

ScreenDarkness = 0;

//--------------------------Target-------------------------//
TargetSize = 24;
TargetMarkerAnimation = 0;
Target = false;

//---------------------------Chat--------------------------//
ChatText = "";
ChatEnabled = false;
ChatX = 32;
ChatY = WindowH-64;
ChatWidth = 768;
ChatHeight = 16;

//-------------------------Lighting------------------------//
Darkness = 0;
SurfaceBrightness = surface_create(WindowW, WindowH);