if (place_meeting(x,y,obj_player) && !obj_player.hit){
	if (!audio_is_playing(snd_playerhit)){
		var snd = snd_playerhit; 
		audio_sound_pitch(snd, random_range(0.8,1.2)); 
		audio_play_sound(snd, 10, false); 
	}
	obj_player.hit = true; 
	obj_player.playerHealth -= damage; 
}

