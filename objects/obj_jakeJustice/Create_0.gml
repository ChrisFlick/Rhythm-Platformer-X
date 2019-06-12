/*********************
***** Variables ******
*********************/

// Movement variables
walkspeed = 0;
horizontalSpeed = 0; // Horizontal speed
ledgeGrab = false;

yPOS = y; // Verticle speed
falling = false;

fallSpeed = 0;

// Horizontal easing variables.
HORIZONTAL_DURATION = 50; // Duration of ease function.
MAX_WALKSPEED = 10; // Max Walkspeed.
STARTING_WALKSPEED = 0; // Starting Walkspeed.

horizontalTime = 0; // Current step in ease function.

// Vertical easing variables.
VERTICAL_DURATION = 10; // Duration of ease function.
LAND_DURATION = -3;
JUMP_RATE = 70;
MAX_FALL_RATE = 5;
STARTING_FALL_RATE = 0;


verticalChange = -1 // Desired position.
verticalTime = -1; // Current step in ease function.
verticalStart = -1; // Starting position.

// Tilemaps
tilemapCollision = layer_tilemap_get_id("Collision");
//tilemapLedge = layer_tilemap_get_id("Ledge");