extends Node2D

func _physics_process(delta):
	turn()
	pass

func turn():
	var enemy_pos = get_global_mouse_position()
	
	var hunter = get_node("Hunter") as Sprite2D
	var weapon = get_node("Weapon") as Sprite2D
	hunter.look_at(enemy_pos)
	hunter.set_rotation_degrees(hunter.get_rotation_degrees() - 90)
	weapon.set_rotation_degrees(hunter.get_rotation_degrees())
	
	pass
