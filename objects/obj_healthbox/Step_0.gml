if (place_meeting(x,y,obj_player)){
	audio_play_sound(snd_powerup, 10, false); 
	obj_player.playerHealth = obj_player.maxHealth; 
	for (var i = 0; i < 4; i++){
		instance_create_layer(x,y,"Buildings", obj_particlehealth); 
	}
	instance_destroy(self); 
}