/// @description Insert description here

// Define the GUI width and height
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
/*
// Define the size of the health bar
var healthbar_width = 300;
var healthbar_height = 40;

// Calculate the top center position
var x1 = (gui_width - healthbar_width) / 2;
var y1 = 10; // 10 pixels from the top of the GUI layer
var x2 = x1 + healthbar_width;
var y2 = y1 + healthbar_height;

// Draw the health bar with the new coordinates and size
draw_healthbar(x1, y1, x2, y2, (hp/max_hp) * 100, c_black, c_red, c_green, 0, true, true);
*/

draw_sprite_ext(sHealthbar_bg, 0, healthbar_x, healthbar_y, scale, scale, 0, c_white, 1);
//draw_sprite(sHealthbar_bg, 0, healthbar_x, healthbar_y);

draw_sprite_stretched(sHealthbar, 0, healthbar_x, healthbar_y, (hp/hp_max) * healthbar_width, healthbar_height);

//draw_sprite(sHealthbar_border, 0, healthbar_x, healthbar_y);
draw_sprite_ext(sHealthbar_border, 0, healthbar_x, healthbar_y, scale, scale, 0, c_white, 1);