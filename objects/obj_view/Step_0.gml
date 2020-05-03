if (obj_gamecontroller.won){
	x = lerp(x, obj_car.x, 0.1); 
	y = lerp(y, obj_car.y, 0.1); 
}else {
	x = lerp(x, obj_player.x, 0.1); 
	y = lerp(y, obj_player.y, 0.1);  
}

