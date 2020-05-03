if (timer == 0){
	timer = maxtimer; 
	curX = curX * 0.9; 
	curY = curY * 0.9; 
}
image_xscale = curX; 
image_yscale = curY; 
if (curX < 0.05){
	instance_destroy(self); 	
}
timer -= 1; 