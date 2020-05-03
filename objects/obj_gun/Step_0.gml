event_inherited(); 
shootThisFrame = false;


if (mouse_check_button_pressed(mb_left) && ammoInChamber > 0){
	ammoInChamber -= 1; 
	shootThisFrame = true;
	reloading = false; 
}
if (keyboard_check_pressed(ord("R")) && ammoCount > 0) reloading = true; 

if (reloading){
	if (ammoInChamber == maxAmmoInChamber or ammoCount == 0){
		reloading = false; 
	} else if (reloadTimer == 0 && ammoCount > 0){
		if (chambered){
			ammoInChamber++; 
			ammoCount--; 
		} else {
			if (ammoCount < maxAmmoInChamber){
				var amount = maxAmmoInChamber - (maxAmmoInChamber - ammoCount); 
				ammoInChamber = amount; 
				ammoCount -= amount; 
			} else {
				var amount = maxAmmoInChamber - ammoInChamber; 
				ammoInChamber = maxAmmoInChamber; 
				ammoCount -= amount; 
			}
			
		}
		reloadTimer = maxReloadTimer; 
	}
	reloadTimer -= 1; 
}
if (equipped && !thrown){
	angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y); 
	if (obj_player.x > mouse_x){
		image_yscale = -yfactor; 	
	}else {
		image_yscale = yfactor; 	
	}
	image_angle = angle; 
	y = obj_player.y + lengthdir_y(obj_player.sprite_height/2, angle); 
	x = obj_player.x + lengthdir_x(obj_player.sprite_width/2, angle);
}
	