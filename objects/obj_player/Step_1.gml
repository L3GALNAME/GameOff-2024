/// @description Text Collision
#region Object Collision
	if (global.ctrl[4] == 1) {
		if (!global.text[0]) {
			var txtBlock = checkObj(walkDir, obj_txtCollision);
			if (txtBlock != false) {
				move = false;
				// Feather disable once GM2025
				with txtBlock { event_user(0); }
				global.text[0] = true;
				global.textScript = txtBlock.txtContent;
				obj_typer.letter = 0;
				obj_typer.fade = 0;
				exit;
			}
		}
		
		if (!driving) {
			var carCheck = checkObj(walkDir, obj_playerCar);
			if (carCheck != false) {
				car = carCheck;
				x = carCheck.x;
				y = carCheck.y;
				driving = true;
				exit;
			}
		} else {
			car.sprite = sprite;
			car.depth = depth + 1;
			car = undefined;
			driving = false;
		}
	}
#endregion

//global.cameraVar[13] = 100;
if driving {
	walkSpd = 8;
} else {
	walkSpd = 2 / (1 + (global.palIdx >= 2 and global.palIdx < 3));
}