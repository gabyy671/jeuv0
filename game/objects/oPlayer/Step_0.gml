// player input



/*
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);
*/
if(hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("Q"))
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_up);
	key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	key_action = keyboard_check(ord("E"));

	if (key_left) || (key_right) || (key_jump) || (key_down) {
		keyboard = 1;
		controller = 0;	
	}


	//controlleur movments
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.1){
	
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}
	if (gamepad_axis_value(0, gp_axislv) < -0.1){
		key_jump = 1;
	}
	else if (gamepad_axis_value(0, gp_axislv) > 0.1){
		key_down = 1;
	}
	
	if (gamepad_button_check(0, gp_face3)){
		key_action = 1;
	}
/*
	if (gamepad_button_check(0, gp_face3)){
		key_jump = 1;
		controller = 1;
	}
	*/
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

x = x + hsp;





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


