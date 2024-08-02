///MapSetLand(Tilemap, X, Y)
function MapSetLand(argument0, argument1, argument2) {

	var Tilemap, X, Y;

	Tilemap = argument0;

	X = argument1;
	Y = argument2;

	var Tile;

	tilemap_set(Tilemap, 8, X, Y);

	//Corners
	Tile = tilemap_get(Tilemap, X-1, Y-1);

	if (Tile == 1) tilemap_set(Tilemap, 2, X-1, Y-1);

	Tile = tilemap_get(Tilemap, X+1, Y-1);

	if (Tile == 1) tilemap_set(Tilemap, 4, X+1, Y-1);

	Tile = tilemap_get(Tilemap, X-1, Y+1);

	if (Tile == 1) tilemap_set(Tilemap, 12, X-1, Y+1);

	Tile = tilemap_get(Tilemap, X+1, Y+1);

	if (Tile == 1) tilemap_set(Tilemap, 14, X+1, Y+1);

	//Sides
	Tile = tilemap_get(Tilemap, X-1, Y);

	if (Tile == 1 || Tile == 2 || Tile = 12) tilemap_set(Tilemap, 7, X-1, Y);
	if (Tile == 3) tilemap_set(Tilemap, 5, X-1, Y);
	if (Tile == 13) tilemap_set(Tilemap, 10, X-1, Y);

	Tile = tilemap_get(Tilemap, X, Y-1);

	if (Tile == 1 || Tile == 2 || Tile = 4) tilemap_set(Tilemap, 3, X, Y-1);
	if (Tile == 7) tilemap_set(Tilemap, 5, X, Y-1);
	if (Tile == 9) tilemap_set(Tilemap, 6, X, Y-1);

	Tile = tilemap_get(Tilemap, X+1, Y);

	if (Tile == 1 || Tile == 4 || Tile = 14) tilemap_set(Tilemap, 9, X+1, Y);
	if (Tile == 3) tilemap_set(Tilemap, 6, X+1, Y);
	if (Tile == 13) tilemap_set(Tilemap, 11, X+1, Y);

	Tile = tilemap_get(Tilemap, X, Y+1);

	if (Tile == 1 || Tile == 12 || Tile = 14) tilemap_set(Tilemap, 13, X, Y+1);
	if (Tile == 7) tilemap_set(Tilemap, 10, X, Y+1);
	if (Tile == 9) tilemap_set(Tilemap, 11, X, Y+1);


}
