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
    if (horizontalTime < HORIZONTAL_DURATION) {
        walkspeed = ease_OutExpo(horizontalTime++, STARTING_WALKSPEED, MAX_WALKSPEED, HORIZONTAL_DURATION);
    } else {
        horizontalTime = HORIZONTAL_DURATION;
    }
} else {
    horizontalTime = 0;
    walkspeed = 0;
}

horizontalSpeed = movement * walkspeed;

// Calculate Verticle movement.
if (key_jump && verticalTime == -1) {
    verticalStart = y;
    verticalChange = -JUMP_RATE;
    verticalTime = 0;
}

if (verticalTime == VERTICAL_DURATION) {
    verticalTime = -1;
    verticalChange = -1;
    verticalStart = -1;
} else if (verticalTime != -1) {
    yPOS = ease_InOutCirc(verticalTime++, verticalStart, verticalChange, VERTICAL_DURATION);
} else if (verticalTime == -1) {
    //yPOS += playerGravity;
}

// Check for collision
//scr_collision(obj_jakeJustice);


x += horizontalSpeed; // Move player left or right depending on + or - horizontalSpeed.
y = yPOS; // Move player up or down based on yPOS.