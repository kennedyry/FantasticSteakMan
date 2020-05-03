if (keyboard_check_pressed(ord("E"))){
		placed = true; 
		equipped = false; 
}
if (equipped){
	y = obj_player.y;
	if (obj_player.x > mouse_x){
		x = obj_player.x - obj_player.sprite_width/2; 	
	} else {
		x = obj_player.x + obj_player.sprite_width /2; 
	}
}
