draw_self();

var b1_x = 30;
var b1_y = lengthdir_y(143, 90);
var b2_x = 30;
var b2_y = lengthdir_y(143, -90);

draw_sprite_ext(s_bulb, 0, x + b1_x, y + b1_y, .5, .5, 0 , c_white, .5);
draw_sprite_ext(s_bulb, 0, x + b2_x, y + b2_y, .5, .5, 0 , c_white, .5);
