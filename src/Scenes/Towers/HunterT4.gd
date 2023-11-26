extends Node2D

func _physics_process(delta):
	turn()
	pass

func turn():
	var enemy_pos = get_global_mouse_position()
	
	var hunter = get_node("Hunter") as Sprite2D
	var weapon = get_node("Weapon") as Sprite2D
	var weaponAnchor = get_node("Hunter/WeaponAnchor") as Marker2D
	
	weapon.look_at(enemy_pos)
	hunter.set_rotation_degrees(weapon.get_rotation_degrees() + 90)
	
	var weapon_rotation = abs(((weapon.get_rotation_degrees() as int) - 90) % 360)
	
	if (weapon_rotation < 180):

		hunter.flip_h = true
	else:
		hunter.flip_h = false
	
	weapon.set_global_position(weaponAnchor.get_global_position())
	
	pass
