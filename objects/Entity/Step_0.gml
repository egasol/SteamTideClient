var MoveDistance, MoveDirection;

MoveDistance = point_distance(x, y, MoveX, MoveY);
MoveDirection = point_direction(x, y, MoveX, MoveY);

if (MoveDistance > MoveSpeed)
{
	x += lengthdir_x(MoveSpeed, MoveDirection);
	y += lengthdir_y(MoveSpeed, MoveDirection);
	
	var d1, d2;
	
	d1 = point_distance(MovePreviousX, MovePreviousY, MoveX, MoveY);
	d2 = point_distance(x, y, MoveX, MoveY);
	
	Z = MoveZ*sin(pi*(d2/d1));
	
	depth = -y;
}
else
{
	x = MoveX;
	y = MoveY;
	Z = 0;
}