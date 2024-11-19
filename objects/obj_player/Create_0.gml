/// @description Function and variable setup
// You can write your code in this editor
global.cameraVar[4] = 1;
global.cameraVar[5] = obj_player;
thing = 0;
thing2 = 0;
tick = 0;
prePos = false;
walkDir = "D";
frame = 0;
sprite = 0;
move = true;

sprite_index = spr_mrManD;
function setFrame(current) {
	//Compare the current and previous frame positions, and set the directional sprite
	var dir = current;
	//animation speed
	frame += 5/60;
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

function checkTxt(uwu) {
	if !instance_exists(obj_txtCollision) { return false; }
	
	var yo;
	
	//Check for textbox in faced direction
	switch uwu {
		case "R":
		 yo = instance_place(x+10, y, obj_txtCollision);
		break;
		case "L":
		 yo = instance_place(x-10, y, obj_txtCollision);
		break;
		case "D":
		 yo = instance_place(x, y+10, obj_txtCollision);
		break;
		case "U":
		 yo = instance_place(x, y-10, obj_txtCollision);
		break;
	}
	
	if (yo == noone) {
		return false;
	} else {
		return yo;
	}
}