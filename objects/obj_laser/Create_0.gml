/// @description Insert description here

/*********************
***** Initialize *****
*********************/
draw_self();
audio_play_sound(sound_laser, 10, false);


/*********************
***** Variables *******
*********************/

// For easing.
START_VELOCITY = 0;
MAX_VELOCITY = 50;
DURATION = 50;


time = 0;
lasDirection = 1;

