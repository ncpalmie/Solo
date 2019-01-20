if (!self.AIPlayer) {
	if keyboard_check(ord("R")) {
		game_restart();	
	}
	if keyboard_check(ord("A")) and self.hspd > -15 {
		self.hspd -= 1.5;	
	}
	if keyboard_check(ord("D")) and self.hspd < 15 {
		self.hspd += 1.5;	
	}

	if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)) and self.jumpValid{
		self.vspd = -29;
	}
	if !self.collideBottom and (keyboard_check_released(vk_space) or keyboard_check_released(ord("W"))) {
		self.numJumps++;	
	}

	if hspd < 0.5 and hspd > -0.5 {
		hspd = 0;	
	}
	if vspd < 0.5 and vspd > -0.5 {
		vspd = 0;	
	}
}