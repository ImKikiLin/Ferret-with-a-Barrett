if (instance_exists(heldItem)) {
	heldItem.x = x+20;
	heldItem.y = y+2;
}

if (place_meeting(x, y + 1, Platform_Obj)) {
	current_jumps = 0;
	physics_set_friction(fixture, 1);
}