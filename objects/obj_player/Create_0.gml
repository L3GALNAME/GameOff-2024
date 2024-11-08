/// @description Function and variable setup
// You can write your code in this editor
global.cameraVar[4] = 1;
global.cameraVar[5] = obj_player;
thing = 0;
thing2 = 0;
tick = 0;
prePos = [0, 0, 0];
walkDir = "D";
frame = 0;
sprite = 0;
move = 1;

sprite_index = spr_player;
function setFrame(current) {
	//Compare the current and previous frame positions, and set the directional sprite
	var dir = current;
	//animation speed
	frame += 5/60;
	if (x = prePos[0] and y = prePos[1]) { 
		frame = 1;
		prePos[2] = 0;
	} else { 
		if (prePos[2] = 0) { frame = 0; }
		prePos[2] = 1;
	}
	
	if (x > prePos[0]) { dir = "R"; } else if (x < prePos[0]) { dir = "L"; }
	
	if (y > prePos[1]) { dir = "D"; } else if (y < prePos[1]) { dir = "U"; }
	
	return dir
}