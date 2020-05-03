if (decayTimer <= 0){
	instance_destroy(self); 	
}
decayTimer -=1; 


if (place_meeting(x,y, obj_player) && !obj_player.hit){
	with(obj_player){
		playerHealth -= 99; 
		hit = true; 
	}
}