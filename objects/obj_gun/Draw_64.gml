//draw_self(); 
draw_set_font(fnt_regular); 
draw_set_alpha(1); 
draw_set_halign(fa_left); 
draw_set_color(c_white); 
if (equipped && !thrown){
	draw_text(window_get_width() - (window_get_width() - 30) , window_get_height() - 90, string(ammoInChamber) + " / " + string(ammoCount)); 
	if (ammoInChamber == 0 && ammoCount > 0){
		draw_set_alpha(opacityCounter); 
		opacityCounter += .01; 
		draw_set_color(c_red); 
		draw_set_halign(fa_center); 
		draw_text(window_get_width()/2, window_get_height()/2-100, "RELOAD"); 
		if (opacityCounter >= 1) opacityCounter = 0; 
	}else if (ammoCount == 0 && ammoInChamber == 0){
		draw_set_alpha(opacityCounter); 
		opacityCounter += .01; 
		draw_set_color(c_red); 
		draw_set_halign(fa_center); 
		draw_text(window_get_width()/2, window_get_height()/2 - 100, "No Ammo Left"); 
		if (opacityCounter >= 1) opacityCounter = 0; 
	} else if (reloading){
		draw_set_alpha(opacityCounter); 
		opacityCounter += 0.01; 
		draw_set_color(c_lime); 
		draw_set_halign(fa_center); 
		draw_text(window_get_width() / 2, window_get_height() / 2 - 100, "Reloading"); 
		if (opacityCounter >= 1) opacityCounter = 0; 
	}
	
}