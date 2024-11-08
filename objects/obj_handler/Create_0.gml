/// @description Varaible setup
// You can write your code in this editor
thing = 0;

#region Camera
	//Camera
	global.camera = 0
	global.cameraVar = array_create(0)
	//size
	global.cameraVar[0] = 960
	global.cameraVar[1] = 540
	// camera/object pos
	global.cameraVar[2] = 0
	global.cameraVar[3] = 0
	//following?
	global.cameraVar[4] = false
	////follow object
	global.cameraVar[5] = 0
	//size barrier toggle
	global.cameraVar[6] = true
	global.cameraVar[7] = true
	//pos barrier toggle
	global.cameraVar[8] = true
	global.cameraVar[9] = true
	//follow x and y
	global.cameraVar[10] = true
	global.cameraVar[11] = true
	//offset
	global.cameraVar[12] = 0
	////offset real
	global.cameraVar[13] = 0

	global.shake = array_create(0);
	// left/right shake switches
	global.shake[0] = true;
	global.shake[1] = true;
	//shake speed
	global.shake[2] = 100;
	
	//area borders
	//// Top, left, bottom, right
	////// Hard values
	//var width,height,i;
	//width = 2;
	//height = 4;
	//global.areaBorder = array_create(width);
	//for (i =0; i < width; i++){
	//    global.areaBorder[i] = array_create(height);
	//}
	//global.areaBorder = [];
	global.areaBorder = [[0, 0, 0, 0], [0, 0, 0, 0]];
	//global.areaBorder[0][0] = 0;
	//global.areaBorder[0][1] = 0;
	//global.areaBorder[0][2] = 0;
	//global.areaBorder[0][3] = 0;
	
	////// Transition values
	//global.areaBorder[1][0] = 0;
	//global.areaBorder[1][1] = 0;
	//global.areaBorder[1][2] = 0;
	//global.areaBorder[1][3] = 0;
#endregion

#region keybinds
	//keybinds
	global.keybinds = array_create(0);
	global.keybinds[0] = ord("W");
	global.keybinds[1] = vk_up;
	global.keybinds[2] = ord("A");
	global.keybinds[3] = vk_left;
	global.keybinds[4] = ord("S");
	global.keybinds[5] = vk_down;
	global.keybinds[6] = ord("D");
	global.keybinds[7] = vk_right;
	global.keybinds[8] = ord("Z");
	global.keybinds[9] = vk_enter;
	global.keybinds[10] = ord("X");
	global.keybinds[11] = vk_shift;
	global.ctrl = [0, 0, 0, 0, 0, 0];
	
	#macro ctrlLen array_length(global.ctrl)
#endregion

//text
global.textScript = array_create(0);
global.text = array_create(0);
///textbox on
global.text[0] = 0;
///box type
global.text[1] = 0;
global.text[2] = 0;
///character focus
global.text[3] = 0;
///text lines	
global.text[4] = 0;

room = rm_test0;
global.startPos = [64, 64];