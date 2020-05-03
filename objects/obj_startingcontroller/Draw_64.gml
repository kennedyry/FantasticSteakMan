if (room == 0){
draw_set_halign(fa_center); 


if (gameState == 0 ){
	draw_set_alpha(alphaDecay); 
	draw_set_font(fnt_bigpresstobegin); 
	draw_text(window_get_width() / 2, window_get_height() / 2 - 200, "Fantastic Steak Man"); 
	draw_set_font(fnt_presstobegin); 
	draw_text(window_get_width() / 2, window_get_height() / 2, "Space To Continue"); 
}
if (gameState == 1){
	draw_set_font(fnt_presstobegin); 
	draw_set_alpha(1); 
	draw_text((window_get_width() / 2) + 5, window_get_height() / 2 - 200, "Your name is Terry TBone, a steak that \n has recently gained sentience. \n You find yourself in the woods \n surrounded by hungry bears. \n You have no recollection of your past but \n are certain that you must repair a car \n to get to safety"); 
	draw_set_alpha(alphaDecay); 
	draw_text(window_get_width() /2, window_get_height() - 100, "Space to continue");
}
if (gameState == 2){
	draw_set_alpha(1); 
	//draw_set_font(fnt_presstobegin); 
	draw_set_font(fnt_controls); 
	 
	draw_text(window_get_width()/2, 50, "WASD to Move \n F to Pickup Items, E to Throw Items \n (You can pickup dead bears) \n R to Reload, Left Mouse Button to Shoot \n 1-9 to switch through inventory \n Red Bears explode, Grey Bears take more bullets to kill \n Retrieve the car key, cooler, tire, and snacks to escape \n Go inside buildings / around the map to find more supplies"); 
	//draw_text(window_get_width() /2, window_get_height() / 2 -300, "WASD To Move \n F to pickup items \n E to throw items \n (You can pick up dead bears) \n R to reload \n Retrieve the four collectibles to escape \n Go inside buildings for more \n supplies / car parts"); 
	draw_set_alpha(alphaDecay); 
	draw_text(window_get_width() /2, window_get_height() - 50, "Space to Begin"); 
	draw_set_color(c_red); 
	draw_set_alpha(1); 
	draw_text(room_width/2, (3*(room_height / 4)) - 60, "Hard Mode - More Enemies"); 
	draw_set_color(c_white); 
	draw_text(room_width / 5, (7 * (room_height / 9)) - 20, "Credits"); 
}
if (gameState == 4){
	draw_set_alpha(1);
	draw_set_font(fnt_credits); 
	draw_text(window_get_width()/2, 50, "This is a free game that I intend to make no money off of \n These are all the art and sounds I did not create myself \n Please check out these creators! \n (Space to Return to Controls Page) \n \n Pixelated Shotgun - Ragnarok ZS \n Pixelated Bear - Roi and Roi \n Pixelated Car - Rene Alejandro Hernandez \n Pixelated Hunting Rifle - non157 \n Pixelated Rifle - Jason Anthony \n Background Music - Benjamin Tissot \n Player Hit Sound Effect - Desuperanton \n Explosion Sound Effect - InspectorJ \n Enemy Hit Sound Effect - Alphatrooper 18 \n Shotgun Sound effect - DodoDuck \n Pistol Shot Sound Effect - Michorvath \n Hunting Rifle Shot Sound Effect - Xenonn \n Knife Slash Sound Effect - beerbelly38 \n Bat Swung Sound Effect - SypherZent \n Intense Music Sound Effect - sirplus \n Chaos Music - bigmanjoe \n Power Up Equipped Sound Effect - Mattix \n Equipping Pistol Sound Effect - nioczkus \n Grabbing Item Sound Effect - ihitokage \n Pistol Reloading Sound Effect - eflexmusic \n Shotgun Reloading Sound Effect - bolkmar \n Rifle Reloading Sound Effect - gfl7 \n Car Start Sound Effect - InspectorJ"); 
}	

alphaDecay -= 0.005; 
if (alphaDecay <= 0) alphaDecay = 1; 

}