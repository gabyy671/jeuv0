x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

if (place_meeting(x, y, pShootable)){
	
	with(instance_place(x, y, pShootable)){
		hp -= other.dmg;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}



if (place_meeting(x, y, oWall)){
	while (place_meeting(x, y, oWall)){
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	
	instance_change(oHitSpark, true);
	//instance_destroy();	
}
