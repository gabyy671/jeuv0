/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

event_inherited();


var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();


scale = 5;
healthbar_width = 100 * scale;
healthbar_height = 12 * scale;
healthbar_x = (gui_width /2) - (healthbar_width / 2);
healthbar_y = 30;