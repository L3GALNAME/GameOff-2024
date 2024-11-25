/// @description Draw self + shadow
var palName = floor(global.palIdx);
palette.SetShaderBlend(palName, (palName+1)%4, global.palIdx-palName);
draw_sprite(sprite_index, 0, x, y);
shader_reset();