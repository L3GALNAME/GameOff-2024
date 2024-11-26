/// @description Tile Collision
x = obj_player.x;
y = obj_player.y;
tile = tilemap_get_at_pixel(layer_tilemap_get_id(global.layers[3]._id), x, y);
if instance_exists(obj_trigger) {
	type = instance_place(x, y, obj_trigger);
	//type = 
	if (type == noone) {
		type = 0;
	} else {
		type = type.trigger;
	}
}

if (room == rm_outdoors) {
	type = 2;
	switch tile {
		case 65: type = 3; break; 
		case 77: type = 4; break; 
	}
}

xScale = 1;
yScale = 1;
alpha = 1;
layer = global.layers[0]._id;
switch type {
	case 0:
		sprite = spr_feetEffect;
	break;
	case 1:
		sprite = spr_mrManD;
		yScale = -1;
		alpha = 0.5;
		layer =	global.layers[1]._id;
	break;
	case 2:
		sprite = spr_feetEffect;
		alpha = 0.8;
		depth += 2;
	break;
	case 3:
		sprite = spr_feetEffect;
	break;
	case 4:
		sprite = spr_feetEffect;
	break;
}
depth--