/// @description Insert description here
// You can write your code in this editor
switch (jumping_state) {
	
    case JUMPING_STATE.GROUNDED:
        grounded = true;
        break;

    case JUMPING_STATE.JUMPING:
        // Code pour l'état de saut
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
		grounded = false;
        if (!place_meeting(x, y + falling_speed, oWall)) {
            y += falling_speed;
        } else {
            while (!place_meeting(x, y + 1, oWall)) {
                y += 1;
            }
            jumping_state = JUMPING_STATE.GROUNDED;
        }
        break;

}

if (flash > 0){
flash -=1;	
}