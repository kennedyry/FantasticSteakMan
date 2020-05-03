if (mouse_check_button_pressed(mb_any) && position_meeting(mouse_x,mouse_y,self)){
	obj_startingcontroller.gameState = 4; 
	instance_destroy(self); 
}