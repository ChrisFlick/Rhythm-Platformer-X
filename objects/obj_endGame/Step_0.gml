/// @ Go to credits if player finishes the level.
if place_meeting(self.x, self.y, obj_Player) {
	audio_stop_all();
	room_goto(rm_credits);
	audio_play_sound(sound_credits, 100, false);
}