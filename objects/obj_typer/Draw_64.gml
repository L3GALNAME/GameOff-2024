/// @description text box

if global.text[0] > 0 {
	//box would be Y 290 if the origin is top
	//draw_sprite_ext(spr_shaqPortraits, 0, 60, 310, 1, 1, 0, c_white, 1)
	//draw_sprite_ext(spr_shaqPortraits, 5, 773, 310, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_vGradient, 0, 0, 120, 360, 1/3, 0, c_orange, 1)
	//draw_text(240, 350, txtLine)
	printTxt(txtLine)
	global.text[0] += 1
}