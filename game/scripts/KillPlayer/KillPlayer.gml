// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillPlayer(){
	
	if (iFrames <= 0){
		
		hp --;
		iFrames = 30
		direction = point_direction(other.x, other.y, x, y);
		dmg_boost_x = lengthdir_x(16, direction);
		hitstun = dmg_boost_x /2;
		flash = 5;
		audio_play_sound(snDeath, 5, false);
		ScreenShake(5, 30);
		if (hp <= 0){
			with (oGun) instance_destroy();

			instance_change(oPDead, true);

			//hsp = lengthdir_x(3, direction);
			//vsp = lengthdir_y(3, direction);

			hsp = lengthdir_x(6, direction);
			vsp = lengthdir_y(4, direction)-2;

			if (sign(hsp != 0)) image_xscale = sign(hsp);

			global.kills -= global.killsthisroom;
		}
	}
}