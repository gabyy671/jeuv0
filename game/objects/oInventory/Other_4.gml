/// @description autosave inventory
// You can write your code in this editor
if (room == rEnding) instance_destroy();

if (room != rOne) && (room != rEnding) {
	var file_name = "Save_inv_P" + string(number_inv) + ".sav";
	if(file_exists(file_name)) file_delete(file_name);

	var file = file_text_open_write(file_name);
		file_text_write_real(file, has_gun);
		file_text_write_real(file, dmg);
		file_text_write_real(file, firing_delay); 
		file_text_write_real(file, bullet_spd);
		file_text_write_real(file, spread);
		file_text_close(file);

	//&& (player != has_gun)
	if (has_gun == 1) {
		with(instance_create_layer(x, y, "Gun", oGun)){
			target = other.player;
			dmg = other.dmg;
			firing_delay = other.firing_delay;
			bullet_spd = other.bullet_spd;
			spread = other.spread;
		}
	}
}