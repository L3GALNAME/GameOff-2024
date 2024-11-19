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

xScale = 1;
yScale = 1;
alpha = 1;
layer = global.layers[0]._id;
switch type {
	case 0:
		sprite = spr_feetEffect;
	break;
	case 1:
		sprite = spr_mrManD
		yScale = -1
		alpha = 0.5;
		layer =	global.layers[1]._id;
	break;
}
depth--