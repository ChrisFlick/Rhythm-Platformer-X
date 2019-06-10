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

// Calculate movement.
var movement = key_right - key_left;

// Calculate Horizontal movement.
horizontalSpeed = movement * walkspeed;

// Calculate Verticle movement.
verticleSpeed += playerGravity;

// Check for collision
scr_collision(obj_jakeJustice);


x += horizontalSpeed; // Move player left or right depending on + or - horizontalSpeed.
y += verticleSpeed; // Move player up or down based on verticleSpeed.