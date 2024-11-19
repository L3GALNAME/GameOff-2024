/// @description Fade transition / Setup
// You can write your code in this editor
thing = 1.05;

if !instance_exists(obj_player) {
	instance_create_layer(global.startPos[0], global.startPos[1], "Instances", obj_player);
	instance_create_layer(global.startPos[0], global.startPos[1], "Instances", obj_feetEffect);
	instance_create_layer(0, 0, "Instances", obj_camera);
	instance_create_layer(0, 0, "Instances", obj_typer);
}


global.layers = [];
switch room {
	case rm_house:
		global.layers[0] = {
			_id : layer_get_id("Instances"),
			name : "Instances"
		};
		global.layers[1] = {
			_id : layer_get_id("Instances_Reflect"),
			name : "Instances_Reflect"
		};
		
		global.weather[0] = 1;
	break;
	case rm_outdoors:
		global.layers[0] = {
			_id : layer_get_id("Instances"),
			name : "Instances"
		};
		global.layers[1] = {
			_id : layer_get_id("Instances_Reflect"),
			name : "Instances_Reflect"
		};
		
		global.weather[0] = 1;
	break;
}