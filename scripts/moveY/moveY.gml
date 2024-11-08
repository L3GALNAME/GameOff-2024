function moveY(sy){
	var spdY = sy;
	if instance_exists(obj_collision) {
		while instance_place(x, y+spdY, obj_collision) {
			if spdY > 0 { spdY--; } else { spdY++; }
		}
	}
	y += spdY;
}