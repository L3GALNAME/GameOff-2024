/// @description Draw Player

//// Scrolling Background (test purposes)
//if (room = rm_test0 or room = rm_house) {
//	var cameraX = camera_get_view_x(global.camera);
//	var cameraY = camera_get_view_y(global.camera);
//	cameraY -= 130;
//	for(var i=0; i<(1+ceil(540/130)); i++) {
//		cameraX = camera_get_view_x(global.camera);
//		cameraX -= 130;
//		repeat(1+ceil(960/130)) {
//			//Scrolling tile background (uncomment to use)
//			draw_sprite_ext(spr_pixel, 0, cameraX+(thing%130), cameraY+(thing%130), 32, 32, 0, c_white, 0.5);
//			cameraX += 130;
//		}
//		cameraY += 130;
//	}
//}

thing += 2;
walkDir = setFrame(walkDir);

//Draw idle or walking animation
var palName = floor(global.palIdx);
global.colorMod[0].SetShaderBlend(palName, (palName+1)%4, global.palIdx-palName);
if driving {
	sprite = asset_get_index("spr_playerCar"+walkDir);
	var _sprite = sprite;
	var _prePos = prePos;
	var _frame = frame;
	// Feather disable once GM1049
	with car {
		sprite = _sprite;
		if (!_prePos) {
			draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, 1);
		} else {
			draw_sprite_ext(sprite, _frame+1 >= 3 ? 3+(_frame%3) : _frame+1, x, y, 1, 1, 0, c_white, 1);
		}
	}
} else {
	sprite = asset_get_index("spr_mrMan"+walkDir);
	
	if (!prePos) {
		////Extends neutral pose
		draw_sprite_ext(sprite, (frame%16) >= 8 ? 0 : frame%16, x, y, 1, 1, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite, 8+(frame%6), x, y, 1, 1, 0, c_white, 1);
	}
}

shader_reset();
