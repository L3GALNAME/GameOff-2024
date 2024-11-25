/// @description Basic fade in
if (thing > 0) {
	thing -= thing2;
} else { 
	obj_player.move = true;
	instance_destroy();
}