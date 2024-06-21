/// @description Insert description here
// You can write your code in this editor

if (hasweapon){
	
	mygun = instance_create_layer(x, y, "Gun", oEgun);
	with(mygun){
		owner = other.id;	
	}	
}
else mygun = noone;
