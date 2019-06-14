/// @+5 floats above players head when they get a power up


if (time++ == DURATION) {
	instance_destroy();
} else {
	self.y = ease_InExpo(time, START_Y, START_Y + CHANGE_Y, DURATION);
	self.image_alpha = ease_InExpo(time, START_ALPHA, CHANGE_ALPHA, DURATION);
}