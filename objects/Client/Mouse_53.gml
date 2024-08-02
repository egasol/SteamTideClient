if instance_exists(Entity)
{
	var oEntity, Distance;
	
	oEntity = instance_nearest(mouse_x, mouse_y, Entity);
	Distance = point_distance(mouse_x, mouse_y, oEntity.x, oEntity.y);
	
	if (Distance < TargetSize && oEntity.ID != SocketClient)
	{
		Target = oEntity;
		TargetMarkerAnimation = 0;
		
		SendUse(oEntity.ID);
	}
	else
	{
		Target = false;
		
		SendMove(mouse_x, mouse_y);
	}
}