if (key && cooler && tire && snacks){
	obj_gamecontroller.canLeave = true; 
}

var item = instance_place(x,y,obj_carparts); 
if (item != noone && item.thrown){
	if (item.name == "Car Key") key = true; 
	else if (item.name == "Cooler") cooler = true; 
	else if (item.name == "Car Tire") tire = true; 
	else if (item.name == "Car Snacks") snacks = true; 
	instance_destroy(item); 
}

if (place_meeting(x,y,obj_player) && obj_gamecontroller.canLeave){
	if (!audio_is_playing(snd_speeding)) audio_play_sound(snd_speeding, 10, false); 
	obj_gamecontroller.won = true; 
	instance_deactivate_layer("Player"); 
	instance_deactivate_layer("Instances"); 
	instance_deactivate_layer("guns"); 
	instance_deactivate_object(obj_shotgun); 
	instance_deactivate_object(obj_huntingrifle); 
	instance_deactivate_object(obj_pistol); 
	
	instance_destroy(obj_particlesmoke); 
}
if (x - sprite_width > room_width){
	room_goto_next(); 	
}

if (obj_gamecontroller.won){
	if (startTimer == 0){
		hspeed = 10; 	
	}
	startTimer--; 	
}