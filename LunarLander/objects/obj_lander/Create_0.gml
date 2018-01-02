gravity = .1;
fuel = 100;

image_index = 0
image_speed = 0;
canOperate = true;

bottomlenX = 0;
bottomlenY = 30;
leftlenX = -22;
leftlenY = 0;
rightlenX = 22;
rightlenY = 0;

partSys = part_system_create_layer("Instances", false);

fire = part_type_create();
part_type_shape(fire, pt_shape_flare);
part_type_size(fire, 0.15, 0.25, 0, 0.05);
part_type_color3(fire, c_blue, c_orange, c_red);
part_type_alpha3(fire, 0.5, 1, 0);
part_type_speed(fire, 2, 5, -0.1, 0);
part_type_blend(fire, true);
part_type_life(fire, 5, 10);
emitter = part_emitter_create(partSys);