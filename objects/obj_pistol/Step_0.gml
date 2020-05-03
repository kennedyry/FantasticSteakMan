event_inherited(); 

if (reloading && !audio_is_playing(snd_pistolmagreload) && equipped){
		var sound = snd_pistolmagreload; 
		audio_sound_pitch(sound, random_range(0.8,1.2)); 
		audio_play_sound(sound,10,false); 	 	
}

if (equipped && !thrown){
	
	if (shootThisFrame){
		var sound = snd_pistol; 
		audio_sound_pitch(sound, random_range(0.95,1.05)); 
		audio_play_sound(sound,10,false); 	
		instance_create_layer(x,y,"guns",obj_playerbullet); 	
	}
	
	
	
}