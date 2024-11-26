esc = 0

cameraW = 320
cameraH = 180

//*
cameraSpeed = 8
cameraTarget = global.cameraVar[5]

Scale = 1
ScaleTime = 1
preScale = 0
//*/

rShake = 0
shake = array_create(2)
tick = 0

mouseXPre = 0
mouseYPre = 0

global.camera = camera_create_view(0, 0, cameraW, cameraH, 0)

view_enabled = true
view_visible[0] = true
view_set_camera(0, global.camera)

//if surface_exists(global.surf2) {
//	view_surface_id[0] = global.surf2
//}

//foreground = []
//foreground2 = []
//foregroundY = 0

//background = spr_nfcBG
//background_idx = 0
palIdx = 0
