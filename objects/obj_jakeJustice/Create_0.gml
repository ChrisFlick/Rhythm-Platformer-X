/*********************
***** Variables ******
*********************/

// Player location
INITIAL_X = self.x;
INITIAL_Y = self.y;

yPOS = self.y; 



// Falling
hover = 25;
hoverCount = 0;
fallSpeed = 0;
falling = false;


// Movement variables
INITIAL_JUMP= 2; // Makes jump more springy 

walkspeed = 0;
horizontalSpeed = 0; // Horizontal speed
ledgeGrab = false;
movement = 0;


// Horizontal easing variables.
HORIZONTAL_DURATION = 50; // Duration of ease function.
MAX_WALKSPEED = 10
STARTING_WALKSPEED = 1; // Starting Walkspeed.

horizontalTime = 0; // Current step in ease function.


// Vertical easing variables.
VERTICAL_DURATION = 10; // Duration of ease function.
LAND_DURATION = -3;
JUMP_RATE = 70;
TERMINAL_VELOCITY = 7;
STARTING_FALL_RATE = 1;


verticalChange = -1 // Desired position.
verticalTime = -1; // Current step in ease function.
verticalStart = -1; // Starting position.


// Tilemaps
tilemapCollision = layer_tilemap_get_id("Collision");
tilemapLedge = layer_tilemap_get_id("Ledge");