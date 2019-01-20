var player;

//Differentiation of AI Player from Real Player for testing purposes
player = instance_nearest(x, y, Obj_Player);
if (player.AIPlayer) {
	instance_destroy();	
}

image_xscale = 0.65;
image_yscale = 0.65;
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
x = player.x + 15 * cos(degtorad(point_direction(player.x, player.y, mouse_x, mouse_y)));
y = player.y - 15 * sin(degtorad(point_direction(player.x, player.y, mouse_x, mouse_y)));

