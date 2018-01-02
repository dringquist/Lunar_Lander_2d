if (canOperate){
	if(vspeed > 8){
		vspeed = 8;	
	}
	if(keyboard_check(vk_down)){
		if(vspeed > -8){
			vspeed -= 0.2;	
		}
		fuel -= 0.2	
		
		part_type_direction(fire, 270, 270, 0, 0);
		part_emitter_region(partSys, 
							emitter,
							x + lengthdir_x(bottomlenX, image_angle) - lengthdir_y(bottomlenY, image_angle),
							x + lengthdir_x(bottomlenX, image_angle) - lengthdir_y(bottomlenY, image_angle),
							y + lengthdir_y(bottomlenX, image_angle) + lengthdir_x(bottomlenY, image_angle),
							y + lengthdir_y(bottomlenX, image_angle) + lengthdir_x(bottomlenY, image_angle),
							ps_shape_line,
							ps_distr_linear);
		part_emitter_burst(partSys, emitter, fire, 15);
	}
	if(keyboard_check(vk_left)){
		if(hspeed < 5){
		hspeed += 0.1;	
		}
		if(image_angle < 5){
			image_angle += 1;	
		}
		fuel -=0.1;
		part_type_direction(fire, 180, 180, 0, 0);
		part_emitter_region(partSys, 
							emitter,
							x + lengthdir_x(leftlenX, image_angle) - lengthdir_y(leftlenY, image_angle),
							x + lengthdir_x(leftlenX, image_angle) - lengthdir_y(leftlenY, image_angle),
							y + lengthdir_y(leftlenX, image_angle) + lengthdir_x(leftlenY, image_angle),
							y + lengthdir_y(leftlenX, image_angle) + lengthdir_x(leftlenY, image_angle),
							ps_shape_line,
							ps_distr_linear);
		part_emitter_burst(partSys, emitter, fire, 15);
	}
}
if(keyboard_check(vk_right)){
		if(hspeed > -5){
		hspeed -= 0.1;	
		}
		if(image_angle > -5){
			image_angle -= 1;	
		}
		fuel -=0.1;
		part_type_direction(fire, 0, 0, 0, 0);
		part_emitter_region(partSys, 
							emitter,
							x + lengthdir_x(rightlenX, image_angle) - lengthdir_y(rightlenY, image_angle),
							x + lengthdir_x(rightlenX, image_angle) - lengthdir_y(rightlenY, image_angle),
							y + lengthdir_y(rightlenX, image_angle) + lengthdir_x(rightlenY, image_angle),
							y + lengthdir_y(rightlenX, image_angle) + lengthdir_x(rightlenY, image_angle),
							ps_shape_line,
							ps_distr_linear);
		part_emitter_burst(partSys, emitter, fire, 15);
	}
	if(!keyboard_check(vk_left)){
		if(image_angle < 0){
			image_angle += 0.05;	
		}
	}
	if(!keyboard_check(vk_right)){
		if(image_angle > 0){
			image_angle -= 0.05;	
		}
	}
	if( fuel <= 0){
		fuel = 0;
		canOperate = false;
	}
if(distance_to_object(obj_pad) <= 200){
	if(image_index < 5){
		image_index += 0.5;	
	}
}
else{
	if(image_index >= 1){
		image_index -= 0.5;	
	}
}