//Gravity
if (instance_place(x, y + 1, Obj_Collidable) == noone) {
	self.vspd += 1
}

//Friction
if self.collideBottom {
	if self.hspd > 0.01 or self.hspd < -0.01 {
		self.hspd += sign(hspd) * -1 * 0.4;
	}
}