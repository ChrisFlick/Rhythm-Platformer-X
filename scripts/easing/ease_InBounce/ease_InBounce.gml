/// ease_InBounce(time,start,change,duration)

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

return time - ease_OutBounce(duration - time, 0, change, duration) + start;



