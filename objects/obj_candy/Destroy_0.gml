instance_create_layer(x, y, "Bottom", obj_destroy_animation);
switch(c_power){
	case 1:
		by=y;
		with(obj_candy){
			if(y==by){
				instance_destroy();
			}
		}
	
	break;
	
	case 2:
		bx=x;
		with(obj_candy){
			if(x==bx){
				instance_destroy();
			}
		}
		
	break;
	
	case 3:
		by=y;
		bx=x;
		with(obj_candy){
			if(y==by or x==bx){
				instance_destroy();
			}
		}
	break;
	
}



bx = x;

with(obj_candy){
	if(x==bx)
	stable=false;
	
}