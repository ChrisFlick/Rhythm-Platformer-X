/// @desc Calcuate and draw final score.

/*********************
***** Variables ******
*********************/

var scoreX = 600;
var scoreY = 1000;

draw_text(x, y, "Final Score: " + string(score + global.time));
