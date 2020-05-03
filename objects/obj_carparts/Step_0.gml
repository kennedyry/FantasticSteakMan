image_alpha = 1; 

event_inherited(); 
if (equipped && !thrown){
	y = obj_player.y; 
	if (mouse_x < obj_player.x){
		x = obj_player.x - obj_player.sprite_width/2; 
	}else {
		x = obj_player.x + obj_player.sprite_width/2; 
	}
}