if self.numJumps < 3 {
	self.jumpValid = true;	
} else {
	self.jumpValid = false;	
}

event_inherited();

//Animation
if hspd == 0 and vspd == 0 {
	image_speed = 2.5;
	self.minFrame = 0;
	self.maxFrame = 2;
}
else {
	//Look Right
	if keyboard_check(ord("D")) {
		image_xscale = 1;	
		image_speed = 8;
		self.minFrame = 2;
		self.maxFrame = 4;
	//Look Left
	} else if keyboard_check(ord("A")){
		image_xscale = -1;
		image_speed = 8;
		self.minFrame = 2;
		self.maxFrame = 4;
	}
	//Jump animations
	if (vspd != 0) {
		//Reach for sky
		if (vspd < 0) {
			image_speed = 0
			self.minFrame = 4;
			self.maxFrame = 5;
		}
		//Lean in jump
		if (image_xscale > 0 && !self.collideBottom) {
				self.spriteAngle = 360 + (7.5 * self.hspd * -1);
			} else {
				self.spriteAngle = 7.5 * -1 * self.hspd;
		}
	}
}
//Reset to default
if (self.collideBottom or self.collideRight or self.collideLeft) {
	self.spriteAngle = 0;	
}

if (image_index >= self.maxFrame) or (image_index <= self.minFrame) {
	image_index = self.minFrame;	
}
