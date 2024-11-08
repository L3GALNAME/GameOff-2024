/// @description Draw Player
// You can write your code in this editor

//// Scrolling Background (test purposes)
if (room = rm_test0 or room = rm_test0) {
	var cameraX = camera_get_view_x(global.camera);
	var cameraY = camera_get_view_y(global.camera);
	cameraY -= 130;
	for(var i=0; i<(1+ceil(540/130)); i++) {
		cameraX = camera_get_view_x(global.camera);
		cameraX -= 130;
		repeat(1+ceil(960/130)) {
			//Scrolling tile background (uncomment to use)
			draw_sprite_ext(spr_pixel, 0, cameraX+(thing%130), cameraY+(thing%130), 32, 32, 0, c_white, 0.5);
			cameraX += 130;
		}
		cameraY += 130;
	}
}

thing += 2;
//walkDir = setFrame(walkDir);
sprite = asset_get_index("spr_player");
//sprite = asset_get_index("spr_arachnisWalk"+walkDir)
draw_sprite_ext(sprite, frame, x, y, 1, 1, 0, c_white, 1)