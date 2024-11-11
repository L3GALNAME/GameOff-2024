/// @description Insert description here
if keyboard_check_pressed(ord("R")) { game_restart() }

if keyboard_check_pressed(ord("F")) {
	// Coding :sparkle:
	window_set_fullscreen(!window_get_fullscreen())
}

tick++