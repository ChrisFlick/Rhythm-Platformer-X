/// @Initialize camera.

/*********************
***** Variables ******
*********************/

camera = view_camera[0];
follow = obj_player;
buffer = 32;

view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

xTo = self.xstart;
yTo = self.ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;