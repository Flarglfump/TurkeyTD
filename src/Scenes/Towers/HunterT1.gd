extends Node2D

func _physics_process(delta):
	turn()
	pass

func turn():
	var enemy_pos = get_global_mouse_position()
	
	var hunter = get_node("Hunter") as Sprite2D
	var weapon = get_node("Weapon") as Sprite2D
	var weaponAnchor = get_node("Hunter/WeaponAnchor") as Marker2D
	
	hunter.look_at(enemy_pos)
	weapon.look_at(enemy_pos)
	
	var weapon_rotation = abs((weapon.get_rotation_degrees() as int) % 360)
	
	if (weapon_rotation < 180):

		hunter.flip_h = true
		weapon.flip_v = true
	else:
		hunter.flip_h = false
		weapon.flip_v = false
	
	weapon.set_global_position(weaponAnchor.get_global_position())
	
	pass
