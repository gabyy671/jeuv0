/// @desc Progress the transition
// You can write your code in this editor

if (mode != TRANS_MOD.OFF){
	
	if(mode == TRANS_MOD.INTRO){
		percent = max(0,percent - max((percent/10), 0.005));	
	}
	
	else{
		percent = min(1.05, percent + max(((1.05-percent)/10), 0.005));
	}
	
	
	if (percent == 1.05) || (percent == 0){
		
		switch(mode){
		
			case TRANS_MOD.INTRO:
			{
				mode = TRANS_MOD.OFF;
				break;
			}
			
			case TRANS_MOD.NEXT:
			{
				mode = TRANS_MOD.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MOD.GOTO:
			{
				mode = TRANS_MOD.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MOD.RESTART:
			{
				game_restart();
				break;
			}
			
		}
		
	}
	
}
