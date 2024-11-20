/// @description Don't draw default
if instance_exists(obj_player) {
	var _sprite = sprite;
	var _xScale = xScale;
	var _yScale = yScale;
	var _alpha = alpha;
	with obj_player {
		if (_sprite = spr_feetEffect) {
			draw_sprite_ext(_sprite, (frame*prePos) % 2, x, y, _xScale, _yScale, image_angle, c_white, _alpha);
		} else {
			if (!prePos) {
				draw_sprite_ext(sprite, (frame%16) >= 8 ? 0 : frame%16, x, y, _xScale, _yScale, 0, c_white, _alpha);
			} else {
				draw_sprite_ext(sprite, 8+(frame%6), x, y, _xScale, _yScale, 0, c_white, _alpha);
			}

		}
		
	}
}
