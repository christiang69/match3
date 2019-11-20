target_x = argument0;
target_y = argument1;

start_x = x;
start_y = y;

swiped = true;
dragging = false;
stable = false;

target_candy = instance_position(target_x, target_y, obj_candy);

target_candy.target_x = x;
target_candy.target_y = y;

target_candy.start_x = target_candy.x;
target_candy.start_y = target_candy.y;

target_candy.stable = false;
target_candy.swiped = true;

target_candy.target_candy = id;

