self.hspd = 0;
self.vspd = 0;
self.collideTop = false;
self.collideBottom = false;
self.collideRight = false;
self.collideLeft = false;
self.numJumps = 0;
self.minFrame = 0;
self.maxFrame = 1;
self.currentFrame = 0;
self.spriteAngle = 0;
self.AIPlayer = 0;
self.animationSpeed = 0;
self.animationProgress = 0;
for (i = 0; i < 4; i++) {
	self.abilities[i] = noone;	
}