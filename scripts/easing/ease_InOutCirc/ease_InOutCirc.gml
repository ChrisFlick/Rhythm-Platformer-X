/// ease_InOutCirc(time,start,change,duration)

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

if (_val < 1) { return change * 0.5 * (1 - sqrt(abs(1 - _val * _val))) + start; }

_val -= 2;
return change * 0.5 * (sqrt(abs(1 - _val * _val)) + 1) + start;




