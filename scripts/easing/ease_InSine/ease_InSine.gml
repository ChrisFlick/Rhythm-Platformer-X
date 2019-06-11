/// ease_InSine(time,start,change,duration)

/*********************
***** Variables ******
*********************/

var time = argument[0];
var start = argument[1];
var change = argument[2];
var duration = argument[3];

/*********************
***** Function *******
*********************/

return change * (1 - cos(time / duration * (pi / 2))) + start;



