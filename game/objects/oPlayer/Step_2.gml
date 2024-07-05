if (!place_meeting(x, y + 1, oWall)) && (jumping_state == JUMPING_STATE.GROUNDED){
	jumping_state = JUMPING_STATE.FALLING;
}

switch (jumping_state) {
    case JUMPING_STATE.GROUNDED:
		can_jump = 10;
        break;

    case JUMPING_STATE.JUMPING:
	
		sprite_index = sPlayerA;
		image_speed = 0;
		image_index = 0;
		
        if (jumping_frame < 15) {
            if (!place_meeting(x, y - jumping_speed, oWall)) {
                y -= jumping_speed;
                jumping_frame += 1;
            } else {
                while(!place_meeting(x, y - 1, oWall)){
					y --;
				}
                jumping_state = JUMPING_STATE.FALLING;
                jumping_frame = 0;
            }
        } else {
            jumping_state = JUMPING_STATE.TOP;
            jumping_frame = 0;
        }
        break;

    case JUMPING_STATE.FALLING:
	
		sprite_index = sPlayerA;
		image_speed = 0;
		image_index = 1;
		
        // Code pour l'état de chute
        if (!place_meeting(x, y + falling_speed, oWall)) {
            y += falling_speed;
        } else {
            while (!place_meeting(x, y + 1, oWall)) {
                y += 1;
            }

            jumping_state = JUMPING_STATE.GROUNDED;
			audio_play_sound(snLanding, 1, false);
			repeat(5){			//bbox means collision box
				with(instance_create_layer(x, bbox_bottom, "Bullets", oDust)) {
					vsp = 0;
				}
			}
        }
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
        if (!place_meeting(x, y + falling_speed * 1.5, oWall)) {
            y += falling_speed * 1.5;
        } else {
            while (!place_meeting(x, y + 1, oWall)) {
                y += 1;
            }
            jumping_state = JUMPING_STATE.GROUNDED;
			audio_play_sound(snLanding, 1, false);
			repeat(5){			//bbox means collision box
				with(instance_create_layer(x, bbox_bottom, "Bullets", oDust)) {
					vsp = 0;
				}
			}
        }
        break;
}
iFrames = max(0, iFrames - 1);