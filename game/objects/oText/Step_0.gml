/// @description Insert description here
// You can write your code in this editor
length = string_length(text);
letters += spd;
text_current = string_copy(text, 1, letters);

draw_set_font(fSign);

if (h == 0) h = string_height(text);

w = string_width(text_current);

if (letters >= length) && (oPlayer.controller || oPlayer.keyboard){
	instance_destroy();
	with (oCamera) follow = oPlayer;
}