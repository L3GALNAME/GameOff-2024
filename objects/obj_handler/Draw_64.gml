/// @description

// Room transition animation
if thing > 0 {
	draw_sprite_ext(spr_pixel, 0, 0, 0, 960, 540, 0, c_black, thing);
	thing -= 0.05;
}

// Debug

//draw_text(0, 16, global.text);
//if instance_exists(obj_typer) { draw_text(0, 32, obj_typer.txtProg); }
//draw_text(0, 64, global.text[4])
////draw_text(0, 48, string(global.textScript))
//if array_length(global.textScript) > 1 {
//	//draw_text(0, 48, obj_typer.text)
	
//}
