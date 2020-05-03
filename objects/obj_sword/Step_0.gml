event_inherited(); 
if (equipped && !thrown){
	angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y); 
	if (obj_player.x > mouse_x){
		image_yscale = -1; 	
	}else {
		image_yscale = 1; 	
	}
	image_angle = angle; 
	y = obj_player.y + lengthdir_y(obj_player.sprite_height/2, angle); 
	x = obj_player.x + lengthdir_x (obj_player.sprite_width/2, angle);
	
	if (mouse_check_button_pressed(mb_left) && !pressed){
		pressed = true; 	
		image_index = 1; 
	}
	
	if (pressed){
		if (hitTimer <= hitTimerMax / 3){
			image_index = 2; 	
			damageable = true; 
		}
		if (hitTimer <= 0){
			var sound = snd_bat; 
			audio_sound_pitch(sound, random_range(0.8,1.2)); 
			audio_play_sound(sound,10,false); 	
			damageable = false; 
			hitTimer = hitTimerMax; 	
			pressed = false; 
		}
		hitTimer--; 
	}else {
		image_index = 0; 	
	}
}