/// @description Insert description here
// You can write your code in this editor


path = noone; 

movementSpeed = 3; 
effect = 1; 
particleSize = 0.3; 
bloodSpread = 50; 

hit = false; 
maxHitTimer = 60; 
hitTimer = 60; 
hitDirect = 0; 
multiplier = 1; 

enemyHealth = 150; 
maxHealth = 150; 
damage = 30; 

targetingDistance = 330; 
targeting = false; 

maxWalkingTimer = 300; 
walkingTimer = irandom(maxWalkingTimer); 

xCollision = false; 
yCollision = false; 

explosive = false; 


while(place_meeting(x,y,obj_wall)){
	y -= 10; 	
}

image_xscale = -1;
image_yscale = 1; 
