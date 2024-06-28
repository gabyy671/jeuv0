/// firing
// You can write your code in this editor

if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderlb))  && (firing_delay < 0)) {
	
	recoil = 4
	firing_delay = 5;
	
	ScreenShake(2, 10);
	audio_play_sound(snShot, 5, false);
	
	with(instance_create_layer(x, y, "Bullets", oBullet)){
		
		spd = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
		
		x += lengthdir_x(spd, direction);
		y += lengthdir_y(spd, direction);
	}
	
	with (target){
		gunkick_x = lengthdir_x(1.5, other.image_angle-180);
	}
}

x = x + lengthdir_x(recoil, image_angle + 180);
y = y + lengthdir_y(recoil, image_angle + 180);