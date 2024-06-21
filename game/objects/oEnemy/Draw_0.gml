draw_self();



if ((jumping_state == JUMPING_STATE.GROUNDED) && (hsp != 0)){
	
	image_speed = 1;
	sprite_index = sEnemyR;
	image_xscale = sign(hsp);
}

if (hsp != 0) image_xscale = sign(hsp)*size;
image_yscale = size;

if (flash > 0){
	flash --;
	shader_set(shWhite);
	draw_self();
	shader_reset();	
}