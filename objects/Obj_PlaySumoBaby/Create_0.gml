
event_inherited();

self.currentAbility = noone;

var camera = view_get_camera(0);
self.abilities[0] = instance_create_depth(camera_get_view_x(camera), camera_get_view_y(camera), depth - 25, Obj_Ability);
self.abilities[0].sprite_index = Spr_AbilitySlam;
self.abilities[0].abilityNum = 1;