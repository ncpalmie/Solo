self.y -= 0.1;
if ((global.frameClock - self.startClock) > 3500) {
	instance_destroy();	
}