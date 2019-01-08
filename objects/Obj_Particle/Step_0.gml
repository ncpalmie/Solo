move_towards_point(self.random_x, self.random_y, self.moveSpeed);

if (self.spinDir == 0) {
	self.spriteAngle += self.spinSpeed;
} else {
	self.spriteAngle -= self.spinSpeed;	
}

if (self.currTimeAlive > self.timeAlive) {
	instance_destroy();	
} else {
	self.currTimeAlive++;	
}

