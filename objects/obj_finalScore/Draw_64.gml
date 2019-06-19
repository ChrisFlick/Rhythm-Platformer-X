/// @desc Calcuate and draw final score.

/*********************
***** Variables ******
*********************/

var distance = 50;
var distanceX = 500;




// draw 
draw_set_halign(fa_left);

draw_text(x, y + distance * 1, "Smileys:");
draw_text(x, y + distance * 2, "All Smileys:");
draw_text(x, y + distance * 3, "Time Bonus:");
draw_text(x, y + distance * 4, "Final Score:");

draw_set_halign(fa_right);
draw_text(x + distanceX, y + distance * 1, string(score));
draw_text(x + distanceX, y + distance * 2, string(global.smileyBonus));
draw_text(x + distanceX, y + distance * 3, string(global.time));
draw_text(x + distanceX, y + distance * 4, string(score + global.time + global.smileyBonus));
