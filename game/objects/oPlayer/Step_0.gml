// player input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);
key_down = keyboard_check(vk_down);



//calc moovment
var move = key_right - key_left;
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


//collision (v)
if (place_meeting(x , y + vsp,oWall))
{
	while(!place_meeting(x, y + sign(vsp), oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y + vsp;


//jump
if(place_meeting(x, y+1, oWall)) && (key_jump) {

	vsp = vsp - 13;
}

//fast fall
if(!place_meeting(x, y+1, oWall)) && (key_down) && (sign(vsp) > 0){
	vsp = vsp + 0.69;
}


//animations
if(!place_meeting(x, y+1, oWall)){
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
	
}
else{
	image_speed = 1;
	if (hsp == 0){
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
		image_xscale = sign(hsp);
		
	}
}