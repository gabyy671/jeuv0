/// @description Collision with oPlayer
// You can write your code in this editor
if (!other.has_gun){
	
	global.pacifist = false;
	iPlayer = other;
	with(instance_create_layer(oPlayer.x, oPlayer.y, layer, oGun)){
		target = other.iPlayer;
	}
	iPlayer.inventory.has_gun = 1;
	iPlayer.has_gun = 1;
	instance_destroy();
}