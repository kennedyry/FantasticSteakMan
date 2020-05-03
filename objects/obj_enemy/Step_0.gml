
if (point_distance(x,y,obj_player.x,obj_player.y) <= targetingDistance && !targeting){
	//if(!audio_is_playing(snd_beargrowl)) audio_play_sound(snd_beargrowl, 10 ,false); 
	targeting = true; 	
} 
if (!hit){	
	if (targeting){
		angle = point_direction(x,y,obj_player.x,obj_player.y); 
		direction = angle; 
		image_angle = angle; 
		image_angle = point_direction(x,y,obj_player.x, obj_player.y); 
		speed = movementSpeed; 
	} else {
		if (walkingTimer <= maxWalkingTimer / 2 && walkingTimer > 0){
			speed = 0; 
		}else if (walkingTimer <= 0){
			walkingTimer = maxWalkingTimer; 
			direction = irandom(360);   
			image_angle = direction; 
			speed = movementSpeed / 2; 
		}
		walkingTimer --; 
	}
	if (x < obj_player.x && image_yscale < 0){
		image_yscale *= -1; 
	}
	else if (x > obj_player.x && image_yscale > 0){
		image_yscale *= -1; 
	}
	
} else {
	path_end(); 
	speed = movementSpeed * multiplier; 
	direction = hitDirect; 
	if (hitTimer <= 0) {
		hit = false; 
		hitTimer = maxHitTimer; 
	}
	hitTimer--; 
}





if (place_meeting(x ,y,obj_playerbullet)){
	if (!audio_is_playing(snd_enemyhit)){
		var sound = snd_enemyhit; 
		audio_sound_pitch(sound,1); 
		var s = audio_play_sound(sound, 10, false); 
	
	}
	for (var i = 0; i < random_range(2,5); i++){
		instance_create_depth(x,y, 0, obj_particleblood); 	
	}
	targeting = true; 
	enemyHealth -= obj_playerbullet.damage; 
	instance_destroy(instance_place(x,y,obj_playerbullet)); 
}

var melee = instance_place(x,y,obj_sword); 
if (melee != noone && melee.damageable && !hit){
	for (var i = 0; i < random_range(20,40); i++){
		instance_create_depth(x,y, 0, obj_particleblood); 	
	} 
	hit = true; 
	path_end(); 
	if (path_index != -1){
		path_delete(path); 	
	}
	hitDirect = point_direction(x,y, obj_player.x,obj_player.y) + 180; 
	if (melee.name == "Baseball Bat"){
		multiplier = 2; 	
	} else {
		multiplier = 0.5; 
	}
	maxHitTimer = 20; 
	hitTimer = maxHitTimer;
	enemyHealth -= melee.hitDamage; 
}

var xCol = instance_place(x + hspeed,y,obj_enemy); 
var yCol = instance_place(x,y + vspeed,obj_enemy); 

if (xCol != noone){
	if (hspeed < 0){
		if (xCol.x > x){
			xCol.hspeed = 0; 
		} else {
			hspeed = 0; 
		}
	} else {
		if (xCol.x < x){
			xCol.hspeed = 0; 
		}else {
			hspeed = 0;	
		}
	}
}
if (yCol != noone){
	if (vspeed < 0){
		if (yCol.y > y){
			yCol.vspeed = 0; 	
		} else {
			vspeed = 0; 	
		}
	} else {
		if (yCol.y < y){
			yCol.vspeed = 0; 	
		} else {
			vspeed = 0; 	
		}
	}
}

if (place_meeting(x,y,obj_explosion)){
	enemyHealth = -1; 	
}

//Collision with fireplace
if (place_meeting(x + hspeed, y, obj_fireplace)) hspeed = 0; 
if (place_meeting(x, y + vspeed, obj_fireplace)) vspeed = 0;

//Collision with walls 
if (place_meeting(x + hspeed, y, obj_wall)) hspeed = 0; 
if (place_meeting(x, y + vspeed, obj_wall)) vspeed = 0; 

//Collision with car
if (place_meeting( x + hspeed, y, obj_car)) hspeed = 0; 
if (place_meeting(x, y + vspeed, obj_car)) vspeed = 0;


//player collisions 
if (!explosive){
	if (place_meeting(x + hspeed, y, obj_player)){
		if (!obj_player.hit){
			var snd = snd_playerhit; 
			audio_sound_pitch(snd, random_range(0.8,1.2)); 
			audio_play_sound(snd, 10, false); 
			obj_player.playerHealth -= damage; 	
			obj_player.hit = true; 
		}
		hspeed = 0; 
	}
	if (place_meeting(x, y + vspeed, obj_player)){
		if (!obj_player.hit){
			var snd = snd_playerhit; 
			audio_sound_pitch(snd, random_range(0.8,1.2)); 
			audio_play_sound(snd, 10, false); 
			obj_player.playerHealth -= damage; 	
			obj_player.hit = true; 
		}
		vspeed = 0; 
	}
}
if (enemyHealth <= 0 ){
	for (var i = 0; i < random_range(20,40); i++){
		instance_create_depth(x,y, 0, obj_particleblood); 	
	}
	dead = true; 
	instance_create_layer(x,y,"Instances",obj_dead_enemy); 
	instance_destroy(self); 
}

