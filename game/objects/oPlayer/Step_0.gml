// get input from controller
if(hascontrol) && (hitstun == 0){
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

//new jump
can_jump --;
if(can_jump) && (key_jump){
	jumping_state = JUMPING_STATE.JUMPING;
	jumping_frame = 0;
	can_jump = 0;
}

//fast fall
if ((jumping_state == JUMPING_STATE.FALLING) && (key_down)){
	jumping_state = JUMPING_STATE.FAST_FALLING;
}

// dust effect
if (hsp != 0) && (dustCd < 0) && (jumping_state == JUMPING_STATE.GROUNDED){
	instance_create_layer(x, bbox_bottom, "Bullets", oDust);
	dustCd = 6;
}




// var = portée locale
var move = key_right - key_left;
hsp = move * walksp;



// deplacement (h)
var x_mov;
x_mov = hsp + gunkick_x + dmg_boost_x;



//collision (h)
if (place_meeting(x + x_mov, y, oWall))
{
	while(!place_meeting(x + sign(x_mov), y ,oWall))
	{
		x = x + sign(x_mov);	
	}
	x_mov = 0;
}

x = x + x_mov;





var y_mov = 0;

switch (jumping_state) {
    case JUMPING_STATE.GROUNDED:
		can_jump = 10;
		
		image_speed = 1;
		if (hsp == 0){
			sprite_index = sPlayer;
		}
		else
		{
			sprite_index = sPlayerR;
			image_xscale = sign(hsp);
		}
		
        break;

    case JUMPING_STATE.JUMPING:
			
		image_speed = 0;
		sprite_index = sPlayerA;
		image_index = 0;
		
        if (jumping_frame < 15) {
		
			y_mov = y_mov - jumping_speed;
			jumping_frame ++;
        } else {
            jumping_state = JUMPING_STATE.TOP;
            jumping_frame = 0;
        }
        break;

    case JUMPING_STATE.FALLING:
	
		image_speed = 0;
		sprite_index = sPlayerA;
		image_index = 1;
		y_mov = y_mov + falling_speed;
		
        break;

    case JUMPING_STATE.TOP:
        if (jumping_frame < 2) {
            jumping_frame += 1;
        } else {
            jumping_state = JUMPING_STATE.FALLING;
			
            jumping_frame = 0;
        }
        break;

    case JUMPING_STATE.FAST_FALLING:
		image_speed = 0;
		sprite_index = sPlayerA;
		image_index = 1;
		y_mov = y_mov + (falling_speed * 1.5); 

        break;
}

y_mov  = y_mov + gunkick_y + dmg_boost_y;

if (place_meeting(x, y + y_mov, oWall)) //&& (jumping_state != JUMPING_STATE.GROUNDED)
{
	while(!place_meeting(x, y + sign(y_mov), oWall))
	{
		y = y + sign(y_mov);	
	}
	y_mov = 0;
	if (jumping_state != JUMPING_STATE.GROUNDED){
		jumping_state = JUMPING_STATE.GROUNDED;
		audio_play_sound(snLanding, 1, false);
		repeat(5){			//bbox means collision box
			with(instance_create_layer(x, bbox_bottom, "Bullets", oDust)) {
				vsp = 0;
			}
		}
	}
}

y = y + y_mov;

if (!place_meeting(x, y + 1, oWall)) && (jumping_state == JUMPING_STATE.GROUNDED){
	jumping_state = JUMPING_STATE.FALLING;
}



iFrames = max(0, iFrames - 1);
hitstun = max(0, hitstun -1);
dustCd  = max(0, dustCd);
gunkick_x = 0;
gunkick_y = 0;

if (dmg_boost_x > 0) {
    dmg_boost_x = max(0, dmg_boost_x - 1);
} else if (dmg_boost_x < 0) {
    dmg_boost_x = min(0, dmg_boost_x + 1);
}

if (dmg_boost_y > 0) {
    dmg_boost_y = max(0, dmg_boost_y - 1);
} else if (dmg_boost_y < 0) {
    dmg_boost_y = min(0, dmg_boost_y + 1);
}