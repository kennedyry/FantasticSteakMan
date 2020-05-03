event_inherited(); 

if (reloading && !audio_is_playing(snd_shotgunreload) && equipped){
		var sound = snd_shotgunreload; 
		audio_sound_pitch(sound, random_range(0.95,1.05)); 
		audio_play_sound(sound,10,false); 	
}

if (equipped && !thrown){	
	if (shootThisFrame){
		var sound = snd_shotgun; 
		audio_sound_pitch(sound, random_range(0.95,1.05)); 
		audio_play_sound(sound,10,false); 	
		for (var i = 0; i < pelletsShot; i++){
			instance_create_layer(obj_player.x,obj_player.y,"Instances", obj_shotgunbullet); 
		}
	}
}