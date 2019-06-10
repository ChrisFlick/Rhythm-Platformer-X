/*********************
***** Variables ******
*********************/

var bbox_side = -1;

// Player Input.
key_left = keyboard_check(ord("A")); // Move left as A is held.
key_right = keyboard_check(ord("D")); // Move right as D is held.
key_jump = keyboard_check_pressed(vk_space); // Jump when Space Bar is pressed.

/*********************
****** Movement ******
*********************/

// Calculate movement.
var move = key_right - key_left;

// Calculate Horizontal movement.
hsp = move * walkspeed;

// Calculate Verticle movement.

/*********************
***** Collision ******
*********************/

// Horizontal collision
if (hsp > 0) {
    bbox_side = bbox_right;
} else if (hsp < 0) {
    bbox_side = bbox_left;
} 

if (bbox_side != -1) {
    if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
        /*if (hsp > 0) {
            x -= (x mod 20) + 19 - (bbox_right - x);
        } else if (hsp < 0) {
            x -= (x mod 20) - 19 - (bbox_left - x)
        }*/

        hsp = 0;
    }
}

x += hsp; // Move player left or right depending on + or - Horizontal movement speed
y += vsp;