/// @description Fade transition / Setup
// You can write your code in this editor
thing = 1.05;

if !instance_exists(obj_player) {
	instance_create_layer(global.startPos[0], global.startPos[1], "Instances", obj_player);
}
instance_create_layer(0, 0, "Instances", obj_camera);

