if (done == 0){

	vsp = vsp + grv;

	if(place_meeting(x+hsp, y,oWall)){
		while(!place_meeting(x+sign(hsp), y, oWall)){
			x = x+sign(hsp);
		}
		hsp=0;
	}

	x = x+hsp;

	if(place_meeting(x, y+vsp,oWall)){
		while(!place_meeting(x, y+sign(vsp), oWall)){
			y = y+sign(vsp);
		}
		
		if(vsp>0){
			
			done = 1;
			image_index = 1;
		}
		vsp=0;
	}

	y = y+vsp;

}