/// @desc Draw Score

/*********************
***** Variables ******
*********************/

var vx = 600;
var vy = 60;

/*********************
******* Draw *********
******* Score ********
*********************/

draw_set_font(font_menu);
draw_set_color(c_white);

draw_text(vx, vy, "TIME " + string(global.time));
draw_text(vx + 200, vy, "SCORE " + string(score));