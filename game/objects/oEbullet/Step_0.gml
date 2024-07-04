x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

image_xscale = size;
image_yscale = size;

if (place_meeting(x, y, oWall)){
	while (place_meeting(x, y, oWall)){
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	
	instance_change(oHitSpark, true);
	//instance_destroy();	
}