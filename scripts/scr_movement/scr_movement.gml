if keyboard_check(ord("R")) {
	game_restart();	
}
if keyboard_check(ord("A")) and self.hspd > -18 {
	self.hspd -= 2.2;	
}
if keyboard_check(ord("D")) and self.hspd < 18 {
	self.hspd += 2.2;	
}

if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)) and self.jumpValid{
	self.vspd = -32;
}
if !self.collideBottom and (keyboard_check_released(vk_space) or keyboard_check_released(ord("W"))) {
	self.numJumps++;	
}

if hspd < 0.1 and hspd > -0.1 {
	hspd = 0;	
}
if vspd < 0.1 and vspd > -0.1 {
	vspd = 0;	
}