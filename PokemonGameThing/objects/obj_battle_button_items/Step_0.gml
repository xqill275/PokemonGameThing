mbButton = mouse_check_button_pressed(mb_right);


if (mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height) {
	image_alpha = 0.1
} else {
	image_alpha = 1
}