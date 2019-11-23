draw_sprite_ext(sprite_index, c_type, x, y, image_size, image_size, angle, image_blend, 1);
if (c_power) {
	if ((image_size > 1) or (image_size < 0.9)){
		counter=-counter;
	}
	image_size+=counter;
}