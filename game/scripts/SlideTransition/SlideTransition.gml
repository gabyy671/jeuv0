/// @desc SlideTransition(Mode, TargetRoom)
/// @arg Mode set transition mode
/// @arg Target sets the target room if goto is the mode
/*
with (oTransition){
	mode = argument[0];
	// [0] means optional argument, 
	//argument0 isnt optional 
	if (argument_count > 1) target = argument[1];
}
*/
function SlideTransition(_Mode, _Target)

{

	with(oTransition)

	{

		mode = _Mode;

		if(argument_count > 1) target = _Target;
		
	}
	
}