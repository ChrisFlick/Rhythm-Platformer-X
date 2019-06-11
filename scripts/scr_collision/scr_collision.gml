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
if (player.falling) { // Check if player is moving up
    bbox_side = bbox_bottom
} else if (!player.falling) { // Check if player is moving down
    bbox_side = bbox_top;
} else {
    bbox_side = -1; // Set bbox_side to null if player is neither moving down or up.
}

if (bbox_side != -1) { // Check to make sure player is in motion

    // Check to see if sides of sprite are touching any collision boxes
    if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + player.fallSpeed) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + player.fallSpeed) != 0) { 
        var playerHeight = sprite_get_height(player.sprite_index);

        if (player.fallSpeed > 0) {
            yPOS -= sign(player.fallSpeed);
            
        } 
        
        // If falling end ease_function.
        if (player.falling) {
            player.fallSpeed = 0; // Set fallspeed to 0.
            player.falling = false;

            // Set to null.
            verticalChange = -1 
            verticalTime = -1; 
            verticalStart = -1; 

        // Else initialize ease_function for falling.
        } else {
            verticalTime = 0;
            verticalChange = -1;
            verticalStart = y;
            falling = true;
        }
    }
}