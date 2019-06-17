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

/*if (self.room != rMenu) && (self.room != rEnding)
{
	if (layer_exists("Mountains"))
	{
		layer_x("Mountains",x/2);
	}

	if (layer_exists("Trees"))
	{
		layer_x("Trees",x/4);
	}
}*