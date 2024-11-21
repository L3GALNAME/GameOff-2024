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
global.text[0] = false;
///box type
global.text[1] = false;
global.text[2] = 0;
///character focus
global.text[3] = array_create(0);
///text lines	
global.text[4] = 0;

room = rm_house;
global.startPos = [100, 100];
transition_create("basicOut", spr_pixel, rm_house, 1, 0.05, c_black);

global.layers = array_create(0);

global.weather = array_create(0);
global.weather[0] = 0;
global.weather[1] = [ 0, 0, 0];
global.weather[2] = [ #ffffff, #f2dd9d, #b4f5f5 ];

#region palette setting
	global.time = array_create(0);
	//Real Time
	global.time[0] = [0, 0];
	//Time Offset
	if (get_timer() > 0) { global.time[0][1] = get_timer() }
	//In game time
	global.time[1] = 0;
	
	global.palIdx = 0;
	global.colorMod = array_create(0);
	//Characters
	global.colorMod[0] = ColorModFromSprite(pal_mrMan_1, 0, true);
	//Tiles
	global.colorMod[1] = [
		ColorModFromSprite(pal_houseTiles, 0, true), 
		ColorModFromSprite(pal_roadTiles, 0, true)
	];
#endregion

//surface_resize(application_surface, 320, 180)

//Text drawing
////ALL FONT CHARACTERS IN ORDER DO NOT TOUCH
#macro soup " !#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\""
////

function draw_txt(_x, _y, str) {
	var xx = _x;
	var yy = _y;
	var char = "";
	var char2 = "";
	
	//var strLen = string_length(str);
	for(var i=0; i<string_length(str); i++) {
		char = string_char_at(str, i+1);
		//special character check
		if char = "`" {
			char = "";
			char2 = string_char_at(str, i+2);
			switch char2 {
				case "n":
					xx = _x;
					yy += 16;
					i++;
					continue;
			}
		}
		//draw letter and change variables
		draw_sprite_ext(spr_font, string_pos(char, soup)-1, xx, yy, 1, 1, 0, c_white, 1);
		xx += 8;
	}
}