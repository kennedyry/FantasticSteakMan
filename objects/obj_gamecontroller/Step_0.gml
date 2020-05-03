/// @description Insert description here
// You can write your code in this editor
randomise(); 

if (keyboard_check(ord("M"))){
		game_restart(); 
}


if (!escape && (obj_player.keyAcquired + obj_player.coolerAcquired + obj_player.wheelAcquired + obj_player.snacksAcquired) == 4) escape = true; 


if (instance_number(obj_enemy) < maxNumberOfBears && spawnTimer <= 0 && !won){
	spawnTimer = maxSpawnTimer; 
	randX = irandom(room_width); 
	randY = irandom(room_height); 
	while (point_distance(randX,randY, obj_player.x, obj_player.y) < 600 || collision_rectangle(randX - 2 * abs(obj_enemy.sprite_width),randY - 2 * abs(obj_enemy.sprite_height), randX + 2 * abs(obj_enemy.sprite_width), randY + 2 * abs(obj_enemy.sprite_height), obj_enemy,false, false) || collision_rectangle(randX - 2 * abs(obj_car.sprite_width),randY - 2 * abs(obj_car.sprite_height), randX + 2 * abs(obj_car.sprite_width), randY + 2 * abs(obj_car.sprite_height), obj_car,false, false)){
		randX = irandom(room_width); 
		randY = irandom(room_height); 
	}
	show_debug_message("Armored: " + string(armoredBears) + " Explosive: " + string(explosiveBears)); 
	var rand = irandom(20); 
	if (rand == 9 && explosiveBears <= 5){
		explosiveBears++; 
		instance_create_layer(randX,randY, "Instances", obj_explosiveEnemy); 
	} else if (rand == 10 && armoredBears <= 5){
		armoredBears++; 
		instance_create_layer(randX,randY, "Instances", obj_armoredEnemy); 
	} else {
		instance_create_layer(randX,randY, "Instances", obj_enemy); 	
	}
}
spawnTimer -= 1; 