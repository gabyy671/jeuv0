x = oPlayer.x;
y = oPlayer.y+10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay -=1;
recoil = max(0, recoil-1);

if ((image_angle > 90) && (image_angle < 270)){
	image_yscale = -1;
}
else {
	image_yscale = 1;
}