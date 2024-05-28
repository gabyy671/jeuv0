/// @description Insert description here
// Collision (v)
// Collision avec le plafond


if (place_meeting(x, y - 2, oWall)) {
    while (!place_meeting(x, y - 1, oWall)) {
        y -= 1;    
    }
    vsp = 0;
    if (jumping_state == JUMPING_STATE.JUMPING) {
        jumping_state = JUMPING_STATE.FALLING;
        jumping_frame = 0;
    }
}

// Collision avec le sol

if (place_meeting(x, y + 1, oWall)) {
    while (place_meeting(x, y + 1, oWall)) {
        y -= 1;    
    }
    vsp = 0;
    jumping_state = JUMPING_STATE.GROUNDED;
} else {
    if (jumping_state != JUMPING_STATE.JUMPING) {
        jumping_state = JUMPING_STATE.FALLING;
    }
}


