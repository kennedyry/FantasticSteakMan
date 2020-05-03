if (obj_startingcontroller.gameState == 0){
	y = room_height / 2; 
	if (left){
		if (image_xscale > 0){
			image_xscale *= -1; 
		}
		x = room_width/4; 
		xScale -= 0.1; 
		yScale += 0.1; 
		image_xscale = xScale;
		image_yscale = yScale; 
		if (xScale <= -maxScale){
			xScale = resetNum; 
			yScale = resetNum; 
			left = !left; 
		}
	}	
	else{
		if (image_xscale < 0){
			image_xscale *= -1; 	
		}
		x = 3 * room_width/4; 
		xScale += 0.1; 
		yScale += 0.1; 
		image_xscale = xScale; 
		image_yscale = yScale; 
		if (xScale >= maxScale){
			xScale = resetNum; 
			yScale = resetNum; 
			left = !left; 
		}
	}
}else {
	maxScale = 2; 
	image_xscale = maxScale; 
	image_yscale = maxScale; 
	y = 3 *  room_height / 4; 
	x = 3 * room_width /4; 
	image_angle += 1; 
	/*
	if (left){
		if (image_xscale > 0){
			image_xscale *= -1; 
			image_yscale *= -1; 
		}
		x = room_width/4 - 100; 
		xScale -= 0.05; 
		yScale -= 0.05; 
		image_xscale = xScale;
		image_yscale = yScale; 
		if (xScale <= -maxScale){
			xScale = resetNum; 
			yScale = resetNum; 
			left = !left; 
		}
	}	
	else{
		if (image_xscale < 0){
			image_xscale *= -1; 
			image_yscale *= -1; 	
		}
		x = 3 * room_width/4; 
		xScale += 0.05; 
		yScale += 0.05; 
		image_xscale = xScale; 
		image_yscale = yScale; 
		if (xScale >= maxScale){
			xScale = resetNum; 
			yScale = resetNum; 
			left = !left; 
		}
	}
	*/
}


