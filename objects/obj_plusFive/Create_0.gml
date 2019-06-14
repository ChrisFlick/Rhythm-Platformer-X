/// @description Insert description here

/*********************
***** Initialize *****
*********************/
draw_self();
self.x = obj_player.x;
self.y = obj_player.y - 5;


/*********************
***** Variables *******
*********************/

// For easing.
DURATION = 5;

time = 0;

// Y axis.
CHANGE_Y = -1;
START_Y = self.y;

// Alpha.
START_ALPHA = 1;
CHANGE_ALPHA = 0;