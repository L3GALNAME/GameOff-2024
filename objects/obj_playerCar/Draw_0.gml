/// @description Decide whether or not to draw
if (!vroom) {
	var palName = floor(global.palIdx);
	global.colorMod[0].SetShaderBlend(palName, (palName+1)%4, global.palIdx-palName);
	draw_sprite(sprite, 0, x, y);
	shader_reset();
}