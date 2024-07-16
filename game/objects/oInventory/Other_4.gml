/// @description autosave inventory
// You can write your code in this editor
if (room == rEnding) instance_destroy();

if (room != rOne) {
	var file_name = "Save_inv_P" + string(number_inv) + ".sav";
	if(file_exists(file_name)) file_delete(file_name);

	var file = file_text_open_write(file_name);
		//stock weapon buff
		file_text_write_real(file, has_gun);
		
		file_text_write_real(file, dmg);
		file_text_write_real(file, firing_delay); 
		file_text_write_real(file, bullet_spd);
		file_text_write_real(file, spread);
		
		//stock player stats buff
		file_text_write_real(file, inv_hp);
		file_text_write_real(file, inv_walk_spd);
		file_text_write_real(file, inv_fall_spd);
		file_text_write_real(file, inv_jump_spd);
		file_text_write_real(file, inv_jump_lgt);
		
		
		file_text_close(file);

	if (!instance_exists(oAugment)) {
		//&& (player != has_gun)
		
		player.hp += inv_hp;
		player.walksp += inv_walk_spd;
		player.falling_speed += inv_fall_spd;
		player.jumping_speed += inv_jump_spd;
		player.jumping_lenght += inv_jump_lgt;
		
		if (has_gun == 1) {
			with(instance_create_layer(x, y, "Gun", oGun)){
				target = other.player;
				dmg += other.dmg;
				firing_delay += other.firing_delay;
				bullet_spd += other.bullet_spd;
				spread += other.spread;
			}
		}
	}
}

