/// @description Insert description here


self.x += ease_OutExpo(time, START_VELOCITY, MAX_VELOCITY * lasDirection, DURATION);

if (time != DURATION) {
	time++
} else { // for testing
	instance_destroy();
}