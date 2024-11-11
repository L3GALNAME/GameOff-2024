/// @description Text Collision
#region Text Collision
	if (global.ctrl[4] == 1 and global.text[0] == 0) {
		var txtBlock = checkTxt(walkDir);
		if (txtBlock != false) {
			move = false;
			global.text[0] = 1;
			global.textScript = txtBlock.txtContent;
			obj_typer.letter = 0;
		}
	}
#endregion