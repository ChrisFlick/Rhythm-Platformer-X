/// @ Play sound_smiley depending on number of Smiley Power-Ups the player has synced with music


if (claps-- > 0) {
	if (time++ == 0) {
		audio_play_sound(sound_smiley, 10, false);
	} else if (time == MAX_TIME) {
		time = 0;
	}
} else {
	claps = 0;
}