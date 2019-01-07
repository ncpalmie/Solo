//Using collision method made from multiple forum community members at 
//https://forum.yoyogames.com/index.php?threads/pixel-perfect-object-based-collision.30739/

var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);

//Horizontal collisions
x += self.hspd * (delta_time / 100000);

//Snap
if place_meeting(x + sign(self.hspd), y, Obj_Collidable) {
    var wall = instance_place(x + sign(self.hspd), y, Obj_Collidable);
    if self.hspd > 0 { //right
        x = (wall.bbox_left-2) - sprite_bbox_right;
		self.collideRight = true;
    } else if self.hspd < 0 { //left
        x = (wall.bbox_right+2) - sprite_bbox_left;
		self.collideLeft = true;
    }
    self.hspd = 0;
} else {
	self.collideRight = false;
	self.collideLeft = false;
}

y += self.vspd * (delta_time / 100000);

if place_meeting(x, y + sign(self.vspd), Obj_Collidable) {
    var wall = instance_place(x, y + sign(self.vspd), Obj_Collidable);
    if self.vspd > 0 { //bottom
        y = (wall.bbox_top - 1) - sprite_bbox_bottom;
		self.collideBottom = true;
		self.numJumps = 0;
    } else { //top
        y = (wall.bbox_bottom + 1) - sprite_bbox_top;
		self.collideTop = true;
    }
    self.vspd = 0;
} else {
	self.collideTop = false;
	self.collideBottom = false;
}

if (instance_place(x, y + 1, Obj_Collidable) != noone) {
	self.collideBottom = true;	
}