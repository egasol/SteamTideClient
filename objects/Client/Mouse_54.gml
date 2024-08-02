if instance_exists(Entity)
{
	var oEntity = instance_nearest(mouse_x, mouse_y, Entity);

	if (point_distance(mouse_x, mouse_y, oEntity.x, oEntity.y) < TargetSize && oEntity.ID >= 32)
	{
		Target = oEntity;
		TargetMarkerAnimation = 0;
		
		SendPickup(oEntity.ID);
	}
	else
	{
		Target = false;
		
		SendDrop(mouse_x, mouse_y);
	}
}