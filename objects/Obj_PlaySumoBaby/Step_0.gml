if self.numJumps < 3 {
	self.jumpValid = true;	
} else {
	self.jumpValid = false;	
}

event_inherited();

//Abilities

//Slam
if (keyboard_check(ord("1")) and self.collideBottom == false) {
	self.currentAbility = "slam"
}

if (self.currentAbility == "slam") {
	self.vspd += 0.5;	
}

//Animation
if (self.currentAbility == noone) {
	if hspd == 0 and vspd == 0 {
		self.animationSpeed = 2.2;
		self.minFrame = 0;
		self.maxFrame = 2;
	}
	else {
		//Look Right
		if keyboard_check(ord("D")) {
			image_xscale = 1;	
			self.animationSpeed = 3.5;
			self.minFrame = 2;
			self.maxFrame = 4;
		//Look Left
		} else if keyboard_check(ord("A")){
			image_xscale = -1;
			self.animationSpeed = 3.5;
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
			if (image_xscale > 0 and !self.collideBottom) {
					self.spriteAngle = 360 + (1.6 * self.hspd * -1);
				} else {
					self.spriteAngle = 1.6 * -1 * self.hspd;
			}
		}
	}
}

if (self.currentAbility = "slam") {
	if (image_xscale == 1 and (self.spriteAngle < 268 or self.spriteAngle > 271)) {
		self.spriteAngle -= 5;
	} else if (self.spriteAngle < 88 or self.spriteAngle > 91) {
		self.spriteAngle += 5;
	}
}

//Reset to default
if (self.collideBottom or self.collideRight or self.collideLeft) {
	self.spriteAngle = 0;
	if (self.currentAbility == "slam") {
		self.currentAbility = noone;
		var numParticles;
		for (numParticles = irandom(6) + 6; numParticles > 0; numParticles--) {
			instance_create_depth(x + irandom_range(-6, 6), y + 6, depth - 1, Obj_ParticleDirt)
		}
		self.hspd = self.hspd / 2;
	}
}

if (self.animationProgress >= 144) {
	self.currentFrame += 1;	
	self.animationProgress = 0;
} else {
	self.animationProgress += self.animationSpeed + (delta_time / 100000);	
}

if (self.currentFrame >= self.maxFrame) or (self.currentFrame <= self.minFrame) {
	self.currentFrame = self.minFrame;	
}
