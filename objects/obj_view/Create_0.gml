width = window_get_width(); 
height = window_get_height(); 

camera_destroy(view_camera[0])
view_camera[0] = camera_create_view(x,y,width,height,0,self,-1,-1,width/2,height/2); 
camera_apply(view_camera[0])