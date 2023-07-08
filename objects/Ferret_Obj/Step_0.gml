key_jump = keyboard_check_pressed(vk_space);
mouse_left = mouse_check_button_pressed(mb_left);

var move = key_right - key_left;

hspd = move * walkspd;



vspd = vspd + grv;

if (place_meeting(x, y + 1, Platform_Obj)) {
	grounded = true;
}

else {
	grounded = false;
}
if (i_frames == 0) {
	
	if (place_meeting(x+1, y, Bug_Obj)) {
		health -= 1;
		i_frames += 100;
		image_alpha = .7;
	}
	if (place_meeting(x-1, y, Bug_Obj)) {
		health -= 1;
		i_frames += 100;
		image_alpha = .7;
	}

	if (health < 0) {
		room_goto(end_screen);
	}
}

if (i_frames > 0) {
	i_frames -= 1;
}

if (i_frames <= 70) {
	image_alpha = 1
}

if(grounded) && (key_jump) {
	vspd = -300;
	phy_linear_velocity_y = vspd;
}


if (mouse_left) {
	if (current_jumps < max_jumps) {
		physics_set_friction(fixture, 0);
		phy_linear_velocity_x = 0;
		var dir = point_direction(mouse_x, mouse_y, x, y);
		// Apply the impulse to the position the dynamic instance occupies, using the previously calculated direction to set the force part of the vector
		physics_apply_impulse(x, y, lengthdir_x(7000, dir), lengthdir_y(7000, dir));
		current_jumps +=1;
	}
}

if (grounded) && (key_left || key_right) {
	phy_linear_velocity_x = hspd;
}
key_left = 0;
key_right = 0;