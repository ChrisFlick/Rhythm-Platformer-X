/// scr_collision(player)

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
    bbox_side = bbox_right;
} else if (player.horizontalSpeed < 0) { // Check if player is moving left
    bbox_side = bbox_left;
} else {
    bbox_side = -1; // Set bbox_side to null if player is neither moving left or right.
}

if (bbox_side != -1) { // Check to make sure player is in motion

    // Check to see if sides of sprite are touching any collision boxes
    if (tilemap_get_at_pixel(tilemap, bbox_side + player.horizontalSpeed, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + player.horizontalSpeed, bbox_bottom) != 0) { 
        
        player.horizontalSpeed = 0; // Set horizontalSpeed to 0.
    }
}

// Verticle Collision
if (player.verticleSpeed > 0) { // Check if player is moving up
    bbox_side = bbox_bottom
} else if (player.verticleSpeed < 0) { // Check if player is moving down
    bbox_side = bbox_top;
} else {
    bbox_side = -1; // Set bbox_side to null if player is neither moving down or up.
}

if (bbox_side != -1) { // Check to make sure player is in motion

    // Check to see if sides of sprite are touching any collision boxes
    if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + player.verticleSpeed) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + player.verticleSpeed) != 0) { 

        player.y -= sign(player.verticleSpeed);
        player.verticleSpeed = 0; // Set verticleSpeed to 0.
    }
}
