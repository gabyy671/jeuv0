/// @description Insert description here
// You can write your code in this editor

if (room != rMenu) && (instance_exists(oPlayer)) && (global.kills > 0){
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_top);

	draw_text_transformed(display_get_gui_width() - 8, 12, string(global.kills) + " party kills", killtextscale, killtextscale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(display_get_gui_width() - 10, 10, string(global.kills) + " party kills", killtextscale, killtextscale, 0);

}