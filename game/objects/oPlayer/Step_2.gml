switch (jumping_state) {
    case JUMPING_STATE.GROUNDED:
		can_jump = 10;
        break;

    case JUMPING_STATE.JUMPING:
	
		sprite_index = sPlayerA;
		image_speed = 0;
		image_index = 0;
		
        if (jumping_frame < 20) {
            if (!place_meeting(x, y - jumping_speed, oWall)) {
                y -= jumping_speed;
                jumping_frame += 1;
            } else {
                // Si on touche le plafond, arrêter le saut
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
        }
        break;

    case JUMPING_STATE.TOP:
        if (jumping_frame < 4) {
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
        }
        break;
}
