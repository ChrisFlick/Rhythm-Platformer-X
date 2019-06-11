/// ease_InOutExpo(time,start,change,duration)

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

var _val = 2 * time / duration;

if (_val < 1) { return change * 0.5 * power(2, 10 * --_val) + start; }

return change * 0.5 * (-power(2, -10 * --_val) + 2) + start;



