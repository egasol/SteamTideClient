///DrawLighting
function DrawLighting() {

	if surface_exists(SurfaceBrightness)
	{
		surface_set_target(SurfaceBrightness);
	
		//draw_clear_alpha($4e4e4e, 0.5);
		draw_clear_alpha(Darkness, 0.5);
	
		gpu_set_blendmode(bm_subtract);
	
		var Entities, EntityIndex, oEntity;

		Entities = ds_map_size(LightsourceID);
		EntityIndex = ds_map_find_first(LightsourceID);

		for (var i = 0; i < Entities; i++)
		{
			oEntity = EntityID[? EntityIndex];
		
			if (oEntity != undefined)
			{
				var Radius, X, Y, W, H;
			
				Radius = LightsourceID[? EntityIndex];
			
				X = oEntity.x-camera_get_view_x(view_camera);
				Y = oEntity.y-camera_get_view_y(view_camera);
			
				W = Radius;
				H = Radius*0.5;
	
				draw_ellipse_color(X-W, Y-H, X+W, Y+H, c_white, c_black, false);
			}
			//else ds_map_delete(LightsourceID, EntityIndex);
		
			EntityIndex = ds_map_find_next(LightsourceID, EntityIndex);
		}
	
		surface_reset_target();
	
		gpu_set_blendmode(bm_subtract);
		draw_surface(SurfaceBrightness, 0, 0);
		gpu_set_blendmode(bm_normal);
	}
	else SurfaceBrightness = surface_create(WindowW, WindowH);


}
