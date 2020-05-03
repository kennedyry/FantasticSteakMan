
if (keyboard_check(ord("E")) && equipped){
	thrown = true; 	
	equipped = false; 
	obj_player.itemEquipped = false; 
	
	direction = point_direction(x,y,mouse_x,mouse_y); 
	speed = 14; 
	
}
if (thrown){
	image_angle += 20; 
	thrownTimer -= 1; 
	var enemy = instance_place(x,y,obj_enemy); 
	if (enemy != noone){
		if (!audio_is_playing(snd_enemyhit)){
			var sound = snd_enemyhit; 
			audio_sound_pitch(sound, random_range(0.8,1.2)); 
			audio_play_sound(sound,10,false); 	
		}
		for (var i = 0; i < random_range(40,60); i++){
			instance_create_depth(x,y, 0, obj_particleblood); 	
		}
		var angle = 180 + point_direction(enemy.x,enemy.y,obj_player.x,obj_player.y); 
		with(instance_place(x,y,obj_enemy)){
			if (!hit){
				enemyHealth -= obj_weapon.damage; 	
			}
			hit = true; 
			multiplier = 2.5; 
			maxHitTimer = 60; 
			hitTimer = maxHitTimer; 
		}
		enemy.hitDirect = angle; 
	}
	if (place_meeting(x ,y, obj_wall)) speed = 0; 
	
	if (thrownTimer == 0){
		speed = 0; 
		thrown = false; 
		thrownTimer = maxThrownTimer; 
	}
}

if (place_meeting(x,y,obj_player) && !equipped && keyboard_check_pressed(ord("F")) && (ds_list_size(obj_player.inventory) < 9 || !obj_player.itemEquipped)){
	if (name == "Cooler"){
		obj_player.coolerAcquired = 1; 	
	} else if (name == "Car Key"){
		obj_player.keyAcquired = 1; 
	} else if (name == "Car Tire"){
		obj_player.wheelAcquired = 1; 	
	} else if (name == "Car Snacks"){
		obj_player.snacksAcquired = 1; 	
	}
	if (gun && !audio_is_playing(snd_equippistol)){
			var sound = snd_equippistol; 
			audio_sound_pitch(sound, random_range(0.8,1.2)); 
			audio_play_sound(sound,10,false); 	
	} else{
		if (!audio_is_playing(snd_grab)){
			var sound = snd_grab; 
			audio_sound_pitch(sound, random_range(0.8,1.2)); 
			audio_play_sound(sound,10,false); 		
		}
	}
	if (gun && !pickedUp){
		pickedUp = true; 
		ammoCount = startingCount; 
		ammoInChamber = maxAmmoInChamber; 
		ds_list_add(obj_player.pickedUp, id); 
	}
	if (obj_player.itemEquipped && id != obj_player.equippedId){
		ds_list_add(obj_player.inventory,id); 	
		instance_deactivate_object(self); 
	} else {
		obj_player.itemEquipped = true; 
		obj_player.equippedId = id; 
		equipped = true; 
		image_angle = 0; 
	}
}
	