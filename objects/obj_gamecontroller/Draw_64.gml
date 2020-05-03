draw_set_font(fnt_inventory); 
draw_set_color(c_fuchsia); 
draw_set_alpha(1); 
draw_set_halign(fa_center); 
if (escape){
	draw_text(window_get_width() / 2, window_get_height() - (window_get_height() - 100), "You have all pieces needed to escape! \n Head to the Car and throw \n each piece in");

}