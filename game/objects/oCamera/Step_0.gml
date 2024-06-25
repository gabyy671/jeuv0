/// @description update camrea
// update destination

if (instance_exists(follow)) {
	
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oPDead){
	
		x = xTo;
		y = yTo;
	
	}
	
}

//update position

x += (xTo - x) /25;
y += (yTo - y) /25;

// keep cam in the room
x = clamp(x, view_w_half + buff, room_width-view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height-view_h_half - buff);

//screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_lenght)*shake_magnitude));

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


if (layer_exists(mountains_layer)){
	// the less we divide x by, the more depth it feels in the background.
	layer_x(mountains_layer, x/1.5);
}

if (layer_exists(trees_layer)){
	// the less we divide x by, the more depth it feels in the background.
	layer_x(trees_layer, x/4);
}