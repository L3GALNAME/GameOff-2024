/// @description User input
for(var i=0; i<ctrlLen*2; i+=2) {
	if ((keyboard_check(global.keybinds[i]) > 0) or (keyboard_check(global.keybinds[i+1]) > 0)) {
		global.ctrl[i/2]++;
	} else { global.ctrl[i/2] = 0; }
}

global.time[0][0] = floor((get_timer() - global.time[0][1]) / 100000);
//// Start the day at sunrise
global.time[1] = ((108 + floor(global.time[0][0]/1)) % 144);

#region game time math system thingy
	//// (6*24) = 144 (Number of in game 10 minute intervals)
	//// 144/4 = 36
	////// 4 is the number of palettes
	//// 144/36 = 4
	////// Replace 144 with the real interval number (let's call it 'gameTime')
	//// gameTime/36 = current palette
	
	global.palIdx = (global.time[1] / 36) % 4;
	
	//Change vignette color
	if (room = rm_outdoors) {
		global.weather[2][2] = merge_color(
			#b4f5f5, #190640, 
			global.palIdx > 2 ? ((4-global.palIdx)/2) : (global.palIdx/2)
		);
	}
#endregion