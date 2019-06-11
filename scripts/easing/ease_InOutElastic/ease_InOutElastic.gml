/// ease_InOutElastic(time,start,change,duration)

/*********************
***** Variables ******
*********************/

// Arguments
var time = argument[0];
var start = argument[1];
var change = argument[2];
var duration = argument[3];

// Function variables

var _s = 1.70158;
var _p = 0;
var _a = change;
var _val = time;

if (_val == 0 || _a == 0) { return start; }

_val /= duration * 0.5;

if (_val == 2) { return start + change; }

if (_p == 0) { _p = duration * (0.3 * 1.5); }

if (_a < abs(change)) 
{ 
    _a = change;
    _s = _p * 0.25;
}
else
{
    _s = _p / (2 * pi) * arcsin (change / _a);
}

if (_val < 1) { return -0.5 * (_a * power(2, 10 * (--_val)) * sin((_val * duration - _s) * (2 * pi) / _p)) + start; }

return _a * power(2, -10 * (--_val)) * sin((_val * duration - _s) * (2 * pi) / _p) * 0.5 + change + start;





