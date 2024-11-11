/// @description Typeface setup
/////
//ALL FONT CHARACTERS IN ORDER DO NOT TOUCH
soup = " !#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{\}~"
/////

//text speed
txtSpeed = 0
count = 0
//Dialouge line
txtProg = 0
//Line info
letter = 0
txtLine = ""
text = ""

function printTxt(line) {
	var i
	var xx = 0
	var yy = 0
	var char = ""
	var char2 = ""
	for(i=0; i<letter; i++) {
		char = string_char_at(line, i+1)
		//special character check
		if char = "`" {
			char = ""
			char2 = string_char_at(line, i+2)
			switch char2 {
				case "n":
					xx = 0
					yy += 26
					i++
					continue;
			}
		}
		//draw letter and change variables
		draw_sprite_ext(spr_dFont, string_pos(char, soup)-1, 36+xx, 138+yy, 1, 1, 0, c_white, 1)
		xx += 16
	}
}