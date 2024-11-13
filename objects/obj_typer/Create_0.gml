/// @description Typeface setup

//text speed
txtSpeed = 0;
count = 0;
//Dialouge line
txtProg = 0;
//Line info
letter = 0;
txtLine = "";
text = "";

//Visual
fade = 0;
portraitY = [0, 0];

function printTxt(line) {
	var xx = 0;
	var yy = 0;
	var char = "";
	var char2 = "";
	
	for(var i=0; i<letter; i++) {
		char = string_char_at(line, i+1);
		//special character check
		if char = "`" {
			char = "";
			char2 = string_char_at(line, i+2);
			switch char2 {
				case "n":
					xx = 0;
					yy += 32;
					i++;
					continue;
			}
		}
		//draw letter and change variables
		draw_sprite_ext(spr_font, string_pos(char, soup)-1, 32+xx, 258+yy, 2, 2, 0, c_white, fade);
		xx += 16;
	}
}