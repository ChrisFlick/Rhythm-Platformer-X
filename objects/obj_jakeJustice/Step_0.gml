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

if (movement != 0) {

    // Change sprite to running + direction.
    sprite_index = spr_jakeJusticeRun;
    if (movement < 0) {
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }

    if (horizontalTime < HORIZONTAL_DURATION) {
        walkspeed = ease_OutExpo(horizontalTime++, STARTING_WALKSPEED, MAX_WALKSPEED, HORIZONTAL_DURATION);
    } else {
        horizontalTime = HORIZONTAL_DURATION;
    }
} else {
    horizontalTime = 0;
    walkspeed = 0;

    // Change sprite to idle.
    sprite_index = spr_jakeJusticeIdle;
}

horizontalSpeed = movement * walkspeed;

// Calculate Verticle movement.

// If ease_Function is not being used and jump is pressed start ease_function for jump.
if (key_jump && verticalTime == -1) {
    verticalStart = y;
    verticalChange = -JUMP_RATE;
    verticalTime = 0;
}

// If ease_Function is complete initializing ease_function for falling.
if (verticalTime == VERTICAL_DURATION) && (!falling) {
    verticalTime = 0;
    verticalChange = -1;
    verticalStart = y;
    falling = true;

// Else if jumping use ease_function.
} else if (verticalTime != -1) && (!falling) {
    yPOS = ease_InOutCirc(verticalTime++, verticalStart, verticalChange, VERTICAL_DURATION);
} 

if (falling) {
    fallSpeed = ease_InOutCirc(verticalTime++, STARTING_FALL_RATE, MAX_FALL_RATE, VERTICAL_DURATION);
}

// Check for collision
scr_collision(obj_jakeJustice);


x += horizontalSpeed; // Move player left or right depending on + or - horizontalSpeed.

if (falling) {
    yPOS += fallSpeed;
}

y = yPOS; // Move player up or down based on yPOS.
    