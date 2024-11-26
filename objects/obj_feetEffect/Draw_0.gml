/// @description Don't draw default
if instance_exists(obj_player) {
	var _sprite = sprite;
	var _xScale = xScale;
	var _yScale = yScale;
	var _alpha = alpha;
	var _type = type;
	with obj_player {
		if (_sprite = spr_feetEffect) {
			switch _type {
				case 0:
					draw_sprite_ext(_sprite, (frame*prePos) % 2, x, y, _xScale, _yScale, image_angle, c_white, _alpha);
				break;
				case 2:
					draw_sprite_ext(_sprite, 2, x, y+2, _xScale, _yScale, image_angle, c_white, _alpha);
				break;
				case 3:
					draw_sprite_ext(_sprite, ((frame*prePos) % 2)+3, x, y, _xScale, _yScale, image_angle, c_white, _alpha);
				break;
				case 4:
					draw_sprite_ext(_sprite, ((frame*prePos) % 2)+5, x, y, _xScale, _yScale, image_angle, c_white, _alpha);
				break;
			}
		} else {
			if (!prePos) {
				draw_sprite_ext(sprite, (frame%16) >= 8 ? 0 : frame%16, x, y, _xScale, _yScale, 0, c_white, _alpha);
			} else {
				draw_sprite_ext(sprite, 8+(frame%6), x, y, _xScale, _yScale, 0, c_white, _alpha);
			}

		}
		
	}
}
