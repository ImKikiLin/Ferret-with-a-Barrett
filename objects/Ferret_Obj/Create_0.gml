hspd = 0;
vspd = 0;
grv = 0.3;
walkspd = 400;
current_jumps = 0;
max_jumps = 3;
key_left = 0;
key_right = 0;
grounded = false;
health = 3;
global.maxHealth =3;
i_frames = 0;


fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width/2, sprite_height/2);
physics_fixture_set_density(fixture, 1);
physics_fixture_set_restitution(fixture, .1);
physics_fixture_set_linear_damping(fixture, 0.1);
physics_fixture_set_angular_damping(fixture, 0);
physics_fixture_set_friction(fixture, 1);
physics_fixture_bind(fixture, id);

phy_rotation = 0;
phy_fixed_rotation = true;

heldItem = instance_create_layer(x,y,"Instances", obj_pointer);