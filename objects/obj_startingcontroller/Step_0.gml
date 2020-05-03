if (room == 0){
	if (!audio_is_playing(snd_dramatic) && gameState == 0) audio_play_sound(snd_dramatic,0,true); 	
	if (audio_is_playing(snd_dramatic) && gameState == 1 && !audio_is_playing(snd_chaos)){
		audio_stop_sound(snd_dramatic); 
		audio_play_sound(snd_chaos,0,true); 
	}
	if (keyboard_check_pressed(vk_space)){
		gameState++;
		if (gameState == 2){
			instance_create_layer(room_width/2,3 * room_height / 4, "Instances", obj_optionbox); 
			instance_create_layer(room_width / 5, 7 * room_height / 8, "Instances", obj_creditBox); 
		}
		else if (gameState == 3){
			audio_stop_sound(snd_chaos); 
			if (obj_optionbox.image_index == 1) hardmode = true;
			else hardmode = false; 
			room_goto_next(); 
		} else if (gameState == 5){
			gameState = 2; 	
			instance_create_layer(room_width/2,3 * room_height / 4, "Instances", obj_optionbox); 
			instance_create_layer(room_width / 5, 7 * room_height / 8, "Instances", obj_creditBox); 
		}
	}
	
	
	
	
	/*
	if (!audio_is_playing(snd_dramatic) && !pressToBegin){
		audio_play_sound(snd_dramatic, 0, true); 
	}

	if (audio_is_playing(snd_dramatic) && pressToBegin && !audio_is_playing(snd_chaos)){
		audio_stop_sound(snd_dramatic); 	
		audio_play_sound(snd_chaos,0,true); 
	}
	if (keyboard_check_pressed(vk_space) && !pressToBegin){
		pressToBegin = true; 	
	} else if (keyboard_check_pressed(vk_space) && pressToBegin && !backstory){
		backstory = true; 	
		instance_create_layer(room_width / 2, 3 * room_height / 4, "Instances", obj_optionbox); 
	}else if (keyboard_check_pressed(vk_space) && backstory){
		audio_stop_sound(snd_chaos); 
		if (obj_optionbox.image_index == 1){
			hardmode = true; 	
		} else {
			hardmode = false; 	
		}
		room_goto_next(); 	
	} */
}  else if (room == 1){
	if (hardmode){
		obj_gamecontroller.maxNumberOfBears = 60; 
		 
	} else {
		obj_gamecontroller.maxNumberOfBears = 20; 	
	
	}
} else {

}




