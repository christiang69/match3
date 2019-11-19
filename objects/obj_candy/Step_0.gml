if stable
exit;

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
	exit;
}

if (swiped) {
	move_towards_point(target_x, target_y, spd);
	if (x == target_x and y == target_y){
		stable = true;
		swiped = false;
		speed = 0;
		if (c_power==3){
			supermatch=target_candy.c_type;
			c_type=supermatch;
			with (obj_candy){
				if (c_type==supermatch)
				{
					alarm[0] = delay;
				}
			}
		} else {
			if (!b_swap){
				alarm[3] = delay;
			} else {
				b_swap = false;
				target_candy = noone;
				target_x = x;
				target_y = y;
			
			}
		}
	}
} else {
	if !place_meeting(x, y+spd, obj_colider){
		y += spd;
		stable = false;
	} else {
		stable = true;
		scr_find_match();
	}
}