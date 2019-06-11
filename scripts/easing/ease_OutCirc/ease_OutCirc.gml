/// ease_OutCirc(time,start,change,duration)

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

var _val = time / duration - 1;
return change * sqrt(abs(1 - _val * _val)) + start;



