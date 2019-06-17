/// @desc ScreenShake(magnitude,length)
/// @arg Magnitude sets the strength of the shake.
/// @arg length sets the shake in frames in miliseconds.

/*********************
****** Variables *****
*********************/

var magnitude = argument[0];
var length = argument[1];

with (obj_Camera)
{
	if (magnitude > shake_remain)
	{
		shake_magnitude = magnitude;
		shake_remain =  magnitude;
		shake_length = length;
	}
}