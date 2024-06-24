/// @description Insert description here
// You can write your code in this editor
if (!other.has_gun){
	
	global.pacifist = false;
	instance_create_layer(oPlayer.x, oPlayer.y, layer, oGun);
	instance_destroy();

}