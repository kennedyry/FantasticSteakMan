event_inherited(); 


if (place_meeting(x,y,obj_player) || place_meeting(x,y,obj_playerbullet) || enemyHealth <= 0){
	audio_play_sound(snd_explosion,10,false); 
	instance_destroy(self); 
	obj_gamecontroller.explosiveBears--; 
	instance_create_layer(x,y,"explosion", obj_explosion); 
	for (var i = 0; i < 70; i++){
		instance_create_layer(x,y,"guns", obj_particleExplode); 	
	}
}


