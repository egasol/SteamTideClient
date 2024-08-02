///DrawShadows
function DrawShadows() {

	gpu_set_fog(1, c_black, 0, 0);

	var Entities, oEntity;

	Entities = instance_number(Entity);

	for (var i = 0; i < Entities; i++)
	{
		oEntity = instance_find(Entity, i);
	
		var H, W, S, DrawX, DrawY;

		H = sprite_get_height(oEntity.Sprite)*0.6;
		W = sprite_get_width(oEntity.Sprite)/2;
		S = 32;
	
		DrawX = floor(oEntity.x);
		DrawY = floor(oEntity.y);
	
		var X1, Y1, X2, Y2, X3, Y3, X4, Y4;
	
		X1 = DrawX-W+S;
		Y1 = DrawY-H;
		X2 = DrawX+W+S;
		Y2 = DrawY-H;
		X3 = DrawX+W;
		Y3 = DrawY;
		X4 = DrawX-W;
		Y4 = DrawY;
	
		draw_sprite_pos(oEntity.Sprite, oEntity.SpriteSubimage, X1, Y1, X2, Y2, X3, Y3, X4, Y4, 0.5);
	}

	gpu_set_fog(0, 0, 0, 0);

	/*
	if surface_exists(SurfaceShadows)
	{
		surface_set_target(SurfaceShadows);
	
	
	}
	else SurfaceShadows = surface_create(WindowW, WindowH);
	*/

	/*
	var H, W, S, X1, Y1, X2, Y2, X3, Y3, X4, Y4;

	H = 32;
	W = 32;
	S = 16;
	
	X1 = DrawX-W+S;
	Y1 = DrawY-H;
	X2 = DrawX+W+S;
	Y2 = DrawY-H;
	X3 = DrawX+W;
	Y3 = DrawY;
	X4 = DrawX-W;
	Y4 = DrawY;
	
	draw_sprite_pos(Sprite, SpriteSubimage, X1, Y1, X2, Y2, X3, Y3, X4, Y4, 1);
	*/


}
