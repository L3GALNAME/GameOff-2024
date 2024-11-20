/// @description Set tileset shader
var palName = floor(global.palIdx);
global.colorMod[1][0].SetShaderBlend(palName, (palName+1)%4, global.palIdx-palName);