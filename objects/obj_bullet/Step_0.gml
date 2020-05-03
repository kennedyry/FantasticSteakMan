

if (place_meeting(x + hspeed, y, obj_wall) || place_meeting(x + hspeed, y, obj_car)) hspeed *= -1; 
if (place_meeting(x, y + vspeed, obj_wall) || place_meeting(x , y + vspeed, obj_car)) vspeed *= -1; 
	
if (decayTimer <= 0){
	decayTimer = maxDecayTimer; 
	instance_destroy(self); 
}

decayTimer -= 1; 

