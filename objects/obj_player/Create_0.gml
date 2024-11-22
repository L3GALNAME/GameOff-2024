/// @description Function and variable setup
// You can write your code in this editor
global.cameraVar[4] = 1;
global.cameraVar[5] = obj_player;
thing = 0;
thing2 = 0;
tick = 0;
prePos = false;
move = true;
walkSpd = 2;
driving = false;
car = undefined;

//Visual
frame = 0;
sprite = 0;
walkDir = "D";
_palIdx = 0;

sprite_index = spr_mrManD;
function setFrame(current) {
	//Compare the current and previous frame positions, and set the directional sprite
	var dir = current;
	//animation speed
	if (driving and frame >= 3) {
		frame += 10/60;
	} else {
		frame += 5/60;
	}
	if (x = xprevious and y = yprevious) { 
		if (prePos) { frame = 0; }
		prePos = false;
	} else { 
		if (!prePos) { frame = 0; }
		prePos = true;
	}
	
	if (x > xprevious) { dir = "R"; } else if (x < xprevious) { dir = "L"; }
	
	if (y > yprevious) { dir = "D"; } else if (y < yprevious) { dir = "U"; }
	
	return dir;
}

function checkObj(uwu, nya) {
	if !instance_exists(nya) { return false; }
	
	var yo;
	
	//Check for textbox in faced direction
	switch uwu {
		case "R":
		 yo = instance_place(x+10, y, nya);
		break;
		case "L":
		 yo = instance_place(x-10, y, nya);
		break;
		case "D":
		 yo = instance_place(x, y+10, nya);
		break;
		case "U":
		 yo = instance_place(x, y-10, nya);
		break;
	}
	
	if (yo == noone) {
		return false;
	} else {
		return yo;
	}
}