///DrawBar(X1, Y1, X2, Y2, Value, ValueMax, Color, Border)
function DrawBar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	var X1, Y1, X2, Y2, Value, ValueMax, Color, Border;

	X1 = argument0;
	Y1 = argument1;
	X2 = argument2;
	Y2 = argument3;

	Value = argument4;
	ValueMax = argument5;

	Color = argument6;
	Border = argument7;

	draw_set_color(c_black);
	draw_rectangle(X1, Y1, X2, Y2, false);
	draw_set_color(Color);
	draw_rectangle(X1+Border, Y1+Border, X1+(Value/ValueMax)*((X2-X1)-Border*2), Y2-Border, false);
	/*
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(X1+(X2-X1)/2, (Y1+Y2-Y1)/2, string(Value)+"/"+string(ValueMax));
	draw_set_halign(fa_left);
	*/


}
