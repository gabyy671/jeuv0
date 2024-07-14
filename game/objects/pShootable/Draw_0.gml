/// @description Insert description here
// You can write your code in this editor
draw_self();
if (flash > 0){
	flash -=1;	
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

if (show_hp_bar){
	
	//var gui_width = display_get_gui_width();
	// Define the size of the health bar
	var healthbar_width = 32;
	var healthbar_height = 8;

	// Calculate the top center position
	var x1 = x - (healthbar_width / 2);
	var y1 = y - 40;
	var x2 = x1 + healthbar_width;
	var y2 = y1 + healthbar_height;

	// Draw the health bar with the new coordinates and size
	draw_healthbar(x1, y1, x2, y2, (hp/hp_max) * 100, c_black, c_red, c_green, 0, true, true);	
}