/// @description Insert description here
// You can write your code in this editor

if ((instance_number(object_index) > 1) || (number_inv > global.nbPlayer)) instance_destroy();

if (global.fromSave){
	
	var file_name = "Save_inv_P" + string(number_inv) + ".sav";
	
	if (file_exists(file_name)){
		var file = file_text_open_read(file_name);
		has_gun = file_text_read_real(file);
		dmg = file_text_read_real(file);
		firing_delay = file_text_read_real(file);
		bullet_spd = file_text_read_real(file);
		spread = file_text_read_real(file);
		file_text_close(file);
	}
}