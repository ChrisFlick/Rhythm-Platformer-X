/// ease_InCirc(time,start,change,duration)

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

var _val = time / duration;
return change * (1 - sqrt(1 - _val * _val)) + start;


