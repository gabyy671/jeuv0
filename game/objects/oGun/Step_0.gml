/// firing
// You can write your code in this editor

if (target.key_shoot)  && (active_firing_delay <= 0) {
	
	active_recoil = recoil;
	active_firing_delay = firing_delay;
	
	ScreenShake(2, 10);
	audio_play_sound(snShot, 5, false);
	
	with(instance_create_layer(x, y, "Bullets", oBullet)){
		
		spd = other.bullet_spd;
		direction = other.image_angle + random_range(-other.spread, other.spread);
		image_angle = direction;
		dmg = other.dmg;
		x += lengthdir_x(spd, direction);
		y += lengthdir_y(spd, direction);
	}
	
	with (target){
		gunkick_x = lengthdir_x(1.5, other.image_angle - 180);
		gunkick_y = lengthdir_y(10, other.image_angle - 180);
	}
}

x = x + lengthdir_x(active_recoil, image_angle + 180);
y = y + lengthdir_y(active_recoil, image_angle + 180);