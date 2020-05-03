/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_inventory); 
draw_set_color(c_silver); 
draw_set_halign(fa_left); 
/*
for (var i = 0; i < ds_list_size(inventory); i++){
	draw_text(5, 5 + (24 * i), "Inventory Slot "  + string(i + 1) + ": "+ inventory[|i].name);  
}
*/
var counter = 0; 
for(var i = -5; i < window_get_width(); i += 64){
	draw_sprite(spr_invbox, 0, i, window_get_height() - 20); 
	draw_text(i + 10, window_get_height() - 45, string(counter + 1)); 
	counter++; 
	if (counter >= 9) break; 
}


var curr = 12; 
for (var i = 0; i < ds_list_size(inventory); i++){
	var cObj = ds_list_find_value(inventory,i);
	var cSpr = cObj.sprite_index;
	draw_sprite_stretched(cSpr,0,curr, window_get_height() - 30, 32,32); 
	curr += 64; 
}


draw_text(window_get_width() - 200, 5, "Required Car Parts"); 

if (keyAcquired == 1) draw_set_color(c_lime); 
else draw_set_color(c_red); 
draw_text(window_get_width() - 125, 29, "Car Key: " + string(keyAcquired) + "/1"); 
if (coolerAcquired == 1) draw_set_color(c_lime); 
else draw_set_color(c_red); 
draw_text(window_get_width() - 125, 53, "Cooler: " + string(coolerAcquired) + "/1"); 
if (wheelAcquired == 1) draw_set_color(c_lime); 
else draw_set_color(c_red); 
draw_text(window_get_width() - 125, 77, "Car Tire: " + string(wheelAcquired) + "/1"); 
if (snacksAcquired == 1) draw_set_color(c_lime); 
else draw_set_color(c_red); 
draw_text(window_get_width() - 165, 101, "Car Snacks: " + string(snacksAcquired) + "/1"); 

