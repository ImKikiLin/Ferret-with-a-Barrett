hsp = dir * walkSpeed;
vsp += grav;

// horizontal collision
if (place_meeting(x+hsp, y, Platform_Obj)) {
	while (!place_meeting(x+sign(hsp), y, Platform_Obj)) {
		x += sign(hsp);
	}
	hsp = 0;
	
	dir *= -1;
}
x += hsp;

// vertical collision
if (place_meeting(x, y+vsp, Platform_Obj)) {
	while (!place_meeting(x, y+sign(vsp), Platform_Obj)) {
		y += sign(vsp);
	}
	vsp = 0;
	
	if (fearOfHeights) && !position_meeting(x-(sprite_width/16)*dir, y+(sprite_height/2), Platform_Obj) {
		dir *= -1;
		image_xscale *= -1;
	}
}
y += vsp;

// Player-Enemy collision
if (place_meeting(x, y, Ferret_Obj)) {
	// y: on top of enemy
	if (Ferret_Obj.y < y-16) {
		with(Ferret_Obj) vsp = -300;
		instance_destroy();
	// x: bumps into enemy
	}
}