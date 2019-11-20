if stable
exit;

busy = true;

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
				obj_brain.alarm[0]=delay;
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
		if (last_candy==id){
			obj_brain.alarm[0]=delay;
		}
		scr_find_match();
	}
}