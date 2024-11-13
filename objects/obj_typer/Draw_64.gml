/// @description text box

if global.text[0] {
	//box would be Y 290 if the origin is top
	//draw_sprite_ext(spr_shaqPortraits, 0, 60, 310, 1, 1, 0, c_white, 1)
	//draw_sprite_ext(spr_shaqPortraits, 5, 773, 310, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_portraits, global.textScript[(txtProg*4)+1], 16, 186-portraitY[0], 2, 2, 0, c_white, fade);
	draw_sprite_ext(spr_portraits, global.textScript[(txtProg*4)+2], 570, 186-portraitY[1], 2, 2, 0, c_white, fade);
	draw_sprite_ext(spr_vGradient, 0, 0, 240, 640, 120/180, 0, c_black, fade/2);
	draw_sprite_ext(spr_vGradient, 0, 0, 240, 640, 120/180, 0, c_black, fade/2);
	draw_sprite_ext(spr_pixel, 0, 0, 240, 640, 2, 0, c_white, fade/2);
	//draw_text(240, 350, txtLine)
	printTxt(txtLine);
}