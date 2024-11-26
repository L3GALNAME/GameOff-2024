// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveX(sx, vroom=false) {
	var spdX = sx;
	if (instance_exists(obj_collision) or (vroom and instance_exists(obj_carCollision))) {
		while (instance_place(x+spdX, y, obj_collision) or (vroom and instance_place(x+spdX, y, obj_carCollision))) {
			if (spdX > 0) {
				spdX--;
				var bruh = place_meeting(x, y, obj_collision) or (vroom and place_meeting(x, y, obj_carCollision));
				if bruh {
					//Stuck inside wall
					while (place_meeting(x+spdX, y, obj_collision) or (vroom and place_meeting(x+spdX, y, obj_carCollision))) {
						spdX--;
					}
				}
			} else {
				spdX++;
				var bruh = place_meeting(x, y, obj_collision) or (vroom and place_meeting(x, y, obj_carCollision));
				if bruh {
					//Stuck inside wall
					while (place_meeting(x+spdX, y, obj_collision) or (vroom and place_meeting(x+spdX, y, obj_carCollision))) {
						spdX--;
					}
				}
			}
		}
	}
	x += spdX;
}