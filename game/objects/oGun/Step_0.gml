/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left)  && (firing_delay < 0)) {
	
	with(instance_create_layer(x, y, "Bullets", oBullet)){
		
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
	
	recoil = 4
	firing_delay = 5;

}

x = x + lengthdir_x(recoil, image_angle + 180);
y = y + lengthdir_y(recoil, image_angle + 180);