/// ease_OutQuart(time,start,change,duration)

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

return -change * (power(time / duration - 1, 4) - 1) + start;

