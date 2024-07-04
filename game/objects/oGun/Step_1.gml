x = target.x;
y = target.y+10;


if (target.controller == 0){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

else{
	var controller_h = gamepad_axis_value(target.active_controller.irl_controller_id, gp_axisrh);
	var controller_v = gamepad_axis_value(target.active_controller.irl_controller_id, gp_axisrv);
	
	if (abs(controller_h) > 0.1) || (abs(controller_v) > 0.1){
	
		controller_angle = point_direction(0, 0, controller_h, controller_v);
	}
	image_angle = controller_angle;	
}


active_firing_delay = max(0, active_firing_delay - 1);
active_recoil = max(0, active_recoil - 1);

if ((image_angle > 90) && (image_angle < 270)){
	image_yscale = -1;
}
else {
	image_yscale = 1;
}
