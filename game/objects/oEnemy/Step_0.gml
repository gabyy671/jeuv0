

//calc moovment
var move = 0;
hsp = move * walksp;

vsp = vsp + grv;


// checking for collision (h)
if (place_meeting(x + hsp, y, oWall))
{
	while(!place_meeting(x + sign(hsp), y ,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

x = x + hsp;



/* player jumping mecanic

if(jumping_state == JUMPING_STATE.GROUNDED && (key_jump)){
	jumping_state = JUMPING_STATE.JUMPING;
	jumping_frame = 0;
}

*/

//fast fall
/*
if(!place_meeting(x, y+1, oWall)) && (key_down) && (sign(vsp) > 0){
	jumping_state = JUMPING_STATE.FAST_FALLING;
}
*/
/* player fast fall mecanic
if ((jumping_state == JUMPING_STATE.FALLING) && (key_down)){
	jumping_state = JUMPING_STATE.FAST_FALLING;
}
*/



//animations
if(!place_meeting(x, y+1, oWall)){
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
	
}
else{
	image_speed = 1;
	if (hsp == 0){
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
		image_xscale = sign(hsp);
		
	}
}

if (jumping_frame == 0){
	sprite_index = sEnemy;
}