draw_self(); 
draw_set_alpha(1); 
draw_healthbar(x - sprite_width/2, y - sprite_height/2 - 30, x + sprite_width/2, y - sprite_height/2 - 10, enemyHealth / maxHealth * 100, c_black, c_red, c_lime, 1, false, true); 