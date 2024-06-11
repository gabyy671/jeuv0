/// @description move to next room

with (oPlayer){
	
	if (hascontrol){
		
		hascontrol = false;
	}
	
	SlideTransition(TRANS_MOD.GOTO, other.target);
}