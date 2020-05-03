spread = 4; 
direction = point_direction(x,y,mouse_x, mouse_y); 
direction += random_range(-spread,spread); 
speed = 16; 
image_angle = direction; 
damage = 50; 

maxDecayTimer = 150; 
decayTimer = maxDecayTimer; 