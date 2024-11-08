/// @description Movement/Collision
// You can write your code in this editor
moveX(move*(2*((global.ctrl[3] > 0) - (global.ctrl[1] > 0))));
moveY(move*(2*((global.ctrl[2] > 0) - (global.ctrl[0] > 0))));

//Set camera boundaries
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