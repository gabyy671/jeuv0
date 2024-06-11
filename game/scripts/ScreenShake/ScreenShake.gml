/// @desc ScreenShake(Magnitude, Frames)
/// @arg Magnitude sets the strenght of the shake (radius in pixel)
/// @arg Frames sets the lenght of the shake in frames (60 fps)


function ScreenShake(_Magnitude, _Frames){
	with (oCamera){
		if (_Magnitude > shake_remain){
			shake_magnitude = _Magnitude;
			shake_remain = _Magnitude;
			shake_lenght = _Frames;
			
			
		}
			
	}

}