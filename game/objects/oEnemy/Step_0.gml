//calc moovment

// dont walk of edge
if (grounded) && (afraid_of_heights) && (!place_meeting(x+hsp, y+1, oWall)){
	hsp = - hsp;
}



// checking for collision (h)
if place_meeting(x + hsp, y, oTransition)
{
	while(!place_meeting(x + sign(hsp), y ,oTransition))
	{
		x = x + sign(hsp);
	}
	hsp = - hsp;
}

if place_meeting(x + hsp, y, oWall)
{
	while(!place_meeting(x + sign(hsp), y ,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = - hsp;
}

if (is_active) x = x + hsp;

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
	}
}
