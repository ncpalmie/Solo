if mouse_check_button(mb_middle) {
	self.x = mouse_x;
	self.y = mouse_y;
}

global.frameClock += 144 * (delta_time / 100000);