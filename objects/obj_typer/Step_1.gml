/// @description Type text

if global.text[0] {	
	text = global.textScript[txtProg*4]
	txtSpeed = global.textScript[(txtProg*4)+3]
	
	var textLen = string_length(text);
	if (count >= txtSpeed and letter < textLen) {
		letter++
		count = 0
	} else if (global.ctrl[4] == 1 and letter >= textLen) {
		//Next/Clear textbox
		if (txtProg >= global.text[4]) {
			global.text[0] = false;
			global.text[3] = [];
			txtProg = 0;
			obj_player.move = true;
			exit;
		}
		letter = 0;
		txtProg++;
	}
	if global.ctrl[5] > 0 { count = txtSpeed; }
	
	txtLine = string_copy(text, 1, letter);
	if (txtSpeed > 0) { count++; }
	
	//Transitions
	////Fade in
	fade += 1/15;
	if (fade > 2) { fade = 2; }

	////Character focus
	switch global.text[3][txtProg] {
		case 0:
			portraitY[0] = lerp(portraitY[0], 0, 0.25);
			portraitY[1] = lerp(portraitY[1], 0, 0.25);
		break;
		case 1:
			portraitY[0] = lerp(portraitY[0], 36, 0.25);
			portraitY[1] = lerp(portraitY[1], 0, 0.25);
		break;
		case 2:
			portraitY[0] = lerp(portraitY[0], 0, 0.25);
			portraitY[1] = lerp(portraitY[1], 36, 0.25);
		break;
		case 3:
			portraitY[0] = lerp(portraitY[0], 36, 0.25);
			portraitY[1] = lerp(portraitY[1], 36, 0.25);
		break;
	}
}