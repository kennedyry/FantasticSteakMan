if (place_meeting(x,y,obj_player)){
	audio_play_sound(snd_powerup, 10, false); 
	var inventory = obj_player.inventory; 
	if (obj_player.itemEquipped && obj_player.equippedId.gun){
		obj_player.equippedId.ammoCount += ammoAmount; 	
	}
	for(var i = 0; i < ds_list_size(inventory); i++){
		var item = ds_list_find_value(obj_player.inventory, i); 
		if (item.gun){
			item.ammoCount += ammoAmount; 	
		}
	}
	instance_destroy(self); 	
}