/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_healthbar(x - sprite_width/2, y - sprite_height/2 - 10, x + sprite_width/2, y - sprite_height/2 - 30,  playerHealth / maxHealth * 100, c_black, c_red, c_lime, 1, false, true); 