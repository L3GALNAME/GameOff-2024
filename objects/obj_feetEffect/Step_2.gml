/// @description Tile Collision
x = obj_player.x;
y = obj_player.y;
if instance_exists(obj_trigger) {
	type = instance_place(x, y, obj_trigger);
	if (type == noone) {
		type = 0;
	} else {
		type = type.trigger;
	}
}

if (room == rm_outdoors && type = 0) {
	type = 2;
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
}
depth--