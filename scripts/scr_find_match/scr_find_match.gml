nomatch = false;
var t1=false;
var t2=false;
var l1=false;
var l2=false;
var b1=false;
var b2=false;
var r1=false;
var r2=false;
var tw=false;
var lw=false;
var bw=false;
var rw=false;

// top
if (position_meeting(x, y-c_size, obj_candy)){
	var t1o = instance_position(x, y-c_size, obj_candy);
	if (t1o.c_type == c_type){
		t1 = true;
	}
}
if (position_meeting(x, y-(c_size*2), obj_candy)){
	var t2o = instance_position(x, y-(c_size*2), obj_candy);
	if (t2o.c_type == c_type){
		t2 = true;
	}
}

// left
if (position_meeting(x-c_size, y, obj_candy)){
	var l1o = instance_position(x-c_size, y, obj_candy);
	if (l1o.c_type == c_type){
		l1 = true;
	}
}
if (position_meeting(x-(c_size*2), y, obj_candy)){
	var l2o = instance_position(x-(c_size*2), y, obj_candy);
	if (l2o.c_type == c_type){
		l2 = true;
	}
}

// bottom
if (position_meeting(x, y+c_size, obj_candy)){
	var b1o = instance_position(x, y+c_size, obj_candy);
	if (b1o.c_type == c_type){
		b1 = true;
	}
}
if (position_meeting(x, y+(c_size*2), obj_candy)){
	var b2o = instance_position(x, y+(c_size*2), obj_candy);
	if (b2o.c_type == c_type){
		b2 = true;
	}
}

// right
if (position_meeting(x+c_size, y, obj_candy)){
	var r1o = instance_position(x+c_size, y, obj_candy);
	if (r1o.c_type == c_type){
		r1 = true;
	}
}
if (position_meeting(x+(c_size*2), y, obj_candy)){
	var r2o = instance_position(x+(c_size*2), y, obj_candy);
	if (r2o.c_type == c_type){
		r2 = true;
	}
}

if (t1 && t2) tw = true;

if (l1 && l2) lw = true;

if (b1 && b2) bw = true;

if (r1 && r2) rw = true;

// Matching logic

if (tw and bw){
	// five straight vertical
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	exit;
}
if (lw and rw){
	// five straight horizontal
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	exit;
}
if (tw and rw){
	// five L 
	c_power = 3;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	exit;
}
if (tw and lw){
	// five L
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	exit;
}
if (bw and rw){
	// five L
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	exit;
}
if (bw and lw){
	// five L
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	exit;
}
if (tw and r1 and l1){
	// five T
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	r1o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	exit;
}
if (bw and r1 and l1){
	// five T
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	r1o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	exit;
}
if (lw and t1 and b1){
	// five T
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	t1o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	exit;
}
if (rw and t1 and b1){
	// five T
	c_power = 3;
	c_type=6;
	alarm[1] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	t1o.alarm[0] = delay;
	b1.alarm[0] = delay;
	exit;
}
if (tw and b1){
	// four vertical
	c_power = 1;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	exit;
}
if (lw and r1){
	// four horizontal
	c_power = 2;
	alarm[1] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	r1o.alarm[0] = delay;
	exit;
}
if (bw and t1){
	// four vertical
	c_power = 1;
	alarm[1] = delay;
	t1o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	exit;
}
if (rw and l1){
	// four horizontal
	c_power = 2;
	alarm[1] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	exit;
}
if (tw){
	// match
	alarm[0] = delay;
	t1o.alarm[0] = delay;
	t2o.alarm[0] = delay;
	exit;
}
if (bw){
	// match
	alarm[0] = delay;
	b1o.alarm[0] = delay;
	b2o.alarm[0] = delay;
	exit;
}
if (lw){
	// match
	alarm[0] = delay;
	l1o.alarm[0] = delay;
	l2o.alarm[0] = delay;
	exit;
}
if (rw){
	// match
	alarm[0] = delay;
	r1o.alarm[0] = delay;
	r2o.alarm[0] = delay;
	exit;
}
if (t1 and b1){
	// match
	alarm[0] = delay;
	t1o.alarm[0] = delay;
	b1o.alarm[0] = delay;
	exit;
}
if (r1 and l1){
	// match
	alarm[0] = delay;
	r1o.alarm[0] = delay;
	l1o.alarm[0] = delay;
	exit;
}

nomatch = true;