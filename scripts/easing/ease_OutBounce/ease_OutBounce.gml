/// ease_OutBounce(time,start,change,duration)

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

if (_val < 1/2.75)
{
    return change * 7.5625 * _val * _val + start;
}
else
if (_val < 2/2.75)
{
    _val -= 1.5/2.75;
    return change * (7.5625 * _val * _val + 0.75) + start;
}
else
if (_val < 2.5/2.75)
{
    _val -= 2.25/2.75;
    return change * (7.5625 * _val * _val + 0.9375) + start;
}
else
{
    _val -= 2.625/2.75;
    return change * (7.5625 * _val * _val + 0.984375) + start;
}




