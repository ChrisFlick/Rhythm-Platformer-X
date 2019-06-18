/// @description Update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

if (self.x != xTo && self.y != yTo) {
	cameraSpeed = ease_InCirc(time, START_SPEED, SPEED_CHANGE, DURATION);
	if (time < DURATION) {
		time++;
	}
} else {
	time = 0;
}

//Update object position
self.x += (xTo - self.x) / cameraSpeed;
self.y += (yTo - self.y) / cameraSpeed;

//Keep camera center inside room
self.x = clamp(self.x,view_w_half + buffer, room_width - view_w_half - buffer);
self.y = clamp(self.y,view_h_half + buffer, room_height - view_h_half - buffer);
 
//Screen shake
self.x += random_range(-shake_remain, shake_remain)
self.y += random_range(-shake_remain, shake_remain)

shake_remain = max(0,shake_remain-((1 / shake_length) * shake_magnitude));

//Update camera view
camera_set_view_pos(camera,self.x - view_w_half, self.y - view_h_half);

if (room != rm_menu) && (room != rm_credits)
{
	if (layer_exists("Background_1"))
	{
		layer_x("Background_1", x / 8);
	}

	if (layer_exists("Background_2"))
	{
		layer_x("Background_2", x / 7);
	}
	
	if (layer_exists("Background_3"))
	{
		layer_x("Background_3", x / 6);
	}
	
	if (layer_exists("Background_4"))
	{
		layer_x("Background_4", x / 5);
	}
	
	if (layer_exists("Background_5"))
	{
		layer_x("Background_5", x / 4);
	}
}