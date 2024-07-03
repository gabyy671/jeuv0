/// @description Insert description here
// You can write your code in this editor

x = owner.x;
y = owner.y+10;
image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);


var target_x = x;
var target_y = y;

// Nom de l'objet dont on veut trouver l'instance la plus proche
var nearest_player = instance_nearest(target_x, target_y, oPlayer);

if (nearest_player != noone) && (owner.is_active){
	
	if (nearest_player.x < x) image_yscale = - image_yscale;
	if (point_distance(nearest_player.x, nearest_player.y, x, y) < 600){
		image_angle = point_direction(x, y,nearest_player.x, nearest_player.y);
		countdown--;
	}
	if (countdown <= 0){
		countdown = countdownnb;
		
		if (!collision_line(x, y, nearest_player.x, nearest_player.y, oWall, false, false)){
			
			audio_play_sound(snShot, 5, false);
			with(instance_create_layer(x, y, "Bullets", oEbullet)){
			spd = 10;
			direction = other.image_angle + random_range(-3, 3);
			image_angle = direction;
		
			x += lengthdir_x(spd, direction);
			y += lengthdir_y(spd, direction);
			}
		}

	}

} else {
    // Aucune instance trouvée
    //show_debug_message("Aucune instance trouvée à proximité.");
}
