randomise(); 




escape = false; 

canLeave = false; 

explosiveBears = 0; 
armoredBears = 0; 

won = false; 
maxNumberOfBears = 35; 

spawnTimer = 10; 
maxSpawnTimer = 10; 



carPPoints = ds_list_create(); 
for (var i = 0; i < instance_number(obj_carpartsspawnpoint); i++) {
		ds_list_add(carPPoints,(instance_find(obj_carpartsspawnpoint, i)));
}
powerPPoints = ds_list_create(); 
for (var i = 0; i < instance_number(obj_powerupspawn); i++){
	ds_list_add(powerPPoints, (instance_find(obj_powerupspawn,i))); 	
}
weaponPPoints = ds_list_create(); 
for (var i = 0; i < instance_number(obj_weaponspawn); i++){
	ds_list_add(weaponPPoints, (instance_find(obj_weaponspawn,i))); 	
}




//Spawning Car Parts
var carParts = ds_list_create(); 
ds_list_add(carParts, obj_key,obj_wheel,obj_snacks,obj_cooler); 
while(ds_list_size(carParts) > 0){
	show_debug_message("CarParts Left: " + string(ds_list_size(carParts)) + " SpawnPoints Left: " + string(ds_list_size(carPPoints))); 
	var index = irandom(ds_list_size(carPPoints)); 
	if (index == ds_list_size(carPPoints)) index = ds_list_size(carPPoints)-1; 
	var point = ds_list_find_value(carPPoints, index); 
	ds_list_delete(carPPoints,index); 
	//1031, 269
	if (point.x == 1031 && point.y == 269) continue; 
	var tempPart = ds_list_find_value(carParts,0); 
	ds_list_delete(carParts,0); 
	tempPart.x = point.x; 
	tempPart.y = point.y; 
} 

var powerItems = ds_list_create(); 
ds_list_add(powerItems, obj_ammobox, obj_ammobox, obj_healthbox, obj_healthbox); 
while(ds_list_size(powerItems) > 0){
	var index = irandom(ds_list_size(powerPPoints)); 
	if (index == ds_list_size(powerPPoints)) index = ds_list_size(powerPPoints)-1; 
	var point = ds_list_find_value(powerPPoints,index); 
	ds_list_delete(powerPPoints,index); 
	if (point.x == 1031 && point.y == 269){
		continue; 	
	}
	var obj = ds_list_find_value(powerItems,0); 
	ds_list_delete(powerItems,0); 
	instance_create_layer(point.x,point.y, "guns", obj); 
}

var weaponItems = ds_list_create(); 
ds_list_add(weaponItems,obj_huntingrifle, obj_huntingrifle, obj_pistol,obj_pistol, obj_shotgun, obj_shotgun, obj_rifle,obj_rifle, obj_sword,obj_bat); 
while (ds_list_size(weaponItems) > 0){
	var index = irandom(ds_list_size(weaponPPoints)); 
	if (index == ds_list_size(weaponPPoints)) index = ds_list_size(weaponPPoints)-1; 
	var point = ds_list_find_value(weaponPPoints, index);
	ds_list_delete(weaponPPoints, index);
	if (point.x == 1031 && point.y == 269){
		continue; 	
	}
	var obj = ds_list_find_value(weaponItems,0); 
	ds_list_delete(weaponItems,0); 
	instance_create_layer(point.x,point.y, "guns", obj); 
}

/*
randomise(); 
ds_list_add(carParts, obj_key,obj_wheel,obj_snacks,obj_cooler); 
while(ds_list_size(carParts) > 0){
	var index = irandom(ds_list_size(spawnPoints)); 
	var point = ds_list_find_value(spawnPoints,index);
	badPoint = false; 
	for (var i = 0; i < ds_list_size(takenSpawnPoints); i++){
		var currPoint = ds_list_find_index(takenSpawnPoints, i); 
		if (point_distance(point.x,point.y, currPoint.x,currPoint.y) < distAwayFromOthers){
			badPoint = true; 
			break; 
		}
	}
	if (badPoint) continue; 
	ds_list_add(takenSpawnPoints,point); 
	ds_list_delete(spawnPoints, index); 
	var obj = ds_list_find_value(carParts,0); 
	obj.x = point.x; 
	obj.y = point.y; 
	ds_list_delete(carParts, 0); 
}



possItems = ds_list_create()
ds_list_add(possItems,obj_bat, obj_sword, obj_rifle,obj_huntingrifle, obj_huntingrifle, obj_pistol,obj_pistol,obj_shotgun,obj_shotgun, obj_ammobox,obj_ammobox,obj_healthbox,obj_healthbox); 

while (ds_list_size(possItems) > 0){
	var index = irandom(ds_list_size(spawnPoints)-1); 
	var point = ds_list_find_value(spawnPoints, index); 
	var rIndex = irandom(ds_list_size(possItems)-1); 
	var obj = ds_list_find_value(possItems,rIndex);
	show_debug_message(obj);
	instance_create_layer(point.x,point.y,"guns", obj); 
	
	ds_list_delete(possItems,rIndex); 
	ds_list_delete(spawnPoints, index); 
}

for (var i = 0; i < instance_number(obj_gun); i++){
	var gun = instance_find(obj_gun,i); 
	gun.ammoCount = gun.startingCount; 
}
*/