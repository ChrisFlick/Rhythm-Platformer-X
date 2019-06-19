/// @desc Calcuate and draw final score.

/*********************
***** Variables ******
*********************/

var distanceX = 500;
var distanceY = 50;
var dx = 250;
var dy = 250;




// draw 
draw_set_halign(fa_left);

draw_text(dx, dy + distanceY * 1, "Smileys:");
draw_text(dx, dy + distanceY * 2, "All Smileys:");
draw_text(dx, dy + distanceY * 3, "Time Bonus:");
draw_text(dx, dy + distanceY * 4, "Final Score:");

draw_set_halign(fa_right);
draw_text(dx + distanceX, dy + distanceY * 1, string(score));
draw_text(dx + distanceX, dy + distanceY * 2, string(global.smileyBonus));
draw_text(dx + distanceX, dy + distanceY * 3, string(global.time));
draw_text(dx + distanceX, dy + distanceY * 4, string(score + global.time + global.smileyBonus));
