draw_set_color(make_color_rgb(183,224,31));
draw_set_font(fnt_main);

draw_text(x, y, string(obj_lander.speed));
draw_text(x, y + 30, string(obj_lander.image_angle));

if(obj_lander.fuel < 25){
	draw_set_color(c_red);	
}
draw_text(x, y + 60, string(obj_lander.fuel));