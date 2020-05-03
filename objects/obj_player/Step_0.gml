vspeed = 0; 
hspeed = 0; 



if (keyboard_check(ord("W"))){
	vspeed -= movementSpeed; 
}
if (keyboard_check(ord("S"))){
	vspeed += movementSpeed; 
}
if (keyboard_check(ord("A"))){
	hspeed -= movementSpeed; 
}
if (keyboard_check(ord("D"))){
	hspeed += movementSpeed; 	
}

if (abs(hspeed) == movementSpeed && abs(vspeed) == movementSpeed) speed = movementSpeed; 	

if (itemEquipped && equippedId.name == "Hunting Rifle"){
	movementSpeed = 4; 	
} else {
	movementSpeed = 6; 	
}

if (hit){
	image_alpha -= .1; 
	if (image_alpha <= 0){
		image_alpha = 1; 	
	}
	if (hitTimer == 0){
		image_alpha = 1; 
		hitTimer = hitTimerMax; 
		hit = false; 
	}
	hitTimer -= 1; 	
}

if (place_meeting(x,y,obj_roof)){
	inside = true; 
} else {
	inside = false; 	
}
//car collisions 
if (!obj_gamecontroller.canLeave){
	if (place_meeting( x + hspeed, y, obj_car) || place_meeting(x + hspeed, y, obj_wall)) hspeed = 0; 
	if (place_meeting(x, y + vspeed, obj_car) || place_meeting(x, y + vspeed, obj_wall)) vspeed = 0;
}

if (bloodTimer == 0){
	bloodTimer = bloodTimerMax; 
	for (var i = 0; i < 3; i++){
		instance_create_depth(x + irandom_range(-30,30), y + irandom_range(-30,30), 10, obj_bloodtrail)       ; 
	}
}
bloodTimer--;


keyPressed = keyboard_key - 49; 
if (keyboard_check_pressed(vk_anykey) && (keyPressed >= 0 && keyPressed <= 9) && ds_list_find_value(inventory, keyPressed)){
	if (!itemEquipped){
		itemEquipped = true; 
		equippedId = ds_list_find_value(inventory,keyPressed); 
		instance_activate_object(equippedId); 
		ds_list_delete(inventory,keyPressed); 
		with(equippedId){
			x = obj_player.x;
			y = obj_player.y; 
			equipped = true; 
			image_angle = 0;
		}
	} else {
		with(equippedId) equipped = false; 	
		instance_deactivate_object(equippedId); 
		var newEquipped = ds_list_find_value(inventory , keyPressed); 
		ds_list_set(inventory,keyPressed, equippedId); 
		equippedId = newEquipped; 
		instance_activate_object(equippedId); 
		with(equippedId){
			x = obj_player.x;
			y = obj_player.y; 
			equipped = true; 
			image_angle = 0; 
		}
	}
}



if (playerHealth <= 0){
	room_goto(ending); 
}

