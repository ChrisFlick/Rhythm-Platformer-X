/*********************
***** Variables ******
*********************/

// Movement variables
MAX_WALKSPEED = 10; // Walkspeed
STARTING_WALKSPEED = 0;
JUMP_RATE = 50;

walkspeed = 0;
horizontalSpeed = 0; // Horizontal speed
yPOS = y; // Verticle speed
playerGravity = 0.1; // Gravity

// Horizontal easing variables.
HORIZONTAL_DURATION = 50; // Duration of ease function.

horizontalTime = 0; // Current step in ease function.

// Vertical easing variables.
VERTICAL_DURATION = 10; // Duration of ease function.

verticalChange = -1 // Desired position.
verticalTime = -1; // Current step in ease function.
verticalStart = -1; // Starting position.


tilemap = layer_tilemap_get_id("Collision");