/// ease_InOutQuad(time,start,change,duration)

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

var _arg0 = 2 * time / duration;

if (_arg0 < 1) {
    return change * 0.5 * _arg0 * _arg0 + start;
}

return change * -0.5 * ((_arg0-1) * (_arg0 - 3) - 1) + start;


