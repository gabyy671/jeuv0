//calc moovment

// dont walk of edge
if (jumping_state == JUMPING_STATE.GROUNDED) && (afraid_of_heights) && (!place_meeting(x+hsp, y+1, oWall)){
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




if (!place_meeting(x, y + 1, oWall)) && (jumping_state == JUMPING_STATE.GROUNDED){
	jumping_state = JUMPING_STATE.FALLING;
}

var y_mov = 0;

switch (jumping_state) {
    case JUMPING_STATE.GROUNDED:
		can_jump = 10;
		
		image_speed = 1;
		if (hsp == 0){
			sprite_index = sEnemy;
		}
		else
		{
			sprite_index = sEnemyR;
			image_xscale = sign(hsp);
		}
		
        break;

    case JUMPING_STATE.JUMPING:
			
		image_speed = 0;
		sprite_index = sEnemyA;
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
		sprite_index = sEnemyA;
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
		sprite_index = sEnemyA;
		image_index = 1;
		y_mov = y_mov + (falling_speed * 1.5); 

        break;
}

if (place_meeting(x, y + y_mov, oWall)) && (jumping_state != JUMPING_STATE.GROUNDED)
{
	while(!place_meeting(x, y + sign(y_mov), oWall))
	{
		y = y + sign(y_mov);	
	}
	y_mov = 0;
	jumping_state = JUMPING_STATE.GROUNDED;
	audio_play_sound(snLanding, 1, false);
	repeat(5){			//bbox means collision box
		with(instance_create_layer(x, bbox_bottom, "Bullets", oDust)) {
			vsp = 0;
		}
	}
}

y = y + y_mov;
