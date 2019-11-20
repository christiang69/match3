if dragging {
	var pdr = point_direction(drag_x, drag_y, mouse_x, mouse_y);
	var md = point_distance(drag_x, drag_y, mouse_x, mouse_y);
	if !swiped 
	if (md > 32) {
		if (pdr > 45 and pdr <135){
			// up;
			if !position_empty(x, y-c_size) {
				//swap;
				scr_swipe(x, y-c_size);
			}
		} else if (pdr > 135 and pdr <225){
			// left;
			if !position_empty(x-c_size, y) {
				//swap;
				scr_swipe(x-c_size, y);
			}
		} else if (pdr > 225 and pdr <315){
			// down;
			if !position_empty(x, y+c_size) {
				//swap;
				scr_swipe(x, y+c_size);
			}
		} else if (pdr > 315 or pdr <45){
			// right;
			if !position_empty(x+c_size, y) {
				//swap;
				scr_swipe(x+c_size, y);
			}
		}
	}
}