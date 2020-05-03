timer = 8; 

part_system = part_system_create(); 
part_emitter = part_emitter_create(part_system); 
part_type = part_type_create(); 

part_type_sprite(part_type, spr_blood, false, false, true); 

//part_type_shape(part_type, pt_shape_flare); 

//part_emitter_stream(part_system,part_emitter, part_type,4); 

//fading out mechanics 
//part_type_alpha2(part_type,.75,0);
part_type_alpha3(part_type,0,1,0); 

//how long it lasts on screen, game_get_speed returns the number of fps 
//part_type_life(part_type, game_get_speed(gamespeed_fps),game_get_speed(gamespeed_fps) * 1.1); 

part_type_life(part_type, 10,15); 

part_type_scale(part_type,0.25,0.25); 

part_type_gravity(part_type,2, 180 + point_direction(x,y,obj_player.x,obj_player.y) + irandom_range(-45,45)); 