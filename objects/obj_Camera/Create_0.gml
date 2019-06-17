/// @Initialize camera.

/*********************
***** Variables ******
*********************/

camera = view_camera[0];
follow = obj_Player;
buffer = 32;

view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

xTo = self.xstart;
yTo = self.ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

// Camera movement
START_SPEED = 30;
SPEED_CHANGE = 15 - START_SPEED; // Lower number is faster
DURATION = 10;

time = 0;
cameraSpeed = START_SPEED;