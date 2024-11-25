// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shadow_create(_x, _y, width, height, color=#300073, alpha=0.8){
	shadow = instance_create_layer(_x, _y, "Instances", obj_shadow);
	shadow.image_xscale = width;
	shadow.image_yscale = height;
	shadow.image_blend = color;
	shadow.image_alpha = 0.8;
}