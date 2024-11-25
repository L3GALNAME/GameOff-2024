function moveY(sy, vroom){
	var spdY = sy;
	if instance_exists(obj_collision) {
		while (instance_place(x, y+spdY, obj_collision) or (vroom and place_meeting(x, y+spdY, obj_carCollision))) {
			if (spdY > 0) { spdY--; } else { spdY++; }
		}
	}
	y += spdY;
}