/// @description Fade transition / Setup
// You can write your code in this editor
thing = 1.05;

if !instance_exists(obj_player) {
	instance_create_layer(global.startPos[0], global.startPos[1], "Instances", obj_player);
	instance_create_layer(global.startPos[0], global.startPos[1], "Instances", obj_feetEffect);
	instance_create_layer(0, 0, "Top", obj_camera);
	instance_create_layer(0, 0, "Top", obj_typer);
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
		global.layers[3] = {
			_id : layer_get_id("Tiles_1"),
			name : "Tiles_1"
		};
		global.layers[4] = {
			_id : layer_get_id("Tiles_Reflect"),
			name : "Tiles_Reflect"
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
		global.layers[3] = {
			_id : layer_get_id("Tiles_1"),
			name : "Tiles_1"
		};
		global.layers[4] = {
			_id : layer_get_id("Tiles_Reflect"),
			name : "Tiles_Reflect"
		};
		
		global.weather[0] = 2;
	break;
}

//Create tileset palette
instance_create_depth(0, 0, layer_get_depth(global.layers[3]._id) + 1, obj_palSetBegin);
instance_create_depth(0, 0, layer_get_depth(global.layers[3]._id) - 1, obj_palSetEnd);
instance_create_depth(0, 0, layer_get_depth(global.layers[4]._id) + 1, obj_palSetBegin);
instance_create_depth(0, 0, layer_get_depth(global.layers[4]._id) - 1, obj_palSetEnd);