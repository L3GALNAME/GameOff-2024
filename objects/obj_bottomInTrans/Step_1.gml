/// @description Basic fade in
if thing < 1.5 {
	thing += thing2;
} else { 
	//obj_player.move = true;
	room = roomSwitch;
	transition_create("bottomOut", spr_pixel, roomSwitch, 1, thing2, image_blend);
	instance_destroy();
}