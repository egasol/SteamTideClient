x += VelocityX;
y += VelocityY;

VelocityY += 0.08;

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x-1, y-1, Text);
draw_set_color(c_white);
draw_text(x, y, Text);
draw_set_halign(fa_left);

if (Timer-- < 0) instance_destroy();