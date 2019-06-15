///@ scr_collision(player)

// Take player object and check for collisions

/*********************
***** Variables ******
*********************/

var player = argument[0]; // Object being passed to script
var bbox_side;


/*********************
****** Script ********
*********************/

// Horizontal Collision
if (player.horizontalSpeed > 0) { // Check if player is moving right
    bbox_side = player.bbox_right;
} else if (player.horizontalSpeed < 0) { // Check if player is moving left
    bbox_side = player.bbox_left;
} else {
    bbox_side = -1; // Set bbox_side to null if player is neither moving left or right.
}

var t1 = tilemap_get_at_pixel(tilemapCollision, bbox_side + player.horizontalSpeed, bbox_top);
var t2 = tilemap_get_at_pixel(tilemapCollision, bbox_side + player.horizontalSpeed, bbox_bottom);
var t3 = tilemap_get_at_pixel(tilemapCollision, player.bbox_left, player.bbox_bottom + TERMINAL_VELOCITY);
var t4 = tilemap_get_at_pixel(tilemapCollision, player.bbox_right, player.bbox_bottom + TERMINAL_VELOCITY);

if (bbox_side != -1) { // Check to make sure player is in motion

    // Check to see if sides of sprite are touching any collision boxes
    if (t1 != 0) || (t2 != 0) { 
		player.hoverCount = 0;
		
		/*player.x -= sign(MAX_WALKSPEED) * player.movement; // Push player away from wall.
		
		if (t3 != 0) || (t4 != 0) {
			player.y -= (bbox_bottom mod 32 - (bbox_bottom - player.y)) + 31;
		}*/
		player.y -= sign(TERMINAL_VELOCITY);
		
		
		// Check to see if player is grabbing ledge
		t1 = tilemap_get_at_pixel(tilemapLedge, bbox_side + player.horizontalSpeed, bbox_top);
		t2 = tilemap_get_at_pixel(tilemapLedge, bbox_side + player.horizontalSpeed, bbox_bottom);
		
		if (t1 != 0) || (t2 != 0) {
			player.fallSpeed = 0; // Set fallspeed to 0.
			player.falling = false;
			player.horizontalSpeed = 0.
			player.ledgeGrab = true;
			
			// Set to null.
			player.verticalChange = -1;
			player.verticalTime = -1; 
			player.verticalStart = -1; 
		} else {
			player.ledgeGrab = false; // Make sure player doesn't float around grabbing ledge.
		}

		//show_debug_message("In Horizontal Collision");
		//show_debug_message("Movement: " + string(player.movement));
		
        player.horizontalSpeed = 0; // Set horizontalSpeed to 0.
    }
}




// Verticle Collision
if (player.falling) { // Check if player is moving up
    bbox_side = player.bbox_bottom
} else if (!player.falling) { // Check if player is moving down
    bbox_side = player.bbox_top;
} else {
    bbox_side = player.bbox_bottom; // Set bbox_side to null if player is neither moving down or up.
}

var t3 = tilemap_get_at_pixel(tilemapCollision, player.bbox_left, bbox_side + TERMINAL_VELOCITY);
var t4 = tilemap_get_at_pixel(tilemapCollision, player.bbox_right, bbox_side + TERMINAL_VELOCITY);

if (bbox_side != -1) { // Check to make sure player is in motion

    // Check to see if sides of sprite are touching any collision boxes
    if (t3 != 0) || (t4 != 0) { 
		// For debugging
		
		
		//player.yPOS -= sign(TERMINAL_VELOCITY);
		
		// Reset so player floats when there isn't collision
        player.hoverCount = 0;
		
        // If falling end ease_function.
        if (player.falling) {
			// Push player up if they are falling into the ground.
			player.y -= (bbox_bottom mod 32 - (bbox_bottom - player.y)) + 32; // Here be dragons.
			
			
            player.falling = false;
			player.fallSpeed = 0;


            // Set to null.
            verticalChange = -1;
            verticalTime = -1; 
            verticalStart = -1; 

        // Else initialize ease_function for falling.
        } else {
			// Push player down if they collide with the roof
			player.yPOS -= (bbox_bottom mod 32 - (bbox_bottom - player.y)) - 25; // Here be dragons.
			
			
			// Allow player to continue to float if they are at the top of the level hitting their head.
			player.ledgeGrab = false; // Make sure player doesn't float around grabbing ledge.
			player.falling = false;
			player.fallSpeed = 0;
			
			// Set to null.
            verticalChange = -1;
            verticalTime = -1; 
            verticalStart = -1; 
        }
    } 
}	

		
