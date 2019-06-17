/// @Smiley Power UP
// You can write your code in this editor


if (time == DURATION) {
	time = 0;
	easeDirection = easeDirection * -1;
	start = self.y;
} else {
	self.y = ease_InOutQuad(time++, start, (CHANGE * easeDirection), DURATION);
}


// Increase the players stats when they grab the power up.
if place_meeting(self.x, self.y, obj_player) {
	audio_play_sound(sound_smiley, 10, false);
	
	// +5 floats above players head to indicate they got a power up.
	instance_create_layer(self.x, self.y, "Instances", obj_plusFive);
	
	HitStop(100);
	feel_ScreenShake(10,10);
	
	instance_destroy();
}