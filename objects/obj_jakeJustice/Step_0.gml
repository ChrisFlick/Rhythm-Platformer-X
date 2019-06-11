/*********************
***** Variables ******
*********************/

// Player Input.
key_left = keyboard_check(ord("A")); // Move left as A is held.
key_right = keyboard_check(ord("D")); // Move right as D is held.
key_jump = keyboard_check_pressed(vk_space); // Jump when Space Bar is pressed.

/*********************
****** Movement ******
*********************/

// Calculate horizontal movement.
var movement = key_right - key_left;
horizontalSpeed = movement * walkspeed;

// Calculate Verticle movement.
if (key_jump && time == -1) {
    start = y;
    change = -JUMP_RATE;
    time = 0;
}

if (time == DURATION) {
    time = -1;
    change = -1;
    start = -1;
} else if (time != -1) {
    yPOS = ease_InOutCirc(time++, start, change, DURATION);
} else if (time == -1) {
    //yPOS += playerGravity;
}

// Check for collision
//scr_collision(obj_jakeJustice);


x += horizontalSpeed; // Move player left or right depending on + or - horizontalSpeed.
y = yPOS; // Move player up or down based on yPOS.