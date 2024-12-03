//Set Camera variables
//cameraSpeed = 4
//cameraTarget = global.cameraVar[5]

//Positioning
var targetX = global.startPos[0] - (cameraW / 2);
var targetY = global.startPos[1] - (cameraH / 2);
x = targetX;
y = targetY;

camera_set_view_pos(global.camera, x, y);


Scale = 1
ScaleTime = 1
preScale = 0
global.cameraVar[6] = true
global.cameraVar[7] = true
global.cameraVar[8] = true
global.cameraVar[9] = true
//switch room {
//	//case rm_test0:
//	//	Scale = 1.5
//	//	cameraSpeed = 2
//	//	global.cameraVar[6] = 0
//	//	global.cameraVar[7] = 0
//	//break;
//	//case rm_test2:
//	//	Scale = 2.6
//	//	global.cameraVar[6] = 0
//	//	global.cameraVar[7] = 0
//	//break;
//}