/// @description Insert description here
// You can write your code in this editor
if (has_gun == 1){
	with(instance_create_layer(x, y, "Gun", oGun)){
		target = other.player;
	}
}