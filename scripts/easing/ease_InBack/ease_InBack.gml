/// ease_InBack(time,start,change,duration)

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

var _s = 1.70158;
var _val = time / duration;
return change * _val * _val * ((_s + 1) * _val - _s) + start;




