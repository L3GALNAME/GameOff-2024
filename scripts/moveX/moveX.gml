// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveX(sx){
	var spdX = sx;
	if instance_exists(obj_collision) {
		while instance_place(x+spdX, y, obj_collision) {
			if (spdX > 0) {
				spdX--;
				var bruh = place_meeting(x, y, obj_collision);
				if bruh {
					//Stuck inside wall
					while place_meeting(x+spdX, y, obj_collision) {
						spdX--;
					}
				}
			} else {
				spdX++;
				var bruh = place_meeting(x, y, obj_collision);
				if bruh {
					//Stuck inside wall
					while place_meeting(x+spdX, y, obj_collision) {
						spdX--;
					}
				}
			}
		}
	}
	x += spdX;
}