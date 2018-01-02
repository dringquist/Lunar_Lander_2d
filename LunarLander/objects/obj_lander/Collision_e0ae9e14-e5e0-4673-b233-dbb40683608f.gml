if(speed > 5){
	with(instance_create_layer(0,0, "Messages", obj_message)){
	image_index = 1;	
}		
}
else{
	with(instance_create_layer(0,0, "Messages", obj_message)){
	image_index = 0;
	}
}

gravity = 0;
vspeed = 0;
hspeed = 0;
canOperate = false;

if( part_system_exists(partSys)){
	part_system_destroy(partSys);	
}