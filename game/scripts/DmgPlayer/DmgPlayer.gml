// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DmgPlayer(_damage = 1){

	if (argument_count > 0) {
        hp -= _damage;
    } else {
        hp -= 1;
    }
	
	iFrames = 30
	direction = point_direction(other.x, other.y, x, y);
	dmg_boost_x = lengthdir_x(16, direction);
	
	hitstun = dmg_boost_x / 2;
	flash = 5;
	audio_play_sound(snDeath, 5, false);
	ScreenShake(5, 30);
	
	if (hp <= 0) KillPlayer();
}
