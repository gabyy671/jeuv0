// player input


/*
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);
*/
if(hascontrol){
	key_left = active_controller.key_left;
	key_right = active_controller.key_right;
	key_jump = active_controller.key_jump;
	key_down = active_controller.key_down;
	key_action = active_controller.key_action;
	key_shoot = active_controller.key_shoot;
	
	keyboard = active_controller.keyboard;
	controller = active_controller.controller;

}
else {
	key_down = 0;
	key_jump = 0;
	key_left = 0;
	key_right = 0;
	key_action = 0;
}
	//calc moovment

// var = portée locale

var move = key_right - key_left;
hsp = move * walksp;

dustCd --;
if (hsp != 0) && (dustCd < 0) && (jumping_state == JUMPING_STATE.GROUNDED){
	instance_create_layer(x, bbox_bottom, "Bullets", oDust);
	dustCd = 6;
}

// checking for collision (h)
if (place_meeting(x + hsp, y, oWall))
{
	while(!place_meeting(x + sign(hsp), y ,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

if (place_meeting(x + hsp + gunkick_x, y, oWall))
{
	while(!place_meeting(x + sign(gunkick_x), y ,oWall))
	{
		x = x + sign(gunkick_x);	
	}
	gunkick_x = 0;
}

x = (x + hsp) + gunkick_x;
gunkick_x = 0;



//jump

/*
old jump mecanic: 

if(place_meeting(x, y+1, oWall)) && (key_jump) {

	vsp = vsp - 13;
}
*/

// new jump mecanic
can_jump --;
if(can_jump) && (key_jump){
	jumping_state = JUMPING_STATE.JUMPING;
	jumping_frame = 0;
	can_jump = 0;
}


//fast fall
/*
if(!place_meeting(x, y+1, oWall)) && (key_down) && (sign(vsp) > 0){
	jumping_state = JUMPING_STATE.FAST_FALLING;
}
*/
if ((jumping_state == JUMPING_STATE.FALLING) && (key_down)){
	jumping_state = JUMPING_STATE.FAST_FALLING;
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


