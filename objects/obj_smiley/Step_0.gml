/// @Smiley Power UP
// You can write your code in this editor


/*(if (time == DURATION) {
	time = 0;
	easeDirection = easeDirection * -1;
	start = self.y;
} else {
	self.y += ease_InOutQuad(time++, start, (CHANGE * easeDirection), DURATION);
}*/

if place_meeting(self.x, self.y, obj_player) {
	obj_player.damage += 5;
	obj_player.hover += 5;
	
	instance_destroy();
}