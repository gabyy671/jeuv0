/// @description Insert description here
// You can write your code in this editor

layer_x(lPlayer, min(layer_get_x(lPlayer)+1, display_get_gui_width()*0.5 - 32));

letters += spd;
text = string_copy(endtext[currentline],1, floor(letters));

if (letters >= lenght) && (keyboard_check(vk_anykey)){
	if (currentline + 1 == array_length_1d(endtext)){
		SlideTransition(TRANS_MOD.RESTART);
	}
	else{
		currentline	++;
		letters = 0;
		lenght = string_length(endtext[currentline]);
	}
	
}