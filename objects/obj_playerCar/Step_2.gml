/// @description Insert description here
vroom = obj_player.driving;
if vroom {
	x = obj_player.x;
	y = obj_player.y;
} else {
	if (y < obj_player.y) {
		depth = obj_player.depth + 1;
	} else {
		depth = obj_player.depth - 1;
	}
}