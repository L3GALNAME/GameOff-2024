// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition_create(type, sprite, rmSwitch, transAmt=0, transSpeed=1, color=c_black){
	transition = instance_create_layer(0, 0, "Instances", asset_get_index($"obj_{type}Trans"));
	transition.sprite_index = sprite;
	transition.thing = transAmt;
	transition.thing2 = transSpeed;
	transition.image_blend = color;
	transition.roomSwitch = rmSwitch;
}