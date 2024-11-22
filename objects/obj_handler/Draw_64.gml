/// @description

// Room transition animation
//if thing > 0 {
//	draw_sprite_ext(spr_pixel, 0, 0, 0, 960, 540, 0, c_black, thing);
//	thing -= 0.05;
//}

// Debug

//draw_txt(0, 0, $"{camera_get_view_x(global.camera) + camera_get_view_width(global.camera)} {camera_get_view_y(global.camera) + camera_get_view_height(global.camera)}");
//draw_txt(0, 16, $"{global.areaBorder[1][1]} {global.areaBorder[1][3]}");
//draw_txt(0, 0, $"{obj_camera.x}");
//draw_txt(0, 16, $"{obj_camera.y}");
draw_txt(0, 0, global.time[0]);
draw_txt(0, 16, global.time[1]);
draw_txt(0, 32, obj_player.driving);
//draw_txt(0, 0, global.layers[1]._id);
////draw_text(0, 48, string(global.textScript))
//if array_length(global.textScript) > 1 {
//	//draw_text(0, 48, obj_typer.text)
	
//}
