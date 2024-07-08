// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillPlayer(){
	
	with (oGun) instance_destroy();
	instance_change(oPDead, true);

	//hsp = lengthdir_x(3, direction);
	//vsp = lengthdir_y(3, direction);

	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction)-2;
	if (sign(hsp != 0)) image_xscale = sign(hsp);
	global.kills -= global.killsthisroom;
	
}