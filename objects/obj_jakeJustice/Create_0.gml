/*********************
***** Variables ******
*********************/

// Movement variables
horizontalSpeed = 0; // Horizontal speed
yPOS = y; // Verticle speed
playerGravity = 0.1; // Gravity
walkspeed = 4; // Walkspeed

// Easing variables
JUMP_RATE = 50;
DURATION = 10; // Duration of ease function.
change = -1 // Desired position.
time = -1; // Current step in ease function.
start = -1; // Starting position.





tilemap = layer_tilemap_get_id("Collision");