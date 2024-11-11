/// @description Type text

if global.ctrl[4] = 1 and global.text[0] > 1 {
	if (txtProg >= global.text[4] and letter >= string_length(text)) {
		global.text[0] = 0
		txtProg = 0
		obj_player.move = true;
		exit;
	}
	
	if (letter >= string_length(text)) {
		letter = 0
		txtProg++
	}
	//letter = 0
	//txtProg++
	//global.text[0] = 0
} else if global.text[0] > 0 {
	text = global.textScript[txtProg*4]
	txtSpeed = global.textScript[(txtProg*4)+3]
	if count >= txtSpeed and letter < string_length(text) {
		letter++
		count = 0
	}
	txtLine = string_copy(text, 1, letter)
	if txtSpeed > 0 { count++ }
	if letter >= string_length(text) and global.ctrl[4] > 0 { 
		
	} else if global.ctrl[4] > 0 { count = txtSpeed }
}