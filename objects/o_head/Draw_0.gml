draw_self();

var b1_x = lengthdir_x(148 * image_yscale, image_angle + 78);
var b1_y = lengthdir_y(148 * image_yscale, image_angle + 78);
var b2_x = lengthdir_x(148 * image_yscale, image_angle + -78);
var b2_y = lengthdir_y(148 * image_yscale, image_angle + -78);

draw_sprite_ext(s_bulb, 0, x + b1_x, y + b1_y, .5* image_yscale, .5* image_yscale, 0 , c_white, bulb_alpha);
draw_sprite_ext(s_bulb, 0, x + b2_x, y + b2_y, .5* image_yscale, .5* image_yscale, 0 , c_white, bulb_alpha);
