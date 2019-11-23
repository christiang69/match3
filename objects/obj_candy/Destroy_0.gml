global.points += 1;
instance_create_layer(x, y, "Bottom", obj_destroy_animation);
by=y;
bx=x;

switch(c_power){
	case 1:
		with(obj_candy){
			if(y==by){
				instance_destroy();
			}
		}
	
	break;
	
	case 2:
		with(obj_candy){
			if(x==bx){
				instance_destroy();
			}
		}
		
	break;
	
	case 3:
		with(obj_candy){
			if(y==by or x==bx){
				instance_destroy();
			}
		}
	break;
}


with(obj_candy){
	if((x==bx) and (y < by)){
		alarm[4]=delay+(point_distance(x, y, bx, by,)/2);
	}
}