if (instance_exists(Target) == true)
{
	var MoveDistance, MoveDirection, MoveSpeed;

	MoveDistance = point_distance(x, y, Target.x, Target.y);
	MoveDirection = point_direction(x, y, Target.x, Target.y);
	MoveSpeed = 6;

	if (MoveDistance > MoveSpeed)
	{
		x += lengthdir_x(MoveSpeed, MoveDirection);
		y += lengthdir_y(MoveSpeed, MoveDirection);
		
		depth = -y;
	}
	else
	{
		instance_destroy();
	}
	
	//Draw Projectile
	draw_sprite_ext(Sprite, 0, x, y-24, 1, 1, MoveDirection, c_white, 1);
	
	//DrawShadow
	draw_set_color(c_black);
	draw_set_alpha(0.2);
	draw_ellipse(x-16, y-8, x+16, y+8, false);
	draw_set_alpha(1);
}
else instance_destroy();