if (other.fromPlayer != self) {
	var damageMark = instance_create_depth(x - 5, y - 44, depth, Obj_DamageMarker);
	damageMark.value = other.damageValue;
}