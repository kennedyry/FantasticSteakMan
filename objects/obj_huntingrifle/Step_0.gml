event_inherited(); 

if (reloading && !audio_is_playing(snd_riflemagreload) && equipped){
		var sound = snd_riflemagreload; 
		audio_sound_pitch(sound, random_range(0.8,1.2)); 
		audio_play_sound(sound,10,false); 	
}

if (equipped && !thrown){	
	if (shootThisFrame){
		var sound = snd_sniper; 
		audio_sound_pitch(sound, random_range(0.95,1.05)); 
		audio_play_sound(sound,10,false); 	
		instance_create_layer(x + lengthdir_x(sprite_width/2, image_angle),y + lengthdir_y(sprite_height/2, image_angle),"Instances", obj_hrbullet); 
	}
}