/// @ Go to credits if player finishes the level.
if place_meeting(self.x, self.y, obj_Player) {
	audio_stop_all();
	SlideTransition(TRANS_MODE.NEXT);
	audio_play_sound(sound_credits, 100, false);
}