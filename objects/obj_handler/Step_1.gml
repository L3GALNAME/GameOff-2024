/// @description User input
for(var i=0; i<ctrlLen*2; i+=2) {
	if ((keyboard_check(global.keybinds[i]) > 0) or (keyboard_check(global.keybinds[i+1]) > 0)) {
		global.ctrl[i/2]++;
	} else { global.ctrl[i/2] = 0; }
}