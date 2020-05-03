previousDirection = "S";
image_index = 18; 

movementSpeed = 6; 
itemEquipped = false; 
equippedId = 0; 

hit = false; 
enemyAngle = 0; 
hitTimerMax = 90; 
hitTimer = hitTimerMax; 

maxHealth = 100; 
playerHealth = maxHealth; 

inventory = ds_list_create(); 

inside = false; 

bloodTimerMax = 10; 
bloodTimer = 10; 

pickedUp = ds_list_create(); 

keyAcquired = 0; 
coolerAcquired = 0; 
wheelAcquired = 0; 
snacksAcquired = 0; 