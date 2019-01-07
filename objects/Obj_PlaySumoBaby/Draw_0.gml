draw_text(10, 10, "Num Jumps: " + string(self.numJumps));
draw_text(10, 25, "Hspd = " + string(self.hspd));
draw_text(10, 40, "Vspd = " + string(self.vspd));
draw_text(10, 55, "Min Frame = " + string(self.minFrame) + " | Max Frame = " + string(self.maxFrame));
draw_text(10, 70, "Current Frame: " + string(image_index));
draw_text(10, 85, "Collide Bottom: " + string(self.collideBottom));
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,self.spriteAngle,image_blend,image_alpha);
