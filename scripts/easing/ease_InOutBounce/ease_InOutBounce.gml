/// ease_InOutBounce(time,start,change,duration)

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

if (time < duration * 0.5)
{
    return (ease_InBounce(time * 2, 0, change, duration) * 0.5 + start);
}

return (ease_OutBounce(time * 2 - duration, 0, change, duration)*0.5 + change * 0.5 + start);
