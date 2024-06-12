/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// Collision (v)
// Collision avec le plafond


if (hp<=0){
	
	with(instance_create_layer(x, y, layer, oDead)){
		
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction);
		
		if (sign(hsp) !=0 ) image_xscale = sign(hsp)*other.size;
		image_yscale = other.size;
		
	}
	
	instance_destroy();
	
	
	
}


if (place_meeting(x, y - 1, oWall)) {
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
    while (place_meeting(x, y, oWall)) {
        y -= 1;    
    }
    vsp = 0;
    jumping_state = JUMPING_STATE.GROUNDED;
} else {
    if (jumping_state != JUMPING_STATE.JUMPING) {
        jumping_state = JUMPING_STATE.FALLING;
    }
}


