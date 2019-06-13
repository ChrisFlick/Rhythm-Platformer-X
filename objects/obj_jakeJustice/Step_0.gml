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

// Check to see if player is off a ledge
if (hoverCount++ > hover && !ledgeGrab) {
	falling = true;
}

// Reset after landing.
if (verticalStart++ == LAND_DURATION) {
    verticalStart = -1;
}



// Calculate horizontal movement.
movement = key_right - key_left;


if (movement != 0 && !ledgeGrab) {
	ledgeGrab = false;
	
    // Change sprite to running + direction.
    if (verticalTime = -1) {
        self.sprite_index = spr_jakeJusticeRun;
    }
    
    if (movement < 0) {
        self.image_xscale = -1;
    } else {
        self.image_xscale = 1;
    }

    if (horizontalTime < HORIZONTAL_DURATION) {
        walkspeed = ease_OutExpo(horizontalTime++, STARTING_WALKSPEED, MAX_WALKSPEED, HORIZONTAL_DURATION);
    } else {
        horizontalTime = HORIZONTAL_DURATION;
    }
} else {
    horizontalTime = 0;
    walkspeed = 0;

    // Change sprite to idle.
    if (verticalTime = -1) {
        self.sprite_index = spr_jakeJusticeIdle;
    } 
}


horizontalSpeed = movement * walkspeed;


// Check to see if grabn
if (ledgeGrab) {
	self.sprite_index = spr_jakeJusticeLedgeGrab;
}

// Check for collision
scr_collision(obj_jakeJustice);

// Calculate Verticle movement.

// If ease_Function is not being used and jump is pressed start ease_function for jump.
if (key_jump && verticalTime == -1) {
	self.y -= INITIAL_JUMP;

	// Ensure player can jump when pressing a directrion
	horizontalSpeed = 0;
	
	
    verticalStart = self.y;
    verticalChange = -JUMP_RATE;
    verticalTime = 0;
	
	ledgeGrab = false;
	
	hoverCount = 0;
	
    self.sprite_index = spr_jakeJusticeJump
}

// If ease_Function is complete initializing ease_function for falling.
if (verticalTime == VERTICAL_DURATION) && (!falling) {
    scr_initiateFall();

// Else if jumping use ease_function.
} else if (verticalTime != -1) && (!falling) {
    yPOS = ease_InOutCirc(verticalTime++, verticalStart, verticalChange, VERTICAL_DURATION);
} else if (falling) {
    fallSpeed = ease_InOutCirc(verticalTime++, STARTING_FALL_RATE,	TERMINAL_VELOCITY, VERTICAL_DURATION);
}




self.x += horizontalSpeed; // Move player left or right depending on + or - horizontalSpeed.

if (falling) {
    yPOS += fallSpeed;
    self.sprite_index = spr_jakeJusticeFall;
} else if (verticalStart == -2) {
    self.sprite_index = spr_jakeJusticeLand;
}

self.y = yPOS; // Move player up or down based on yPOS.