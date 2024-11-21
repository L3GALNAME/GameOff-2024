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
		global.layers[2] = {
			_id : layer_get_id("Background"),
			name : "Background",
			background: layer_background_get_id("Background")
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
		global.layers[2] = {
			_id : layer_get_id("Background"),
			name : "Background",
			background: layer_background_get_id("Background")
		};
		
		global.weather[0] = 2;
	break;
}

//Create tileset palette
instance_create_depth(0, 0, 501, obj_palSetBegin);
instance_create_depth(0, 0, 499, obj_palSetEnd);
instance_create_depth(0, 0, 701, obj_palSetBegin);
instance_create_depth(0, 0, 699, obj_palSetEnd);