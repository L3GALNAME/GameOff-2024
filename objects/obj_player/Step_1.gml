/// @description Text Collision
#region Text Collision
	if (global.ctrl[4] == 1 and !global.text[0]) {
		var txtBlock = checkTxt(walkDir);
		if (txtBlock != false) {
			move = false;
			// Feather disable once GM2025
			with txtBlock { event_user(0); }
			global.text[0] = true;
			global.textScript = txtBlock.txtContent;
			obj_typer.letter = 0;
			obj_typer.fade = 0;
		}
	}
#endregion

walkSpd = 2 - (global.palIdx >= 2 and global.palIdx < 3);