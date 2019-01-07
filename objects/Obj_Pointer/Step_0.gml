var player;

//Differentiation of AI Player from Real Player for testing purposes
{
do
{
	player = instance_nearest(x, y, Obj_Player);
}
until (player.AIPlayer == 0) }

image_xscale = 0.65;
image_yscale = 0.65;
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
x = (player.x + mouse_x) / 2;
y = (player.y + mouse_y) / 2;

if (sqrt((x - 

