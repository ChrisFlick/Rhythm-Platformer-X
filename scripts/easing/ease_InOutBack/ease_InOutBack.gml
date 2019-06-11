/// ease_InOutBack(time,start,change,duration)

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
var _val = time / duration * 2;

if (_val < 1)
{
    _s *= 1.525;
    return change * 0.5 * (((_s + 1) * _val - _s) * _val * _val) + start;
}

_val -= 2;
_s *= 1.525;

return change * 0.5 * (((_s + 1) * _val + _s) * _val * _val + 2) + start;


