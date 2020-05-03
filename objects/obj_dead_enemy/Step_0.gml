
event_inherited(); 
if (equipped){
	decaytimer = decaymaxtimer;
	angle = point_direction(obj_player.x,obj_player.y, mouse_x,mouse_y); 
	y = obj_player.y + lengthdir_y(obj_player.sprite_height/2, angle); 
	
	x = obj_player.x + lengthdir_x(obj_player.sprite_width/2, angle); 
	
	image_angle = angle; 
}else {
	if (decaytimer == 0){
		instance_destroy(self); 	
	}
	decaytimer -= 1; 
}