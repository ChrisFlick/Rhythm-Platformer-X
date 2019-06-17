/// @ scr_objCollision(obj1, obj2)
// Check to see if obj1 is colliding with obj2 and return a boolean of the results.

/*********************
****** Variable ******
*********************/

var obj1 = argument[0];
var obj2 = argument[1];

var collision = false;


/*********************
****** Function ******
*********************/

// Horizontal collision
if (place_meeting(obj1.x + obj1.horizontalSpeed, obj1.y, obj2)) {
	collision = true;
	
	// Push obj1 out of collision with obj2
	while (!place_meeting(obj1.x + sign(obj1.horizontalSpeed), obj1.y, obj2)) {
		obj1.x += sign(obj1.horizontalSpeed);
	}
	
	obj1.horizontalSpeed = 0;
}

// Horizontal collision
if (place_meeting(obj1.x , obj1.y + obj1.verticalSpeed, obj2)) {
	collision = true;
	
	while (!place_meeting(obj1.x , obj1.y + sign(obj1.verticalSpeed), obj2)) {
		obj1.y += sign(obj1.verticalSpeed);
	}
	
	obj1.verticalSpeed = 0;
}

return collision;



