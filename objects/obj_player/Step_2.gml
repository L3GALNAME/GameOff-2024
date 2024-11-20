/// @description Movement/Collision
// You can write your code in this editor
moveX(move*(walkSpd*((global.ctrl[3] > 0) - (global.ctrl[1] > 0))));
moveY(move*(walkSpd*((global.ctrl[2] > 0) - (global.ctrl[0] > 0))));
walkDir = setFrame(walkDir);

#region Set camera boundaries
	if place_meeting(x, y, obj_cameraArea) {
		var camArea = instance_place(x, y, obj_cameraArea);
		global.areaBorder[0][0] = camArea.y;
		global.areaBorder[0][1] = camArea.x;
		global.areaBorder[0][2] = camArea.bbox_bottom;
		global.areaBorder[0][3] = camArea.bbox_right;
	
		global.areaBorder[1][0] = lerp(global.areaBorder[1][0], camArea.y, 0.125);
		global.areaBorder[1][1] = lerp(global.areaBorder[1][1], camArea.x, 0.125);
		global.areaBorder[1][2] = lerp(global.areaBorder[1][2], camArea.bbox_bottom, 0.125);
		global.areaBorder[1][3] = lerp(global.areaBorder[1][3], camArea.bbox_right, 0.125);
	} else {
		global.areaBorder[0] = [0, 0, room_height, room_width];
		global.areaBorder[1][0] = lerp(global.areaBorder[1][0], 0, 0.125);
		global.areaBorder[1][1] = lerp(global.areaBorder[1][1], 0, 0.125);
		global.areaBorder[1][2] = lerp(global.areaBorder[1][2], room_height, 0.125);
		global.areaBorder[1][3] = lerp(global.areaBorder[1][3], room_width, 0.125);
	}
	
	//for (var i=0; i<array_length(global.areaBorder[1]); i++) {
	//	global.areaBorder[1][i] = ceil(global.areaBorder[1][i]);
	//}
#endregion

//Room transition check
var rmTrans = instance_place(x, y, obj_roomTrans);
if rmTrans {
	with rmTrans { event_user(0); }
}