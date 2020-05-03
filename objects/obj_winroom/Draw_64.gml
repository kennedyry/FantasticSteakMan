//window_get_width()

draw_set_font(fnt_win); 
draw_set_color(c_white); 
draw_set_halign(fa_center); 
draw_set_alpha(1); 
draw_text(window_get_width() / 2, (window_get_height() / 2) - 200, "You Have Escaped! \n Terry is Safe \n Can you do it again?"); 

draw_set_font(fnt_inventory); 
draw_set_alpha(startingAlpha); 
draw_text(window_get_width() / 2, window_get_height() / 2 + 200, "R to try again"); 
startingAlpha -= .005; 
if (startingAlpha <= 0){
	startingAlpha = maxAlpha; 	
}