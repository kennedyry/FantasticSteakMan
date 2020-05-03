part_emitter_region(part_system, part_emitter,x-32,x+32,
y - 32,y+32, ps_shape_ellipse, ps_distr_linear);
//rate at which spawns 
part_emitter_burst(part_system,part_emitter,part_type,5); 

if (timer == 0) instance_destroy(self); 
timer -= 1; 
